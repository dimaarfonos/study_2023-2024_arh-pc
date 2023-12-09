%include 'in_out.asm'

SECTION .data
	msg: DB 'Введите х: ',0
	result DB 'f(x)=2x+7 ',0
	gx DB 'g(x)= 3x-1 ',0
	fgx DB 'f(g(x)) = '
SECTION .bss
	x: RESB 80
	res: RESB 80

SECTION .text
GLOBAL _start
	_start:
;----------------------------------------
; Основная программа
;----------------------------------------

mov eax,msg
call sprint

mov ecx,x
mov edx,80
call sread

mov eax,x
call atoi

call _calcul ;ПОДПРОГРАММА calcul

mov eax,result
call sprintLF
mov eax,gx
call sprintLF
mov eax, fgx
call sprint
mov eax,[res]
call iprintLF

call quit

;---------------------------

_calcul:
	call _subcalcul
	mov eax,[res]
	mov ebx,2
	mul ebx
	add eax,7
	mov [res],eax

	ret
_subcalcul:
	mov ebx,3
	mul ebx
	sub eax,1
	mov [res],eax
	ret
