.586
.model flat, stdcall
includelib libucrt.lib
includelib kernel32.lib
includelib D:\Desktop\нъчћ\LMM-2023\Debug\StaticLibrary.lib
ExitProcess proto :dword

EXTRN BREAKL: proc
EXTRN OutputInt: proc
EXTRN OutputStr: proc
EXTRN OutputChar: proc
EXTRN OutputBool: proc
EXTRN OutputLNInt: proc
EXTRN OutputLNStr: proc
EXTRN OutputLNChar: proc
EXTRN OutputLNBool: proc
EXTRN strlength: proc
EXTRN stoi: proc
EXTRN strcomp: proc

.stack 4096

.const
	L1 sdword 4294967294

.data
	buffer BYTE 256 dup(0)
	glavnayanumber sdword  0

.code
main proc
	call BREAKL
	push L1
	pop glavnayanumber
	push glavnayanumber
	call OutputLNInt
	call ExitProcess
main ENDP
end main