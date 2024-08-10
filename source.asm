%include "externs.asm"
%include "data.asm"

section .text

lea eax,Color_1
push eax
call _system
pop ebp

THESTART:

lea eax,p1
push eax
call _puts
pop ebp

lea ebx,p2
push ebx
call _puts
pop ebp

lea ecx,p3
push ecx
call _puts
pop ebp


lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

cmp dword [x],1
je CALCULATION

cmp dword [x],2
je INFORMATION

cmp dword [x],0
je EXIT



;-INFORMATION 

INFORMATION:
lea eax,k
push eax
call _puts
pop ebp

jmp THESTART

CALCULATION:

MAIN_CICLE:

;-TITLE
lea eax,b1
push eax
call _puts
pop ebp

;-OPPERATION NUMBER
lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

cmp dword [x],1
je A

cmp dword [x],2
je A2

cmp dword [x],3
je A3

cmp dword [x],4
je A4

cmp dword [x],5
je A5

cmp dword [x],9
je THESTART



;-Add
A:
lea ebx,r1
push ebx
call _puts
pop ebp

lea eax,l1
push eax
call _puts

lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

lea ecx,l2
push ecx
call _puts

lea eax,y
push eax
lea eax,Fmt
push eax
call _scanf
pop ebp


mov eax,[x]
add eax,[y]
mov [z],eax



lea ecx,l3
push ecx
call _puts

push dword [z]
push dword [y]
push dword [x]
lea ebx,Fmt_1
push ebx
call _printf
pop ebp

jmp MAIN_CICLE


;-Sub
A2:

lea ebx,r2
push ebx
call _puts
pop ebp

lea eax,l1
push eax
call _puts

lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

lea ecx,l2
push ecx
call _puts

lea eax,y
push eax
lea eax,Fmt
push eax
call _scanf
pop ebp


mov eax,[x]
mov ebx,[y]
sub eax,ebx
mov [z],eax



lea ecx,l3
push ecx
call _puts



push dword [z]
push dword [y]
push dword [x]
lea ebx,Fmt_2
push ebx
call _printf
pop ebp

jmp MAIN_CICLE


;-Mul
A3:


lea ebx,r3
push ebx
call _puts
pop ebp

lea eax,l1
push eax
call _puts

lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

lea ecx,l2
push ecx
call _puts

lea eax,y
push eax
lea eax,Fmt
push eax
call _scanf
pop ebp


mov eax,[x]
mov ebx, [y]
mul ebx
mov [z] ,eax



lea ecx,l3
push ecx
call _puts


push dword [z]
push dword [y]
push dword [x]
lea ebx,Fmt_3
push ebx
call _printf
pop ebp

jmp MAIN_CICLE






;-Devide
A4:

lea ebx,r4
push ebx
call _puts
pop ebp

lea eax,l1
push eax
call _puts

lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf

lea ecx,l2
push ecx
call _puts

lea eax,y
push eax
lea eax,Fmt
push eax
call _scanf
pop ebp


mov eax,[x]
mov ebx,[y]
mov ecx,0
not ebx
add ebx,1
C:
add eax,ebx
inc ecx
cmp eax,[y]


jnl C
je D

D:

mov [z],ecx
mov [z1],eax
pop ebp

lea ecx,l3
push ecx
call _puts

push dword [z]
push dword [y]
push dword [x]
lea ebx,Fmt_4
push ebx
call _printf
pop ebp


lea edx,l4
push edx
call _puts
pop ebp

push dword [z1]
lea eax,Fmt
push eax
call _printf
pop ebp






jmp MAIN_CICLE


;-Factorial
A5:


lea eax,r5
push eax
call _puts
pop ebp

lea eax,x
push eax
lea eax,Fmt
push eax
call _scanf



mov eax,1
mov ebx,eax
FACT_1:
inc ebx
mul ebx
cmp ebx,[x]
jl FACT_1
je FACT_2

FACT_2:
pop ebp

mov dword [z], eax

lea eax,l3
push eax
call _puts


push dword [z]
push dword [x]
lea eax,Fmt_5
push eax
call _printf
pop ebp



jmp MAIN_CICLE





EXIT:
push 0
call _exit
ret
