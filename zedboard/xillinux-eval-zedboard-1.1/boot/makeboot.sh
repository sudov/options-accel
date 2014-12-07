#!/bin/bash
cp -f ../verilog/xillydemo.bit .
bootgen -image xillybus.bif -w -o i boot.bin
