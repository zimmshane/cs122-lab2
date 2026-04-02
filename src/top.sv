module top (
    /** Input Ports */
    input wire [3:0] bcd,
    /** Output Ports */
    output logic [6:0] seg7
);

/** Logic */
always_comb begin
    case (bcd)
        4'b0000: begin //0
            seg7 = 7'b1111110;
        end
        4'b0001: begin //1
            seg7 = 7'b0110000;
        end
        4'b0010: begin //2
            seg7 = 7'b1101101;
        end
        4'b0011: begin //3
            seg7 = 7'b1111001;
        end
        4'b0100: begin //4
            seg7 = 7'b0110011;
        end
        4'b0101: begin //5
            seg7 = 7'b1011011;
        end
        4'b0110: begin //6
            seg7 = 7'b1011111;
        end
        4'b0111: begin //7
            seg7 = 7'b1110000;
        end
        4'b1000: begin //8
            seg7 = 7'b1111111;
        end
        4'b1001: begin //9
            seg7 = 7'b1111011;
        end
        4'b1010: begin //A
            seg7 = 7'b1110111;
        end
        4'b1011: begin //B
            seg7 = 7'b0011111;
        end
        4'b1100: begin //C
            seg7 = 7'b1001110;
        end
        4'b1101: begin //D
            seg7 = 7'b0111101;
        end
        4'b1110: begin //E
            seg7 = 7'b1001111;
        end
        4'b1111: begin // F
            seg7 = 7'b1000111;
        end
        default: seg7 = 7'b0000001; // unknown
    endcase
end

endmodule