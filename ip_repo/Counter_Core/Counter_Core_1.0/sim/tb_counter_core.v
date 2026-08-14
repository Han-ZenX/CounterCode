`timescale 1ns / 1ps
//============================================================================
// tb_counter_core -- functional verification of the Counter_Core measurement core
//
// Run (Vivado xsim, needs the unisim library for CARRY4):
//   xvlog ../src/cdc.v ../src/tdc.v ../src/ts_engine.v ../src/eq_counter.v \
//         ../src/counter_core.v tb_counter_core.v
//   xelab -L unisims_ver -debug typical tb_counter_core -s tb
//   xsim tb -runall
//
//----------------------------------------------------------------------------
// What this testbench cannot verify
//
// The TDC cannot be verified in functional simulation. The CARRY4 behavioral
// model has zero delay, so all 64 taps flip at the same simulation instant;
// popcount can only be 0 or 64, tdc_valid is always false, and bits [31:26] of
// the timestamp stay zero.
// Tap delay, linearity and code density must be calibrated by timing
// simulation (with SDF) or on real hardware.
//
// So only the TDC-independent parts are checked below: coarse counting, edge
// detection, sequence continuity, FIFO read/write, backpressure overflow,
// edge_skip, and hardware gate timing. Those happen to be the bulk of the
// gap-free semantics.
//============================================================================

module tb_counter_core;

    localparam FIFO_AW   = 12;
    localparam FIFO_SIZE = (1 << FIFO_AW);

    //------------------------------------------------------------------
    // Clocks
    //   clk_fs 312.5 MHz -> 3.2 ns period
    //   clk_fx 10 MHz    -> 100 ns period, one rising edge per 31.25 clk_fs
    //   aclk   100 MHz
    //------------------------------------------------------------------
    reg clk_fs = 1'b0;
    reg clk_fx = 1'b0;
    reg aclk   = 1'b0;
    reg aresetn = 1'b0;

    always #1.6 clk_fs = ~clk_fs;
    always #50  clk_fx = ~clk_fx;
    always #5   aclk   = ~aclk;

    //------------------------------------------------------------------
    // DUT interface
    //------------------------------------------------------------------
    reg         ts_en    = 1'b0;
    reg         ts_rst   = 1'b0;
    reg         eq_start = 1'b0;
    reg         soft_rst = 1'b0;
    reg [31:0]  edge_skip = 32'd0;
    reg [31:0]  gate_len  = 32'd0;

    wire        ts_running, overflow, eq_done, eq_busy, fifo_empty;
    wire [31:0] ts_count, lost_count, eq_stand, eq_test;
    wire [7:0]  tdc_test_rise, tdc_test_fall;
    wire [FIFO_AW:0] fifo_level;

    wire [63:0] ts_data;
    wire        ts_valid;
    reg         ts_ready = 1'b1;

    counter_core #(
        .FIFO_ADDR_WIDTH (FIFO_AW),
        .NUM_TAPS        (64)
    ) dut (
        .clk_fs (clk_fs), .clk_fx (clk_fx), .aclk (aclk), .aresetn (aresetn),

        .ts_en (ts_en), .ts_rst (ts_rst), .eq_start (eq_start),
        .soft_rst (soft_rst), .edge_skip (edge_skip), .gate_len (gate_len),

        .ts_running (ts_running), .overflow (overflow),
        .eq_done (eq_done), .eq_busy (eq_busy), .fifo_empty (fifo_empty),
        .ts_count (ts_count), .lost_count (lost_count),
        .eq_stand (eq_stand), .eq_test (eq_test),
        .tdc_test_rise (tdc_test_rise), .tdc_test_fall (tdc_test_fall),
        .fifo_level (fifo_level),

        .ts_data (ts_data), .ts_valid (ts_valid), .ts_ready (ts_ready)
    );

    //------------------------------------------------------------------
    // Stream sink with on-the-fly checking
    //------------------------------------------------------------------
    integer rx_cnt   = 0;
    integer seq_err  = 0;
    integer gap_err  = 0;
    integer errors   = 0;

    reg [23:0] exp_seq     = 24'd0;
    reg [31:0] prev_coarse = 32'd0;
    reg        first_word  = 1'b1;
    reg        check_en    = 1'b0;

    // 10 MHz test signal against a 312.5 MHz reference -> coarse delta of
    // consecutive timestamps must be 31 or 32
    localparam COARSE_MIN = 31;
    localparam COARSE_MAX = 32;

    always @(posedge aclk) begin
        if (ts_valid && ts_ready) begin
            rx_cnt = rx_cnt + 1;

            if (check_en) begin
                // Sequence numbers must be strictly contiguous -- the core
                // criterion for gap-free
                if (ts_data[23:0] !== exp_seq) begin
                    $display("[ERR] t=%0t seq break: got %0d, expected %0d",
                             $time, ts_data[23:0], exp_seq);
                    seq_err = seq_err + 1;
                end

                // Coarse delta must land in 31..32 when edge_skip is 0
                if (!first_word && edge_skip == 0) begin
                    if ((ts_data[63:32] - prev_coarse) < COARSE_MIN ||
                        (ts_data[63:32] - prev_coarse) > COARSE_MAX) begin
                        $display("[ERR] t=%0t bad coarse delta: %0d",
                                 $time, ts_data[63:32] - prev_coarse);
                        gap_err = gap_err + 1;
                    end
                end
            end

            exp_seq     = ts_data[23:0] + 24'd1;
            prev_coarse = ts_data[63:32];
            first_word  = 1'b0;
        end
    end

    task reset_checker;
        begin
            rx_cnt = 0; exp_seq = 0; first_word = 1'b1;
        end
    endtask

    //------------------------------------------------------------------
    // Test body
    //------------------------------------------------------------------
    integer i;
    integer rx_before;

    initial begin
        $display("==== Counter_Core functional verification start ====");

        aresetn = 1'b0;
        #200;
        aresetn = 1'b1;
        #200;

        //--------------------------------------------------------------
        // Case 1: continuous acquisition, check sequence and coarse delta
        //--------------------------------------------------------------
        $display("\n-- Case 1: continuous capture (edge_skip=0, full-rate sink) --");
        ts_rst = 1'b1; #100; ts_rst = 1'b0; #100;
        reset_checker;
        edge_skip = 32'd0;
        ts_ready  = 1'b1;
        check_en  = 1'b1;
        ts_en     = 1'b1;

        #20000;                 // 20 us -> roughly 200 edges at 10 MHz
        ts_en = 1'b0;
        #2000;

        $display("   received %0d entries, ts_count=%0d, lost=%0d, overflow=%b",
                 rx_cnt, ts_count, lost_count, overflow);
        if (rx_cnt < 150) begin
            $display("[ERR] too few entries, edge detection may be broken");
            errors = errors + 1;
        end
        if (overflow !== 1'b0 || lost_count !== 32'd0) begin
            $display("[ERR] no overflow expected with a full-rate sink");
            errors = errors + 1;
        end

        //--------------------------------------------------------------
        // Case 2: backpressure fills the FIFO, check overflow and lost_count
        //--------------------------------------------------------------
        $display("\n-- Case 2: backpressure overflow --");
        ts_rst = 1'b1; #100; ts_rst = 1'b0; #100;
        reset_checker;
        check_en = 1'b0;        // sequence necessarily breaks after a drop
        ts_ready = 1'b0;        // consume nothing
        ts_en    = 1'b1;

        // Filling 4096 entries takes 4096 x 100 ns = 410 us, too slow here.
        // Instead observe fifo_level growth and eventual overflow, allowing
        // generous time.
        #500000;                // 500 us
        ts_en = 1'b0;
        #2000;

        $display("   fifo_level=%0d, ts_count=%0d, lost=%0d, overflow=%b",
                 fifo_level, ts_count, lost_count, overflow);
        if (fifo_level == 0) begin
            $display("[ERR] FIFO should have backlog under backpressure");
            errors = errors + 1;
        end
        if (fifo_level >= FIFO_SIZE) begin
            // If it really did fill, overflow must be reported
            if (overflow !== 1'b1 || lost_count === 32'd0) begin
                $display("[ERR] FIFO full but overflow not reported");
                errors = errors + 1;
            end else begin
                $display("   overflow correctly reported");
            end
        end else begin
            $display("   note: FIFO did not fill within sim time, overflow path uncovered");
        end

        // Resume consuming and confirm the backlog drains
        rx_before = rx_cnt;
        ts_ready = 1'b1;
        #200000;
        $display("   drained %0d more entries, fifo_level=%0d",
                 rx_cnt - rx_before, fifo_level);
        if (fifo_empty !== 1'b1) begin
            $display("[ERR] fifo_empty should be 1 after draining");
            errors = errors + 1;
        end

        //--------------------------------------------------------------
        // Case 3: edge_skip active, sequence must stay contiguous
        //--------------------------------------------------------------
        $display("\n-- Case 3: edge_skip=3 (capture 1 of every 4 edges) --");
        ts_rst = 1'b1; #100; ts_rst = 1'b0; #100;
        reset_checker;
        edge_skip = 32'd3;
        ts_ready  = 1'b1;
        check_en  = 1'b1;
        ts_en     = 1'b1;

        #40000;                 // 40 us -> about 400 edges -> about 100 entries
        ts_en = 1'b0;
        #2000;

        $display("   received %0d entries (about 100 expected)", rx_cnt);
        if (rx_cnt < 70 || rx_cnt > 130) begin
            $display("[ERR] edge_skip divide ratio is off");
            errors = errors + 1;
        end
        if (seq_err != 0) begin
            $display("[ERR] sequence must remain contiguous under edge_skip");
        end

        //--------------------------------------------------------------
        // Case 4: hardware gate, EQ_STAND must equal GATE_LEN exactly
        //--------------------------------------------------------------
        $display("\n-- Case 4: hardware gate --");
        edge_skip = 32'd0;
        gate_len  = 32'd1000;   // 1000 clk_fs periods = 3.2 us
        #100;
        eq_start = 1'b1;
        #100;
        eq_start = 1'b0;

        wait (eq_done == 1'b1);
        #100;

        $display("   eq_stand=%0d (expect 1000), eq_test=%0d (expect about 32)",
                 eq_stand, eq_test);
        if (eq_stand !== 32'd1000) begin
            $display("[ERR] gate width not exact: %0d", eq_stand);
            errors = errors + 1;
        end
        // A 10 MHz signal gives about 32 periods in 3.2 us; allow +/-2 for
        // synchronizer latency
        if (eq_test < 29 || eq_test > 35) begin
            $display("[ERR] test count outside expected range: %0d", eq_test);
            errors = errors + 1;
        end

        //--------------------------------------------------------------
        // Summary
        //--------------------------------------------------------------
        errors = errors + seq_err + gap_err;
        $display("\n==== verification complete ====");
        $display("seq errors %0d, coarse errors %0d, total %0d", seq_err, gap_err, errors);
        if (errors == 0)
            $display("RESULT: PASS");
        else
            $display("RESULT: FAIL");

        $finish;
    end

    //------------------------------------------------------------------
    // Timeout guard
    //------------------------------------------------------------------
    initial begin
        #2000000;               // 2 ms
        $display("[ERR] simulation timeout");
        $finish;
    end

endmodule
