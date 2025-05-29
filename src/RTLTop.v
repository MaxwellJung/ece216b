module ArrayTop(

clk,

rst,

dataOut,

dataIn,

configIn,

controlIn,

gControlIn

);

input  clk, rst; 

output [287:0] dataOut; 

input [4607:0] dataIn; 

input [10:0] configIn; 

input [35:0] controlIn; 

input [161:0] gControlIn; 

wire [287:0] topOutputData_w; 

wire [4607:0] topInputData_w; 

wire [10:0] oConfig_w; 

wire [35:0] oControl_w; 

wire [161:0] gControl_w; 

assign dataOut = topOutputData_w; 

assign topInputData_w = dataIn; 

assign oConfig_w = configIn; 

assign oControl_w = controlIn; 

assign gControl_w = gControlIn; 

wire [10:0]MS_OConfigS0_w0;

wire [10:0]MS_IConfigS0_w0;

HA_Reg MS_ConfigS0_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w0),

.DataOut_1(MS_OConfigS0_w0)

);

defparam MS_ConfigS0_0.DataIn_1_BW = 11;

defparam MS_ConfigS0_0.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w0;

wire [3:0]MS_OEnS0_w0;

HA_Reg MS_EnS0_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w0),

.DataOut_1(MS_OEnS0_w0)

);

defparam MS_EnS0_0.DataIn_1_BW = 4;

defparam MS_EnS0_0.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w1;

wire [10:0]MS_IConfigS0_w1;

HA_Reg MS_ConfigS0_1(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w1),

.DataOut_1(MS_OConfigS0_w1)

);

defparam MS_ConfigS0_1.DataIn_1_BW = 11;

defparam MS_ConfigS0_1.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w1;

wire [3:0]MS_OEnS0_w1;

HA_Reg MS_EnS0_1(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w1),

.DataOut_1(MS_OEnS0_w1)

);

defparam MS_EnS0_1.DataIn_1_BW = 4;

defparam MS_EnS0_1.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w2;

wire [10:0]MS_IConfigS0_w2;

HA_Reg MS_ConfigS0_2(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w2),

.DataOut_1(MS_OConfigS0_w2)

);

defparam MS_ConfigS0_2.DataIn_1_BW = 11;

defparam MS_ConfigS0_2.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w2;

wire [3:0]MS_OEnS0_w2;

HA_Reg MS_EnS0_2(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w2),

.DataOut_1(MS_OEnS0_w2)

);

defparam MS_EnS0_2.DataIn_1_BW = 4;

defparam MS_EnS0_2.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w3;

wire [10:0]MS_IConfigS0_w3;

HA_Reg MS_ConfigS0_3(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w3),

.DataOut_1(MS_OConfigS0_w3)

);

defparam MS_ConfigS0_3.DataIn_1_BW = 11;

defparam MS_ConfigS0_3.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w3;

wire [3:0]MS_OEnS0_w3;

HA_Reg MS_EnS0_3(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w3),

.DataOut_1(MS_OEnS0_w3)

);

defparam MS_EnS0_3.DataIn_1_BW = 4;

defparam MS_EnS0_3.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w4;

wire [10:0]MS_IConfigS0_w4;

HA_Reg MS_ConfigS0_4(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w4),

.DataOut_1(MS_OConfigS0_w4)

);

defparam MS_ConfigS0_4.DataIn_1_BW = 11;

defparam MS_ConfigS0_4.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w4;

wire [3:0]MS_OEnS0_w4;

HA_Reg MS_EnS0_4(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w4),

.DataOut_1(MS_OEnS0_w4)

);

defparam MS_EnS0_4.DataIn_1_BW = 4;

defparam MS_EnS0_4.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w5;

wire [10:0]MS_IConfigS0_w5;

HA_Reg MS_ConfigS0_5(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w5),

.DataOut_1(MS_OConfigS0_w5)

);

defparam MS_ConfigS0_5.DataIn_1_BW = 11;

defparam MS_ConfigS0_5.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w5;

wire [3:0]MS_OEnS0_w5;

HA_Reg MS_EnS0_5(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w5),

.DataOut_1(MS_OEnS0_w5)

);

defparam MS_EnS0_5.DataIn_1_BW = 4;

defparam MS_EnS0_5.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w6;

wire [10:0]MS_IConfigS0_w6;

HA_Reg MS_ConfigS0_6(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w6),

.DataOut_1(MS_OConfigS0_w6)

);

defparam MS_ConfigS0_6.DataIn_1_BW = 11;

defparam MS_ConfigS0_6.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w6;

wire [3:0]MS_OEnS0_w6;

HA_Reg MS_EnS0_6(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w6),

.DataOut_1(MS_OEnS0_w6)

);

defparam MS_EnS0_6.DataIn_1_BW = 4;

defparam MS_EnS0_6.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w7;

wire [10:0]MS_IConfigS0_w7;

HA_Reg MS_ConfigS0_7(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w7),

.DataOut_1(MS_OConfigS0_w7)

);

defparam MS_ConfigS0_7.DataIn_1_BW = 11;

defparam MS_ConfigS0_7.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w7;

wire [3:0]MS_OEnS0_w7;

HA_Reg MS_EnS0_7(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w7),

.DataOut_1(MS_OEnS0_w7)

);

defparam MS_EnS0_7.DataIn_1_BW = 4;

defparam MS_EnS0_7.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS0_w8;

wire [10:0]MS_IConfigS0_w8;

HA_Reg MS_ConfigS0_8(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS0_w8),

.DataOut_1(MS_OConfigS0_w8)

);

defparam MS_ConfigS0_8.DataIn_1_BW = 11;

defparam MS_ConfigS0_8.DataOut_1_BW = 11;

wire [3:0]MS_IEnS0_w8;

wire [3:0]MS_OEnS0_w8;

HA_Reg MS_EnS0_8(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS0_w8),

.DataOut_1(MS_OEnS0_w8)

);

defparam MS_EnS0_8.DataIn_1_BW = 4;

defparam MS_EnS0_8.DataOut_1_BW = 4;

wire [10:0]MS_OConfigS1_w0;

wire [10:0]MS_IConfigS1_w0;

HA_Reg MS_ConfigS1_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS1_w0),

.DataOut_1(MS_OConfigS1_w0)

);

defparam MS_ConfigS1_0.DataIn_1_BW = 11;

defparam MS_ConfigS1_0.DataOut_1_BW = 11;

wire [15:0]MS_IEnS1_w0;

wire [15:0]MS_OEnS1_w0;

HA_Reg MS_EnS1_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS1_w0),

.DataOut_1(MS_OEnS1_w0)

);

defparam MS_EnS1_0.DataIn_1_BW = 16;

defparam MS_EnS1_0.DataOut_1_BW = 16;

assign MS_IConfigS0_w0 = MS_OConfigS1_w0;

assign MS_IEnS0_w0 = MS_OEnS1_w0[15:12];

assign MS_IConfigS0_w1 = MS_OConfigS1_w0;

assign MS_IEnS0_w1 = MS_OEnS1_w0[11:8];

assign MS_IConfigS0_w2 = MS_OConfigS1_w0;

assign MS_IEnS0_w2 = MS_OEnS1_w0[7:4];

assign MS_IConfigS0_w3 = MS_OConfigS1_w0;

assign MS_IEnS0_w3 = MS_OEnS1_w0[3:0];

wire [10:0]MS_OConfigS1_w1;

wire [10:0]MS_IConfigS1_w1;

HA_Reg MS_ConfigS1_1(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS1_w1),

.DataOut_1(MS_OConfigS1_w1)

);

defparam MS_ConfigS1_1.DataIn_1_BW = 11;

defparam MS_ConfigS1_1.DataOut_1_BW = 11;

wire [15:0]MS_IEnS1_w1;

wire [15:0]MS_OEnS1_w1;

HA_Reg MS_EnS1_1(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS1_w1),

.DataOut_1(MS_OEnS1_w1)

);

defparam MS_EnS1_1.DataIn_1_BW = 16;

defparam MS_EnS1_1.DataOut_1_BW = 16;

assign MS_IConfigS0_w4 = MS_OConfigS1_w1;

assign MS_IEnS0_w4 = MS_OEnS1_w1[15:12];

assign MS_IConfigS0_w5 = MS_OConfigS1_w1;

assign MS_IEnS0_w5 = MS_OEnS1_w1[11:8];

assign MS_IConfigS0_w6 = MS_OConfigS1_w1;

assign MS_IEnS0_w6 = MS_OEnS1_w1[7:4];

assign MS_IConfigS0_w7 = MS_OConfigS1_w1;

assign MS_IEnS0_w7 = MS_OEnS1_w1[3:0];

wire [10:0]MS_OConfigS1_w2;

wire [10:0]MS_IConfigS1_w2;

HA_Reg MS_ConfigS1_2(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS1_w2),

.DataOut_1(MS_OConfigS1_w2)

);

defparam MS_ConfigS1_2.DataIn_1_BW = 11;

defparam MS_ConfigS1_2.DataOut_1_BW = 11;

wire [3:0]MS_IEnS1_w2;

wire [3:0]MS_OEnS1_w2;

HA_Reg MS_EnS1_2(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS1_w2),

.DataOut_1(MS_OEnS1_w2)

);

defparam MS_EnS1_2.DataIn_1_BW = 4;

defparam MS_EnS1_2.DataOut_1_BW = 4;

assign MS_IConfigS0_w8 = MS_OConfigS1_w2;

assign MS_IEnS0_w8 = MS_OEnS1_w2[3:0];

wire [10:0]MS_OConfigS2_w0;

wire [10:0]MS_IConfigS2_w0;

HA_Reg MS_ConfigS2_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IConfigS2_w0),

.DataOut_1(MS_OConfigS2_w0)

);

defparam MS_ConfigS2_0.DataIn_1_BW = 11;

defparam MS_ConfigS2_0.DataOut_1_BW = 11;

wire [35:0]MS_IEnS2_w0;

wire [35:0]MS_OEnS2_w0;

HA_Reg MS_EnS2_0(

.clk(clk),

.rst(rst),

.DataIn_1(MS_IEnS2_w0),

.DataOut_1(MS_OEnS2_w0)

);

defparam MS_EnS2_0.DataIn_1_BW = 36;

defparam MS_EnS2_0.DataOut_1_BW = 36;

assign MS_IConfigS1_w0 = MS_OConfigS2_w0;

assign MS_IEnS1_w0 = MS_OEnS2_w0[35:20];

assign MS_IConfigS1_w1 = MS_OConfigS2_w0;

assign MS_IEnS1_w1 = MS_OEnS2_w0[19:4];

assign MS_IConfigS1_w2 = MS_OConfigS2_w0;

assign MS_IEnS1_w2 = MS_OEnS2_w0[3:0];

assign MS_IConfigS2_w0 = oConfig_w[10:0]; 

assign MS_IEnS2_w0 = oControl_w;

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_0_VSTop_Config_Reg_EN; 

wire [3:0] V0_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_0_VSTop_Config_Reg_EN; 

wire [3:0] V1_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_0_VSTop_Config_Reg_EN; 

wire [3:0] V2_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_0_VSTop_Config_Reg_EN; 

wire [3:0] V3_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_0_VSTop_Config_Reg_EN; 

wire [3:0] V4_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_0_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_0_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_0_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_0_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_0_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_0_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_0_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_0_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_0_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_0_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_0_VSTop_Config_Reg_EN; 

wire [3:0] V5_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_0_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_0_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_0_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_0_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_0_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_0_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_0_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_0_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_0_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_0_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_0_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_0_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_0_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_0_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_0_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_0_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_0_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_0_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_0_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_0_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_0_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_0_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_0_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_0_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_0_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V0_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_1_VSTop_Config_Reg_EN; 

wire [3:0] V0_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_1_VSTop_Config_Reg_EN; 

wire [3:0] V1_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_1_VSTop_Config_Reg_EN; 

wire [3:0] V2_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_1_VSTop_Config_Reg_EN; 

wire [3:0] V3_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_1_VSTop_Config_Reg_EN; 

wire [3:0] V4_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_1_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_1_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_1_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_1_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_1_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_1_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_1_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_1_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_1_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_1_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_1_VSTop_Config_Reg_EN; 

wire [3:0] V5_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_1_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_1_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_1_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_1_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_1_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_1_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_1_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_1_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_1_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_1_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_1_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_1_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_1_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_1_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_1_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_1_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_1_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_1_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_1_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_1_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_1_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_1_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_1_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_1_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_1_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V0_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_2_VSTop_Config_Reg_EN; 

wire [3:0] V0_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_2_VSTop_Config_Reg_EN; 

wire [3:0] V1_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_2_VSTop_Config_Reg_EN; 

wire [3:0] V2_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_2_VSTop_Config_Reg_EN; 

wire [3:0] V3_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_2_VSTop_Config_Reg_EN; 

wire [3:0] V4_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_2_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_2_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_2_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_2_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_2_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_2_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_2_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_2_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_2_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_2_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_2_VSTop_Config_Reg_EN; 

wire [3:0] V5_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_2_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_2_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_2_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_2_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_2_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_2_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_2_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_2_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_2_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_2_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_2_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_2_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_2_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_2_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_2_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_2_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_2_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_2_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_2_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_2_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_2_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_2_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_2_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_2_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_2_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V0_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_3_VSTop_Config_Reg_EN; 

wire [3:0] V0_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_3_VSTop_Config_Reg_EN; 

wire [3:0] V1_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_3_VSTop_Config_Reg_EN; 

wire [3:0] V2_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_3_VSTop_Config_Reg_EN; 

wire [3:0] V3_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_3_VSTop_Config_Reg_EN; 

wire [3:0] V4_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_3_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_3_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_3_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_3_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_3_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_3_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_3_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_3_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_3_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_3_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_3_VSTop_Config_Reg_EN; 

wire [3:0] V5_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_3_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_3_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_3_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_3_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_3_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_3_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_3_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_3_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_3_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_3_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_3_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_3_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_3_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_3_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_3_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_3_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_3_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_3_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_3_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_3_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_3_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_3_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_3_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_3_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_3_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V0_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_4_VSTop_Config_Reg_EN; 

wire [3:0] V0_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_4_VSTop_Config_Reg_EN; 

wire [3:0] V1_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_4_VSTop_Config_Reg_EN; 

wire [3:0] V2_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_4_VSTop_Config_Reg_EN; 

wire [3:0] V3_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_4_VSTop_Config_Reg_EN; 

wire [3:0] V4_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_4_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_4_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_4_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_4_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_4_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_4_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_4_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_4_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_4_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_4_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_4_VSTop_Config_Reg_EN; 

wire [3:0] V5_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_4_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_4_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_4_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_4_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_4_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_4_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_4_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_4_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_4_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_4_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_4_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_4_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_4_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_4_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_4_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_4_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_4_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_4_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_4_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_4_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_4_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_4_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_4_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_4_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_4_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V0_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V0_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V0_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V0_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V0_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V0_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V0_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V0_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V0_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V0_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V0_5_VSTop_Config_Reg_EN; 

wire [3:0] V0_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V0_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V0_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V0_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V0_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V0_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V0_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V0_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V0_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V0_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V0_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V0_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V0_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V0_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V0_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V0_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V0_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V0_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V0_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V0_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V0_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V0_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V0_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V0_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V0_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V0_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V0_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V0_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V0_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V0_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V0_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V0_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V0_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V1_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V1_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V1_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V1_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V1_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V1_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V1_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V1_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V1_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V1_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V1_5_VSTop_Config_Reg_EN; 

