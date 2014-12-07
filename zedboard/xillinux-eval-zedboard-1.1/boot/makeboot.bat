@ECHO OFF
if EXIST boot.bin del boot.bin

bootgen -image xillybus.bif -o i boot.bin