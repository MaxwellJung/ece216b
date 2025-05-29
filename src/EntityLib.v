`timescale 1 ns / 100 ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Tim Ling
// 
// Create Date: 05/06/2024
// Design Name: 
// Module Name: CADA_Primitive
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`define activehigh 1
`define activeedge posedge //if posedge activehigh should be 1, if negedge activehigh should be 0
`define procline posedge clk or `activeedge rst
`define proclineg posedge clk or `activeedge grst
`define proclineSlow posedge clkSlow or `activeedge rst
`define proclineFast posedge clkFast or `activeedge rst
`define proclinerclk posedge rclk or `activeedge rgrst
`define proclinewclk posedge wclk or `activeedge wgrst
`define grsttype "asynch"

module CADA_ADD (DataIn_1,DataIn_2,DataOut_1);
parameter DataIn_1_BW = 16;
    parameter DataIn_2_BW = 16;
    parameter DataOut_1_BW = 16;

    input signed [DataIn_1_BW - 1: 0] DataIn_1;
    input signed [DataIn_2_BW - 1: 0] DataIn_2;
    output  signed [DataOut_1_BW - 1:0] DataOut_1;

    ////////////////////////////////////////////////////////////////
    // Instruction : 00 B+A ; 01 B-A ; 10 -B+A ; 11 -B-A;

    ////////////////////////////////////////////////////////////////
    //  reg & wire declarations

    wire    [DataOut_1_BW - 1:0]   ALU_d2_w; // this is the output wire of the ALU

    // Combinational Logic
    assign ALU_d2_w = DataIn_2 + DataIn_1; // connecting the output wire of the ALU to its internal MUX
    assign DataOut_1 = ALU_d2_w;

endmodule

module CADA_Mult (DataOut_1, DataIn_1, DataIn_2);

    parameter DataIn_1_BW = 16;
    parameter DataIn_2_BW = 16;
    parameter DataOut_1_BW = 16;
    parameter scaleDown = 0;


    output signed [DataOut_1_BW - 1:0] DataOut_1;
    input signed [DataIn_1_BW - 1:0] DataIn_1;
    input signed [DataIn_2_BW - 1:0] DataIn_2;

    wire [DataIn_1_BW + DataIn_2_BW - 1: 0] rawOutputWire;
    assign rawOutputWire = (DataIn_1 * DataIn_2);
    assign DataOut_1 = rawOutputWire >>> scaleDown;
endmodule

module HA_ADD (DataIn_1,DataIn_2,inst,DataOut_1);


    parameter DataIn_1_BW = 16;
    parameter DataIn_2_BW = 16;
    parameter DataOut_1_BW = 16;

    input [DataIn_1_BW - 1: 0] DataIn_1;
    input [DataIn_2_BW - 1: 0] DataIn_2;
    input   [1:0] inst;
    output  [DataOut_1_BW - 1:0] DataOut_1;

    ////////////////////////////////////////////////////////////////
    // Instruction : 00 B+A ; 01 B-A ; 10 -B+A ; 11 -B-A;

    ////////////////////////////////////////////////////////////////
    //  reg & wire declarations
    wire    [DataOut_1_BW - 1:0]   out_inst_0; // Comment your code!NO!
    wire    [DataOut_1_BW - 1:0]   out_inst_1;
    wire    [DataOut_1_BW - 1:0]   out_inst_2;
    wire    [DataOut_1_BW - 1:0]   out_inst_3; // internal wires inside the ALU that connect to the MUX inside the ALU for each case select input

    reg     [DataOut_1_BW - 1:0]   ALU_out_inst; // this is the internal ALU MUX
    wire    [DataOut_1_BW - 1:0]   ALU_d2_w; // this is the output wire of the ALU

    // Combinational Logic
    assign ALU_d2_w = ALU_out_inst; // connecting the output wire of the ALU to its internal MUX
    assign DataOut_1 = ALU_d2_w;

    // ALU operations
    assign out_inst_0 = DataIn_2 + DataIn_1 ;
    assign out_inst_1 = DataIn_2 - DataIn_1 ;
    assign out_inst_2 = DataIn_1 - DataIn_2 ;
    assign out_inst_3 = - DataIn_2 - DataIn_1 ;
    // The output MUX
    always @(inst or out_inst_0 or out_inst_1 or out_inst_2 or out_inst_3) begin
        case(inst)
            2'b00:	    ALU_out_inst = out_inst_0; // Comment your code!
            2'b01:	    ALU_out_inst = out_inst_1;
            2'b10:	    ALU_out_inst = out_inst_2;
            2'b11:	    ALU_out_inst = out_inst_3;
        endcase
    end
endmodule

module HA_Mult (DataOut_1, DataIn_1, DataIn_2);

    parameter DataIn_1_BW = 16;
    parameter DataIn_2_BW = 16;
    parameter DataOut_1_BW = 16;


    output [DataOut_1_BW - 1:0] DataOut_1;
    input [DataIn_1_BW - 1:0] DataIn_1;
    input [DataIn_2_BW - 1:0] DataIn_2;

    wire [DataIn_1_BW + DataIn_2_BW - 1: 0] rawOutputWire;
    assign rawOutputWire = DataIn_1 * DataIn_2;
    assign DataOut_1 = rawOutputWire[DataOut_1_BW - 1: 0];
endmodule