wire [3:0] V1_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V1_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V1_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V1_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V1_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V1_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V1_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V1_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V1_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V1_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V1_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V1_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V1_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V1_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V1_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V1_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V1_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V1_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V1_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V1_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V1_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V1_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V1_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V1_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V1_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V1_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V1_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V1_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V1_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V1_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V1_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V1_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V1_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V2_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V2_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V2_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V2_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V2_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V2_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V2_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V2_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V2_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V2_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V2_5_VSTop_Config_Reg_EN; 

wire [3:0] V2_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V2_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V2_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V2_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V2_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V2_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V2_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V2_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V2_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V2_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V2_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V2_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V2_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V2_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V2_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V2_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V2_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V2_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V2_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V2_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V2_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V2_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V2_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V2_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V2_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V2_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V2_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V2_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V2_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V2_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V2_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V2_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V2_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V3_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V3_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V3_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V3_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V3_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V3_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V3_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V3_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V3_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V3_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V3_5_VSTop_Config_Reg_EN; 

wire [3:0] V3_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V3_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V3_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V3_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V3_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V3_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V3_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V3_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V3_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V3_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V3_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V3_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V3_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V3_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V3_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V3_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V3_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V3_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V3_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V3_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V3_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V3_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V3_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V3_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V3_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V3_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V3_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V3_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V3_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V3_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V3_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V3_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V3_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V4_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V4_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V4_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V4_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V4_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V4_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V4_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V4_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V4_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V4_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V4_5_VSTop_Config_Reg_EN; 

wire [3:0] V4_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V4_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V4_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V4_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V4_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V4_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V4_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V4_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V4_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V4_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V4_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V4_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V4_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V4_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V4_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V4_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V4_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V4_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V4_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V4_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V4_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V4_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V4_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V4_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V4_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V4_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V4_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V4_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V4_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V4_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V4_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V4_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V4_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



wire [31:0] V5_5_VSTop_VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] V5_5_VSTop_DSE_Solution_L0_GlobalIn0; 

wire [31:0] V5_5_VSTop_DSE_Solution_L0_GlobalIn1; 

wire [31:0] V5_5_VSTop_DSE_Solution_L0_GlobalIn2; 

wire [31:0] V5_5_VSTop_DSE_Solution_L0_GlobalIn3; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] V5_5_VSTop_VS_DSE_Solution_L5_t5_O0_3; 

wire [0:0] V5_5_VSTop_DSE_Solution_L0_GlobalSel0; 

wire [0:0] V5_5_VSTop_DSE_Solution_L0_GlobalSel1; 

wire [0:0] V5_5_VSTop_DSE_Solution_L0_GlobalSel2; 

wire [0:0] V5_5_VSTop_DSE_Solution_L0_GlobalSel3; 

wire [0:0] V5_5_VSTop_Config_Reg_EN; 

wire [3:0] V5_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

wire [2:0] V5_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

wire [1:0] V5_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

wire [1:0] V5_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

