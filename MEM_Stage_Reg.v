`include "constants.h"

module MEM_Stage_Reg
(
    input                            clk,
    input                            rst,
    input                            MEM_R_EN_in,
    input                            WB_EN_in,
    input [`REG_FILE_DEPTH-1:0]      Dest_in,
    input [`WORD_WIDTH-1:0]          ALU_Res_in,
    input [`WORD_WIDTH-1:0]          MEM_in,

    output reg                       MEM_R_EN_out,
    output reg                       WB_EN_out,
    output reg [`REG_FILE_DEPTH-1:0] Dest_out,
    output reg [`WORD_WIDTH-1:0]     ALU_Res_out,
    output reg [`WORD_WIDTH-1:0]     MEM_out
);

always @(posedge clk, posedge rst) begin
    if(rst) begin
        Dest_out <= 0;
        MEM_out <= 0;
        ALU_Res_out <= 0;
        MEM_R_EN_out <= 0;
        WB_EN_out <= 0;
    end
    else begin
        Dest_out <= Dest_in;
        MEM_out <= MEM_in;
        ALU_Res_out <= ALU_Res_in;
        MEM_R_EN_out <= MEM_R_EN_in;
        WB_EN_out <= WB_EN_in;
    end
end

endmodule