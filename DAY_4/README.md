# Day 4 Basic RISC-V CPU micro-architecture and Implementation

Ok we have reach now Day_4 of our workshop. Day_4 of the workshop included the following concepts :

    1. Design of Microarchitecture and testbench for a simple RISC-V CPU
    2. Design of Fetch module, decode module, and execute module logic
    3. Design of RISC-V control logic

Subsequent to developing strong and essentials concept in TL-Verilog as well as in Digital Design, and getting totally familiar with the Makerchip Platform, the time had come to proceed onward to the core part of the workshop, that is nothing but design a RISC V core. On this day , the following fundamental elements of the RISC V core were implemented :
  
  - Program Counter (PC)
  - Imem-Rd ( Instruction Memory)
  - Instruction Decoder
  - Register File Read
  - Arithmatic Logic Unit (ALU)
  - Register File Write
  - Branch
  - Testbench
  
By the end of the Day_4 the instruction set architecture of base instructions set(except FENCH, ECALL,and EBREAK), next_pc logic, the register file, ALU, branch instructions, etc. and eventually the CPU core was built and tested, by using appropriate testbench logic as well as assembly code developed on Day_2. The codes can be found [here](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/tree/master/DAY_4/CODES).

## Lab Exercises: 

### 1. Next PC Logic

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/next_pc.JPG)

### 2. Instruction Fetch Logic

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/Memory_fetch2_ckt.JPG)

### 3. Instruction Decode

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/instruction%20field%20decoder%20instruction%20decoder_ckt.JPG)

### 4. Register File Read 

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/registerfileread2_ckt.JPG)

### 5. Arithmetic and Logic Unit(ALU)

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/ALU.JPG)

### 6. Register File Write

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/Register_file_write.JPG)

### 7. Branch Instructions 

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/Branch_instruction.JPG)

### 8. Final Day_4 Output: RISCV Core

The final RISC-V CPU core (without pipelining) has been completely implemented.

![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/Testbench.JPG)
![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_mar21-rahulgupta177/blob/master/DAY_4/LAB_OUTPUTS/testbench_waveform.JPG)