VSTop V5_5_VSTop( 

.clk(clk),

.rst(rst),

.VSTop_VS_DSE_Solution_L1_t1_In0_1(V5_5_VSTop_VS_DSE_Solution_L1_t1_In0_1),

.VSTop_VS_DSE_Solution_L1_t2_In0_2(V5_5_VSTop_VS_DSE_Solution_L1_t2_In0_2),

.VSTop_VS_DSE_Solution_L1_t4_In0_3(V5_5_VSTop_VS_DSE_Solution_L1_t4_In0_3),

.VSTop_VS_DSE_Solution_L2_t1_In0_1(V5_5_VSTop_VS_DSE_Solution_L2_t1_In0_1),

.VSTop_VS_DSE_Solution_L2_t4_In0_2(V5_5_VSTop_VS_DSE_Solution_L2_t4_In0_2),

.VSTop_VS_DSE_Solution_L3_t2_In0_1(V5_5_VSTop_VS_DSE_Solution_L3_t2_In0_1),

.VSTop_VS_DSE_Solution_L3_t4_In0_2(V5_5_VSTop_VS_DSE_Solution_L3_t4_In0_2),

.VSTop_DSE_Solution_L0_GlobalIn0(V5_5_VSTop_DSE_Solution_L0_GlobalIn0),

.VSTop_DSE_Solution_L0_GlobalIn1(V5_5_VSTop_DSE_Solution_L0_GlobalIn1),

.VSTop_DSE_Solution_L0_GlobalIn2(V5_5_VSTop_DSE_Solution_L0_GlobalIn2),

.VSTop_DSE_Solution_L0_GlobalIn3(V5_5_VSTop_DSE_Solution_L0_GlobalIn3),

.VSTop_VS_DSE_Solution_L2_t2_O0_6(V5_5_VSTop_VS_DSE_Solution_L2_t2_O0_6),

.VSTop_VS_DSE_Solution_L2_t3_O0_7(V5_5_VSTop_VS_DSE_Solution_L2_t3_O0_7),

.VSTop_VS_DSE_Solution_L2_t4_O0_8(V5_5_VSTop_VS_DSE_Solution_L2_t4_O0_8),

.VSTop_VS_DSE_Solution_L3_t2_O0_5(V5_5_VSTop_VS_DSE_Solution_L3_t2_O0_5),

.VSTop_VS_DSE_Solution_L3_t3_O0_6(V5_5_VSTop_VS_DSE_Solution_L3_t3_O0_6),

.VSTop_VS_DSE_Solution_L4_t2_O0_3(V5_5_VSTop_VS_DSE_Solution_L4_t2_O0_3),

.VSTop_VS_DSE_Solution_L4_t4_O0_4(V5_5_VSTop_VS_DSE_Solution_L4_t4_O0_4),

.VSTop_VS_DSE_Solution_L5_t5_O0_3(V5_5_VSTop_VS_DSE_Solution_L5_t5_O0_3),

.VSTop_Config_Reg_EN(V5_5_VSTop_Config_Reg_EN),

.VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn(V5_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn(V5_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn(V5_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn),

.VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn(V5_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn),

.VSTop_DSE_Solution_L0_GlobalSel0(V5_5_VSTop_DSE_Solution_L0_GlobalSel0),

.VSTop_DSE_Solution_L0_GlobalSel1(V5_5_VSTop_DSE_Solution_L0_GlobalSel1),

.VSTop_DSE_Solution_L0_GlobalSel2(V5_5_VSTop_DSE_Solution_L0_GlobalSel2),

.VSTop_DSE_Solution_L0_GlobalSel3(V5_5_VSTop_DSE_Solution_L0_GlobalSel3)

); 



assign V0_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V0_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_0_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V0_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V0_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V1_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V0_0_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_0_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V2_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_0_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V1_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_0_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V1_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V1_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V2_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V1_0_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V1_0_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V1_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_0_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V3_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_0_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V2_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V1_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_0_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V2_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V2_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V3_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V2_0_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V1_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V2_0_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_0_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_0_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V3_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V4_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_0_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V3_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V2_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_0_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V3_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V3_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V4_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V3_0_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V2_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V3_0_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_0_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_0_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_0_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V5_0_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_0_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V4_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V4_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V3_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_0_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V4_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V5_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V4_0_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V3_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V4_0_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_0_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_0_VSTop_VS_DSE_Solution_L1_t1_In0_1 = 0;

assign V5_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V5_1_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V5_0_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V4_0_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_0_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_0_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V5_0_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V4_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V5_0_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_0_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_0_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V0_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_1_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V0_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_1_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V1_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V0_1_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_1_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_1_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V1_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_1_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V2_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V1_1_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V1_1_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V1_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_1_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V3_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_1_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V2_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V1_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_1_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V3_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V2_1_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V1_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V2_1_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_1_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_1_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_1_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V3_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V2_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_1_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V3_1_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V2_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V3_1_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_1_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_1_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_1_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_1_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_1_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V4_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V4_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V3_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_1_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V4_1_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V3_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V4_1_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_1_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V5_2_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V5_1_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V4_1_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_1_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_1_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V4_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V5_1_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_1_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_1_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V0_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_2_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V0_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_2_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V1_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V0_2_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_2_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_2_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V1_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_2_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V2_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V1_2_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V1_2_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V1_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_2_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V3_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_2_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V2_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V1_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_2_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V3_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V2_2_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V1_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V2_2_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_2_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_2_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_2_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V3_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V2_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_2_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V3_2_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V2_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V3_2_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_2_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_2_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_2_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_2_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_2_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V4_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V4_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V3_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_2_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V4_2_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V3_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V4_2_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_2_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V5_3_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V5_2_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V4_2_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_2_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_2_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V4_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V5_2_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_2_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_2_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V0_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_3_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V0_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_3_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V1_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V0_3_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_3_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_3_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V1_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_3_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V2_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V1_3_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V1_3_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V1_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_3_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V3_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_3_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V2_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V1_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_3_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V3_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V2_3_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V1_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V2_3_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_3_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_3_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_3_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V3_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V2_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_3_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V3_3_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V2_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V3_3_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_3_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_3_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_3_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_3_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_3_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V4_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V4_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V3_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_3_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V4_3_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V3_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V4_3_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_3_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V5_4_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V5_3_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V4_3_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_3_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_3_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V4_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V5_3_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_3_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_3_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V0_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_4_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V0_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_4_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V1_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V0_4_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_4_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_4_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V1_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V0_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_4_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V2_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V1_4_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V0_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V1_4_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V1_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_4_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V3_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_4_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V2_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V1_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_4_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V3_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V2_4_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V1_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V2_4_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_4_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_4_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_4_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V3_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V2_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_4_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V3_4_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V2_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V3_4_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_4_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_4_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_4_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_4_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_4_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V4_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V4_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V3_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_4_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = V4_4_VSTop_VS_DSE_Solution_L3_t2_O0_5;

assign V3_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V4_4_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V4_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_4_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V5_5_VSTop_VS_DSE_Solution_L1_t1_In0_1 = V5_4_VSTop_VS_DSE_Solution_L2_t3_O0_7;

assign V4_4_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_4_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_4_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V4_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = V5_4_VSTop_VS_DSE_Solution_L3_t3_O0_6;

assign V5_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_4_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_4_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V0_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = 0;

assign V1_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V0_5_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_5_VSTop_VS_DSE_Solution_L2_t4_In0_2 = 0;

assign V0_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V2_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V0_5_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V2_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V1_5_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V0_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V1_5_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V1_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = 0;

assign V3_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V1_5_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V3_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V2_5_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V1_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V2_5_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V2_5_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V0_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V2_5_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V4_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V3_5_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V2_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V3_5_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_5_VSTop_VS_DSE_Solution_L3_t4_In0_2 = V3_5_VSTop_VS_DSE_Solution_L4_t2_O0_3;

assign V1_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V3_5_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_5_VSTop_VS_DSE_Solution_L1_t4_In0_3 = V4_5_VSTop_VS_DSE_Solution_L2_t2_O0_6;

assign V3_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V4_5_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V4_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V2_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V4_5_VSTop_VS_DSE_Solution_L4_t4_O0_4;

assign V5_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = 0;

assign V4_5_VSTop_VS_DSE_Solution_L1_t2_In0_2 = V5_5_VSTop_VS_DSE_Solution_L2_t4_O0_8;

assign V5_5_VSTop_VS_DSE_Solution_L2_t1_In0_1 = 0;

assign V5_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = 0;

assign V3_5_VSTop_VS_DSE_Solution_L3_t2_In0_1 = V5_5_VSTop_VS_DSE_Solution_L4_t4_O0_4;





assign V0_0_VSTop_Config_Reg_EN = MS_OEnS0_w0[3:3];

assign V0_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w0[3:0];

assign V0_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w0[6:4];

assign V0_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w0[8:7];

assign V0_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w0[10:9];

assign V1_0_VSTop_Config_Reg_EN = MS_OEnS0_w0[2:2];

assign V1_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w0[3:0];

assign V1_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w0[6:4];

assign V1_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w0[8:7];

assign V1_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w0[10:9];

assign V2_0_VSTop_Config_Reg_EN = MS_OEnS0_w0[1:1];

assign V2_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w0[3:0];

assign V2_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w0[6:4];

assign V2_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w0[8:7];

assign V2_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w0[10:9];

assign V3_0_VSTop_Config_Reg_EN = MS_OEnS0_w0[0:0];

assign V3_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w0[3:0];

assign V3_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w0[6:4];

assign V3_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w0[8:7];

assign V3_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w0[10:9];

assign V4_0_VSTop_Config_Reg_EN = MS_OEnS0_w1[3:3];

assign V4_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w1[3:0];

assign V4_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w1[6:4];

assign V4_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w1[8:7];

assign V4_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w1[10:9];

assign V5_0_VSTop_Config_Reg_EN = MS_OEnS0_w1[2:2];

assign V5_0_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w1[3:0];

assign V5_0_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w1[6:4];

assign V5_0_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w1[8:7];

assign V5_0_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w1[10:9];

assign V0_1_VSTop_Config_Reg_EN = MS_OEnS0_w1[1:1];

assign V0_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w1[3:0];

assign V0_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w1[6:4];

assign V0_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w1[8:7];

assign V0_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w1[10:9];

assign V1_1_VSTop_Config_Reg_EN = MS_OEnS0_w1[0:0];

assign V1_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w1[3:0];

assign V1_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w1[6:4];

assign V1_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w1[8:7];

assign V1_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w1[10:9];

assign V2_1_VSTop_Config_Reg_EN = MS_OEnS0_w2[3:3];

assign V2_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w2[3:0];

assign V2_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w2[6:4];

assign V2_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w2[8:7];

assign V2_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w2[10:9];

assign V3_1_VSTop_Config_Reg_EN = MS_OEnS0_w2[2:2];

assign V3_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w2[3:0];

assign V3_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w2[6:4];

assign V3_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w2[8:7];

assign V3_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w2[10:9];

assign V4_1_VSTop_Config_Reg_EN = MS_OEnS0_w2[1:1];

assign V4_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w2[3:0];

assign V4_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w2[6:4];

assign V4_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w2[8:7];

assign V4_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w2[10:9];

assign V5_1_VSTop_Config_Reg_EN = MS_OEnS0_w2[0:0];

assign V5_1_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w2[3:0];

assign V5_1_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w2[6:4];

assign V5_1_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w2[8:7];

assign V5_1_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w2[10:9];

assign V0_2_VSTop_Config_Reg_EN = MS_OEnS0_w3[3:3];

assign V0_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w3[3:0];

assign V0_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w3[6:4];

assign V0_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w3[8:7];

assign V0_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w3[10:9];

assign V1_2_VSTop_Config_Reg_EN = MS_OEnS0_w3[2:2];

assign V1_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w3[3:0];

assign V1_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w3[6:4];

assign V1_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w3[8:7];

assign V1_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w3[10:9];

assign V2_2_VSTop_Config_Reg_EN = MS_OEnS0_w3[1:1];

assign V2_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w3[3:0];

assign V2_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w3[6:4];

assign V2_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w3[8:7];

assign V2_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w3[10:9];

assign V3_2_VSTop_Config_Reg_EN = MS_OEnS0_w3[0:0];

assign V3_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w3[3:0];

assign V3_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w3[6:4];

assign V3_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w3[8:7];

assign V3_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w3[10:9];

assign V4_2_VSTop_Config_Reg_EN = MS_OEnS0_w4[3:3];

assign V4_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w4[3:0];

assign V4_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w4[6:4];

assign V4_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w4[8:7];

assign V4_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w4[10:9];

assign V5_2_VSTop_Config_Reg_EN = MS_OEnS0_w4[2:2];

assign V5_2_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w4[3:0];

assign V5_2_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w4[6:4];

assign V5_2_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w4[8:7];

assign V5_2_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w4[10:9];

assign V0_3_VSTop_Config_Reg_EN = MS_OEnS0_w4[1:1];

assign V0_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w4[3:0];

assign V0_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w4[6:4];

assign V0_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w4[8:7];

assign V0_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w4[10:9];

assign V1_3_VSTop_Config_Reg_EN = MS_OEnS0_w4[0:0];

assign V1_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w4[3:0];

assign V1_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w4[6:4];

assign V1_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w4[8:7];

assign V1_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w4[10:9];

assign V2_3_VSTop_Config_Reg_EN = MS_OEnS0_w5[3:3];

assign V2_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w5[3:0];

assign V2_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w5[6:4];

assign V2_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w5[8:7];

assign V2_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w5[10:9];

assign V3_3_VSTop_Config_Reg_EN = MS_OEnS0_w5[2:2];

assign V3_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w5[3:0];

assign V3_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w5[6:4];

assign V3_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w5[8:7];

assign V3_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w5[10:9];

assign V4_3_VSTop_Config_Reg_EN = MS_OEnS0_w5[1:1];

assign V4_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w5[3:0];

assign V4_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w5[6:4];

assign V4_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w5[8:7];

assign V4_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w5[10:9];

assign V5_3_VSTop_Config_Reg_EN = MS_OEnS0_w5[0:0];

assign V5_3_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w5[3:0];

assign V5_3_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w5[6:4];

assign V5_3_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w5[8:7];

assign V5_3_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w5[10:9];

assign V0_4_VSTop_Config_Reg_EN = MS_OEnS0_w6[3:3];

assign V0_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w6[3:0];

assign V0_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w6[6:4];

assign V0_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w6[8:7];

assign V0_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w6[10:9];

assign V1_4_VSTop_Config_Reg_EN = MS_OEnS0_w6[2:2];

assign V1_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w6[3:0];

assign V1_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w6[6:4];

assign V1_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w6[8:7];

assign V1_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w6[10:9];

assign V2_4_VSTop_Config_Reg_EN = MS_OEnS0_w6[1:1];

assign V2_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w6[3:0];

assign V2_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w6[6:4];

assign V2_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w6[8:7];

assign V2_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w6[10:9];

assign V3_4_VSTop_Config_Reg_EN = MS_OEnS0_w6[0:0];

assign V3_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w6[3:0];

assign V3_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w6[6:4];

assign V3_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w6[8:7];

assign V3_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w6[10:9];

assign V4_4_VSTop_Config_Reg_EN = MS_OEnS0_w7[3:3];

assign V4_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w7[3:0];

assign V4_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w7[6:4];

assign V4_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w7[8:7];

assign V4_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w7[10:9];

assign V5_4_VSTop_Config_Reg_EN = MS_OEnS0_w7[2:2];

assign V5_4_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w7[3:0];

assign V5_4_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w7[6:4];

assign V5_4_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w7[8:7];

assign V5_4_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w7[10:9];

assign V0_5_VSTop_Config_Reg_EN = MS_OEnS0_w7[1:1];

assign V0_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w7[3:0];

assign V0_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w7[6:4];

assign V0_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w7[8:7];

assign V0_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w7[10:9];

assign V1_5_VSTop_Config_Reg_EN = MS_OEnS0_w7[0:0];

assign V1_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w7[3:0];

assign V1_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w7[6:4];

assign V1_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w7[8:7];

assign V1_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w7[10:9];

assign V2_5_VSTop_Config_Reg_EN = MS_OEnS0_w8[3:3];

assign V2_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w8[3:0];

assign V2_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w8[6:4];

assign V2_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w8[8:7];

assign V2_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w8[10:9];

assign V3_5_VSTop_Config_Reg_EN = MS_OEnS0_w8[2:2];

assign V3_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w8[3:0];

assign V3_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w8[6:4];

assign V3_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w8[8:7];

assign V3_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w8[10:9];

assign V4_5_VSTop_Config_Reg_EN = MS_OEnS0_w8[1:1];

assign V4_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w8[3:0];

assign V4_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w8[6:4];

assign V4_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w8[8:7];

assign V4_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w8[10:9];

assign V5_5_VSTop_Config_Reg_EN = MS_OEnS0_w8[0:0];

assign V5_5_VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn = MS_OConfigS0_w8[3:0];

assign V5_5_VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn = MS_OConfigS0_w8[6:4];

assign V5_5_VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn = MS_OConfigS0_w8[8:7];

assign V5_5_VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn = MS_OConfigS0_w8[10:9];

wire [31:0] GIN_0_0_0_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_0_0_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[0:0];

assign GIN_0_0_0_0 = topInputData_w[31:0];

wire [31:0] GIN_0_0_1_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_0_1_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[1:1];

assign GIN_0_0_1_0 = topInputData_w[63:32];

wire [31:0] GIN_0_0_2_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_0_2_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[2:2];

assign GIN_0_0_2_0 = topInputData_w[95:64];

wire [31:0] GIN_0_0_3_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_0_3_0;

assign V0_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[3:3];

assign GIN_0_0_3_0 = topInputData_w[127:96];

wire [31:0] GIN_0_1_0_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_1_0_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[4:4];

assign GIN_0_1_0_0 = topInputData_w[159:128];

wire [31:0] GIN_0_1_1_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_1_1_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[5:5];

assign GIN_0_1_1_0 = topInputData_w[191:160];

wire [31:0] GIN_0_1_2_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_1_2_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[6:6];

assign GIN_0_1_2_0 = topInputData_w[223:192];

wire [31:0] GIN_0_1_3_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_1_3_0;

assign V1_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[7:7];

assign GIN_0_1_3_0 = topInputData_w[255:224];

wire [31:0] GIN_0_2_0_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_2_0_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[8:8];

assign GIN_0_2_0_0 = topInputData_w[287:256];

wire [31:0] GIN_0_2_1_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_2_1_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[9:9];

assign GIN_0_2_1_0 = topInputData_w[319:288];

wire [31:0] GIN_0_2_2_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_2_2_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[10:10];

assign GIN_0_2_2_0 = topInputData_w[351:320];

wire [31:0] GIN_0_2_3_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_2_3_0;

assign V2_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[11:11];

assign GIN_0_2_3_0 = topInputData_w[383:352];

wire [31:0] GIN_0_3_0_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_3_0_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[12:12];

assign GIN_0_3_0_0 = topInputData_w[415:384];

wire [31:0] GIN_0_3_1_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_3_1_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[13:13];

assign GIN_0_3_1_0 = topInputData_w[447:416];

wire [31:0] GIN_0_3_2_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_3_2_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[14:14];

assign GIN_0_3_2_0 = topInputData_w[479:448];

wire [31:0] GIN_0_3_3_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_3_3_0;

assign V3_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[15:15];

assign GIN_0_3_3_0 = topInputData_w[511:480];

wire [31:0] GIN_0_4_0_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_4_0_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[16:16];

assign GIN_0_4_0_0 = topInputData_w[543:512];

wire [31:0] GIN_0_4_1_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_4_1_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[17:17];

assign GIN_0_4_1_0 = topInputData_w[575:544];

wire [31:0] GIN_0_4_2_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_4_2_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[18:18];

assign GIN_0_4_2_0 = topInputData_w[607:576];

wire [31:0] GIN_0_4_3_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_4_3_0;

assign V4_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[19:19];

assign GIN_0_4_3_0 = topInputData_w[639:608];

wire [31:0] GIN_0_5_0_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_0_5_0_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[20:20];

assign GIN_0_5_0_0 = topInputData_w[671:640];

wire [31:0] GIN_0_5_1_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_0_5_1_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[21:21];

assign GIN_0_5_1_0 = topInputData_w[703:672];

wire [31:0] GIN_0_5_2_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_0_5_2_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[22:22];

assign GIN_0_5_2_0 = topInputData_w[735:704];

wire [31:0] GIN_0_5_3_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_0_5_3_0;

assign V5_0_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[23:23];

assign GIN_0_5_3_0 = topInputData_w[767:736];

wire [31:0] GIN_1_0_0_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_0_0_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[24:24];

assign GIN_1_0_0_0 = topInputData_w[799:768];

wire [31:0] GIN_1_0_1_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_0_1_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[25:25];

assign GIN_1_0_1_0 = topInputData_w[831:800];

wire [31:0] GIN_1_0_2_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_0_2_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[26:26];

assign GIN_1_0_2_0 = topInputData_w[863:832];

wire [31:0] GIN_1_0_3_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_0_3_0;

assign V0_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[27:27];

assign GIN_1_0_3_0 = topInputData_w[895:864];

wire [31:0] GIN_1_1_0_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_1_0_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[28:28];

assign GIN_1_1_0_0 = topInputData_w[927:896];

wire [31:0] GIN_1_1_1_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_1_1_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[29:29];

assign GIN_1_1_1_0 = topInputData_w[959:928];

wire [31:0] GIN_1_1_2_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_1_2_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[30:30];

assign GIN_1_1_2_0 = topInputData_w[991:960];

wire [31:0] GIN_1_1_3_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_1_3_0;

assign V1_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[31:31];

assign GIN_1_1_3_0 = topInputData_w[1023:992];

wire [31:0] GIN_1_2_0_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_2_0_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[32:32];

assign GIN_1_2_0_0 = topInputData_w[1055:1024];

wire [31:0] GIN_1_2_1_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_2_1_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[33:33];

assign GIN_1_2_1_0 = topInputData_w[1087:1056];

wire [31:0] GIN_1_2_2_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_2_2_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[34:34];

assign GIN_1_2_2_0 = topInputData_w[1119:1088];

wire [31:0] GIN_1_2_3_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_2_3_0;

assign V2_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[35:35];

assign GIN_1_2_3_0 = topInputData_w[1151:1120];

wire [31:0] GIN_1_3_0_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_3_0_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[36:36];

assign GIN_1_3_0_0 = topInputData_w[1183:1152];

wire [31:0] GIN_1_3_1_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_3_1_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[37:37];

assign GIN_1_3_1_0 = topInputData_w[1215:1184];

wire [31:0] GIN_1_3_2_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_3_2_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[38:38];

assign GIN_1_3_2_0 = topInputData_w[1247:1216];

wire [31:0] GIN_1_3_3_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_3_3_0;

assign V3_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[39:39];

assign GIN_1_3_3_0 = topInputData_w[1279:1248];

wire [31:0] GIN_1_4_0_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_4_0_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[40:40];

assign GIN_1_4_0_0 = topInputData_w[1311:1280];

wire [31:0] GIN_1_4_1_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_4_1_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[41:41];

assign GIN_1_4_1_0 = topInputData_w[1343:1312];

wire [31:0] GIN_1_4_2_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_4_2_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[42:42];

assign GIN_1_4_2_0 = topInputData_w[1375:1344];

wire [31:0] GIN_1_4_3_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_4_3_0;

assign V4_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[43:43];

assign GIN_1_4_3_0 = topInputData_w[1407:1376];

wire [31:0] GIN_1_5_0_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_1_5_0_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[44:44];

assign GIN_1_5_0_0 = topInputData_w[1439:1408];

wire [31:0] GIN_1_5_1_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_1_5_1_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[45:45];

assign GIN_1_5_1_0 = topInputData_w[1471:1440];

wire [31:0] GIN_1_5_2_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_1_5_2_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[46:46];

assign GIN_1_5_2_0 = topInputData_w[1503:1472];

wire [31:0] GIN_1_5_3_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_1_5_3_0;

assign V5_1_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[47:47];

assign GIN_1_5_3_0 = topInputData_w[1535:1504];

wire [31:0] GIN_2_0_0_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_0_0_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[48:48];

assign GIN_2_0_0_0 = topInputData_w[1567:1536];

wire [31:0] GIN_2_0_1_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_0_1_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[49:49];

assign GIN_2_0_1_0 = topInputData_w[1599:1568];

wire [31:0] GIN_2_0_2_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_0_2_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[50:50];

assign GIN_2_0_2_0 = topInputData_w[1631:1600];

wire [31:0] GIN_2_0_3_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_0_3_0;

assign V0_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[51:51];

assign GIN_2_0_3_0 = topInputData_w[1663:1632];

wire [31:0] GIN_2_1_0_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_1_0_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[52:52];

assign GIN_2_1_0_0 = topInputData_w[1695:1664];

wire [31:0] GIN_2_1_1_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_1_1_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[53:53];

assign GIN_2_1_1_0 = topInputData_w[1727:1696];

wire [31:0] GIN_2_1_2_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_1_2_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[54:54];

assign GIN_2_1_2_0 = topInputData_w[1759:1728];

wire [31:0] GIN_2_1_3_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_1_3_0;

assign V1_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[55:55];

assign GIN_2_1_3_0 = topInputData_w[1791:1760];

wire [31:0] GIN_2_2_0_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_2_0_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[56:56];

assign GIN_2_2_0_0 = topInputData_w[1823:1792];

wire [31:0] GIN_2_2_1_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_2_1_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[57:57];

assign GIN_2_2_1_0 = topInputData_w[1855:1824];

wire [31:0] GIN_2_2_2_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_2_2_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[58:58];

assign GIN_2_2_2_0 = topInputData_w[1887:1856];

wire [31:0] GIN_2_2_3_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_2_3_0;

assign V2_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[59:59];

assign GIN_2_2_3_0 = topInputData_w[1919:1888];

wire [31:0] GIN_2_3_0_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_3_0_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[60:60];

assign GIN_2_3_0_0 = topInputData_w[1951:1920];

wire [31:0] GIN_2_3_1_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_3_1_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[61:61];

assign GIN_2_3_1_0 = topInputData_w[1983:1952];

wire [31:0] GIN_2_3_2_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_3_2_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[62:62];

assign GIN_2_3_2_0 = topInputData_w[2015:1984];

wire [31:0] GIN_2_3_3_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_3_3_0;

assign V3_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[63:63];

assign GIN_2_3_3_0 = topInputData_w[2047:2016];

wire [31:0] GIN_2_4_0_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_4_0_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[64:64];

assign GIN_2_4_0_0 = topInputData_w[2079:2048];

wire [31:0] GIN_2_4_1_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_4_1_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[65:65];

assign GIN_2_4_1_0 = topInputData_w[2111:2080];

wire [31:0] GIN_2_4_2_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_4_2_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[66:66];

assign GIN_2_4_2_0 = topInputData_w[2143:2112];

wire [31:0] GIN_2_4_3_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_4_3_0;

assign V4_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[67:67];

assign GIN_2_4_3_0 = topInputData_w[2175:2144];

wire [31:0] GIN_2_5_0_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_2_5_0_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[68:68];

assign GIN_2_5_0_0 = topInputData_w[2207:2176];

wire [31:0] GIN_2_5_1_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_2_5_1_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[69:69];

assign GIN_2_5_1_0 = topInputData_w[2239:2208];

wire [31:0] GIN_2_5_2_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_2_5_2_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[70:70];

assign GIN_2_5_2_0 = topInputData_w[2271:2240];

wire [31:0] GIN_2_5_3_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_2_5_3_0;

assign V5_2_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[71:71];

assign GIN_2_5_3_0 = topInputData_w[2303:2272];

wire [31:0] GIN_3_0_0_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_0_0_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[72:72];

assign GIN_3_0_0_0 = topInputData_w[2335:2304];

wire [31:0] GIN_3_0_1_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_0_1_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[73:73];

assign GIN_3_0_1_0 = topInputData_w[2367:2336];

wire [31:0] GIN_3_0_2_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_0_2_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[74:74];

assign GIN_3_0_2_0 = topInputData_w[2399:2368];

wire [31:0] GIN_3_0_3_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_0_3_0;

assign V0_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[75:75];

assign GIN_3_0_3_0 = topInputData_w[2431:2400];

wire [31:0] GIN_3_1_0_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_1_0_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[76:76];

assign GIN_3_1_0_0 = topInputData_w[2463:2432];

wire [31:0] GIN_3_1_1_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_1_1_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[77:77];

assign GIN_3_1_1_0 = topInputData_w[2495:2464];

wire [31:0] GIN_3_1_2_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_1_2_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[78:78];

assign GIN_3_1_2_0 = topInputData_w[2527:2496];

wire [31:0] GIN_3_1_3_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_1_3_0;

assign V1_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[79:79];

assign GIN_3_1_3_0 = topInputData_w[2559:2528];

wire [31:0] GIN_3_2_0_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_2_0_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[80:80];

assign GIN_3_2_0_0 = topInputData_w[2591:2560];

wire [31:0] GIN_3_2_1_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_2_1_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[81:81];

assign GIN_3_2_1_0 = topInputData_w[2623:2592];

wire [31:0] GIN_3_2_2_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_2_2_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[82:82];

assign GIN_3_2_2_0 = topInputData_w[2655:2624];

wire [31:0] GIN_3_2_3_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_2_3_0;

assign V2_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[83:83];

assign GIN_3_2_3_0 = topInputData_w[2687:2656];

wire [31:0] GIN_3_3_0_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_3_0_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[84:84];

assign GIN_3_3_0_0 = topInputData_w[2719:2688];

wire [31:0] GIN_3_3_1_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_3_1_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[85:85];

assign GIN_3_3_1_0 = topInputData_w[2751:2720];

wire [31:0] GIN_3_3_2_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_3_2_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[86:86];

assign GIN_3_3_2_0 = topInputData_w[2783:2752];

wire [31:0] GIN_3_3_3_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_3_3_0;

assign V3_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[87:87];

assign GIN_3_3_3_0 = topInputData_w[2815:2784];

wire [31:0] GIN_3_4_0_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_4_0_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[88:88];

assign GIN_3_4_0_0 = topInputData_w[2847:2816];

wire [31:0] GIN_3_4_1_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_4_1_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[89:89];

assign GIN_3_4_1_0 = topInputData_w[2879:2848];

wire [31:0] GIN_3_4_2_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_4_2_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[90:90];

assign GIN_3_4_2_0 = topInputData_w[2911:2880];

wire [31:0] GIN_3_4_3_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_4_3_0;

assign V4_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[91:91];

assign GIN_3_4_3_0 = topInputData_w[2943:2912];

wire [31:0] GIN_3_5_0_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_3_5_0_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[92:92];

assign GIN_3_5_0_0 = topInputData_w[2975:2944];

wire [31:0] GIN_3_5_1_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_3_5_1_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[93:93];

assign GIN_3_5_1_0 = topInputData_w[3007:2976];

wire [31:0] GIN_3_5_2_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_3_5_2_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[94:94];

assign GIN_3_5_2_0 = topInputData_w[3039:3008];

wire [31:0] GIN_3_5_3_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_3_5_3_0;

assign V5_3_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[95:95];

assign GIN_3_5_3_0 = topInputData_w[3071:3040];

wire [31:0] GIN_4_0_0_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_0_0_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[96:96];

assign GIN_4_0_0_0 = topInputData_w[3103:3072];

wire [31:0] GIN_4_0_1_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_0_1_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[97:97];

assign GIN_4_0_1_0 = topInputData_w[3135:3104];

wire [31:0] GIN_4_0_2_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_0_2_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[98:98];

assign GIN_4_0_2_0 = topInputData_w[3167:3136];

wire [31:0] GIN_4_0_3_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_0_3_0;

assign V0_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[99:99];

assign GIN_4_0_3_0 = topInputData_w[3199:3168];

wire [31:0] GIN_4_1_0_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_1_0_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[100:100];

assign GIN_4_1_0_0 = topInputData_w[3231:3200];

wire [31:0] GIN_4_1_1_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_1_1_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[101:101];

assign GIN_4_1_1_0 = topInputData_w[3263:3232];

wire [31:0] GIN_4_1_2_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_1_2_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[102:102];

assign GIN_4_1_2_0 = topInputData_w[3295:3264];

wire [31:0] GIN_4_1_3_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_1_3_0;

assign V1_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[103:103];

assign GIN_4_1_3_0 = topInputData_w[3327:3296];

wire [31:0] GIN_4_2_0_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_2_0_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[104:104];

assign GIN_4_2_0_0 = topInputData_w[3359:3328];

wire [31:0] GIN_4_2_1_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_2_1_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[105:105];

assign GIN_4_2_1_0 = topInputData_w[3391:3360];

wire [31:0] GIN_4_2_2_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_2_2_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[106:106];

assign GIN_4_2_2_0 = topInputData_w[3423:3392];

wire [31:0] GIN_4_2_3_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_2_3_0;

assign V2_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[107:107];

assign GIN_4_2_3_0 = topInputData_w[3455:3424];

wire [31:0] GIN_4_3_0_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_3_0_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[108:108];

assign GIN_4_3_0_0 = topInputData_w[3487:3456];

wire [31:0] GIN_4_3_1_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_3_1_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[109:109];

assign GIN_4_3_1_0 = topInputData_w[3519:3488];

wire [31:0] GIN_4_3_2_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_3_2_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[110:110];

assign GIN_4_3_2_0 = topInputData_w[3551:3520];

wire [31:0] GIN_4_3_3_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_3_3_0;

assign V3_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[111:111];

assign GIN_4_3_3_0 = topInputData_w[3583:3552];

wire [31:0] GIN_4_4_0_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_4_0_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[112:112];

assign GIN_4_4_0_0 = topInputData_w[3615:3584];

wire [31:0] GIN_4_4_1_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_4_1_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[113:113];

assign GIN_4_4_1_0 = topInputData_w[3647:3616];

wire [31:0] GIN_4_4_2_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_4_2_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[114:114];

assign GIN_4_4_2_0 = topInputData_w[3679:3648];

wire [31:0] GIN_4_4_3_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_4_3_0;

assign V4_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[115:115];

assign GIN_4_4_3_0 = topInputData_w[3711:3680];

wire [31:0] GIN_4_5_0_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_4_5_0_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[116:116];

assign GIN_4_5_0_0 = topInputData_w[3743:3712];

wire [31:0] GIN_4_5_1_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_4_5_1_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[117:117];

assign GIN_4_5_1_0 = topInputData_w[3775:3744];

wire [31:0] GIN_4_5_2_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_4_5_2_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[118:118];

assign GIN_4_5_2_0 = topInputData_w[3807:3776];

wire [31:0] GIN_4_5_3_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_4_5_3_0;

assign V5_4_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[119:119];

assign GIN_4_5_3_0 = topInputData_w[3839:3808];

wire [31:0] GIN_5_0_0_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_0_0_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[120:120];

assign GIN_5_0_0_0 = topInputData_w[3871:3840];

wire [31:0] GIN_5_0_1_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_0_1_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[121:121];

assign GIN_5_0_1_0 = topInputData_w[3903:3872];

wire [31:0] GIN_5_0_2_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_0_2_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[122:122];

assign GIN_5_0_2_0 = topInputData_w[3935:3904];

wire [31:0] GIN_5_0_3_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_0_3_0;

assign V0_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[123:123];

assign GIN_5_0_3_0 = topInputData_w[3967:3936];

wire [31:0] GIN_5_1_0_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_1_0_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[124:124];

assign GIN_5_1_0_0 = topInputData_w[3999:3968];

wire [31:0] GIN_5_1_1_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_1_1_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[125:125];

assign GIN_5_1_1_0 = topInputData_w[4031:4000];

wire [31:0] GIN_5_1_2_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_1_2_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[126:126];

assign GIN_5_1_2_0 = topInputData_w[4063:4032];

wire [31:0] GIN_5_1_3_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_1_3_0;

assign V1_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[127:127];

assign GIN_5_1_3_0 = topInputData_w[4095:4064];

wire [31:0] GIN_5_2_0_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_2_0_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[128:128];

assign GIN_5_2_0_0 = topInputData_w[4127:4096];

wire [31:0] GIN_5_2_1_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_2_1_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[129:129];

assign GIN_5_2_1_0 = topInputData_w[4159:4128];

wire [31:0] GIN_5_2_2_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_2_2_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[130:130];

assign GIN_5_2_2_0 = topInputData_w[4191:4160];

wire [31:0] GIN_5_2_3_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_2_3_0;

assign V2_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[131:131];

assign GIN_5_2_3_0 = topInputData_w[4223:4192];

wire [31:0] GIN_5_3_0_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_3_0_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[132:132];

assign GIN_5_3_0_0 = topInputData_w[4255:4224];

wire [31:0] GIN_5_3_1_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_3_1_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[133:133];

assign GIN_5_3_1_0 = topInputData_w[4287:4256];

wire [31:0] GIN_5_3_2_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_3_2_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[134:134];

assign GIN_5_3_2_0 = topInputData_w[4319:4288];

wire [31:0] GIN_5_3_3_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_3_3_0;

assign V3_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[135:135];

assign GIN_5_3_3_0 = topInputData_w[4351:4320];

wire [31:0] GIN_5_4_0_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_4_0_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[136:136];

assign GIN_5_4_0_0 = topInputData_w[4383:4352];

wire [31:0] GIN_5_4_1_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_4_1_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[137:137];

assign GIN_5_4_1_0 = topInputData_w[4415:4384];

wire [31:0] GIN_5_4_2_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_4_2_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[138:138];

assign GIN_5_4_2_0 = topInputData_w[4447:4416];

wire [31:0] GIN_5_4_3_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_4_3_0;

assign V4_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[139:139];

assign GIN_5_4_3_0 = topInputData_w[4479:4448];

wire [31:0] GIN_5_5_0_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalIn0 = GIN_5_5_0_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalSel0 = gControl_w[140:140];

assign GIN_5_5_0_0 = topInputData_w[4511:4480];

wire [31:0] GIN_5_5_1_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalIn1 = GIN_5_5_1_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalSel1 = gControl_w[141:141];

assign GIN_5_5_1_0 = topInputData_w[4543:4512];

wire [31:0] GIN_5_5_2_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalIn2 = GIN_5_5_2_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalSel2 = gControl_w[142:142];

assign GIN_5_5_2_0 = topInputData_w[4575:4544];

wire [31:0] GIN_5_5_3_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalIn3 = GIN_5_5_3_0;

assign V5_5_VSTop_DSE_Solution_L0_GlobalSel3 = gControl_w[143:143];

assign GIN_5_5_3_0 = topInputData_w[4607:4576];

wire [31:0] gRW0_1;

assign gRW0_1 = V0_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW0_2;

assign gRW0_2 = V1_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW0_3;

assign gRW0_3 = V0_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW0_4;

assign gRW0_4 = V1_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut0;

wire [1:0] grSel0;

HA_4IM grC0(

.sel(grSel0),

.DataOut_1(grOut0),

.DataIn_1(gRW0_1),

.DataIn_2(gRW0_2),

.DataIn_3(gRW0_3),

.DataIn_4(gRW0_4)

);

defparam   grC0.Mux_BW = 32;

assign topOutputData_w[31:0] = grOut0;

assign grSel0 = gControl_w[145:144];

wire [31:0] gRW1_1;

assign gRW1_1 = V2_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW1_2;

assign gRW1_2 = V3_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW1_3;

assign gRW1_3 = V2_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW1_4;

assign gRW1_4 = V3_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut1;

wire [1:0] grSel1;

HA_4IM grC1(

.sel(grSel1),

.DataOut_1(grOut1),

.DataIn_1(gRW1_1),

.DataIn_2(gRW1_2),

.DataIn_3(gRW1_3),

.DataIn_4(gRW1_4)

);

defparam   grC1.Mux_BW = 32;

assign topOutputData_w[63:32] = grOut1;

assign grSel1 = gControl_w[147:146];

wire [31:0] gRW2_1;

assign gRW2_1 = V4_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW2_2;

assign gRW2_2 = V5_0_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW2_3;

assign gRW2_3 = V4_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW2_4;

assign gRW2_4 = V5_1_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut2;

wire [1:0] grSel2;

HA_4IM grC2(

.sel(grSel2),

.DataOut_1(grOut2),

.DataIn_1(gRW2_1),

.DataIn_2(gRW2_2),

.DataIn_3(gRW2_3),

.DataIn_4(gRW2_4)

);

defparam   grC2.Mux_BW = 32;

assign topOutputData_w[95:64] = grOut2;

assign grSel2 = gControl_w[149:148];

wire [31:0] gRW3_1;

assign gRW3_1 = V0_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW3_2;

assign gRW3_2 = V1_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW3_3;

assign gRW3_3 = V0_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW3_4;

assign gRW3_4 = V1_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut3;

wire [1:0] grSel3;

HA_4IM grC3(

.sel(grSel3),

.DataOut_1(grOut3),

.DataIn_1(gRW3_1),

.DataIn_2(gRW3_2),

.DataIn_3(gRW3_3),

.DataIn_4(gRW3_4)

);

defparam   grC3.Mux_BW = 32;

assign topOutputData_w[127:96] = grOut3;

assign grSel3 = gControl_w[151:150];

wire [31:0] gRW4_1;

assign gRW4_1 = V2_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW4_2;

assign gRW4_2 = V3_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW4_3;

assign gRW4_3 = V2_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW4_4;

assign gRW4_4 = V3_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut4;

wire [1:0] grSel4;

HA_4IM grC4(

.sel(grSel4),

.DataOut_1(grOut4),

.DataIn_1(gRW4_1),

.DataIn_2(gRW4_2),

.DataIn_3(gRW4_3),

.DataIn_4(gRW4_4)

);

defparam   grC4.Mux_BW = 32;

assign topOutputData_w[159:128] = grOut4;

assign grSel4 = gControl_w[153:152];

wire [31:0] gRW5_1;

assign gRW5_1 = V4_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW5_2;

assign gRW5_2 = V5_2_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW5_3;

assign gRW5_3 = V4_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW5_4;

assign gRW5_4 = V5_3_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut5;

wire [1:0] grSel5;

HA_4IM grC5(

.sel(grSel5),

.DataOut_1(grOut5),

.DataIn_1(gRW5_1),

.DataIn_2(gRW5_2),

.DataIn_3(gRW5_3),

.DataIn_4(gRW5_4)

);

defparam   grC5.Mux_BW = 32;

assign topOutputData_w[191:160] = grOut5;

assign grSel5 = gControl_w[155:154];

wire [31:0] gRW6_1;

assign gRW6_1 = V0_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW6_2;

assign gRW6_2 = V1_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW6_3;

assign gRW6_3 = V0_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW6_4;

assign gRW6_4 = V1_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut6;

wire [1:0] grSel6;

HA_4IM grC6(

.sel(grSel6),

.DataOut_1(grOut6),

.DataIn_1(gRW6_1),

.DataIn_2(gRW6_2),

.DataIn_3(gRW6_3),

.DataIn_4(gRW6_4)

);

defparam   grC6.Mux_BW = 32;

assign topOutputData_w[223:192] = grOut6;

assign grSel6 = gControl_w[157:156];

wire [31:0] gRW7_1;

assign gRW7_1 = V2_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW7_2;

assign gRW7_2 = V3_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW7_3;

assign gRW7_3 = V2_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW7_4;

assign gRW7_4 = V3_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut7;

wire [1:0] grSel7;

HA_4IM grC7(

.sel(grSel7),

.DataOut_1(grOut7),

.DataIn_1(gRW7_1),

.DataIn_2(gRW7_2),

.DataIn_3(gRW7_3),

.DataIn_4(gRW7_4)

);

defparam   grC7.Mux_BW = 32;

assign topOutputData_w[255:224] = grOut7;

assign grSel7 = gControl_w[159:158];

wire [31:0] gRW8_1;

assign gRW8_1 = V4_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW8_2;

assign gRW8_2 = V5_4_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW8_3;

assign gRW8_3 = V4_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] gRW8_4;

assign gRW8_4 = V5_5_VSTop_VS_DSE_Solution_L5_t5_O0_3;

wire [31:0] grOut8;

wire [1:0] grSel8;

HA_4IM grC8(

.sel(grSel8),

.DataOut_1(grOut8),

.DataIn_1(gRW8_1),

.DataIn_2(gRW8_2),

.DataIn_3(gRW8_3),

.DataIn_4(gRW8_4)

);

defparam   grC8.Mux_BW = 32;

assign topOutputData_w[287:256] = grOut8;

assign grSel8 = gControl_w[161:160];

endmodule

module VSTop( 

clk,

rst,

VSTop_VS_DSE_Solution_L1_t1_In0_1,

VSTop_VS_DSE_Solution_L1_t2_In0_2,

VSTop_VS_DSE_Solution_L1_t4_In0_3,

VSTop_VS_DSE_Solution_L2_t1_In0_1,

VSTop_VS_DSE_Solution_L2_t4_In0_2,

VSTop_VS_DSE_Solution_L3_t2_In0_1,

VSTop_VS_DSE_Solution_L3_t4_In0_2,

VSTop_DSE_Solution_L0_GlobalIn0,

VSTop_DSE_Solution_L0_GlobalIn1,

VSTop_DSE_Solution_L0_GlobalIn2,

VSTop_DSE_Solution_L0_GlobalIn3,

VSTop_VS_DSE_Solution_L2_t2_O0_6,

VSTop_VS_DSE_Solution_L2_t3_O0_7,

VSTop_VS_DSE_Solution_L2_t4_O0_8,

VSTop_VS_DSE_Solution_L3_t2_O0_5,

VSTop_VS_DSE_Solution_L3_t3_O0_6,

VSTop_VS_DSE_Solution_L4_t2_O0_3,

VSTop_VS_DSE_Solution_L4_t4_O0_4,

VSTop_VS_DSE_Solution_L5_t5_O0_3,

VSTop_Config_Reg_EN,

VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn,

VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn,

VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn,

VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn,

VSTop_DSE_Solution_L0_GlobalSel0,

VSTop_DSE_Solution_L0_GlobalSel1,

VSTop_DSE_Solution_L0_GlobalSel2,

VSTop_DSE_Solution_L0_GlobalSel3

); 



input clk;

input rst;

input [31:0] VSTop_DSE_Solution_L0_GlobalIn0; 

input [31:0] VSTop_DSE_Solution_L0_GlobalIn1; 

input [31:0] VSTop_DSE_Solution_L0_GlobalIn2; 

input [31:0] VSTop_DSE_Solution_L0_GlobalIn3; 

input [31:0] VSTop_VS_DSE_Solution_L1_t1_In0_1; 

input [31:0] VSTop_VS_DSE_Solution_L1_t2_In0_2; 

input [31:0] VSTop_VS_DSE_Solution_L1_t4_In0_3; 

input [31:0] VSTop_VS_DSE_Solution_L2_t1_In0_1; 

input [31:0] VSTop_VS_DSE_Solution_L2_t4_In0_2; 

input [31:0] VSTop_VS_DSE_Solution_L3_t2_In0_1; 

input [31:0] VSTop_VS_DSE_Solution_L3_t4_In0_2; 

output [31:0] VSTop_VS_DSE_Solution_L2_t2_O0_6; 

output [31:0] VSTop_VS_DSE_Solution_L2_t3_O0_7; 

output [31:0] VSTop_VS_DSE_Solution_L2_t4_O0_8; 

output [31:0] VSTop_VS_DSE_Solution_L3_t2_O0_5; 

output [31:0] VSTop_VS_DSE_Solution_L3_t3_O0_6; 

output [31:0] VSTop_VS_DSE_Solution_L4_t2_O0_3; 

output [31:0] VSTop_VS_DSE_Solution_L4_t4_O0_4; 

output [31:0] VSTop_VS_DSE_Solution_L5_t5_O0_3; 

input [0:0] VSTop_DSE_Solution_L0_GlobalSel0; 

input [0:0] VSTop_DSE_Solution_L0_GlobalSel1; 

input [0:0] VSTop_DSE_Solution_L0_GlobalSel2; 

input [0:0] VSTop_DSE_Solution_L0_GlobalSel3; 

input [0:0] VSTop_Config_Reg_EN; 

input [3:0] VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn; 

input [2:0] VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn; 

input [1:0] VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn; 

input [1:0] VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn; 

wire [31:0] VS_DSE_Solution_L0_n0_HA_IN_1; 

wire [31:0] VS_DSE_Solution_L0_n0_HA_IN_2; 

wire [31:0] VS_DSE_Solution_L0_n0_HA_IN_3; 

wire [31:0] VS_DSE_Solution_L0_n0_HA_IN_4; 

wire [31:0] VS_DSE_Solution_L0_GlobalIn0; 

wire [31:0] VS_DSE_Solution_L0_GlobalIn1; 

wire [31:0] VS_DSE_Solution_L0_GlobalIn2; 

wire [31:0] VS_DSE_Solution_L0_GlobalIn3; 

wire [31:0] VS_DSE_Solution_L0_n0_HA_OW_5; 

wire [0:0] VS_DSE_Solution_L0_GlobalSel0; 

wire [0:0] VS_DSE_Solution_L0_GlobalSel1; 

wire [0:0] VS_DSE_Solution_L0_GlobalSel2; 

wire [0:0] VS_DSE_Solution_L0_GlobalSel3; 

wire [0:0] VS_DSE_Solution_L0_Config_Reg_EN; 

wire [3:0] VS_DSE_Solution_L0_Config_Reg_InstIn; 

DSE_Solution_L0 VS_DSE_Solution_L0( 

.clk(clk),

.rst(rst),

.DSE_Solution_L0_n0_HA_IN_1(VS_DSE_Solution_L0_n0_HA_IN_1),

.DSE_Solution_L0_n0_HA_IN_2(VS_DSE_Solution_L0_n0_HA_IN_2),

.DSE_Solution_L0_n0_HA_IN_3(VS_DSE_Solution_L0_n0_HA_IN_3),

.DSE_Solution_L0_n0_HA_IN_4(VS_DSE_Solution_L0_n0_HA_IN_4),

.DSE_Solution_L0_GlobalIn0(VS_DSE_Solution_L0_GlobalIn0),

.DSE_Solution_L0_GlobalIn1(VS_DSE_Solution_L0_GlobalIn1),

.DSE_Solution_L0_GlobalIn2(VS_DSE_Solution_L0_GlobalIn2),

.DSE_Solution_L0_GlobalIn3(VS_DSE_Solution_L0_GlobalIn3),

.DSE_Solution_L0_n0_HA_OW_5(VS_DSE_Solution_L0_n0_HA_OW_5),

.DSE_Solution_L0_Config_Reg_EN(VS_DSE_Solution_L0_Config_Reg_EN),

.DSE_Solution_L0_Config_Reg_InstIn(VS_DSE_Solution_L0_Config_Reg_InstIn),

.DSE_Solution_L0_GlobalSel0(VS_DSE_Solution_L0_GlobalSel0),

.DSE_Solution_L0_GlobalSel1(VS_DSE_Solution_L0_GlobalSel1),

.DSE_Solution_L0_GlobalSel2(VS_DSE_Solution_L0_GlobalSel2),

.DSE_Solution_L0_GlobalSel3(VS_DSE_Solution_L0_GlobalSel3)

); 



assign VS_DSE_Solution_L0_GlobalIn0 = VSTop_DSE_Solution_L0_GlobalIn0;

assign VS_DSE_Solution_L0_GlobalIn1 = VSTop_DSE_Solution_L0_GlobalIn1;

assign VS_DSE_Solution_L0_GlobalIn2 = VSTop_DSE_Solution_L0_GlobalIn2;

assign VS_DSE_Solution_L0_GlobalIn3 = VSTop_DSE_Solution_L0_GlobalIn3;

assign VS_DSE_Solution_L0_GlobalSel0 = VSTop_DSE_Solution_L0_GlobalSel0;

assign VS_DSE_Solution_L0_GlobalSel1 = VSTop_DSE_Solution_L0_GlobalSel1;

assign VS_DSE_Solution_L0_GlobalSel2 = VSTop_DSE_Solution_L0_GlobalSel2;

assign VS_DSE_Solution_L0_GlobalSel3 = VSTop_DSE_Solution_L0_GlobalSel3;

wire [31:0] VS_DSE_Solution_L1_t1_In0_1; 

wire [31:0] VS_DSE_Solution_L1_t2_In0_2; 

wire [31:0] VS_DSE_Solution_L1_t4_In0_3; 

wire [31:0] VS_DSE_Solution_L1_t5_In0_4; 

wire [31:0] VS_DSE_Solution_L1_t5_O1_7; 

wire [31:0] VS_DSE_Solution_L1_t5_O2_8; 

wire [31:0] VS_DSE_Solution_L1_t5_O3_9; 

wire [0:0] VS_DSE_Solution_L1_Config_Reg_EN; 

wire [2:0] VS_DSE_Solution_L1_Config_Reg_InstIn; 

DSE_Solution_L1 VS_DSE_Solution_L1( 

.clk(clk),

.rst(rst),

.DSE_Solution_L1_t1_In0_1(VS_DSE_Solution_L1_t1_In0_1),

.DSE_Solution_L1_t2_In0_2(VS_DSE_Solution_L1_t2_In0_2),

.DSE_Solution_L1_t4_In0_3(VS_DSE_Solution_L1_t4_In0_3),

.DSE_Solution_L1_t5_In0_4(VS_DSE_Solution_L1_t5_In0_4),

.DSE_Solution_L1_t5_O1_7(VS_DSE_Solution_L1_t5_O1_7),

.DSE_Solution_L1_t5_O2_8(VS_DSE_Solution_L1_t5_O2_8),

.DSE_Solution_L1_t5_O3_9(VS_DSE_Solution_L1_t5_O3_9),

.DSE_Solution_L1_Config_Reg_EN(VS_DSE_Solution_L1_Config_Reg_EN),

.DSE_Solution_L1_Config_Reg_InstIn(VS_DSE_Solution_L1_Config_Reg_InstIn)

); 



wire [31:0] VS_DSE_Solution_L2_t1_In0_1; 

wire [31:0] VS_DSE_Solution_L2_t4_In0_2; 

wire [31:0] VS_DSE_Solution_L2_t5_In0_3; 

wire [31:0] VS_DSE_Solution_L2_t2_O0_6; 

wire [31:0] VS_DSE_Solution_L2_t3_O0_7; 

wire [31:0] VS_DSE_Solution_L2_t4_O0_8; 

wire [31:0] VS_DSE_Solution_L2_t5_O0_9; 

wire [0:0] VS_DSE_Solution_L2_Config_Reg_EN; 

wire [1:0] VS_DSE_Solution_L2_Config_Reg_InstIn; 

DSE_Solution_L2 VS_DSE_Solution_L2( 

.clk(clk),

.rst(rst),

.DSE_Solution_L2_t1_In0_1(VS_DSE_Solution_L2_t1_In0_1),

.DSE_Solution_L2_t4_In0_2(VS_DSE_Solution_L2_t4_In0_2),

.DSE_Solution_L2_t5_In0_3(VS_DSE_Solution_L2_t5_In0_3),

.DSE_Solution_L2_t2_O0_6(VS_DSE_Solution_L2_t2_O0_6),

.DSE_Solution_L2_t3_O0_7(VS_DSE_Solution_L2_t3_O0_7),

.DSE_Solution_L2_t4_O0_8(VS_DSE_Solution_L2_t4_O0_8),

.DSE_Solution_L2_t5_O0_9(VS_DSE_Solution_L2_t5_O0_9),

.DSE_Solution_L2_Config_Reg_EN(VS_DSE_Solution_L2_Config_Reg_EN),

.DSE_Solution_L2_Config_Reg_InstIn(VS_DSE_Solution_L2_Config_Reg_InstIn)

); 



wire [31:0] VS_DSE_Solution_L3_t2_In0_1; 

wire [31:0] VS_DSE_Solution_L3_t4_In0_2; 

wire [31:0] VS_DSE_Solution_L3_t5_In0_3; 

wire [31:0] VS_DSE_Solution_L3_t2_O0_5; 

wire [31:0] VS_DSE_Solution_L3_t3_O0_6; 

wire [31:0] VS_DSE_Solution_L3_t5_O0_7; 

wire [0:0] VS_DSE_Solution_L3_Config_Reg_EN; 

wire [1:0] VS_DSE_Solution_L3_Config_Reg_InstIn; 

DSE_Solution_L3 VS_DSE_Solution_L3( 

.clk(clk),

.rst(rst),

.DSE_Solution_L3_t2_In0_1(VS_DSE_Solution_L3_t2_In0_1),

.DSE_Solution_L3_t4_In0_2(VS_DSE_Solution_L3_t4_In0_2),

.DSE_Solution_L3_t5_In0_3(VS_DSE_Solution_L3_t5_In0_3),

.DSE_Solution_L3_t2_O0_5(VS_DSE_Solution_L3_t2_O0_5),

.DSE_Solution_L3_t3_O0_6(VS_DSE_Solution_L3_t3_O0_6),

.DSE_Solution_L3_t5_O0_7(VS_DSE_Solution_L3_t5_O0_7),

.DSE_Solution_L3_Config_Reg_EN(VS_DSE_Solution_L3_Config_Reg_EN),

.DSE_Solution_L3_Config_Reg_InstIn(VS_DSE_Solution_L3_Config_Reg_InstIn)

); 



wire [31:0] VS_DSE_Solution_L4_t5_In0_1; 

wire [31:0] VS_DSE_Solution_L4_t2_O0_3; 

wire [31:0] VS_DSE_Solution_L4_t4_O0_4; 

wire [31:0] VS_DSE_Solution_L4_t5_O0_5; 

DSE_Solution_L4 VS_DSE_Solution_L4( 

.clk(clk),

.rst(rst),

.DSE_Solution_L4_t5_In0_1(VS_DSE_Solution_L4_t5_In0_1),

.DSE_Solution_L4_t2_O0_3(VS_DSE_Solution_L4_t2_O0_3),

.DSE_Solution_L4_t4_O0_4(VS_DSE_Solution_L4_t4_O0_4),

.DSE_Solution_L4_t5_O0_5(VS_DSE_Solution_L4_t5_O0_5)

); 



wire [31:0] VS_DSE_Solution_L5_t5_In0_1; 

wire [31:0] VS_DSE_Solution_L5_t5_O0_3; 

DSE_Solution_L5 VS_DSE_Solution_L5( 

.clk(clk),

.rst(rst),

.DSE_Solution_L5_t5_In0_1(VS_DSE_Solution_L5_t5_In0_1),

.DSE_Solution_L5_t5_O0_3(VS_DSE_Solution_L5_t5_O0_3)

); 



assign VSTop_VS_DSE_Solution_L5_t5_O0_3 = VS_DSE_Solution_L5_t5_O0_3;

assign VS_DSE_Solution_L5_t5_In0_1 = VS_DSE_Solution_L0_n0_HA_OW_5;

assign VS_DSE_Solution_L0_Config_Reg_InstIn = VSTop_VS_DSE_Solution_L0_Config_Reg_InstIn;

assign VS_DSE_Solution_L0_Config_Reg_EN = VSTop_Config_Reg_EN;





assign VS_DSE_Solution_L0_n0_HA_IN_2 = VS_DSE_Solution_L1_t5_O1_7;

assign VS_DSE_Solution_L0_n0_HA_IN_3 = VS_DSE_Solution_L1_t5_O2_8;

assign VS_DSE_Solution_L0_n0_HA_IN_4 = VS_DSE_Solution_L1_t5_O3_9;

assign VS_DSE_Solution_L1_t1_In0_1 = VSTop_VS_DSE_Solution_L1_t1_In0_1;

assign VS_DSE_Solution_L1_t2_In0_2 = VSTop_VS_DSE_Solution_L1_t2_In0_2;

assign VS_DSE_Solution_L1_t4_In0_3 = VSTop_VS_DSE_Solution_L1_t4_In0_3;

assign VS_DSE_Solution_L1_Config_Reg_InstIn = VSTop_VS_DSE_Solution_L1_Config_Reg_InstIn;

assign VS_DSE_Solution_L1_Config_Reg_EN = VSTop_Config_Reg_EN;





assign VSTop_VS_DSE_Solution_L2_t2_O0_6 = VS_DSE_Solution_L2_t2_O0_6;

assign VSTop_VS_DSE_Solution_L2_t3_O0_7 = VS_DSE_Solution_L2_t3_O0_7;

assign VSTop_VS_DSE_Solution_L2_t4_O0_8 = VS_DSE_Solution_L2_t4_O0_8;

assign VS_DSE_Solution_L1_t5_In0_4 = VS_DSE_Solution_L2_t5_O0_9;

assign VS_DSE_Solution_L2_t1_In0_1 = VSTop_VS_DSE_Solution_L2_t1_In0_1;

assign VS_DSE_Solution_L2_t4_In0_2 = VSTop_VS_DSE_Solution_L2_t4_In0_2;

assign VS_DSE_Solution_L2_Config_Reg_InstIn = VSTop_VS_DSE_Solution_L2_Config_Reg_InstIn;

assign VS_DSE_Solution_L2_Config_Reg_EN = VSTop_Config_Reg_EN;





assign VSTop_VS_DSE_Solution_L3_t2_O0_5 = VS_DSE_Solution_L3_t2_O0_5;

assign VSTop_VS_DSE_Solution_L3_t3_O0_6 = VS_DSE_Solution_L3_t3_O0_6;

assign VS_DSE_Solution_L2_t5_In0_3 = VS_DSE_Solution_L3_t5_O0_7;

assign VS_DSE_Solution_L3_t2_In0_1 = VSTop_VS_DSE_Solution_L3_t2_In0_1;

assign VS_DSE_Solution_L3_t4_In0_2 = VSTop_VS_DSE_Solution_L3_t4_In0_2;

assign VS_DSE_Solution_L3_Config_Reg_InstIn = VSTop_VS_DSE_Solution_L3_Config_Reg_InstIn;

assign VS_DSE_Solution_L3_Config_Reg_EN = VSTop_Config_Reg_EN;





assign VSTop_VS_DSE_Solution_L4_t2_O0_3 = VS_DSE_Solution_L4_t2_O0_3;

assign VSTop_VS_DSE_Solution_L4_t4_O0_4 = VS_DSE_Solution_L4_t4_O0_4;

assign VS_DSE_Solution_L3_t5_In0_3 = VS_DSE_Solution_L4_t5_O0_5;





assign VS_DSE_Solution_L4_t5_In0_1 = VS_DSE_Solution_L5_t5_O0_3;





endmodule

module DSE_Solution_L0( 

clk,

rst,

DSE_Solution_L0_n0_HA_IN_1,

DSE_Solution_L0_n0_HA_IN_2,

DSE_Solution_L0_n0_HA_IN_3,

DSE_Solution_L0_n0_HA_IN_4,

DSE_Solution_L0_GlobalIn0,

DSE_Solution_L0_GlobalIn1,

DSE_Solution_L0_GlobalIn2,

DSE_Solution_L0_GlobalIn3,

DSE_Solution_L0_n0_HA_OW_5,

DSE_Solution_L0_Config_Reg_EN,

DSE_Solution_L0_Config_Reg_InstIn,

DSE_Solution_L0_GlobalSel0,

DSE_Solution_L0_GlobalSel1,

DSE_Solution_L0_GlobalSel2,

DSE_Solution_L0_GlobalSel3

); 



input clk;

input rst;

input [31:0] DSE_Solution_L0_GlobalIn0; 

input [31:0] DSE_Solution_L0_GlobalIn1; 

input [31:0] DSE_Solution_L0_GlobalIn2; 

input [31:0] DSE_Solution_L0_GlobalIn3; 

input [31:0] DSE_Solution_L0_n0_HA_IN_1; 

input [31:0] DSE_Solution_L0_n0_HA_IN_2; 

input [31:0] DSE_Solution_L0_n0_HA_IN_3; 

input [31:0] DSE_Solution_L0_n0_HA_IN_4; 

output [31:0] DSE_Solution_L0_n0_HA_OW_5; 

input [0:0] DSE_Solution_L0_GlobalSel0; 

input [0:0] DSE_Solution_L0_GlobalSel1; 

input [0:0] DSE_Solution_L0_GlobalSel2; 

input [0:0] DSE_Solution_L0_GlobalSel3; 

input [0:0] DSE_Solution_L0_Config_Reg_EN; 

input [3:0] DSE_Solution_L0_Config_Reg_InstIn; 

wire [31:0] n0_HA_IN_1_WDataIn_1;

assign n0_HA_IN_1_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_1;

defparam n0_HA_IN_1.DataIn_1_BW = 32;

wire [31:0] n0_HA_IN_1_WDataIn_2;

assign n0_HA_IN_1_WDataIn_2 = DSE_Solution_L0_GlobalIn0;

defparam n0_HA_IN_1.DataIn_2_BW = 32;

wire [31:0] n0_HA_IN_1_WDataOut_1;

defparam n0_HA_IN_1.DataOut_1_BW = 32;

assign n0_HA_IN_1_Wsel = DSE_Solution_L0_GlobalSel0;

CADA_IN n0_HA_IN_1 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_HA_IN_1_WDataIn_1) ,

	.DataIn_2(n0_HA_IN_1_WDataIn_2) ,

	.DataOut_1(n0_HA_IN_1_WDataOut_1) ,

	.sel(n0_HA_IN_1_Wsel) 

);

