#!/bin/sh

#@ECHO OFF
#if EXIST boot.bin del boot.bin

cp -f ../verilog/xillydemo.bit .
bootgen -w on -image xillybus.bif -o i boot.bin
