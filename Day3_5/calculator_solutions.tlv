\m4_TLV_version 1d: tl-x.org
\SV

   // ==========================================
   // For use in Makerchip for the MYTH Workshop
  
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   //RAHUL
   //$val1[31:0] = $rand1[3:0];
   //$reset = *reset;
   |cal
      @0
         $reset = *reset;
      @1
         $val1[31:0] = >>2$out;
         $val2[31:0] = $rand2[3:0];
         $valid = $reset ? 1'b0 : >>1$valid + 1'b1 ;
         $valid_or_reset = $valid || $reset;
      ?$valid_or_reset
         @1
            
            //$val1[31:0] = >>2$out; 
            //$val2[31:0] = $rand2[3:0];
            $sum[31:0] = $val1[31:0] + $val2[31:0];
            $diff[31:0] = $val1[31:0] - $val2[31:0];
            $prod[31:0] = $val1[31:0] * $val2[31:0];
            $quot[31:0] = $val1[31:0] / $val2[31:0];
            //$op[2:0] = 'x;
            //$valid = $reset ? 1'b0 : >>1$valid + 1'b1 ;
            //$valid_or_reset = $valid || $reset;
         @2 
            
            $mem[31:0] = $reset ? 32'b0 :
                         ($op[2:0] == 3'b101) ? $val1 : >>2$mem ;
            $out[31:0] = $reset ? 32'b0 :
                         ($op[2:0]==3'b000) ? $sum  :
                         ($op[2:0]==3'b001) ? $diff :
                         ($op[2:0]==3'b010) ? $prod :
                         ($op[2:0]==3'b011) ? $quot :
                                           >>2$out  ;
           
            
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
   //m4+solution(M4_SLIDE_NUM)
   // The stage that is represented by visualization.
   //m4+cpu_viz(@4)
\SV
   endmodule
