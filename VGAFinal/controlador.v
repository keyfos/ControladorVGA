`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:48:02 08/19/2016 
// Design Name: 
// Module Name:    controlador 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module controlador(
	input wire clk, 
	input wire rst,
	input wire r,
	  input wire g,
	   input wire b,

//    input wire [9:0] pix_x, pix_y,
    output hsync, vsync, video_on, p_tick,
    output wire [3:0] text_on,
	 output wire [2:0] colores,
	 inout wire [9:0] pixel_x, pixel_y
    );


text_gen textgen(.clk(clk),/*.rst(rst),*/ .pix_x(pixel_x), .pix_y(pixel_y), .r(r), .g(g), .b(b), .text_on(text_on), .colores(colores));
sincronizacion timer(
		.clk_50M(clk), 
		.rst(rst), 
		.hsync(hsync), 
		.vsync(vsync), 
		.video_on(video_on), 
		.p_tick(p_tick), 
		.pixel_x(pixel_x), 
		.pixel_y(pixel_y)
	);
endmodule
