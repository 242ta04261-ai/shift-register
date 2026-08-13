# 4-Bit Shift Register in Verilog

## Description

This project implements a **4-bit Serial-In Serial-Out (SISO) shift register** using Verilog HDL.

The shift register accepts one bit of serial data at a time and shifts the data on every positive edge of the clock.

A synchronous reset is used to initialize the register to `0000`.

## Features

- 4-bit SISO shift register
- Serial data input
- Positive-edge triggered clock
- Synchronous reset
- Compatible with Visual Studio Code
- Simulated using Icarus 

WORKING PRINCIPLE
Verilog

q <= {serial_in, q[3:1]};
