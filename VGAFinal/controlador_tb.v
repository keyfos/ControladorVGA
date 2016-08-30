`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:13:20 08/29/2016
// Design Name:   controlador
// Module Name:   D:/Desktop/cata/VGAFinal/controlador_tb.v
// Project Name:  VGAFinal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: controlador
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controlador_tb;

	// Inputs
	reg clk;
	reg rst;
	reg r;
	reg g;
	reg b;

	// Outputs
	wire hsync;
	wire vsync;
	wire video_on;
	wire p_tick;
	wire [3:0] text_on;
	wire [2:0] colores;

	// Bidirs
	wire [9:0] pixel_x;
	wire [9:0] pixel_y;

	// Instantiate the Unit Under Test (UUT)
	controlador uut (
		.clk(clk), 
		.rst(rst), 
		.r(r), 
		.g(g), 
		.b(b), 
		.hsync(hsync), 
		.vsync(vsync), 
		.video_on(video_on), 
		.p_tick(p_tick), 
		.text_on(text_on), 
		.colores(colores), 
		.pixel_x(pixel_x), 
		.pixel_y(pixel_y)
	);

	localparam T=20;
	always
begin
	clk<=1'b1;
	#(T/2);
	clk<=1'b0;
	#(T/2);
end


initial
begin
	rst<=1'b1; 
	@(negedge clk); 
	#(T);
	rst<=1'b0; 
end

initial
begin
	@(negedge rst);
	@(posedge clk); 
	repeat(840000) @(posedge clk);
	$stop;
end
      
endmodule

