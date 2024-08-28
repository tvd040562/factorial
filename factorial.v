typedef enum {
    START,
    CAL,
    RESULT
} state_type;

module factorial (
    input clk,
    input reset,
    input start,
    input [7:0] fdata_in,
    output done,
    output reg [15:0] fdata_out
);

    state_type state, nx_state;
    reg [15:0] nx_result, result;
    reg [7:0] nx_mult, mult;

	assign done = (state == RESULT) ? 1:0;
    always_comb begin
        case (state)
            START: begin
                if (start) begin
                    nx_result = fdata_in;
                    nx_mult = fdata_in - 1;
                    nx_state = CAL;
                end else begin
                    nx_result = result;
                    nx_mult = mult;
                    nx_state = state;
				end
            end
            CAL: begin
                if (mult == 1) begin
                    nx_result = result;
                    nx_mult = mult;
                    nx_state = RESULT;
                end else begin
                    nx_result = result * mult;
                    nx_mult = mult - 1;
                    nx_state = state;
                end
            end
            default: begin
                nx_result = result;
                nx_mult = mult;
                nx_state = START;
            end
        endcase
    end

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            state = START;
            result = 0;
            mult = 0;
            fdata_out = 0;
        end else begin
            state = nx_state;
            result = nx_result;
            mult = nx_mult;
            if (done)
                fdata_out = result;
        end
    end
endmodule