wire [31:0] n0_HA_IN_2_WDataIn_1;

assign n0_HA_IN_2_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_2;

defparam n0_HA_IN_2.DataIn_1_BW = 32;

wire [31:0] n0_HA_IN_2_WDataIn_2;

assign n0_HA_IN_2_WDataIn_2 = DSE_Solution_L0_GlobalIn1;

defparam n0_HA_IN_2.DataIn_2_BW = 32;

wire [31:0] n0_HA_IN_2_WDataOut_1;

defparam n0_HA_IN_2.DataOut_1_BW = 32;

assign n0_HA_IN_2_Wsel = DSE_Solution_L0_GlobalSel1;

CADA_IN n0_HA_IN_2 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_HA_IN_2_WDataIn_1) ,

	.DataIn_2(n0_HA_IN_2_WDataIn_2) ,

	.DataOut_1(n0_HA_IN_2_WDataOut_1) ,

	.sel(n0_HA_IN_2_Wsel) 

);

wire [31:0] n0_HA_IN_3_WDataIn_1;

assign n0_HA_IN_3_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_3;

defparam n0_HA_IN_3.DataIn_1_BW = 32;

wire [31:0] n0_HA_IN_3_WDataIn_2;

assign n0_HA_IN_3_WDataIn_2 = DSE_Solution_L0_GlobalIn2;

