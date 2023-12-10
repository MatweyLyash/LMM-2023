.586
.model flat, stdcall
includelib libucrt.lib
includelib kernel32.lib
includelib D:\Desktop\Ёкзы\LMM-2023\Debug\StaticLibrary.lib
ExitProcess proto :dword

EXTRN BREAKL: proc
EXTRN OutputInt: proc
EXTRN OutputStr: proc
EXTRN OutputChar: proc
EXTRN OutputBool: proc
EXTRN strlength: proc
EXTRN stoi: proc
EXTRN strcomp: proc

.stack 4096

.const
	L1 sdword 2
	L2 sdword 0
	L3 sdword 1
	L4 sdword 0
	L5 sdword 1
	L6 word ','
	L7 sdword 7
	L8 byte "факториал числа равен: ",0
	L9 word 'h'
	L10 byte "hell",0
	L11 sdword -10
	L12 sdword 13
	L13 byte "hello",0
	L14 sdword 10
	L15 sdword 45
	L16 sdword 4
	L17 sdword 5
	L18 sdword 3
	L19 byte "12",0

.data
	buffer BYTE 256 dup(0)
	EvenCheckh word 0
	GetFactk sdword 0
	GetFactj sdword 0
	Countlength sdword 0
	Counti sdword 0
	glavnayanumber sdword 0
	glavnayaiseven word 0
	glavnayabinary sdword 0
	glavnayaoctal sdword 0
	glavnayaresult sdword 0
	glavnayag sdword 0

.code
EvenCheck proc EvenCheckk : sdword
	push EvenCheckk
	push L1
	pop ebx
	pop eax
	cdq
	idiv ebx
	push edx
	pop EvenCheckk
	mov eax, EvenCheckk
	cmp eax, L2
	jz m0
	jnz m1
	je m1
m0:
	push L3
	pop EvenCheckh
	jmp e0
m1:
	push L4
	pop EvenCheckh
e0:
	push EvenCheckh
	jmp local0
local0:
	pop eax
	ret
EvenCheck ENDP

GetFact proc GetFactn : sdword
	mov eax, GetFactn
	cmp eax, L2
	jl m2
	jg m3
	je m3
m2:
	push L2
	pop GetFactk
m3:
	mov eax, GetFactn
	cmp eax, L2
	jz m4
	jnz m5
	je m5
m4:
	push L5
	pop GetFactk
	jmp e1
m5:
	push GetFactn
	push L5
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop GetFactj
	push GetFactn
	push GetFactj
	pop edx
	push GetFactj
	call GetFact
	push eax
	pop eax
	pop ebx
	mul ebx
	push eax
	pop GetFactk
e1:
	push GetFactk
	jmp local1
local1:
	pop eax
	ret
GetFact ENDP

Count proc Counth : dword
	push Counth
	call OutputStr
	call BREAKL
	push Counth
	pop edx
	push Counth
	call strlength
	push eax
	pop Countlength
	push L2
	pop Counti
	mov eax, Counti
	cmp eax, Countlength
	jl cycle0
	jmp cyclenext0
cycle0:
	push Counti
	call OutputInt
	push L6
	call OutputChar
	push Counti
	push L5
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop Counti
	mov eax, Counti
	cmp eax, Countlength
	jl cycle0
cyclenext0:
	ret
Count ENDP

main proc
	push L7
	pop edx
	push L7
	call GetFact
	push eax
	pop glavnayanumber
	push offset L8
	call OutputStr
	push glavnayanumber
	call OutputInt
	call BREAKL
	push L9
	call OutputChar
	call BREAKL
	push glavnayanumber
	pop edx
	push glavnayanumber
	call EvenCheck
	push eax
	pop glavnayaiseven
	push glavnayaiseven
	call OutputBool
	call BREAKL
	push offset L10
	call Count
	call BREAKL
	push L11
	pop glavnayabinary
	push glavnayabinary
	call OutputInt
	call BREAKL
	push L12
	pop glavnayaoctal
	push offset L13
	pop edx
	push offset L13
	call strlength
	push eax
	push L14
	push L11
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L15
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L1
	push L16
	push L17
	pop eax
	pop ebx
	mul ebx
	push eax
	push L5
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L18
	pop ebx
	pop eax
	cdq
	idiv ebx
	push eax
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop ebx
	pop eax
	cdq
	idiv ebx
	push eax
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push offset L19
	pop edx
	push offset L19
	call stoi
	push eax
	pop eax
	pop ebx
	pop ebx
	add eax, ebx
	push eax
	push glavnayaoctal
	push glavnayabinary
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L1
	pop ebx
	pop eax
	cdq
	idiv ebx
	push edx
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop glavnayaresult
	push glavnayaresult
	call OutputInt
	call BREAKL
	push offset L13
	push offset L10
	pop edx
	pop edx
	push offset L10
	push offset L13
	call strcomp
	push eax
	pop glavnayag
	push glavnayag
	call OutputInt
	call BREAKL
	call ExitProcess
main ENDP
end main