# Pipelined-LC3
A simple 16-bit processor with pipelining.

## Description
The LC3 (Little Computer 3) is a 16-bit processor from the textbook "Introduction to Computing Systems" by Yale N. Patt and Sanjay J. Patel. It's a processor designed for educational purposes. Because of this, the LC3 is more simple than other processors. 

This project will recreate that processor but with pipelined instructions rather than single-cycle. Very little else may change.

## Goals
The goal of the project is to implement a processor with Pipelining. I plan to have a greater understanding of the software (Xilinx ISE 14.7) by the end.

## Components
I started this project with the ALU. At the time, I could not write up Verilog Modules. I am keeping all of the components of the ALU (ADD, AND, NOT, OR) will be schematics for the sake of time. Future components will be created with Verilog, but some may consist of schematics.

## Bugs
TBA

## Currently Implemented
Most of the ALU has been complete and will be.

## Future Plans
Once the ALU is complete, will work on other components in the following order:
1. Register File
2. Various multiplexers
3. Sign Extension
4. Datapaths for Instructions
5. Finite State Machine
