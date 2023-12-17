.586
.model flat, stdcall
includelib libucrt.lib
includelib kernel32.lib
includelib D:\Desktop\Экзы\LMM-2023\Debug\StaticLibrary.lib
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
	L1 byte "счет от нуля до длины строки: ",0
	L2 sdword 0
	L3 word ','
	L4 sdword 1
	L5 sdword 25
	L6 sdword 5
	L7 sdword 7
	L8 sdword 3
	L9 sdword 4294967280
	L10 byte "побитовые операции: или, и, инверсия:",0
	L11 byte "символьные литералы",0
	L12 word 'n'
	L13 word 'Ы'
	L14 byte "особенности беззнакового целочисленного ципа данных:",0
	L15 sdword 10
	L16 sdword 30
	L17 byte "123asd",0
	L18 sdword 120
	L19 byte "факториал: ",0
	L20 byte "someN не равно 30",0
	L21 byte "что?",0
	L22 byte "hell",0
	L23 byte "hello",0

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
	call BREAKL
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
	push offset L11
	call OutputLNStr
	push L12
	pop glavnayatest
	push glavnayatest
	call OutputLNChar
	push L13
	pop glavnayatest
	push glavnayatest
	call OutputLNChar
	push offset L14
	call OutputLNStr
	push L6
	pop glavnayasomeN
	push glavnayasomeN
	call OutputLNInt
	push glavnayasomeN
	push L15
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop glavnayasomeN
	push glavnayasomeN
	call OutputLNInt
	push glavnayasomeN
	push L16
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop glavnayasomeN
	push glavnayasomeN
	call OutputLNInt
	push glavnayavyvod
	call Count
	push offset L17
	pop edx
	push offset L17
	call stoi
	push eax
	pop glavnayafac
	push glavnayafac
	call OutputLNInt
	push glavnayafac
	push L18
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop glavnayafac
	push glavnayafac
	pop edx
	push glavnayafac
	call GetFact
	push eax
	pop glavnayafac
	push offset L19
	call OutputStr
	push glavnayafac
	call OutputLNInt
	mov eax, glavnayasomeN
	cmp eax, L16
	jnz m4
	jz m5
	je m5
m4:
	push offset L20
	call OutputLNStr
	push L16
	pop glavnayasomeN
	jmp e1
m5:
	push offset L21
	call OutputStr
e1:
	push offset L22
	push offset L23
	pop edx
	pop edx
	push offset L23
	push offset L22
	call strcomp
	push eax
	pop glavnayacomp
	push glavnayacomp
	call OutputLNInt
	call ExitProcess
main ENDP
end main