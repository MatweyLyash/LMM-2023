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
EXTRN OutputLNInt: proc
EXTRN OutputLNStr: proc
EXTRN OutputLNChar: proc
EXTRN OutputLNBool: proc
EXTRN strlength: proc
EXTRN stoi: proc
EXTRN strcomp: proc

.stack 4096

.const
	L1 byte "счет от нул€ до длины строки: ",0
	L2 sdword 0
	L3 word ','
	L4 sdword 1
	L5 sdword 25
	L6 sdword 5
	L7 sdword 7
	L8 sdword 3
	L9 sdword 4294967280
	L10 byte "побитовые операции: или, и, инверси€:",0
	L11 word 'n'
	L12 byte "особенности беззнакового целочисленного ципа данных:",0
	L13 sdword 10
	L14 byte " результат выполнени€ процедуры",0
	L15 byte "3asd",0
	L16 sdword 30
	L17 byte "someN не равно 30",0
	L18 byte "что?",0
	L19 byte "world",0
	L20 byte "words",0

.data
	buffer BYTE 256 dup(0)
	Countlength sdword  0
	Counti sdword  0
	GetFactk sdword  0
	GetFactj sdword  0
	glavnayaor sdword  0
	glavnayaand sdword  0
	glavnayainv sdword  0
	glavnayavyvod dword ?
	glavnayatest word ?
	glavnayasomeN sdword  0
	glavnayafac sdword  0
	glavnayacomp sdword  0

.code
Count proc Counth : dword
	push offset L1
	call OutputStr
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
	push L3
	call OutputChar
	push Counti
	push L4
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

GetFact proc GetFactn : sdword
	mov eax, GetFactn
	cmp eax, L2
	jl m0
	jg m1
	je m1
m0:
	push L2
	pop GetFactk
m1:
	mov eax, GetFactn
	cmp eax, L2
	jz m2
	jnz m3
	je m3
m2:
	push L4
	pop GetFactk
	jmp e0
m3:
	push GetFactn
	push L4
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
e0:
	push GetFactk
	jmp local0
local0:
	pop eax
	ret
GetFact ENDP

main proc
	push L5
	push L6
	pop ebx
	pop eax
	or	 ebx, eax
	push ebx
	pop glavnayaor
	push L7
	push L8
	pop ebx
	pop eax
	and	 ebx, eax
	push ebx
	pop glavnayaand
	push L9
	pop ebx
	not ebx
	push ebx
	pop glavnayainv
	push offset L10
	pop glavnayavyvod
	push glavnayavyvod
	call OutputLNStr
	push glavnayaor
	call OutputInt
	call BREAKL
	push glavnayaand
	call OutputLNInt
	push glavnayainv
	call OutputLNInt
	push L11
	pop glavnayatest
	push glavnayatest
	call OutputLNChar
	push offset L12
	call OutputLNStr
	push L6
	pop glavnayasomeN
	push glavnayasomeN
	call OutputLNInt
	push glavnayasomeN
	push L13
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop glavnayasomeN
	push glavnayasomeN
	call OutputLNInt
	push glavnayavyvod
	call Count
	push offset L14
	call OutputLNStr
	push offset L15
	pop edx
	push offset L15
	call stoi
	push eax
	pop glavnayafac
	push glavnayafac
	call OutputLNInt
	push glavnayafac
	pop edx
	push glavnayafac
	call GetFact
	push eax
	pop glavnayafac
	push glavnayafac
	call OutputLNInt
	mov eax, glavnayasomeN
	cmp eax, L16
	jnz m4
	jz m5
	je m5
m4:
	push offset L17
	call OutputLNStr
	jmp e1
m5:
	push offset L18
	call OutputStr
e1:
	push offset L19
	push offset L20
	pop edx
	pop edx
	push offset L20
	push offset L19
	call strcomp
	push eax
	pop glavnayacomp
	call ExitProcess
main ENDP
end main