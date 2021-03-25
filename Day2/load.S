// this is an assembly language program for 1to9_custom.c
.section .text
.global load
type load , @function
load: add a4,a0,zero // Initialize sum register a4 with 0x0 (hexa decimal)
      add a2,a0,a1 // store count of 10 in reg a2.Reg a1 is loaded with 0xa(decimal 10) from memory
      add a3,a0,zero // intialize increament in reg a3 by 0
loop: add a4,a3,a4 // increament addition
      addi a3,a3,1 // increment a3 by 1
      blt a3,a2,loop // If a3 is less than a2,branch to loop(blt-brach if less than)
      add a0,a4,zero // store final result to register a0 so that it can be  read by main program
      
