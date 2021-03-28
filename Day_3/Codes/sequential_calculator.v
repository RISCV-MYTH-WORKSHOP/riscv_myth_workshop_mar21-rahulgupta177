\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;

   //sequential calculator
   //$val1[31:0] = $rand1[3:0];
   $val2[31:0] = $rand2[3:0];
   $sum[31:0] = $val1[31:0] + $val2[31:0];
   $diff[31:0] = $val1[31:0] - $val2[31:0];
   $prod[31:0] = $val1[31:0] * $val2[31:0];
   $quot[31:0] = $val1[31:0] / $val2[31:0];
   $op[2:0] = $rand3[1:0];
   $out[31:0] = $reset ? 32'b0 :
                ($op[2:0]==3'b000) ? $sum  : 
                ($op[2:0]==3'b001) ? $diff : 
                ($op[2:0]==3'b010)? $prod  :
                                    $quot;
   $out[31:0] = $reset ? 0 : (>>1$out + 1'b0);
   $val1[31:0] = >>1$out; 
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