defparam n0_HA_IN_3.DataIn_2_BW = 32;

wire [31:0] n0_HA_IN_3_WDataOut_1;

defparam n0_HA_IN_3.DataOut_1_BW = 32;

assign n0_HA_IN_3_Wsel = DSE_Solution_L0_GlobalSel2;

CADA_IN n0_HA_IN_3 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_HA_IN_3_WDataIn_1) ,

	.DataIn_2(n0_HA_IN_3_WDataIn_2) ,

	.DataOut_1(n0_HA_IN_3_WDataOut_1) ,

	.sel(n0_HA_IN_3_Wsel) 

);

wire [31:0] n0_HA_IN_4_WDataIn_1;

assign n0_HA_IN_4_WDataIn_1 = DSE_Solution_L0_n0_HA_IN_4;

defparam n0_HA_IN_4.DataIn_1_BW = 32;

wire [31:0] n0_HA_IN_4_WDataIn_2;

assign n0_HA_IN_4_WDataIn_2 = DSE_Solution_L0_GlobalIn3;

defparam n0_HA_IN_4.DataIn_2_BW = 32;

wire [31:0] n0_HA_IN_4_WDataOut_1;

defparam n0_HA_IN_4.DataOut_1_BW = 32;

assign n0_HA_IN_4_Wsel = DSE_Solution_L0_GlobalSel3;