module HA_Reg(clk, rst, DataIn_1, DataOut_1);

    parameter   DataIn_1_BW = 16;
    parameter   DataOut_1_BW = 16;
    input  clk, rst;
    input [DataIn_1_BW -1 : 0] DataIn_1;
    output [DataOut_1_BW -1 : 0] DataOut_1;

    reg [DataIn_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else
            iReg <= DataIn_1;
    end
    assign DataOut_1 = iReg;
endmodule

module CADA_Reg(clk, rst, DataIn_1, DataOut_1);

    parameter   DataIn_1_BW = 16;
    parameter   DataOut_1_BW = 16;
    input  clk, rst;
    input [DataIn_1_BW -1 : 0] DataIn_1;
    output reg [DataOut_1_BW -1 : 0] DataOut_1;

    always @(`procline)
    begin
        if (rst==`activehigh)
            DataOut_1 <= 0;
        else
            DataOut_1 <= DataIn_1;
    end
endmodule

module HA_CSTR(clk, rst, DataIn, DataOut_1, RW);
    parameter   DataOut_1_BW = 16;

    input  clk, rst, RW;
    input [DataOut_1_BW-1:0] DataIn;
    output [DataOut_1_BW-1:0] DataOut_1;
    reg [DataOut_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==1)
            iReg <= 0;
        else if (RW)
            iReg <= DataIn;
    end
    assign DataOut_1 = iReg;
endmodule

module HA_CONST(clk, rst, Value, DataOut_1, RW);
    parameter   DataOut_1_BW = 16;

    input  clk, rst, RW;
    input [DataOut_1_BW-1:0] Value;
    output [DataOut_1_BW-1:0] DataOut_1;
    reg [DataOut_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==1)
            iReg <= 0;
        else if (RW)
            iReg <= Value;
    end
    assign DataOut_1 = iReg;
endmodule

module HA_CReg(clk, rst, InstIn, InstOut, EN);
    parameter   Inst_BW = 16;

    input  clk, rst, EN;
    input [Inst_BW-1:0] InstIn;
    output [Inst_BW-1:0] InstOut;
    reg [Inst_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else if (EN)
            iReg <= InstIn;
    end
    assign InstOut = iReg;
endmodule

module CADA_IN(clk, rst, sel, DataIn_1, DataIn_2, DataOut_1);

    //parameter   Data_BW = 16;
    parameter DataIn_1_BW = 16;
    parameter DataIn_2_BW = 16;
    parameter DataOut_1_BW = 16;
    input  clk, rst, sel;
    input [DataIn_1_BW -1 : 0] DataIn_1, DataIn_2;
    output [DataIn_1_BW -1 : 0] DataOut_1;
    wire [DataIn_1_BW -1 : 0] inDataWire;
    assign inDataWire = sel ? DataIn_2 : DataIn_1;
    reg [DataIn_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else 
            iReg <= inDataWire;
    end
    assign DataOut_1 = iReg;
endmodule

module CADA_GIN(clk, rst, DataIn_1, DataOut_1);

    parameter   DataIn_1_BW = 16;
    parameter   DataOut_1_BW = 16;
    input  clk, rst;
    input [DataIn_1_BW -1 : 0] DataIn_1;
    output [DataOut_1_BW -1 : 0] DataOut_1;

    reg [DataIn_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else
            iReg <= DataIn_1;
    end
    assign DataOut_1 = iReg;
endmodule

module HA_IN(clk, rst, DataIn_1, DataOut_1);

    parameter   DataIn_1_BW = 16;
    parameter   DataOut_1_BW = 16;
    input  clk, rst;
    input [DataIn_1_BW -1 : 0] DataIn_1;
    output [DataOut_1_BW -1 : 0] DataOut_1;

    reg [DataIn_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else
            iReg <= DataIn_1;
    end
    assign DataOut_1 = iReg;
endmodule

module HA_OUT(clk, rst, DataIn_1, DataOut_1);

    parameter   DataIn_1_BW = 16;
    parameter   DataOut_1_BW = 16;
    input  clk, rst;
    input [DataIn_1_BW -1 : 0] DataIn_1;
    output [DataOut_1_BW -1 : 0] DataOut_1;

    reg [DataIn_1_BW-1:0] 	 iReg;

    always @(`procline)
    begin
        if (rst==`activehigh)
            iReg <= 0;
        else
            iReg <= DataIn_1;
    end
    assign DataOut_1 = iReg;
endmodule

module HA_5BM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, DataIn_26, DataIn_27, DataIn_28, DataIn_29, DataIn_30, DataIn_31, DataIn_32,sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;
    input [Mux_BW - 1: 0] DataIn_26;
    input [Mux_BW - 1: 0] DataIn_27;
    input [Mux_BW - 1: 0] DataIn_28;
    input [Mux_BW - 1: 0] DataIn_29;
    input [Mux_BW - 1: 0] DataIn_30;
    input [Mux_BW - 1: 0] DataIn_31;
    input [Mux_BW - 1: 0] DataIn_32;
    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_32 : DataIn_31) : (sel[0] ? DataIn_30 : DataIn_29)):(sel[1] ? (sel[0] ? DataIn_28 : DataIn_27) : (sel[0] ? DataIn_26 : DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_32IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, DataIn_26, DataIn_27, DataIn_28, DataIn_29, DataIn_30, DataIn_31, DataIn_32,sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;
    input [Mux_BW - 1: 0] DataIn_26;
    input [Mux_BW - 1: 0] DataIn_27;
    input [Mux_BW - 1: 0] DataIn_28;
    input [Mux_BW - 1: 0] DataIn_29;
    input [Mux_BW - 1: 0] DataIn_30;
    input [Mux_BW - 1: 0] DataIn_31;
    input [Mux_BW - 1: 0] DataIn_32;
    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_32 : DataIn_31) : (sel[0] ? DataIn_30 : DataIn_29)):(sel[1] ? (sel[0] ? DataIn_28 : DataIn_27) : (sel[0] ? DataIn_26 : DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_28IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, DataIn_26, DataIn_27, DataIn_28, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;
    input [Mux_BW - 1: 0] DataIn_26;
    input [Mux_BW - 1: 0] DataIn_27;
    input [Mux_BW - 1: 0] DataIn_28;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? ((sel[1] ? (sel[0] ? DataIn_28 : DataIn_27) : (sel[0] ? DataIn_26 : DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_27IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, DataIn_26, DataIn_27, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;
    input [Mux_BW - 1: 0] DataIn_26;
    input [Mux_BW - 1: 0] DataIn_27;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? ((sel[1] ? (DataIn_27) : (sel[0] ? DataIn_26 : DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_26IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, DataIn_26, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;
    input [Mux_BW - 1: 0] DataIn_26;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? (((sel[0] ? DataIn_26 : DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_25IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, DataIn_25, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;
    input [Mux_BW - 1: 0] DataIn_25;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[3] ? (((DataIn_25))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_24IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, DataIn_24, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;
    input [Mux_BW - 1: 0] DataIn_24;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? ((sel[2] ? (sel[1] ? (sel[0] ? DataIn_24 : DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_23IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, DataIn_23, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;
    input [Mux_BW - 1: 0] DataIn_23;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? ((sel[2] ? (sel[1] ? (DataIn_23) : (sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_22IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, DataIn_22, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;
    input [Mux_BW - 1: 0] DataIn_22;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? ((sel[2] ? ((sel[0] ? DataIn_22 : DataIn_21)):(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_21IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, DataIn_21, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;
    input [Mux_BW - 1: 0] DataIn_21;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? ((sel[2] ?  DataIn_21:(sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_20IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, DataIn_20, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;
    input [Mux_BW - 1: 0] DataIn_20;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (((sel[1] ? (sel[0] ? DataIn_20 : DataIn_19) : (sel[0] ? DataIn_18 : DataIn_17)))) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_19IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18, DataIn_19, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;
    input [Mux_BW - 1: 0] DataIn_19;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[1] ?  DataIn_19 : (sel[0] ? DataIn_18 : DataIn_17)) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_18IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17, DataIn_18,sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;
    input [Mux_BW - 1: 0] DataIn_18;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? (sel[0] ? DataIn_18 : DataIn_17) : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_17IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, DataIn_17,sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [Mux_BW - 1: 0] DataIn_17;

    input [4:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[4] ? DataIn_17 : (sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1))));
endmodule

module HA_16IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule
module HA_15IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;

    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[2] ? (sel[1] ?  DataIn_15 : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_14IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;

    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[2] ? (sel[0] ? DataIn_14 : DataIn_13):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_13IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[2] ?  DataIn_13 :(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_12IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;

    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? ((sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_11IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;

    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[1] ? DataIn_11 : (sel[0] ? DataIn_10 : DataIn_9)) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_10IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[0] ? DataIn_10 : DataIn_9) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_9IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? DataIn_9 : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_4BM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, DataIn_9, DataIn_10, DataIn_11, DataIn_12, DataIn_13, DataIn_14, DataIn_15, DataIn_16, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [Mux_BW - 1: 0] DataIn_9;
    input [Mux_BW - 1: 0] DataIn_10;
    input [Mux_BW - 1: 0] DataIn_11;
    input [Mux_BW - 1: 0] DataIn_12;
    input [Mux_BW - 1: 0] DataIn_13;
    input [Mux_BW - 1: 0] DataIn_14;
    input [Mux_BW - 1: 0] DataIn_15;
    input [Mux_BW - 1: 0] DataIn_16;
    input [3:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[3] ? (sel[2] ? (sel[1] ? (sel[0] ? DataIn_16 : DataIn_15) : (sel[0] ? DataIn_14 : DataIn_13)):(sel[1] ? (sel[0] ? DataIn_12 : DataIn_11) : (sel[0] ? DataIn_10 : DataIn_9))) : (sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1)));
endmodule

module HA_8IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [2:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1));
endmodule

module HA_7IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [2:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[2] ? (sel[1] ? DataIn_7 : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1));
endmodule

module HA_6IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [2:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[2] ? ((sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1));
endmodule

module HA_5IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [2:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[2] ? DataIn_5 :(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1));
endmodule

module HA_3BM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, DataIn_5, DataIn_6, DataIn_7, DataIn_8, sel, DataOut_1);

    parameter Mux_BW = 16;

    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [Mux_BW - 1: 0] DataIn_5;
    input [Mux_BW - 1: 0] DataIn_6;
    input [Mux_BW - 1: 0] DataIn_7;
    input [Mux_BW - 1: 0] DataIn_8;
    input [2:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  
    
    assign DataOut_1 = sel[2] ? (sel[1] ? (sel[0] ? DataIn_8 : DataIn_7) : (sel[0] ? DataIn_6 : DataIn_5)):(sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1));
endmodule

module HA_4IM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, sel, DataOut_1);

    parameter Mux_BW = 16;
      
    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [1:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  

    assign DataOut_1 = sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1);
endmodule
module HA_3IM(DataIn_1, DataIn_2, DataIn_3, sel, DataOut_1);

    parameter Mux_BW = 16;
      
    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [1:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  

    assign DataOut_1 = sel[1] ? DataIn_3 : (sel[0] ? DataIn_2 : DataIn_1);
endmodule

module HA_2BM(DataIn_1, DataIn_2, DataIn_3, DataIn_4, sel, DataOut_1);

    parameter Mux_BW = 16;
      
    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input [Mux_BW - 1: 0] DataIn_3;
    input [Mux_BW - 1: 0] DataIn_4;
    input [1:0] sel;
    output [Mux_BW - 1: 0] DataOut_1;
  

    assign DataOut_1 = sel[1] ? (sel[0] ? DataIn_4 : DataIn_3) : (sel[0] ? DataIn_2 : DataIn_1);
endmodule


module HA_2IM(DataIn_1, DataIn_2, sel, DataOut_1);

    parameter Mux_BW = 16;    
    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input sel;
    output [Mux_BW - 1: 0] DataOut_1;


    assign DataOut_1 = sel ? DataIn_2 : DataIn_1;
endmodule

module HA_1BM(DataIn_1, DataIn_2, sel, DataOut_1);

    parameter Mux_BW = 16;    
    input [Mux_BW - 1: 0] DataIn_1;
    input [Mux_BW - 1: 0] DataIn_2;
    input sel;
    output [Mux_BW - 1: 0] DataOut_1;


    assign DataOut_1 = sel ? DataIn_2 : DataIn_1;
endmodule

module HA_AXI_Driver(clk, rst, iLast, iRdy, iVld, oRdy, oVld, pInp, pOutp, oClk, aLast, aKeep, resultIn, oTestData, oConfig, oControl, gControl);

    localparam start_s = 4'b0000;
    localparam cmd_s = 4'b0001;
    localparam clk_H_s = 4'b0010;
    localparam clk_L_s = 4'b0011;
    localparam test_data_i_s = 4'b0100;
    localparam config_data_i_s = 4'b0101;
    localparam control_i_s = 4'b0110;
    localparam data_o_s = 4'b0111;
    localparam gControl_i_s = 4'b1000;

    parameter   dataBitwidth = 32;

    parameter TestDataBW = 64;
    reg [TestDataBW - 1:0] testData_r;
    output [TestDataBW - 1:0] oTestData;

    assign oTestData = testData_r;

    parameter DataOutputBW = 32;
    reg [DataOutputBW - 1:0] DataOutput_r;
    input [DataOutputBW - 1:0] resultIn;


    parameter ConfigBW = 256;
    reg [ConfigBW - 1:0] Config_r;

    output [ConfigBW - 1:0] oConfig;

    assign oConfig = Config_r;

    parameter ArrayControlBW = 32;
    reg [ArrayControlBW - 1:0] Control_r;
    output [ArrayControlBW - 1:0] oControl;
    assign oControl = Control_r;

    parameter GlobalControlBW = 32;
    reg [GlobalControlBW - 1:0] gControl_r;
    output [GlobalControlBW - 1:0] gControl;
    assign gControl = gControl_r;

    parameter TotalBW = 384;
    parameter ShiftOutCycle = 12;
    reg [DataOutputBW - 1:0] outputReg_ShiftR;

    parameter Array_Clk_div = 2;



    input  clk, rst, iVld, oRdy, iLast;
    output reg iRdy, oVld, oClk, aLast;
    input [dataBitwidth - 1:0] pInp;

    output reg[dataBitwidth - 1:0] pOutp;
    output reg[3:0] aKeep;

    reg[7:0] counter_out;

    reg[3:0] state_r;

    reg[2:0] clk_div_r;

    reg[31:0] testR;
    always @(posedge clk)
    begin
        if (rst == 1)
            begin
                iRdy <= 0;
                oVld <= 0;
                state_r <= 0;
                clk_div_r <= 0;
                oClk <= 0;

                testR <= 0;
                outputReg_ShiftR <= 0;
                testData_r <= 0;
                Config_r <= 0;
                Control_r <= 0;
                gControl_r <= 0;
                DataOutput_r <= 0;

                pOutp <= 32'd0;
                aKeep <= 4'b0000;
                aLast <= 1'b0;
                counter_out <= 0;
            end
        else
            begin
                case(state_r)
                    start_s: begin
                        aLast <= 1'b0;
                        oVld <= 1'b0;
                        iRdy  <= 1'b0;
                        aKeep <= 4'b0000;
                        if(iVld == 1)
                            begin
                                state_r <= cmd_s;
                                //state_r <= 2;
                            end
                        else
                            begin
                                state_r <= start_s;
                                //state_r <= 1;
                            end
                    end
                    cmd_s: begin
                        iRdy  <= 1'b1;
                        aLast <= 1'b0;
                        aKeep <= 4'b0000;
                        oVld <= 1'b0;
                        if(pInp == 1) //Clk Toggle
                            begin
                                state_r <= clk_H_s;
                                //oVld <= 1'b1;
                                //aLast <= 1'b1;
                            end
                        else if(pInp == 2) //Test Data Enter
                            begin
                                state_r <= test_data_i_s;
                            end
                        else if(pInp == 3) //Config Data Enter
                            begin
                                state_r  <= config_data_i_s;
                            end
                        else if(pInp == 4) //Control Enter
                            begin
                                state_r  <= control_i_s;
                            end
                        else if(pInp == 5) //Shift Data Out
                        begin
                            outputReg_ShiftR <= {DataOutput_r};
                            state_r <= data_o_s;
                        end
                        else if(pInp == 6) //Control Enter
                            begin
                                state_r  <= gControl_i_s;
                            end
                    end
                    test_data_i_s: begin
                        iRdy <= 1;
                        if(iVld == 1)
                            begin
                           
                                if(TestDataBW <= dataBitwidth)
                                    begin
                                        testData_r <= pInp;
                                    end
                                else if(TestDataBW > dataBitwidth)
                                begin
                                    testData_r <= {testData_r[TestDataBW - dataBitwidth - 1: 0], pInp};
                                end
                                if(iLast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= test_data_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r <= test_data_i_s;
                            end
                    end
                    config_data_i_s: begin
                        iRdy <= 1;
                        if(iVld == 1)
                            begin
                                if(ConfigBW  <= dataBitwidth)
                                    begin
                                        Config_r  <= pInp;
                                    end
                                else if(ConfigBW > dataBitwidth)
                                begin
                                    Config_r <= {Config_r[ConfigBW - dataBitwidth - 1: 0], pInp};
                                end
                                if(iLast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= config_data_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r <= config_data_i_s;
                            end
                    end
                    control_i_s : begin
                        iRdy <= 1;
                        if(iVld == 1)
                            begin
                                if(ArrayControlBW <= dataBitwidth)
                                    begin
                                        Control_r  <= pInp;
                                    end
                                else if(ArrayControlBW > dataBitwidth)
                                begin
                                    Control_r <= {Control_r[ArrayControlBW - dataBitwidth - 1: 0], pInp};
                                end
                                if(iLast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= control_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r  <= control_i_s;
                            end
                    end
                    gControl_i_s : begin
                        iRdy <= 1;
                        if(iVld == 1)
                            begin
                                if(GlobalControlBW <= dataBitwidth)
                                    begin
                                        gControl_r  <= pInp;
                                    end
                                else if(GlobalControlBW > dataBitwidth)
                                begin
                                    gControl_r <= {gControl_r[GlobalControlBW - dataBitwidth - 1: 0], pInp};
                                end
                                if(iLast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= gControl_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r  <= gControl_i_s;
                            end
                    end
                    clk_H_s: begin
                        iRdy <= 1'b0;
                        oClk <= 1'b1;
                        if(clk_div_r >= Array_Clk_div)
                            begin
                                state_r  <= clk_L_s;
                                clk_div_r <= 0;
                            end
                        else
                            begin
                                state_r  <= clk_H_s;
                                clk_div_r <= clk_div_r + 1;
                            end

                    end
                    clk_L_s: begin
                        oClk <= 1'b0;
                        if(clk_div_r >= Array_Clk_div)
                            begin
                                state_r  <= start_s;
                                clk_div_r <= 0;
                            end
                        else
                            begin
                                state_r  <= clk_L_s;
                                clk_div_r <= clk_div_r + 1;
                            end
                    end
                    data_o_s: begin
                        
                        aKeep <= 4'b1111;
                        iRdy <= 1'b0;
                        
                        if(oRdy == 1)
                            begin
                                oVld <= 1'b1;
                                if(counter_out < ShiftOutCycle - 1)
                                    begin
                                        aLast <= 1'b0;
                                        counter_out <= counter_out + 1;
                                        pOutp <=  outputReg_ShiftR[DataOutputBW - 1: DataOutputBW - dataBitwidth];
                                        outputReg_ShiftR <= outputReg_ShiftR << dataBitwidth;
                                    end
                                else if(counter_out == ShiftOutCycle - 1)
                                    begin
                                        aLast <= 1'b1;
                                        counter_out <= counter_out + 1;
                                        pOutp <=  outputReg_ShiftR[DataOutputBW - 1: DataOutputBW - dataBitwidth];
                                        outputReg_ShiftR <= outputReg_ShiftR << dataBitwidth;
                                    end
                                else if(counter_out == ShiftOutCycle - 0)
                                begin
                                    counter_out <= 0;
                                    aKeep <= 4'b0000;
                                    aLast <= 1'b0;
                                    oVld <= 1'b0;
                                    state_r <= start_s;
                                end
                            end
                        else
                            begin
                                state_r <= data_o_s;
                            end
                            
                    end
                    default: begin
                        pOutp <= 32'hAAAAAAAA;
                        state_r <= start_s;
                    end
                endcase
                //pOutp <= {10'b0, Control_r};
                DataOutput_r <= resultIn;
                //DataOutput_r <= {10'b0, Control_r};
            end
    end
endmodule


module HA_GND(DataOut_1);
    parameter DataOut_1_BW = 16;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = 0;
endmodule


module HA_WIN(DataIn_1, DataOut_1);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    input [DataIn_1_BW - 1: 0] DataIn_1;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = DataIn_1;
endmodule

module HA_INW(DataIn_1, DataOut_1);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    input [DataIn_1_BW - 1: 0] DataIn_1;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = DataIn_1;
endmodule

module HA_TW(DataIn_1, DataOut_1);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    input [DataIn_1_BW - 1: 0] DataIn_1;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = DataIn_1;
endmodule

module HA_OW(DataIn_1, DataOut_1);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    input [DataIn_1_BW - 1: 0] DataIn_1;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = DataIn_1;
endmodule

module HA_WOUT(DataIn_1, DataOut_1);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    input [DataIn_1_BW - 1: 0] DataIn_1;
    output [DataOut_1_BW - 1: 0] DataOut_1;
    assign DataOut_1 = DataIn_1;
endmodule


module CADA_MEMTop(DataIns,DataInm,DataOuts,DataOutm, WEs, WEm, Addrs, Addrm, rsts,rstm, clks, clkm);
    parameter DataIn_1_BW = 16;
    parameter DataOut_1_BW = 16;
    parameter Addr_BW = 8;
    input [DataIn_1_BW - 1: 0] DataInm, DataIns;
    output [DataOut_1_BW - 1: 0] DataOuts, DataOutm;
    input rstm, clkm, WEm;
    output rsts, clks, WEs;
    input [Addr_BW - 1: 0] Addrm;
    output [Addr_BW - 1: 0] Addrs;
    
endmodule

module CADA_LaneMerge(dataOut, dataIn1, dataIn2);
    input [15:0] dataIn1;
    input [15:0] dataIn2;
    output [42:0] dataOut;
    assign dataOut = {dataIn1, dataIn2};
endmodule

module CADA_LaneSplit(dataOut1, dataOut2, dataIn);
    
    input [42:0] dataIn;
    output [6:0] dataOut1;
    output [35:0] dataOut2;
    assign dataOut1 = dataIn[42:36];
    assign dataOut2 = dataIn[35:0];
endmodule

module CADA_MEMControlDual(clk, rst, valid1, valid2, DataIn, DataOut, addrOut1, writeEn1, startAddr1, strideInterval1, MEMin, MEMout, MWMWen1, MEMEn1, addrOut2, writeEn2, startAddr2, strideInterval2, MWMWen2, MEMEn2);

    parameter Data_bitWidth = 43;
    parameter addr_BW = 5;
    parameter stride_BW = 4;
    input  clk, rst, valid1, valid2;
    input [Data_bitWidth -1 : 0] DataIn, MEMin;
    output [Data_bitWidth -1 : 0] DataOut, MEMout;
    output [addr_BW -1 : 0] addrOut1, addrOut2;
    input [addr_BW -1 : 0] startAddr1, startAddr2;
    reg [addr_BW -1 : 0] addr_r1, addr_r2;
    input [stride_BW -1 : 0] strideInterval1, strideInterval2;
    reg [stride_BW -1 : 0] strideInterval_r1, strideInterval_r2;
    output MWMWen1, MEMEn1, MWMWen2, MEMEn2;
    input writeEn1, writeEn2;

    reg [Data_bitWidth - 1:0] dataRegIn, dataRegOut;
    reg stateReg1, stateReg2;
    reg writeEn_r1, MEMEn_r1, writeEn_r2, MEMEn_r2;
    localparam start_s = 0;
    localparam continue_s = 1;


    assign MWMWen1 = writeEn_r1;
    assign MWMWen2 = writeEn_r2;
    assign MEMout = dataRegIn;
    assign DataOut = dataRegOut;
    assign addrOut1 = addr_r1;
    assign addrOut2 = addr_r2;
    assign MEMEn1 = MEMEn_r1;
    assign MEMEn2 = MEMEn_r2;
 
    always @(`procline)
    begin  
        if (rst==`activehigh)
            begin
                dataRegIn <= 0;
                MEMEn_r1 <= 0;
                writeEn_r1 <= 0;
                stateReg1 <= 0;
                addr_r1 <= 0;
                strideInterval_r1 <= 0;
            end
        else
            begin

                case(stateReg1)
                    start_s: begin
                        if(valid1)
                            begin
                                stateReg1 <= continue_s;
                                addr_r1 <= startAddr1;
                                strideInterval_r1 <= strideInterval1;
                                writeEn_r1 <= writeEn1;
                                MEMEn_r1 <= 1;
                                dataRegIn <= DataIn; 
                            end
                        else
                            begin
                                stateReg1 <= start_s;
                                MEMEn_r1 <= 0;
                                writeEn_r1 <= 0;
                                addr_r1 <= 0;
                                strideInterval_r1 <= 0;
                                dataRegIn <= 0; 
                            end
                    end
                    continue_s: begin
                        if(valid1)
                            begin
                                stateReg1 <= continue_s;
                                addr_r1 <= addr_r1 + strideInterval_r1;
                                dataRegIn <= DataIn; 
                            end
                        else
                            begin
                                stateReg1 <= start_s;
                            end
                    end
                endcase
            end
    end

    always @(`procline)
    begin
        if (rst==`activehigh)
            begin
                dataRegOut <= 0;
                MEMEn_r2 <= 0;
                writeEn_r2 <= 0;
                stateReg2 <= 0;
                addr_r2 <= 0;
                strideInterval_r2 <= 0;
            end
        else
            begin
                dataRegOut <= MEMin;
                case(stateReg2)
                    start_s: begin
                        if(valid2)
                            begin
                                stateReg2 <= continue_s;
                                addr_r2 <= startAddr2;
                                strideInterval_r2 <= strideInterval2;
                                writeEn_r2 <= writeEn2;
                                MEMEn_r2 <= 1;
                            end
                        else
                            begin
                                stateReg2 <= start_s;
                                MEMEn_r2 <= 0;
                                writeEn_r2 <= 0;
                                addr_r2 <= 0;
                                strideInterval_r2 <= 0;
                            end
                    end
                    continue_s: begin
                        if(valid2)
                            begin
                                stateReg2 <= continue_s;
                                addr_r2 <= addr_r2 + strideInterval_r2;
                            end
                        else
                            begin
                                stateReg2 <= start_s;
                            end
                    end
                endcase
            end
    end
endmodule
module CADA_TDP_MemControlBurst #(    
    parameter DATA_WIDTH = 43,
    parameter ADDR_WIDTH = 5,
    parameter STRIDE_WIDTH = 4,
    parameter MEM_DELAY = 2
)
(
    input  wire clk,
    input  wire rst,
    
    // Port A Control (Context 1)
    input  wire valid_ctx1,
    output  wire [DATA_WIDTH-1:0] data_in_ctx1,
    input wire [DATA_WIDTH-1:0] data_out_ctx1,
    output wire [ADDR_WIDTH-1:0] addr_out_ctx1,
    input  wire [ADDR_WIDTH-1:0] start_addr_ctx1,
    input  wire [ADDR_WIDTH:0]   burst_count_ctx1,
    input  wire [STRIDE_WIDTH-1:0] stride_ctx1,
    input  wire write_en_ctx1,
    output wire mem_en_ctx1,
    output wire write_mem_en_ctx1,

    // Port B Control (Context 2)
    input  wire valid_ctx2,
    output  wire [DATA_WIDTH-1:0] data_in_ctx2,
    input wire [DATA_WIDTH-1:0] data_out_ctx2,
    output wire [ADDR_WIDTH-1:0] addr_out_ctx2,
    input  wire [ADDR_WIDTH-1:0] start_addr_ctx2,
    input  wire [ADDR_WIDTH:0]   burst_count_ctx2,
    input  wire [STRIDE_WIDTH-1:0] stride_ctx2,
    input  wire write_en_ctx2,
    output wire mem_en_ctx2,
    output wire write_mem_en_ctx2,
    output wire [DATA_WIDTH-1:0] data_to_Core,
    input wire [DATA_WIDTH-1:0] data_from_Core
);


    // FSM States
    localparam STATE_IDLE  = 1'b0;
    localparam STATE_BURST = 1'b1;

    // Context 1 (Port A)
    reg [ADDR_WIDTH-1:0] addr_reg_ctx1;
    reg [ADDR_WIDTH:0]   burst_counter_ctx1;
    reg [STRIDE_WIDTH-1:0] stride_reg_ctx1;
    reg state_ctx1;
    reg write_en_reg_ctx1, mem_en_reg_ctx1;
    reg [DATA_WIDTH-1:0] data_in_reg_ctx1;
    reg [DATA_WIDTH-1:0] data_out_reg_ctx1;
    // Context 2 (Port B)
    reg [ADDR_WIDTH-1:0] addr_reg_ctx2;
    reg [ADDR_WIDTH:0]   burst_counter_ctx2;
    reg [STRIDE_WIDTH-1:0] stride_reg_ctx2;
    reg state_ctx2;
    reg write_en_reg_ctx2, mem_en_reg_ctx2;
    reg [DATA_WIDTH-1:0] data_in_reg_ctx2;
    reg [DATA_WIDTH-1:0] data_out_reg_ctx2;
    // Outputs
    assign addr_out_ctx1 = addr_reg_ctx1;
    assign addr_out_ctx2 = addr_reg_ctx2;
    assign write_mem_en_ctx1 = write_en_reg_ctx1;
    assign mem_en_ctx1 = mem_en_reg_ctx1;
    assign write_mem_en_ctx2 = write_en_reg_ctx2;
    assign mem_en_ctx2 = mem_en_reg_ctx2;
    assign data_to_Core = data_out_reg_ctx2; // You can adjust depending on read
    assign data_in_ctx1 = data_in_reg_ctx1;
    // Port A FSM (Context 1)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr_reg_ctx1 <= 0;
            burst_counter_ctx1 <= 0;
            stride_reg_ctx1 <= 0;
            state_ctx1 <= STATE_IDLE;
            write_en_reg_ctx1 <= 0;
            mem_en_reg_ctx1 <= 0;
            data_in_reg_ctx1 <= 0;
        end else begin
            case (state_ctx1)
                STATE_IDLE: begin
                    if (valid_ctx1) begin
                        addr_reg_ctx1 <= start_addr_ctx1;
                        burst_counter_ctx1 <= burst_count_ctx1;
                        stride_reg_ctx1 <= stride_ctx1;
                        write_en_reg_ctx1 <= write_en_ctx1;
                        mem_en_reg_ctx1 <= 1;
                        data_in_reg_ctx1 <= data_from_Core;
                        state_ctx1 <= STATE_BURST;
                    end else begin
                        write_en_reg_ctx1 <= 1;
                        mem_en_reg_ctx1 <= 0;
                    end
                end

                STATE_BURST: begin
                    if (burst_counter_ctx1 == 0) begin
                        mem_en_reg_ctx1 <= 0;
                        state_ctx1 <= STATE_IDLE;
                    end else begin
                        addr_reg_ctx1 <= addr_reg_ctx1 + stride_reg_ctx1;
                        burst_counter_ctx1 <= burst_counter_ctx1 - 1;
                        mem_en_reg_ctx1 <= 1;
                        data_in_reg_ctx1 <= data_from_Core;
                    end
                end
            endcase
        end
    end

    // Port B FSM (Context 2)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            addr_reg_ctx2 <= 0;
            burst_counter_ctx2 <= 0;
            stride_reg_ctx2 <= 0;
            state_ctx2 <= STATE_IDLE;
            write_en_reg_ctx2 <= 0;
            mem_en_reg_ctx2 <= 0;
            data_in_reg_ctx2 <= 0;
            data_out_reg_ctx2 <=0;
        end else begin
            case (state_ctx2)
                STATE_IDLE: begin
                    if (valid_ctx2) begin
                        addr_reg_ctx2 <= start_addr_ctx2;
                        burst_counter_ctx2 <= burst_count_ctx2 + MEM_DELAY;
                        stride_reg_ctx2 <= stride_ctx2;
                        write_en_reg_ctx2 <= write_en_ctx2;
                        mem_en_reg_ctx2 <= 1;
                        data_out_reg_ctx2 <= data_out_ctx2;
                        state_ctx2 <= STATE_BURST;
                    end else begin
                        mem_en_reg_ctx2 <= 0;
                        data_out_reg_ctx2 <= 0;
                    end
                end

                STATE_BURST: begin
                    if (burst_counter_ctx2 == 0) begin
                        mem_en_reg_ctx2 <= 0;
                        state_ctx2 <= STATE_IDLE;
                        data_out_reg_ctx2 <= 0;
                    end else begin
                        addr_reg_ctx2 <= addr_reg_ctx2 + stride_reg_ctx2;
                        burst_counter_ctx2 <= burst_counter_ctx2 - 1;
                        mem_en_reg_ctx2 <= 1;
                        data_out_reg_ctx2 <= data_out_ctx2;
                    end
                end
            endcase
        end
    end

endmodule

module CADA_AXIS_Driver #(
    parameter DATA_WIDTH = 32,
    parameter A_IN_WIDTH = 64,
    parameter A_OUT_WIDTH = 64,
    parameter A_CONTROL_WIDTH = 64,
    parameter A_GCONTROL_WIDTH = 64,
    parameter A_CFIG_WIDTH = 64,
    parameter A_LAT_WIDTH = 64,
    parameter CLKDIV = 2
)(
    input wire clk,
    input wire resetn,
    
    // AXI Stream Write Interface
    output reg [DATA_WIDTH-1:0] m_axis_tdata,
    output reg m_axis_tvalid,
    input wire m_axis_tready,
    output reg m_axis_tlast,
    
    // AXI Stream Read Interface
    input wire [DATA_WIDTH-1:0] s_axis_tdata,
    input wire s_axis_tvalid,
    output reg s_axis_tready,
    input wire s_axis_tlast,
    
    output reg [A_IN_WIDTH-1:0] asic_datain, 
    input wire [A_OUT_WIDTH-1:0] asic_dataout, 
    output reg [A_CONTROL_WIDTH-1:0] asic_control, 
    output reg [A_GCONTROL_WIDTH-1:0] asic_gcontrol, 
    output reg [A_CFIG_WIDTH-1:0] asic_config,
    output reg [A_LAT_WIDTH-1:0] asic_latency,
    output reg asic_clk
);
    localparam start_s = 4'b0000;
    localparam cmd_s = 4'b0001;
    localparam clk_H_s = 4'b0010;
    localparam clk_L_s = 4'b0011;
    localparam data_i_s = 4'b0100;
    localparam config_i_s = 4'b0101;
    localparam control_i_s = 4'b0110;
    localparam data_o_s = 4'b0111;
    localparam gControl_i_s = 4'b1000;
    localparam latency_i_s = 4'b1001;

    //reg [A_OUT_WIDTH - 1:0] outData_r;
    //assign outData_r = asic_dataout;

    //reg [A_CFIG_WIDTH - 1:0] config_r;
    //assign asic_config = config_r;

    //reg [A_CONTROL_WIDTH - 1:0] control_r;
    //assign asic_control = control_r;

    //reg [A_GCONTROL_WIDTH - 1:0] gControl_r;
    //assign asic_gcontrol = gControl_r;

    localparam ShiftOutCycle = A_OUT_WIDTH / DATA_WIDTH;
    reg[A_OUT_WIDTH - 1:0] dataFromASIC_r;
    reg[7:0] counter_out;
    reg[3:0] state_r;
    reg[3:0] clkdiv_r;
    always @(posedge clk)
    begin
        if (!resetn)
            begin
                state_r <= 0;
                asic_clk <= 0;
                clkdiv_r <= 0;
                
                asic_datain <= 0;
                asic_config <= 0;
                asic_control <= 0;
                asic_gcontrol <= 0;
                asic_latency <= 0;

                s_axis_tready <= 0;
                m_axis_tvalid <= 0;
                m_axis_tdata <= 32'd0;
                m_axis_tlast <= 1'b0;
                counter_out <= 0;
            end
        else
            begin
                case(state_r)
                    start_s: begin
                        m_axis_tlast <= 1'b0;
                        m_axis_tvalid <= 1'b0;
                        s_axis_tready  <= 1'b0;
                        counter_out <= 0;
                        if(s_axis_tvalid == 1)
                            begin
                                state_r <= cmd_s;
                            end
                        else
                            begin
                                state_r <= start_s;
                            end
                    end
                    cmd_s: begin
                        s_axis_tready  <= 1'b1;
                        m_axis_tlast <= 1'b0;
                        m_axis_tvalid <= 1'b0;
                        if(s_axis_tdata == 1) //Clk Toggle
                            state_r <= clk_H_s;
                        else if(s_axis_tdata == 2) //Test Data Enter
                            state_r <= data_i_s;
                        else if(s_axis_tdata == 3) //Config Data Enter
                            state_r  <= config_i_s;
                        else if(s_axis_tdata == 4) //Control Enter
                            state_r  <= control_i_s;
                        else if(s_axis_tdata == 5) //Shift Data Out
                        begin
                            dataFromASIC_r <= asic_dataout;
                            state_r <= data_o_s;
                        end
                        else if(s_axis_tdata == 6) //Control Enter
                            state_r  <= gControl_i_s;
                        else if(s_axis_tdata == 7) //Control Enter
                            state_r  <= latency_i_s;    
                    end
                    data_i_s: begin
                        s_axis_tready <= 1;
                        if(s_axis_tvalid == 1)
                            begin
                                if(A_IN_WIDTH <= DATA_WIDTH)
                                    begin
                                        asic_datain <= s_axis_tdata;
                                    end
                                else if(A_IN_WIDTH > DATA_WIDTH)
                                begin
                                    asic_datain <= {asic_datain[A_IN_WIDTH - DATA_WIDTH - 1: 0], s_axis_tdata};
                                end
                                if(s_axis_tlast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= data_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r <= data_i_s;
                            end
                    end
                    config_i_s: begin
                        s_axis_tready <= 1;
                        if(s_axis_tvalid == 1)
                            begin
                                if(A_CFIG_WIDTH  <= DATA_WIDTH)
                                    begin
                                        asic_config  <= s_axis_tdata;
                                    end
                                else if(A_CFIG_WIDTH > DATA_WIDTH)
                                begin
                                    asic_config <= {asic_config[A_CFIG_WIDTH - DATA_WIDTH - 1: 0], s_axis_tdata};
                                end
                                if(s_axis_tlast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= config_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r <= config_i_s;
                            end
                    end
                    control_i_s : begin
                        s_axis_tready <= 1;
                        if(s_axis_tvalid == 1)
                            begin
                                if(A_CONTROL_WIDTH <= DATA_WIDTH)
                                    begin
                                        asic_control  <= s_axis_tdata;
                                    end
                                else if(A_CONTROL_WIDTH > DATA_WIDTH)
                                begin
                                    asic_control <= {asic_control[A_CONTROL_WIDTH - DATA_WIDTH - 1: 0], s_axis_tdata};
                                end
                                if(s_axis_tlast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= control_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r  <= control_i_s;
                            end
                    end
                    gControl_i_s : begin
                        s_axis_tready <= 1;
                        if(s_axis_tvalid == 1)
                            begin
                                if(A_GCONTROL_WIDTH <= DATA_WIDTH)
                                    begin
                                        asic_gcontrol  <= s_axis_tdata;
                                    end
                                else if(A_GCONTROL_WIDTH > DATA_WIDTH)
                                begin
                                    asic_gcontrol <= {asic_gcontrol[A_GCONTROL_WIDTH - DATA_WIDTH - 1: 0], s_axis_tdata};
                                end
                                if(s_axis_tlast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= gControl_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r  <= gControl_i_s;
                            end
                    end
                    latency_i_s : begin
                        s_axis_tready <= 1;
                        if(s_axis_tvalid == 1)
                            begin
                                if(A_LAT_WIDTH <= DATA_WIDTH)
                                    begin
                                        asic_latency  <= s_axis_tdata;
                                    end
                                else if(A_LAT_WIDTH > DATA_WIDTH)
                                begin
                                    asic_latency <= {asic_latency[A_LAT_WIDTH - DATA_WIDTH - 1: 0], s_axis_tdata};
                                end
                                if(s_axis_tlast == 1)
                                    begin
                                        state_r <= start_s;
                                    end
                                else
                                    begin
                                        state_r <= latency_i_s ;
                                    end
                            end
                        else
                            begin
                                state_r  <= latency_i_s;
                            end
                    end
                    clk_H_s: begin
                        s_axis_tready <= 1'b0;
                        asic_clk <= 1'b1;
                        if(clkdiv_r >= CLKDIV)
                            begin
                                state_r  <= clk_L_s;
                                clkdiv_r <= 0;
                            end
                        else
                            begin
                                state_r  <= clk_H_s;
                                clkdiv_r <= clkdiv_r + 1;
                            end

                    end
                    clk_L_s: begin
                        asic_clk <= 1'b0;
                        if(clkdiv_r >= CLKDIV)
                            begin
                                state_r  <= start_s;
                                clkdiv_r <= 0;
                            end
                        else
                            begin
                                state_r  <= clk_L_s;
                                clkdiv_r <= clkdiv_r + 1;
                            end
                    end
                    data_o_s: begin
                        s_axis_tready <= 1'b0;
                        if(m_axis_tready == 1)
                            begin
                                m_axis_tvalid <= 1'b1;
                                if(A_OUT_WIDTH >= DATA_WIDTH)
                                    m_axis_tdata <=  dataFromASIC_r[A_OUT_WIDTH - 1: A_OUT_WIDTH - DATA_WIDTH];
                                else
                                    m_axis_tdata <=  dataFromASIC_r;
                                
                                if(counter_out < ShiftOutCycle)
                                    begin
                                        m_axis_tlast <= 1'b0;
                                        dataFromASIC_r <= dataFromASIC_r << DATA_WIDTH;
                                    end
                                else
                                    begin
                                        m_axis_tlast <= 1'b1;
                                        state_r <= start_s;
                                    end
                               counter_out <= counter_out + 1;
                            end
                        else
                            begin
                                state_r <= data_o_s;
                            end
                    end
                    default: begin
                        m_axis_tdata <= s_axis_tdata;
                        state_r <= start_s;
                    end
                endcase
            end
    end
endmodule

module CADA_fifo #(
    parameter DATA_WIDTH = 8,
    parameter FIFO_DEPTH = 16
)(
    input wire clk,
    input wire rst_n,
    input wire write_en,
    input wire read_en,
    input wire [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out,
    output wire full,
    output wire empty
);

reg [DATA_WIDTH-1:0] mem [FIFO_DEPTH-1:0];
reg [$clog2(FIFO_DEPTH)-1:0] write_ptr, read_ptr;
reg [$clog2(FIFO_DEPTH+1)-1:0] fifo_count;

// FIFO Counter
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        fifo_count <= 0;
    else begin
        case ({write_en && !full, read_en && !empty})
            2'b10: fifo_count <= fifo_count + 1;
            2'b01: fifo_count <= fifo_count - 1;
            default: fifo_count <= fifo_count; 
        endcase
    end
end

// Write operation
always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        write_ptr <= 0;
    else if (write_en && !full) begin
        mem[write_ptr] <= data_in;
        write_ptr <= (write_ptr == FIFO_DEPTH - 1) ? 0 : write_ptr + 1;
    end
end

// Read operation
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        read_ptr <= 0;
        data_out <= 0;
    end else if (read_en && !empty) begin
        data_out <= mem[read_ptr];
        read_ptr <= (read_ptr == FIFO_DEPTH - 1) ? 0 : read_ptr + 1;
    end
end

// Status flags
assign full  = (fifo_count == FIFO_DEPTH);
assign empty = (fifo_count == 0);

endmodule