@echo off
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x86 
   ml /c /coff /Zi program.txt.out.asm
   link /OPT:NOREF /DEBUG /SUBSYSTEM:CONSOLE libucrt.lib program.txt.out.obj
   program.txt.out.exe
pause