CADA_IN n0_HA_IN_4 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_HA_IN_4_WDataIn_1) ,

	.DataIn_2(n0_HA_IN_4_WDataIn_2) ,

	.DataOut_1(n0_HA_IN_4_WDataOut_1) ,

	.sel(n0_HA_IN_4_Wsel) 

);

wire [31:0] n0_HA_OW_5_WDataIn_1;

defparam n0_HA_OW_5.DataIn_1_BW = 32;

wire [31:0] n0_HA_OW_5_WDataOut_1;

assign DSE_Solution_L0_n0_HA_OW_5 = n0_HA_OW_5_WDataOut_1;

defparam n0_HA_OW_5.DataOut_1_BW = 32;

HA_OW n0_HA_OW_5 (

	.DataIn_1(n0_HA_OW_5_WDataIn_1) ,

	.DataOut_1(n0_HA_OW_5_WDataOut_1) 

);

wire [31:0] n0_CADA_ADD_6_WDataIn_1;

defparam n0_CADA_ADD_6.DataIn_1_BW = 32;

wire [31:0] n0_CADA_ADD_6_WDataIn_2;

defparam n0_CADA_ADD_6.DataIn_2_BW = 32;

wire [31:0] n0_CADA_ADD_6_WDataOut_1;

wire [31:0] n0_CADA_ADD_6_DataOut_1_latency_1_WDataIn_1;

wire [31:0] n0_CADA_ADD_6_DataOut_1_latency_1_WDataOut_1;

assign n0_CADA_ADD_6_DataOut_1_latency_1_WDataIn_1 = n0_CADA_ADD_6_WDataOut_1;

HA_Reg n0_CADA_ADD_6_DataOut_1_latency_1 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_CADA_ADD_6_DataOut_1_latency_1_WDataIn_1) ,

	.DataOut_1(n0_CADA_ADD_6_DataOut_1_latency_1_WDataOut_1) 

);

defparam n0_CADA_ADD_6_DataOut_1_latency_1.DataIn_1_BW = 32;

defparam n0_CADA_ADD_6_DataOut_1_latency_1.DataOut_1_BW = 32;

defparam n0_CADA_ADD_6.DataOut_1_BW = 32;

CADA_ADD n0_CADA_ADD_6 (

	.DataIn_1(n0_CADA_ADD_6_WDataIn_1) ,

	.DataIn_2(n0_CADA_ADD_6_WDataIn_2) ,

	.DataOut_1(n0_CADA_ADD_6_WDataOut_1) 

);

wire [31:0] n0_CADA_Mult_7_WDataIn_1;

defparam n0_CADA_Mult_7.DataIn_1_BW = 32;

wire [31:0] n0_CADA_Mult_7_WDataIn_2;

defparam n0_CADA_Mult_7.DataIn_2_BW = 32;

wire [31:0] n0_CADA_Mult_7_WDataOut_1;

wire [31:0] n0_CADA_Mult_7_DataOut_1_latency_1_WDataIn_1;

wire [31:0] n0_CADA_Mult_7_DataOut_1_latency_1_WDataOut_1;

assign n0_CADA_Mult_7_DataOut_1_latency_1_WDataIn_1 = n0_CADA_Mult_7_WDataOut_1;

HA_Reg n0_CADA_Mult_7_DataOut_1_latency_1 (

	.clk( clk ) ,

	.rst( rst ) ,

	.DataIn_1(n0_CADA_Mult_7_DataOut_1_latency_1_WDataIn_1) ,

	.DataOut_1(n0_CADA_Mult_7_DataOut_1_latency_1_WDataOut_1) 

);

defparam n0_CADA_Mult_7_DataOut_1_latency_1.DataIn_1_BW = 32;

defparam n0_CADA_Mult_7_DataOut_1_latency_1.DataOut_1_BW = 32;

defparam n0_CADA_Mult_7.DataOut_1_BW = 32;

CADA_Mult n0_CADA_Mult_7 (

	.DataOut_1(n0_CADA_Mult_7_WDataOut_1) ,

	.DataIn_1(n0_CADA_Mult_7_WDataIn_1) ,

	.DataIn_2(n0_CADA_Mult_7_WDataIn_2) 

);

wire [31:0] LogicMux_1_WDataIn_1;

wire [31:0] LogicMux_1_WDataIn_2;

wire [31:0] LogicMux_1_WDataOut_1;

wire [0:0] LogicMux_1_Wsel;

HA_2IM LogicMux_1 (

	.DataIn_1(LogicMux_1_WDataIn_1) ,

	.DataIn_2(LogicMux_1_WDataIn_2) ,

	.DataOut_1(LogicMux_1_WDataOut_1) ,

	.sel(LogicMux_1_Wsel) 

);

defparam LogicMux_1.Mux_BW = 32;

wire [31:0] LogicMux_2_WDataIn_1;

wire [31:0] LogicMux_2_WDataIn_2;

wire [31:0] LogicMux_2_WDataOut_1;

wire [0:0] LogicMux_2_Wsel;

HA_2IM LogicMux_2 (

	.DataIn_1(LogicMux_2_WDataIn_1) ,

	.DataIn_2(LogicMux_2_WDataIn_2) ,

	.DataOut_1(LogicMux_2_WDataOut_1) ,

	.sel(LogicMux_2_Wsel) 

);

defparam LogicMux_2.Mux_BW = 32;

wire [31:0] LogicMux_3_WDataIn_1;

wire [31:0] LogicMux_3_WDataIn_2;

wire [31:0] LogicMux_3_WDataOut_1;

wire [0:0] LogicMux_3_Wsel;

HA_2IM LogicMux_3 (

	.DataIn_1(LogicMux_3_WDataIn_1) ,

	.DataIn_2(LogicMux_3_WDataIn_2) ,

	.DataOut_1(LogicMux_3_WDataOut_1) ,

	.sel(LogicMux_3_Wsel) 

);

defparam LogicMux_3.Mux_BW = 32;

wire [31:0] LogicMux_4_WDataIn_1;

wire [31:0] LogicMux_4_WDataIn_2;

wire [31:0] LogicMux_4_WDataOut_1;

wire [0:0] LogicMux_4_Wsel;

