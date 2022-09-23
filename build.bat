@echo off

if not exist "build" (
  mkdir "build"
)

where /q nasm || (
  echo ERROR: NASM not found. Please install NASM then add it to your environment variables.
  exit /b 1
)

set NasmFlags=-f bin -o build/bootloader.bin
call nasm main.asm %NasmFlags%