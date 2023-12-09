%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
msg2 db "Функция: f(x)=30x-11"
SECTION .text
global _start
_start:
mov eax,msg2
call sprintLF
pop ecx
pop edx
sub ecx,1
mov esi, 0
mov edi, 30
next:
cmp ecx,0h
jz _end
pop eax
call atoi
call _calcul
loop next
_end:
mov eax, msg
call sprint
mov eax, esi
call iprintLF
call quit

_calcul:
mul edi
sub eax,11
add esi,eax

ret
