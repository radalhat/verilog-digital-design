module counter_fsm (
    input  wire       clk,
    input  wire       rst_n,
    input  wire       enable,
    input  wire       seq_in,
    output reg  [3:0] count,
    output reg        fsm_out
);

    // ---------------------------------------------------------
    // 1. 4-bit Synchronous Up-Counter with Enable
    // ---------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            count <= 4'b0000;
        end else if (enable) begin
            count <= count + 1'b1;
        end
    end

    // ---------------------------------------------------------
    // 2. 3-State Moore FSM (Sequence Detector: e.g., detects "101")
    // ---------------------------------------------------------
    localparam S0 = 2'b00;
    localparam S1 = 2'b01;
    localparam S2 = 2'b10;

    reg [1:0] current_state, next_state;

    // State Register
    always @(posedge clk) begin
        if (!rst_n) begin
            current_state <= S0;
        end else begin
            current_state <= next_state;
        end
    end

    // Next State Logic
    always @(*) begin
        next_state = current_state;
        case (current_state)
            S0: begin
                if (seq_in) next_state = S1;
                else        next_state = S0;
            end
            S1: begin
                if (seq_in) next_state = S1;
                else        next_state = S2;
            end
            S2: begin
                if (seq_in) next_state = S1; // Overlapping sequence detection
                else        next_state = S0;
            end
            default: next_state = S0;
        endcase
    end

    // Moore Output Generation (Asserted only in S2)
    always @(posedge clk) begin
        if (!rst_n) begin
            fsm_out <= 1'b0;
        end else begin
            fsm_out <= (current_state == S2);
        end
    end

endmodule
