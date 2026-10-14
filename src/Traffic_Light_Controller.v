
`timescale 1ns / 1ps

module Traffic_Light_Controller (
    input clk,
    input rst,
    output reg [2:0] light_M1,
    output reg [2:0] light_M2,
    output reg [2:0] light_MT,
    output reg [2:0] light_S,
    output reg [3:0] count,
    output reg [2:0] ps
);

    parameter S1 = 0, S2 = 1, S3 = 2,
              S4 = 3, S5 = 4, S6 = 5;

    parameter Tmg = 7, Ty = 2, Tsg = 5, Ts = 3;

    // State transition and counter logic
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            ps <= S1;
            count <= 0;
        end else begin
            case (ps)
                S1: if (count < Tmg) begin
                    ps <= S1;
                    count <= count + 1'b1;
                end else begin
                    ps <= S2;
                    count <= 0;
                end

                S2: if (count < Ty) begin
                    ps <= S2;
                    count <= count + 1'b1;
                end else begin
                    ps <= S3;
                    count <= 0;
                end

                S3: if (count < Tmg) begin
                    ps <= S3;
                    count <= count + 1'b1;
                end else begin
                    ps <= S4;
                    count <= 0;
                end

                S4: if (count < Ty) begin
                    ps <= S4;
                    count <= count + 1'b1;
                end else begin
                    ps <= S5;
                    count <= 0;
                end

                S5: if (count < Ts) begin
                    ps <= S5;
                    count <= count + 1'b1;
                end else begin
                    ps <= S6;
                    count <= 0;
                end

                S6: if (count < Ty) begin
                    ps <= S6;
                    count <= count + 1'b1;
                end else begin
                    ps <= S1;
                    count <= 0;
                end

                default: begin
                    ps <= S1;
                    count <= 0;
                end
            endcase
        end
    end

    // Combinational traffic light outputs
    always @(*) begin
        light_M1 = 3'b000;
        light_M2 = 3'b000;
        light_MT = 3'b000;
        light_S  = 3'b000;

        case (ps)
            S1: begin
                light_M1 = 3'b001;
                light_M2 = 3'b001;
                light_MT = 3'b100;
                light_S  = 3'b100;
            end

            S2: begin
                light_M1 = 3'b001;
                light_M2 = 3'b010;
                light_MT = 3'b100;
                light_S  = 3'b100;
            end

            S3: begin
                light_M1 = 3'b001;
                light_M2 = 3'b100;
                light_MT = 3'b001;
                light_S  = 3'b100;
            end

            S4: begin
                light_M1 = 3'b010;
                light_M2 = 3'b100;
                light_MT = 3'b010;
                light_S  = 3'b100;
            end

            S5: begin
                light_M1 = 3'b100;
                light_M2 = 3'b100;
                light_MT = 3'b100;
                light_S  = 3'b001;
            end

            S6: begin
                light_M1 = 3'b100;
                light_M2 = 3'b100;
                light_MT = 3'b100;
                light_S  = 3'b010;
            end

            default: begin
                light_M1 = 3'b000;
                light_M2 = 3'b000;
                light_MT = 3'b000;
                light_S  = 3'b000;
            end
        endcase
    end

endmodule
