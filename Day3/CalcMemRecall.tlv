\m5_TLV_version 1d: tl-x.org
\m5
   
   // ============================================
   // Welcome, new visitors! Try the "Learn" menu.
   // ============================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   |calc
      @1
         $valid_or_reset = $valid || $reset ;
         $valid = $reset ? '0 : >>1$valid + 1'b1;
      ?$valid
         @1
            $val1[31:0] = >>2$out ;
            $val2[31:0] = $rand2[3:0];

            $sum[31:0] = $val1 + $val2 ;
            $diff[31:0] = $val1 - $val2 ;
            $prod[31:0] = $val1 * $val2 ;
            $quot[31:0] = $val1 / $val2 ;
            
         @2
            $op [2:0] = $rand1[2:0] ;
            $out[31:0] = $reset? '0:( ($op[2:0]==3'b000) ? $sum : ($op==3'b001) ? $diff : ($op==3'b010)? $prod : ($op==3'b011)? $quot: ($op==3'b100)? >>2$mem: '0);
            $mem[31:0] = $reset? '0: ($op==3'b101)? $RETAIN : >>2$out ;

   // Assert these to end simulation (before the cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
