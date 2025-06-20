`timescale 1ns / 1ns
module CADA_Bd_TB();
reg clk, rst;
reg [1007:0] count1, count2;
reg [863:0] addrIn1, addrIn2;
reg [143:0] strideIn1, strideIn2;
reg [143:0] writeEnIn1, writeEnIn2, validIn1, validIn2;
reg [737:0] IOConfig;
reg [4607:0] dataIn;
wire [4607:0] dataOut;
reg [46:0] IdataIn;
wire [46:0] IdataOut;
reg [4:0] IaddrIn1, IaddrIn2;
reg [0:0] IstrideIn1, IstrideIn2;
reg IwriteEnIn1, IvalidIn1, IwriteEnIn2, IvalidIn2;
reg [7:0] Icount1, Icount2;
reg [10:0] configIn; 
reg [35:0] controlIn; 
reg [161:0] gcontrolIn;
reg [575:0] mOutConfig;
reg [31:0] w_l_o;
reg [31:0] w_r_o;
reg [31:0] r_div_2_o;
reg [31:0] r_div_L_o;
reg [31:0] x_o;
reg [31:0] y_o;
reg [31:0] theta_o;

integer i,s;

CADA_Bd_wrapper uut(
.clk(clk),
.rst(rst),
.IOConfig(IOConfig),
.IaddrIn1(IaddrIn1),
.IaddrIn2(IaddrIn2),
.Icount1(Icount1),
.Icount2(Icount2),
.IdataIn(IdataIn),
.IdataOut(IdataOut),
.IstrideIn1(IstrideIn1),
.IstrideIn2(IstrideIn2),
.IvalidIn1(IvalidIn1),
.IvalidIn2(IvalidIn2),
.IwriteEnIn1(IwriteEnIn1),
.IwriteEnIn2(IwriteEnIn2),
.addrIn1(addrIn1),
.addrIn2(addrIn2),
.count1(count1),
.count2(count2),
.dataIn(dataIn),
.dataOut(dataOut),
.strideIn1(strideIn1),
.strideIn2(strideIn2),
.validIn1(validIn1),
.validIn2(validIn2),
.writeEnIn1(writeEnIn1),
.writeEnIn2(writeEnIn2)
);
reg [31:0] x_0 = 32'd0;
reg [31:0] y_0 = 32'd0;
reg [31:0] theta_0 = 32'd0;
reg [31:0] r_div_2 = 32'd3;
reg [31:0] r_div_L = 32'd2;
reg [31:0] w_r = 32'd4;
reg [31:0] w_l = 32'd2;
reg [31:0] w_l_neg = -32'd2;
always #1 clk = ~clk;
initial begin
	rst = 1'b1;
	clk = 1'b1;
	dataIn = 0;
	addrIn1 = 0;
	addrIn2 = 0;
	count1 = 0;
	count2 = 0;
	strideIn1 = 0;
	strideIn2 = 0;
	writeEnIn1 = 0;
	writeEnIn2 = 0;
	validIn1 = 0;
	validIn2 = 0;
	IdataIn = 0;
	IaddrIn1 = 0;
	IaddrIn2 = 0;
	Icount1 = 0;
	Icount2 = 0;
	IstrideIn1 = 0;
	IstrideIn2 = 0;
	IwriteEnIn1 = 0;
	IwriteEnIn2 = 0;
	IvalidIn1 = 0;
	IvalidIn2 = 0;
	#10
	rst = 1'b0;
	#10
	IaddrIn1 = 0;
	Icount1 = 4;
	IstrideIn1 = 1;
	IwriteEnIn1 = 1;
	IvalidIn1 = 1;
	// Store configuration bitstream
	configIn =11'b00000000000; 
	controlIn ={6'b000000,
	            6'b000000,
				6'b000000,
				6'b000000,
				6'b000000,
				6'b100001}; 
	IdataIn = {configIn, controlIn}; 
    #2
	IvalidIn1 = 0;
	configIn =11'b10100001001; 
	controlIn ={6'b000000,
	            6'b000000,
				6'b000000,
				6'b000000,
				6'b100001,
				6'b000000}; 
	IdataIn = {configIn, controlIn}; 
	#2
	IvalidIn1 = 0;
	configIn =11'b00000000010; 
	controlIn ={6'b000000,
	            6'b000000,
				6'b000000,
				6'b000000,
				6'b000000,
				6'b000100}; 
	IdataIn = {configIn, controlIn}; 
    #2
	IvalidIn1 = 0;
	configIn =11'b10100001001; 
	controlIn ={6'b000000,
	            6'b000000,
				6'b000000,
				6'b000000,
				6'b000100,
				6'b000000}; 
	IdataIn = {configIn, controlIn}; 
	#2
	IvalidIn1 = 0;
	// Load configuration bitstream and distribute
	IaddrIn2 = 0;
	Icount2 = 4;
	IstrideIn2 = 1;
	IwriteEnIn2 = 0;
	IvalidIn2 = 1;
	#2
	IvalidIn2 = 0;
	#8
	// delta x input IO Config
	//010000000000000000000000111000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
	// delta x output IO Config
	//110000000000000000
	// Put together
	gcontrolIn = {2'b11, 2'b00, 2'b00,
				  2'b00, 2'b00, 2'b00,
				  2'b00, 2'b00, 2'b00,
				  4'b0100, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				  4'b1110, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				  4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				  4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				  4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				  4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000}; 
    // delta theta input IO Config
    //000000000000000000000100000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
    // delta theta output IO Config
    //000010000000000000
    // Put together
	gcontrolIn = gcontrolIn |  {2'b00, 2'b00, 2'b10,
				                2'b00, 2'b00, 2'b00,
				                2'b00, 2'b00, 2'b00,
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0100, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b1110, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000}; 
    // delta y input IO Config
    //000000000101000000000000000000001110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
    // delta y output IO Config
    //001100000000000000
    // Put together
	gcontrolIn = gcontrolIn |  {2'b00, 2'b11, 2'b00,
				                2'b00, 2'b00, 2'b00,
				                2'b00, 2'b00, 2'b00,
				                4'b0000, 4'b0000, 4'b0101, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b1110, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 
				                4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000, 4'b0000}; 
		
	// Now let's try to figure out memory network configuration
	// When we need to get data from external source (store data into ram), we use this configuration
	mOutConfig = {6{6{4{4'b1001}}}};
	// Send in IO Configuration 
	IOConfig = {mOutConfig, gcontrolIn}; 
	// Let's configure data ram to start reading from external datain port 
	addrIn1 =    {144{6'd0}};
	count1 =     {144{7'd5}};
	strideIn1 =  {144{1'd1}};
	writeEnIn1 = {144{1'b1}};
	validIn1 =   {144{1'b1}};

	// At latency 0 process input node: w_r, w_l, w_l_neg
	// At latency 1 process input node: r_div_2, r_div_L
	// At latency 2 process input node: . 
	// At latency 3 process input node: x_0, theta_0
	// At latency 4 process input node: y_0

	dataIn = {
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	w_r,  w_l,  32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  w_r,  w_l,  32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  w_r,  w_l_neg,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};

	#2
	writeEnIn1 = {144{1'b0}};
	validIn1 = 144'b0;

	dataIn = {
	32'd0,32'd0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,
	32'd0,32'd0,r_div_2,32'd0, 32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,r_div_2,32'd0,32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,r_div_L,32'd0,
	32'd0,32'd0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};

	#2
	validIn1 = 144'b0;

	dataIn = {
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};

	#2
	validIn1 = 144'b0;

	dataIn = {
	32'd0,x_0,  32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,theta_0,32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,theta_0,32'd0,32'd0,
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};

	#2
	validIn1 = 144'b0;
	
	dataIn = {
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0, y_0,32'd0,32'd0,   32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
    32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};
	#2
	validIn1 = 144'b0;
	#2

	// Now that data is in ram, let's distribute them to array
	// This time, data output is store back to ram, so we need new memory network configuration
	// This memory network configuration is choosen because: 
	// We are routing output to memory0 which is the input memory for input0 at x=0 , y=0;
	// We are routing output to memory1 which is the input memory for input1 at x=0 , y=0;
	// We are routing output to memory4 which is the input memory for input0 at x=1 , y=0;
	// This is consistent with selectedChannel1,2,3 

	// STAGE 1
	// read from memory -> array
	mOutConfig = {
	4'h0,4'h8,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h7,4'h0,4'h6,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h6,4'h0,4'h0,
	4'h8,4'h8,4'h8,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h7,4'h7,4'h7,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h6,4'h6,4'h6,4'h6,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0};

	IOConfig = {mOutConfig, gcontrolIn};
	addrIn2 =    {144{6'd0}};
	count2 =     {144{7'd5}};
	strideIn2 =  {144{1'd1}};
	writeEnIn2 = {144{1'b0}};
	validIn2 =   {144{1'b1}};
	// Here we always pull valid to 0 in the next cycle. And we wait for output to reach output memory 
	#2
	validIn2 = 144'b0;

	for (i = 0; i < 4; i = i + 1) begin
		#6 // wait for first data to be available

		// output data on selected channels
		w_l_o =  dataOut[3807:3776];
        w_r_o =  dataOut[3839:3808];
        #2
		r_div_2_o =  dataOut[3775:3744];
		r_div_L_o =  dataOut[(32*(4*(6*4 + 0) + 1))+:32];
		#4
        x_o =  dataOut[4575:4544];
        theta_o =  dataOut[(32*(4*(6*5 + 0) + 2))+:32];
        #2
        y_o = dataOut[4320:4288];
        #2

		// Write to memory - store x,theta outputs at latency 3
		addrIn1 = {
		6'd0,6'd3,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd3,6'd0,6'd3,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd3,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0};
		count1 = {144{7'd2}};
		strideIn1 = {144{1'd1}};
		// Turn off write enable for input blocks: nodes 5,7,8 but overwrite node 4
		writeEnIn1 = {{4'b0100}, {4{1'b0}}, {4'b0101}, {4{1'b0}}, {4{1'b0}}, {4'b0100},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}};
		validIn1 = {144{1'b1}};

		// read memory again to output values and start stage 2
		addrIn2 =    {144{6'd0}};
		count2 =     {144{7'd5}};
		strideIn2 =  {144{1'd1}};
		writeEnIn2 = {144{1'b0}};
		validIn2 =   {144{1'b1}};
		#2

		writeEnIn1 = {144{1'b0}};
		validIn1 = 144'b0;

		validIn2 = 144'b0;
	end
	#6 // wait for first data to be available
    // output data on selected channels
    w_l_o =  dataOut[3807:3776];
    w_r_o =  dataOut[3839:3808];
    #2
    r_div_2_o =  dataOut[3775:3744];
	r_div_L_o =  dataOut[(32*(4*(6*4 + 0) + 1))+:32];
    #4
    x_o =  dataOut[4575:4544];
    theta_o =  dataOut[(32*(4*(6*5 + 0) + 2))+:32];
    #2
    y_o = dataOut[4320:4288];
    #2

	w_r = 2;
	w_l = 5;
	w_l_neg = -5;

	// write output back to memory and update wr/wl with turn 2 data
	mOutConfig = {
	4'h0,4'h8,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h7,4'h0,4'h6,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h6,4'h0,4'h0,
	4'h9,4'h9,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h9,4'h9,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h9,4'h9,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,
	4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0,  4'h0,4'h0,4'h0,4'h0};
	IOConfig = {mOutConfig, gcontrolIn};
	// Start write op to store output at latency 3
    addrIn1 =  {{6'd0,6'd3,6'd0,6'd0},	{4{6'd0}}, {6'd0,6'd3,6'd0,6'd3}, {4{6'd0}}, {4{6'd0}}, {6'd0,6'd3,6'd0,6'd0}, 
				{4{6'd0}}, 			  	{4{6'd0}}, {4{6'd0}}, 			  {4{6'd0}}, {4{6'd0}}, {4{6'd0}},
				{4{6'd0}}, 			  	{4{6'd0}}, {4{6'd0}}, 			  {4{6'd0}}, {4{6'd0}}, {4{6'd0}},
				{4{6'd0}}, 			  	{4{6'd0}}, {4{6'd0}}, 			  {4{6'd0}}, {4{6'd0}}, {4{6'd0}},
				{4{6'd0}}, 			  	{4{6'd0}}, {4{6'd0}}, 			  {4{6'd0}}, {4{6'd0}}, {4{6'd0}},
				{4{6'd0}}, 			  	{4{6'd0}}, {4{6'd0}}, 			  {4{6'd0}}, {4{6'd0}}, {4{6'd0}}};	
	count1 =     {144{7'd1}};
	strideIn1 =  {144{1'd1}};
	writeEnIn1 = {{4'b0100}, {4{1'b0}}, {4'b0101}, {4{1'b0}}, {4{1'b0}}, {4'b0100}, 
				  {4'b1100}, {4{1'b0}}, {4'b1100}, {4{1'b0}}, {4{1'b0}}, {4'b1100},
				  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
				  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
				  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
				  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}};
	validIn1 =   {144{1'b1}};
	
	dataIn = {
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	w_r,  w_l,  32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  w_r,  w_l,  32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  w_r,  w_l_neg,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  
	32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0,  32'd0,32'd0,32'd0,32'd0};

	// read memory again to output stage 5 values and start stage 6
    addrIn2 =    {144{6'd0}};
    count2 =     {144{7'd5}};
    strideIn2 =  {144{1'd1}};
    writeEnIn2 = {144{1'b0}};
    validIn2 =   {144{1'b1}};

	#2

	writeEnIn1 = {144{1'b0}};
	validIn1 = {144{1'b0}};
	dataIn = 0;

	validIn2 = {144{1'b0}};

	for (i = 0; i < 5; i = i + 1) begin
		#6 // wait for first data to be available
		// output data on selected channels
		w_l_o =  dataOut[3807:3776];
        w_r_o =  dataOut[3839:3808];
        #2
		r_div_2_o =  dataOut[3775:3744];
		r_div_L_o =  dataOut[(32*(4*(6*4 + 0) + 1))+:32];
		#4
        x_o =  dataOut[4575:4544];
        theta_o =  dataOut[(32*(4*(6*5 + 0) + 2))+:32];
        #2
        y_o = dataOut[4320:4288];
        #2

		// Write to memory - store x,theta outputs at latency 3
		addrIn1 = {
		6'd0,6'd3,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd3,6'd0,6'd3,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd3,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,
		6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0,  6'd0,6'd0,6'd0,6'd0};
		count1 = {144{7'd2}};
		strideIn1 = {144{1'd1}};
		// Turn off write enable for input blocks: nodes 5,7,8 but overwrite node 4
		writeEnIn1 = {{4'b0100}, {4{1'b0}}, {4'b0101}, {4{1'b0}}, {4{1'b0}}, {4'b0100},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}},
					  {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}, {4{1'b0}}};
		validIn1 = {144{1'b1}};

		// read memory again to output values and start stage 2
		addrIn2 =    {144{6'd0}};
		count2 =     {144{7'd5}};
		strideIn2 =  {144{1'd1}};
		writeEnIn2 = {144{1'b0}};
		validIn2 =   {144{1'b1}};
		#2

		writeEnIn1 = {144{1'b0}};
		validIn1 = 144'b0;

		validIn2 = 144'b0;
	end
	
	#6 // wait for first data to be available
    // output data on selected channels
    w_l_o =  dataOut[3807:3776];
    w_r_o =  dataOut[3839:3808];
    #2
    r_div_2_o =  dataOut[3775:3744];
	r_div_L_o =  dataOut[(32*(4*(6*4 + 0) + 1))+:32];
    #4
    x_o =  dataOut[4575:4544];
    theta_o =  dataOut[(32*(4*(6*5 + 0) + 2))+:32];
    #2
    y_o = dataOut[4320:4288];
    #2;

end

endmodule
