`timescale 1ns / 1ps
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
	 input wire [1:0] red, green, blue,
    output wire [3:0] text_on,
    output reg [2:0] text_rgb
   );

   // signal declaration
   wire [10:0] rom_addr;
   reg [6:0] char_addr, char_addr_s, char_addr_l,
             char_addr_r, char_addr_o;
   reg [3:0] row_addr;
   wire [3:0] row_addr_s, row_addr_l, row_addr_r, row_addr_o;
   reg [2:0] bit_addr;
   wire [2:0] bit_addr_s, bit_addr_l,bit_addr_r, bit_addr_o;
   wire [7:0] font_word;
   wire font_bit, names_on;
   wire [7:0] rule_rom_addr;

   // instantiate font ROM
   font_rom font_unit
      (.clk(clk), .addr(rom_addr), .data(font_word));

   //-------------------------------------------
   // display region
   //-------------------------------------------
   assign names_on = (pix_y[9:7]==2) &&
                    (3<=pix_x[9:6]) && (pix_x[9:6]<=6);
   assign row_addr_l = pix_y[6:3];
   assign bit_addr_l = pix_x[5:3];
   always @*
      case (pix_x[8:6])
         3'o3: char_addr_l = 7'h4b; // K
         3'o4: char_addr_l = 7'h46; // F
         3'o5: char_addr_l = 7'h43; // C
         default: char_addr_l = 7'h20; // Blank Space
      endcase
  
   //-------------------------------------------
   // mux for font ROM addresses and rgb
   //-------------------------------------------
   always @*
   begin
      text_rgb = 3'b000;  // background, black
      if (names_on)
         begin
            char_addr = char_addr_l;
            row_addr = row_addr_l;
            bit_addr = bit_addr_l;
            if (font_bit)
               text_rgb = 3'b011;
         end
   end

   assign text_on = {names_on};
   //-------------------------------------------
   // font rom interface
   //-------------------------------------------
   assign rom_addr = {char_addr, row_addr};
   assign font_bit = font_word[~bit_addr];

endmodule
