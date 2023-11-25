%include 'in_out.asm'
section .data
msg1 db ' а = ',0h
msg2 db ' b = ',0h
msg3 db ' c = ',0h
msg4 db "Наименьшее число: ",0h
a dd '95'
b dd '2'
c dd '61'

section .bss
max resb 10

section .text
global _start
_start:
; ---------- Вывод всех  чисел: 
mov eax,msg1
call sprint
mov eax,a
call atoi
call iprintLF

mov eax,msg2
call sprint
mov eax,b
call atoi
call iprintLF

mov eax,msg3
call sprint
mov eax,c
call atoi
call iprintLF

;-------------сравнивание чисел
mov eax,a
call atoi ;перевод символа в число
mov [a],eax ; запись преобразованного числа в b
;------------ запись b в переменную мах
mov eax,b
call atoi ;перевод символа в число
mov [b],eax ; запись преобразованного числа в b

mov eax,c
call atoi ;перевод символа в число
mov [c],eax ; запись преобразованного числа в b

mov ecx,[a] ;
mov [max],ecx ;
;------------сравнивание чисел a c
cmp ecx,[c]; if a<c
jl check_b ; то перход на метку
mov ecx,[c] ; else ecx=c
mov [max],ecx ; max=c
;-------метка check_b
check_b:
;------------
mov ecx,[max] ;
cmp ecx,[b] ; ecx<b
jl check_c ;
mov ecx,[b] ;
mov [max],ecx ;
;-------------
check_c:
mov eax,msg4 ;
call sprint ;
mov eax,[max];
call iprintLF ;
call quit