HA_2IM LogicMux_4 (

	.DataIn_1(LogicMux_4_WDataIn_1) ,

	.DataIn_2(LogicMux_4_WDataIn_2) ,

	.DataOut_1(LogicMux_4_WDataOut_1) ,

	.sel(LogicMux_4_Wsel) 

);

defparam LogicMux_4.Mux_BW = 32;

assign LogicMux_4_WDataIn_1 = n0_HA_IN_1_WDataOut_1;

assign n0_CADA_Mult_7_WDataIn_2 = LogicMux_4_WDataOut_1;



// Connect child module input to parent module output 



assign n0_CADA_Mult_7_WDataIn_1 = n0_HA_IN_2_WDataOut_1;

assign LogicMux_3_WDataIn_1 = n0_HA_IN_3_WDataOut_1;

assign n0_CADA_ADD_6_WDataIn_2 = LogicMux_3_WDataOut_1;

assign LogicMux_2_WDataIn_1 = n0_HA_IN_4_WDataOut_1;

assign n0_CADA_ADD_6_WDataIn_1 = LogicMux_2_WDataOut_1;

assign LogicMux_1_WDataIn_1 = n0_CADA_ADD_6_DataOut_1_latency_1_WDataOut_1;

assign n0_HA_OW_5_WDataIn_1 = LogicMux_1_WDataOut_1;

assign LogicMux_4_WDataIn_2 = n0_CADA_ADD_6_DataOut_1_latency_1_WDataOut_1;

assign LogicMux_1_WDataIn_2 = n0_CADA_Mult_7_DataOut_1_latency_1_WDataOut_1;

assign LogicMux_2_WDataIn_2 = n0_CADA_Mult_7_DataOut_1_latency_1_WDataOut_1;

assign LogicMux_3_WDataIn_2 = n0_CADA_Mult_7_DataOut_1_latency_1_WDataOut_1;

wire [3:0] Config_Reg_WInstOut;

wire [3:0] Config_Reg_WInstIn;

wire [0:0] Config_Reg_WEN;

assign LogicMux_1_Wsel = Config_Reg_WInstOut[0:0]; 

assign LogicMux_2_Wsel = Config_Reg_WInstOut[1:1]; 

assign LogicMux_3_Wsel = Config_Reg_WInstOut[2:2]; 

assign LogicMux_4_Wsel = Config_Reg_WInstOut[3:3]; 

HA_CReg Config_Reg (

	.clk( clk ) ,

	.rst( rst ) ,

	.InstIn(Config_Reg_WInstIn) ,

	.InstOut(Config_Reg_WInstOut) ,

	.EN(Config_Reg_WEN) 

);

defparam Config_Reg.Inst_BW = 4;

assign Config_Reg_WEN = DSE_Solution_L0_Config_Reg_EN;

assign Config_Reg_WInstIn = DSE_Solution_L0_Config_Reg_InstIn;

endmodule



module DSE_Solution_L1( 

clk,

rst,

DSE_Solution_L1_t1_In0_1,

DSE_Solution_L1_t2_In0_2,

DSE_Solution_L1_t4_In0_3,

DSE_Solution_L1_t5_In0_4,

DSE_Solution_L1_t5_O1_7,

DSE_Solution_L1_t5_O2_8,

DSE_Solution_L1_t5_O3_9,

DSE_Solution_L1_Config_Reg_EN,

DSE_Solution_L1_Config_Reg_InstIn

); 



input clk;

input rst;

input [31:0] DSE_Solution_L1_t1_In0_1; 

input [31:0] DSE_Solution_L1_t2_In0_2; 

input [31:0] DSE_Solution_L1_t4_In0_3; 

input [31:0] DSE_Solution_L1_t5_In0_4; 

output [31:0] DSE_Solution_L1_t5_O1_7; 

output [31:0] DSE_Solution_L1_t5_O2_8; 

output [31:0] DSE_Solution_L1_t5_O3_9; 

input [0:0] DSE_Solution_L1_Config_Reg_EN; 

input [2:0] DSE_Solution_L1_Config_Reg_InstIn; 

wire [31:0] t1_In0_1_WDataIn_1;

assign t1_In0_1_WDataIn_1 = DSE_Solution_L1_t1_In0_1;

defparam t1_In0_1.DataIn_1_BW = 32;

wire [31:0] t1_In0_1_WDataOut_1;

defparam t1_In0_1.DataOut_1_BW = 32;

HA_INW t1_In0_1 (

	.DataIn_1(t1_In0_1_WDataIn_1) ,

	.DataOut_1(t1_In0_1_WDataOut_1) 

);

wire [31:0] t2_In0_2_WDataIn_1;

assign t2_In0_2_WDataIn_1 = DSE_Solution_L1_t2_In0_2;

defparam t2_In0_2.DataIn_1_BW = 32;

wire [31:0] t2_In0_2_WDataOut_1;

defparam t2_In0_2.DataOut_1_BW = 32;

HA_INW t2_In0_2 (

	.DataIn_1(t2_In0_2_WDataIn_1) ,

	.DataOut_1(t2_In0_2_WDataOut_1) 

);

wire [31:0] t4_In0_3_WDataIn_1;

assign t4_In0_3_WDataIn_1 = DSE_Solution_L1_t4_In0_3;

defparam t4_In0_3.DataIn_1_BW = 32;

wire [31:0] t4_In0_3_WDataOut_1;

defparam t4_In0_3.DataOut_1_BW = 32;

HA_INW t4_In0_3 (

	.DataIn_1(t4_In0_3_WDataIn_1) ,

	.DataOut_1(t4_In0_3_WDataOut_1) 

);

wire [31:0] t5_In0_4_WDataIn_1;

assign t5_In0_4_WDataIn_1 = DSE_Solution_L1_t5_In0_4;

defparam t5_In0_4.DataIn_1_BW = 32;

wire [31:0] t5_In0_4_WDataOut_1;

defparam t5_In0_4.DataOut_1_BW = 32;

HA_INW t5_In0_4 (

	.DataIn_1(t5_In0_4_WDataIn_1) ,

	.DataOut_1(t5_In0_4_WDataOut_1) 

);

wire [31:0] Token0_5_WDataIn_1;

defparam Token0_5.DataIn_1_BW = 32;

wire [31:0] Token0_5_WDataOut_1;

defparam Token0_5.DataOut_1_BW = 32;

HA_TW Token0_5 (

	.DataIn_1(Token0_5_WDataIn_1) ,

	.DataOut_1(Token0_5_WDataOut_1) 

);

wire [31:0] Token1_6_WDataIn_1;

defparam Token1_6.DataIn_1_BW = 32;

wire [31:0] Token1_6_WDataOut_1;

defparam Token1_6.DataOut_1_BW = 32;

HA_TW Token1_6 (

	.DataIn_1(Token1_6_WDataIn_1) ,

	.DataOut_1(Token1_6_WDataOut_1) 

);

wire [31:0] t5_O1_7_WDataIn_1;

defparam t5_O1_7.DataIn_1_BW = 32;

wire [31:0] t5_O1_7_WDataOut_1;

assign DSE_Solution_L1_t5_O1_7 = t5_O1_7_WDataOut_1;

defparam t5_O1_7.DataOut_1_BW = 32;

HA_OW t5_O1_7 (

	.DataIn_1(t5_O1_7_WDataIn_1) ,

	.DataOut_1(t5_O1_7_WDataOut_1) 

);

wire [31:0] t5_O2_8_WDataIn_1;

defparam t5_O2_8.DataIn_1_BW = 32;

wire [31:0] t5_O2_8_WDataOut_1;

assign DSE_Solution_L1_t5_O2_8 = t5_O2_8_WDataOut_1;

defparam t5_O2_8.DataOut_1_BW = 32;

HA_OW t5_O2_8 (

	.DataIn_1(t5_O2_8_WDataIn_1) ,

	.DataOut_1(t5_O2_8_WDataOut_1) 

);

wire [31:0] t5_O3_9_WDataIn_1;

defparam t5_O3_9.DataIn_1_BW = 32;

wire [31:0] t5_O3_9_WDataOut_1;

assign DSE_Solution_L1_t5_O3_9 = t5_O3_9_WDataOut_1;

defparam t5_O3_9.DataOut_1_BW = 32;

HA_OW t5_O3_9 (

	.DataIn_1(t5_O3_9_WDataIn_1) ,

	.DataOut_1(t5_O3_9_WDataOut_1) 

);

wire [31:0] LogicMux_1_WDataIn_1;

wire [31:0] LogicMux_1_WDataIn_2;

wire [31:0] LogicMux_1_WDataIn_3;

wire [31:0] LogicMux_1_WDataIn_4;

wire [31:0] LogicMux_1_WDataOut_1;

wire [1:0] LogicMux_1_Wsel;

HA_4IM LogicMux_1 (

	.DataIn_1(LogicMux_1_WDataIn_1) ,

	.DataIn_2(LogicMux_1_WDataIn_2) ,

	.DataIn_3(LogicMux_1_WDataIn_3) ,

	.DataIn_4(LogicMux_1_WDataIn_4) ,

	.DataOut_1(LogicMux_1_WDataOut_1) ,

	.sel(LogicMux_1_Wsel) 

);

defparam LogicMux_1.Mux_BW = 32;

wire [31:0] LogicMux_2_WDataIn_1;

wire [31:0] LogicMux_2_WDataIn_2;

wire [31:0] LogicMux_2_WDataOut_1;

wire [0:0] LogicMux_2_Wsel;

HA_2IM LogicMux_2 (

	.DataIn_1(LogicMux_2_WDataIn_1) ,

	.DataIn_2(LogicMux_2_WDataIn_2) ,

	.DataOut_1(LogicMux_2_WDataOut_1) ,

	.sel(LogicMux_2_Wsel) 

);

defparam LogicMux_2.Mux_BW = 32;

assign LogicMux_1_WDataIn_1 = t1_In0_1_WDataOut_1;

assign Token0_5_WDataIn_1 = LogicMux_1_WDataOut_1;

assign LogicMux_2_WDataIn_1 = t1_In0_1_WDataOut_1;

assign Token1_6_WDataIn_1 = LogicMux_2_WDataOut_1;

assign LogicMux_1_WDataIn_2 = t2_In0_2_WDataOut_1;

assign LogicMux_1_WDataIn_3 = t4_In0_3_WDataOut_1;

assign LogicMux_1_WDataIn_4 = t5_In0_4_WDataOut_1;

assign LogicMux_2_WDataIn_2 = t5_In0_4_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O1_7_WDataIn_1 = Token0_5_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O3_9_WDataIn_1 = Token0_5_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O2_8_WDataIn_1 = Token1_6_WDataOut_1;

wire [2:0] Config_Reg_WInstOut;

wire [2:0] Config_Reg_WInstIn;

wire [0:0] Config_Reg_WEN;

assign LogicMux_1_Wsel = Config_Reg_WInstOut[1:0]; 

assign LogicMux_2_Wsel = Config_Reg_WInstOut[2:2]; 

HA_CReg Config_Reg (

	.clk( clk ) ,

	.rst( rst ) ,

	.InstIn(Config_Reg_WInstIn) ,

	.InstOut(Config_Reg_WInstOut) ,

	.EN(Config_Reg_WEN) 

);

defparam Config_Reg.Inst_BW = 3;

assign Config_Reg_WEN = DSE_Solution_L1_Config_Reg_EN;

assign Config_Reg_WInstIn = DSE_Solution_L1_Config_Reg_InstIn;

endmodule



module DSE_Solution_L2( 

clk,

rst,

DSE_Solution_L2_t1_In0_1,

DSE_Solution_L2_t4_In0_2,

DSE_Solution_L2_t5_In0_3,

DSE_Solution_L2_t2_O0_6,

DSE_Solution_L2_t3_O0_7,

DSE_Solution_L2_t4_O0_8,

DSE_Solution_L2_t5_O0_9,

DSE_Solution_L2_Config_Reg_EN,

DSE_Solution_L2_Config_Reg_InstIn

); 



input clk;

input rst;

input [31:0] DSE_Solution_L2_t1_In0_1; 

input [31:0] DSE_Solution_L2_t4_In0_2; 

input [31:0] DSE_Solution_L2_t5_In0_3; 

output [31:0] DSE_Solution_L2_t2_O0_6; 

output [31:0] DSE_Solution_L2_t3_O0_7; 

output [31:0] DSE_Solution_L2_t4_O0_8; 

output [31:0] DSE_Solution_L2_t5_O0_9; 

input [0:0] DSE_Solution_L2_Config_Reg_EN; 

input [1:0] DSE_Solution_L2_Config_Reg_InstIn; 

wire [31:0] t1_In0_1_WDataIn_1;

assign t1_In0_1_WDataIn_1 = DSE_Solution_L2_t1_In0_1;

defparam t1_In0_1.DataIn_1_BW = 32;

wire [31:0] t1_In0_1_WDataOut_1;

defparam t1_In0_1.DataOut_1_BW = 32;

HA_INW t1_In0_1 (

	.DataIn_1(t1_In0_1_WDataIn_1) ,

	.DataOut_1(t1_In0_1_WDataOut_1) 

);

wire [31:0] t4_In0_2_WDataIn_1;

assign t4_In0_2_WDataIn_1 = DSE_Solution_L2_t4_In0_2;

defparam t4_In0_2.DataIn_1_BW = 32;

wire [31:0] t4_In0_2_WDataOut_1;

defparam t4_In0_2.DataOut_1_BW = 32;

HA_INW t4_In0_2 (

	.DataIn_1(t4_In0_2_WDataIn_1) ,

	.DataOut_1(t4_In0_2_WDataOut_1) 

);

wire [31:0] t5_In0_3_WDataIn_1;

assign t5_In0_3_WDataIn_1 = DSE_Solution_L2_t5_In0_3;

defparam t5_In0_3.DataIn_1_BW = 32;

wire [31:0] t5_In0_3_WDataOut_1;

defparam t5_In0_3.DataOut_1_BW = 32;

HA_INW t5_In0_3 (

	.DataIn_1(t5_In0_3_WDataIn_1) ,

	.DataOut_1(t5_In0_3_WDataOut_1) 

);

wire [31:0] Token0_4_WDataIn_1;

defparam Token0_4.DataIn_1_BW = 32;

wire [31:0] Token0_4_WDataOut_1;

defparam Token0_4.DataOut_1_BW = 32;

HA_TW Token0_4 (

	.DataIn_1(Token0_4_WDataIn_1) ,

	.DataOut_1(Token0_4_WDataOut_1) 

);

wire [31:0] Token1_5_WDataIn_1;

defparam Token1_5.DataIn_1_BW = 32;

wire [31:0] Token1_5_WDataOut_1;

defparam Token1_5.DataOut_1_BW = 32;

HA_TW Token1_5 (

	.DataIn_1(Token1_5_WDataIn_1) ,

	.DataOut_1(Token1_5_WDataOut_1) 

);

wire [31:0] t2_O0_6_WDataIn_1;

defparam t2_O0_6.DataIn_1_BW = 32;

wire [31:0] t2_O0_6_WDataOut_1;

assign DSE_Solution_L2_t2_O0_6 = t2_O0_6_WDataOut_1;

defparam t2_O0_6.DataOut_1_BW = 32;

HA_OW t2_O0_6 (

	.DataIn_1(t2_O0_6_WDataIn_1) ,

	.DataOut_1(t2_O0_6_WDataOut_1) 

);

wire [31:0] t3_O0_7_WDataIn_1;

defparam t3_O0_7.DataIn_1_BW = 32;

wire [31:0] t3_O0_7_WDataOut_1;

assign DSE_Solution_L2_t3_O0_7 = t3_O0_7_WDataOut_1;

