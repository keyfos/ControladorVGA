`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Keylin Foster
// 
// Create Date:    22:46:12 08/11/2016 
// Design Name: 
// Module Name:    sincronizacion
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
module sincronizacion(
    input wire clk_50M, rst,
    output hsync, vsync, video_on, p_tick,
	 output wire [9:0] pixel_x, pixel_y
    );
	localparam HD=640;
	localparam HF=48;
	localparam HB=16;
	localparam HR=96;
	localparam VD=480;
	localparam VF=10;
	localparam VB=33;
	localparam VR=2;
	
	reg mod2_reg;
	wire mod2_sig;
	
	 reg [9:0] h_cont_reg, h_cont_sig;
	 reg [9:0] v_cont_reg, v_cont_sig;
	 
	 reg v_sync_reg, h_sync_reg;
	 wire v_sync_sig, h_sync_sig;
 
	 wire h_end, v_end, pixel_tick;
	 
	 always @(posedge clk_50M, posedge rst)
		if (rst)
			begin
			mod2_reg <= 1'b0;
			v_cont_reg <= 0;
			h_cont_reg <= 0;
			v_sync_reg <= 1'b0;
			h_sync_reg <= 1'b0;
			end
		else
			begin
				mod2_reg <= mod2_sig;
				v_cont_reg <= v_cont_sig;
				h_cont_reg <= h_cont_sig;
				v_sync_reg <= v_sync_sig;
				h_sync_reg <= h_sync_sig;
				end
assign mod2_sig = ~mod2_reg;
assign pixel_tick = mod2_reg;

assign h_end = (h_cont_reg == (HD+HF+HB+HR-1));
assign v_end = (v_cont_reg == (VD+VF+VB+VR-1));

always @*
	if (pixel_tick)
		if (h_end)
			h_cont_sig = 0;
		else
			h_cont_sig = h_cont_reg + 1;
	else
		h_cont_sig = h_cont_reg;
		
always @*
	if (pixel_tick & h_end)
		if (v_end)
			v_cont_sig = 0;
		else
			v_cont_sig = v_cont_reg + 1;
	else
		v_cont_sig = v_cont_reg;
	
assign h_sync_sig = (h_cont_reg >=(HD+HB)&&
							h_cont_reg<=(HD+HB+HR-1));

assign v_sync_sig = (v_cont_reg >= (VD+VB) &&
							v_cont_reg <= (VD+VB+VR-1));
							
assign video_on = (h_cont_reg<HD) && (v_cont_reg<VD);

assign hsync = h_sync_reg;
assign vsync = v_sync_reg;
assign pixel_x = h_cont_reg;
assign pixel_y = v_cont_reg;
assign p_tick = pixel_tick;


endmodule
