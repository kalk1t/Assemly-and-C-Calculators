section .data

Fmt db "%d",0
Fmt_1 db "%d + %d = %d",0
Fmt_2 db "%d - %d = %d",0
Fmt_3 db "%d * %d = %d",0
Fmt_4 db "%d : %d = %d",0
Fmt_5 db "%d! = %d",0


x dd 0
y dd 0
z dd 0
z1 dd 0

Color_1 db "color 90" ,0

k db 10,9,9,9,9,9," Made by Giorgi Samkharadze / v.09 / Date : 09/02/2024",0
b1  db 10,10,9,9,9,9,9, "1 - (+) " , 10,9,9,9,9,9, "2 - (-) " , 10,9,9,9,9,9, "3 - (*) " , 10,9,9,9,9,9, "4 - (/) " ,10,9,9,9,9,9, "5 - (!) ", 10,9,9,9,9,9,"9 - (Back to main manu) ",0 

p1 db 9,9,9,"CALCULATION - 1" , 0
p2 db 9,9,9,"INFO - 2" , 0
p3 db 9,9,9,"EXIT - 0", 0

l1 db 9,9,9,"First Operand:" ,0
l2 db 9,9,9,"Second Operand:" ,0
l3 db 9,9,9,"Result: " , 0
l4 db 9,9,9,10,"Remains: ", 0

r1 db 9,9,9,"Addition:", 0
r2 db 9,9,9,"Subtraction:", 0
r3 db 9,9,9,"Multiplication:", 0
r4 db 9,9,9,"Division:", 0
r5 db 9,9,9,"Factorial:", 0
