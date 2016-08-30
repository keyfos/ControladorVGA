//////////////////////////////////////////////////////////////////////////////////
// ROM with synchonous read (inferring Block RAM)
// character ROM
//  - 8-by-16 (8-by-2^4) font
//  - 128 (2^7) characters
//  - ROM size: 512-by-8 (2^11-by-8) bits
//              16K bits: 1 BRAM

module text_gen
   (
    input wire clk, 
    input wire [9:0] pix_x, pix_y,	
	 input wire r, 
	 input wire g,
	 input wire b,
	 /*input rst,*/
    output wire text_on,
    output reg [2:0] text_rgb, 
	 output wire [2:0] colores
   );

   // signal declaration
   wire [10:0] rom_addr;
	wire [2:0] color;
   reg [6:0] char_addr, char_addr_l;
   reg [3:0] row_addr;
   wire [3:0] row_addr_l;
   reg [2:0] bit_addr;
   wire [2:0] bit_addr_l;
   wire [7:0] font_word;
   wire font_bit, names_on;
	//reg [9:0] pix_x, pix_y;
	
   // instantiate font ROM
//   font_rom font_unit
//      (.clk(clk), .addr(rom_addr), .data_w(font_word));
font_rom font_unit (
    .clk(clk), 
    .addr(rom_addr), 
    .data(font_word)/*,
	 .rst(rst)*/
    );
   //-------------------------------------------
   // display region
   //-------------------------------------------
   assign names_on = (pix_y[9:7]==6) &&
                    (3<=pix_x[9:6]) && (pix_x[9:6]<=6)/*&&
						  (pix_y[2:0]==0) && (pix_x[2:0]<=0)*/;
   assign row_addr_l = pix_y[8:5];
   assign bit_addr_l = pix_x[5:3];
   always @*
      case (pix_x[8:6])
         3'o3: char_addr_l = 7'h4b; // K
         3'o4: char_addr_l = 7'h46; // F
         3'o5: char_addr_l = 7'h43; // C
         default: char_addr_l = 7'h20; // Blank Space
      endcase
		   assign rom_addr = {char_addr, row_addr};
   assign font_bit = font_word[~bit_addr];
  
   //-------------------------------------------
   // mux for font ROM addresses and rgb
   //-------------------------------------------


   assign color[0] = r;
	assign color[1] = g;
	assign color[2] =b;
	always @(posedge clk)
   begin
      text_rgb = 3'b000;  // background, black
      //if (names_on) begin
			char_addr = char_addr_l;
         row_addr = row_addr_l;
         bit_addr = bit_addr_l;
			if (font_bit) begin
			text_rgb = color;
			end
			
			else 
			text_rgb = 3'b000;
			end
			//end
	assign colores = text_rgb;
	
	
	assign text_on = names_on;
	
endmodule