defparam t3_O0_7.DataOut_1_BW = 32;

HA_OW t3_O0_7 (

	.DataIn_1(t3_O0_7_WDataIn_1) ,

	.DataOut_1(t3_O0_7_WDataOut_1) 

);

wire [31:0] t4_O0_8_WDataIn_1;

defparam t4_O0_8.DataIn_1_BW = 32;

wire [31:0] t4_O0_8_WDataOut_1;

assign DSE_Solution_L2_t4_O0_8 = t4_O0_8_WDataOut_1;

defparam t4_O0_8.DataOut_1_BW = 32;

HA_OW t4_O0_8 (

	.DataIn_1(t4_O0_8_WDataIn_1) ,

	.DataOut_1(t4_O0_8_WDataOut_1) 

);

wire [31:0] t5_O0_9_WDataIn_1;

defparam t5_O0_9.DataIn_1_BW = 32;

wire [31:0] t5_O0_9_WDataOut_1;

assign DSE_Solution_L2_t5_O0_9 = t5_O0_9_WDataOut_1;

defparam t5_O0_9.DataOut_1_BW = 32;

HA_OW t5_O0_9 (

	.DataIn_1(t5_O0_9_WDataIn_1) ,

	.DataOut_1(t5_O0_9_WDataOut_1) 

);

wire [31:0] LogicMux_1_WDataIn_1;

wire [31:0] LogicMux_1_WDataIn_2;

wire [31:0] LogicMux_1_WDataIn_3;

wire [31:0] LogicMux_1_WDataOut_1;

wire [1:0] LogicMux_1_Wsel;

HA_3IM LogicMux_1 (

	.DataIn_1(LogicMux_1_WDataIn_1) ,

	.DataIn_2(LogicMux_1_WDataIn_2) ,

	.DataIn_3(LogicMux_1_WDataIn_3) ,

	.DataOut_1(LogicMux_1_WDataOut_1) ,

	.sel(LogicMux_1_Wsel) 

);

defparam LogicMux_1.Mux_BW = 32;

assign LogicMux_1_WDataIn_1 = t1_In0_1_WDataOut_1;

assign Token0_4_WDataIn_1 = LogicMux_1_WDataOut_1;

assign LogicMux_1_WDataIn_2 = t4_In0_2_WDataOut_1;

assign LogicMux_1_WDataIn_3 = t5_In0_3_WDataOut_1;



// Connect child module input to parent module output 



assign Token1_5_WDataIn_1 = t5_In0_3_WDataOut_1;



// Connect child module input to parent module output 



assign t3_O0_7_WDataIn_1 = Token0_4_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O0_9_WDataIn_1 = Token0_4_WDataOut_1;



// Connect child module input to parent module output 



assign t2_O0_6_WDataIn_1 = Token1_5_WDataOut_1;



// Connect child module input to parent module output 



assign t4_O0_8_WDataIn_1 = Token1_5_WDataOut_1;

wire [1:0] Config_Reg_WInstOut;

wire [1:0] Config_Reg_WInstIn;

wire [0:0] Config_Reg_WEN;

assign LogicMux_1_Wsel = Config_Reg_WInstOut[1:0]; 

HA_CReg Config_Reg (

	.clk( clk ) ,

	.rst( rst ) ,

	.InstIn(Config_Reg_WInstIn) ,

	.InstOut(Config_Reg_WInstOut) ,

	.EN(Config_Reg_WEN) 

);

defparam Config_Reg.Inst_BW = 2;

assign Config_Reg_WEN = DSE_Solution_L2_Config_Reg_EN;

assign Config_Reg_WInstIn = DSE_Solution_L2_Config_Reg_InstIn;

endmodule



module DSE_Solution_L3( 

clk,

rst,

DSE_Solution_L3_t2_In0_1,

DSE_Solution_L3_t4_In0_2,

DSE_Solution_L3_t5_In0_3,

DSE_Solution_L3_t2_O0_5,

DSE_Solution_L3_t3_O0_6,

DSE_Solution_L3_t5_O0_7,

DSE_Solution_L3_Config_Reg_EN,

DSE_Solution_L3_Config_Reg_InstIn

); 



input clk;

input rst;

input [31:0] DSE_Solution_L3_t2_In0_1; 

input [31:0] DSE_Solution_L3_t4_In0_2; 

input [31:0] DSE_Solution_L3_t5_In0_3; 

output [31:0] DSE_Solution_L3_t2_O0_5; 

output [31:0] DSE_Solution_L3_t3_O0_6; 

output [31:0] DSE_Solution_L3_t5_O0_7; 

input [0:0] DSE_Solution_L3_Config_Reg_EN; 

input [1:0] DSE_Solution_L3_Config_Reg_InstIn; 

wire [31:0] t2_In0_1_WDataIn_1;

assign t2_In0_1_WDataIn_1 = DSE_Solution_L3_t2_In0_1;

defparam t2_In0_1.DataIn_1_BW = 32;

wire [31:0] t2_In0_1_WDataOut_1;

defparam t2_In0_1.DataOut_1_BW = 32;

HA_INW t2_In0_1 (

	.DataIn_1(t2_In0_1_WDataIn_1) ,

	.DataOut_1(t2_In0_1_WDataOut_1) 

);

wire [31:0] t4_In0_2_WDataIn_1;

assign t4_In0_2_WDataIn_1 = DSE_Solution_L3_t4_In0_2;

defparam t4_In0_2.DataIn_1_BW = 32;

wire [31:0] t4_In0_2_WDataOut_1;

defparam t4_In0_2.DataOut_1_BW = 32;

HA_INW t4_In0_2 (

	.DataIn_1(t4_In0_2_WDataIn_1) ,

	.DataOut_1(t4_In0_2_WDataOut_1) 

);

wire [31:0] t5_In0_3_WDataIn_1;

assign t5_In0_3_WDataIn_1 = DSE_Solution_L3_t5_In0_3;

defparam t5_In0_3.DataIn_1_BW = 32;

wire [31:0] t5_In0_3_WDataOut_1;

defparam t5_In0_3.DataOut_1_BW = 32;

HA_INW t5_In0_3 (

	.DataIn_1(t5_In0_3_WDataIn_1) ,

	.DataOut_1(t5_In0_3_WDataOut_1) 

);

wire [31:0] Token0_4_WDataIn_1;

defparam Token0_4.DataIn_1_BW = 32;

wire [31:0] Token0_4_WDataOut_1;

defparam Token0_4.DataOut_1_BW = 32;

HA_TW Token0_4 (

	.DataIn_1(Token0_4_WDataIn_1) ,

	.DataOut_1(Token0_4_WDataOut_1) 

);

wire [31:0] t2_O0_5_WDataIn_1;

defparam t2_O0_5.DataIn_1_BW = 32;

wire [31:0] t2_O0_5_WDataOut_1;

assign DSE_Solution_L3_t2_O0_5 = t2_O0_5_WDataOut_1;

defparam t2_O0_5.DataOut_1_BW = 32;

HA_OW t2_O0_5 (

	.DataIn_1(t2_O0_5_WDataIn_1) ,

	.DataOut_1(t2_O0_5_WDataOut_1) 

);

wire [31:0] t3_O0_6_WDataIn_1;

defparam t3_O0_6.DataIn_1_BW = 32;

wire [31:0] t3_O0_6_WDataOut_1;

assign DSE_Solution_L3_t3_O0_6 = t3_O0_6_WDataOut_1;

defparam t3_O0_6.DataOut_1_BW = 32;

HA_OW t3_O0_6 (

	.DataIn_1(t3_O0_6_WDataIn_1) ,

	.DataOut_1(t3_O0_6_WDataOut_1) 

);

wire [31:0] t5_O0_7_WDataIn_1;

defparam t5_O0_7.DataIn_1_BW = 32;

wire [31:0] t5_O0_7_WDataOut_1;

assign DSE_Solution_L3_t5_O0_7 = t5_O0_7_WDataOut_1;

defparam t5_O0_7.DataOut_1_BW = 32;

HA_OW t5_O0_7 (

	.DataIn_1(t5_O0_7_WDataIn_1) ,

	.DataOut_1(t5_O0_7_WDataOut_1) 

);

wire [31:0] LogicMux_1_WDataIn_1;

wire [31:0] LogicMux_1_WDataIn_2;

wire [31:0] LogicMux_1_WDataIn_3;

wire [31:0] LogicMux_1_WDataOut_1;

wire [1:0] LogicMux_1_Wsel;

HA_3IM LogicMux_1 (

	.DataIn_1(LogicMux_1_WDataIn_1) ,

	.DataIn_2(LogicMux_1_WDataIn_2) ,

	.DataIn_3(LogicMux_1_WDataIn_3) ,

	.DataOut_1(LogicMux_1_WDataOut_1) ,

	.sel(LogicMux_1_Wsel) 

);

defparam LogicMux_1.Mux_BW = 32;

assign LogicMux_1_WDataIn_1 = t2_In0_1_WDataOut_1;

assign Token0_4_WDataIn_1 = LogicMux_1_WDataOut_1;

assign LogicMux_1_WDataIn_2 = t4_In0_2_WDataOut_1;

assign LogicMux_1_WDataIn_3 = t5_In0_3_WDataOut_1;



// Connect child module input to parent module output 



assign t2_O0_5_WDataIn_1 = Token0_4_WDataOut_1;



// Connect child module input to parent module output 



assign t3_O0_6_WDataIn_1 = Token0_4_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O0_7_WDataIn_1 = Token0_4_WDataOut_1;

wire [1:0] Config_Reg_WInstOut;

wire [1:0] Config_Reg_WInstIn;

wire [0:0] Config_Reg_WEN;

assign LogicMux_1_Wsel = Config_Reg_WInstOut[1:0]; 

HA_CReg Config_Reg (

	.clk( clk ) ,

	.rst( rst ) ,

	.InstIn(Config_Reg_WInstIn) ,

	.InstOut(Config_Reg_WInstOut) ,

	.EN(Config_Reg_WEN) 

);

defparam Config_Reg.Inst_BW = 2;

assign Config_Reg_WEN = DSE_Solution_L3_Config_Reg_EN;

assign Config_Reg_WInstIn = DSE_Solution_L3_Config_Reg_InstIn;

endmodule



module DSE_Solution_L4( 

clk,

rst,

DSE_Solution_L4_t5_In0_1,

DSE_Solution_L4_t2_O0_3,

DSE_Solution_L4_t4_O0_4,

DSE_Solution_L4_t5_O0_5

); 



input clk;

input rst;

input [31:0] DSE_Solution_L4_t5_In0_1; 

output [31:0] DSE_Solution_L4_t2_O0_3; 

output [31:0] DSE_Solution_L4_t4_O0_4; 

output [31:0] DSE_Solution_L4_t5_O0_5; 

wire [31:0] t5_In0_1_WDataIn_1;

assign t5_In0_1_WDataIn_1 = DSE_Solution_L4_t5_In0_1;

defparam t5_In0_1.DataIn_1_BW = 32;

wire [31:0] t5_In0_1_WDataOut_1;

defparam t5_In0_1.DataOut_1_BW = 32;

HA_INW t5_In0_1 (

	.DataIn_1(t5_In0_1_WDataIn_1) ,

	.DataOut_1(t5_In0_1_WDataOut_1) 

);

wire [31:0] Token0_2_WDataIn_1;

defparam Token0_2.DataIn_1_BW = 32;

wire [31:0] Token0_2_WDataOut_1;

defparam Token0_2.DataOut_1_BW = 32;

HA_TW Token0_2 (

	.DataIn_1(Token0_2_WDataIn_1) ,

	.DataOut_1(Token0_2_WDataOut_1) 

);

wire [31:0] t2_O0_3_WDataIn_1;

defparam t2_O0_3.DataIn_1_BW = 32;

wire [31:0] t2_O0_3_WDataOut_1;

assign DSE_Solution_L4_t2_O0_3 = t2_O0_3_WDataOut_1;

defparam t2_O0_3.DataOut_1_BW = 32;

HA_OW t2_O0_3 (

	.DataIn_1(t2_O0_3_WDataIn_1) ,

	.DataOut_1(t2_O0_3_WDataOut_1) 

);

wire [31:0] t4_O0_4_WDataIn_1;

defparam t4_O0_4.DataIn_1_BW = 32;

wire [31:0] t4_O0_4_WDataOut_1;

assign DSE_Solution_L4_t4_O0_4 = t4_O0_4_WDataOut_1;

defparam t4_O0_4.DataOut_1_BW = 32;

HA_OW t4_O0_4 (

	.DataIn_1(t4_O0_4_WDataIn_1) ,

	.DataOut_1(t4_O0_4_WDataOut_1) 

);

wire [31:0] t5_O0_5_WDataIn_1;

defparam t5_O0_5.DataIn_1_BW = 32;

wire [31:0] t5_O0_5_WDataOut_1;

assign DSE_Solution_L4_t5_O0_5 = t5_O0_5_WDataOut_1;

defparam t5_O0_5.DataOut_1_BW = 32;

HA_OW t5_O0_5 (

	.DataIn_1(t5_O0_5_WDataIn_1) ,

	.DataOut_1(t5_O0_5_WDataOut_1) 

);



// Connect child module input to parent module output 



assign Token0_2_WDataIn_1 = t5_In0_1_WDataOut_1;



// Connect child module input to parent module output 



assign t2_O0_3_WDataIn_1 = Token0_2_WDataOut_1;



// Connect child module input to parent module output 



assign t4_O0_4_WDataIn_1 = Token0_2_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O0_5_WDataIn_1 = Token0_2_WDataOut_1;

endmodule



module DSE_Solution_L5( 

clk,

rst,

DSE_Solution_L5_t5_In0_1,

DSE_Solution_L5_t5_O0_3

); 



input clk;

input rst;

input [31:0] DSE_Solution_L5_t5_In0_1; 

output [31:0] DSE_Solution_L5_t5_O0_3; 

wire [31:0] t5_In0_1_WDataIn_1;

assign t5_In0_1_WDataIn_1 = DSE_Solution_L5_t5_In0_1;

defparam t5_In0_1.DataIn_1_BW = 32;

wire [31:0] t5_In0_1_WDataOut_1;

defparam t5_In0_1.DataOut_1_BW = 32;

HA_INW t5_In0_1 (

	.DataIn_1(t5_In0_1_WDataIn_1) ,

	.DataOut_1(t5_In0_1_WDataOut_1) 

);

wire [31:0] Token0_2_WDataIn_1;

defparam Token0_2.DataIn_1_BW = 32;

wire [31:0] Token0_2_WDataOut_1;

defparam Token0_2.DataOut_1_BW = 32;

HA_TW Token0_2 (

	.DataIn_1(Token0_2_WDataIn_1) ,

	.DataOut_1(Token0_2_WDataOut_1) 

);

wire [31:0] t5_O0_3_WDataIn_1;

defparam t5_O0_3.DataIn_1_BW = 32;

wire [31:0] t5_O0_3_WDataOut_1;

assign DSE_Solution_L5_t5_O0_3 = t5_O0_3_WDataOut_1;

defparam t5_O0_3.DataOut_1_BW = 32;

HA_OW t5_O0_3 (

	.DataIn_1(t5_O0_3_WDataIn_1) ,

	.DataOut_1(t5_O0_3_WDataOut_1) 

);



// Connect child module input to parent module output 



assign Token0_2_WDataIn_1 = t5_In0_1_WDataOut_1;



// Connect child module input to parent module output 



assign t5_O0_3_WDataIn_1 = Token0_2_WDataOut_1;

endmodule



