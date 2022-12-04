;//Fie a, b, c trei numere salvate in memorie si min un spatiu alocat de 4 octeti. Sa se salveze in min cel mai mic numar dintre cele trei.
.data
	a: .space 4
	b: .space 4
	c: .space 4
	min: .space 4
	fs1: .asciz "%d%d%d"
	fs2: .asciz "Cele 3 numere sunt: "
	fs3: .asciz "Minimul este: "
	fs4: .asciz "%s%d\n"
.text
.global main
main:
	pushl $fs2
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax

	pushl $c
	pushl $b
	pushl $a
	pushl $fs1
	call scanf
	popl %eax
	popl %eax
	popl %eax
	popl %eax
	
	mov a, %eax
	mov b, %ebx
	mov c, %ecx
	
	cmp %eax, %ebx
	jle if1
	jg if2
	
	if1:
		mov %ebx, min
		cmp %ecx, min
		mov %ecx, %ebx
		jg if1
		jle afis
	
	if2:
		mov %eax, min
		cmp %ecx, min
		mov %ecx, %eax
		jg if2
		jle afis
	
	afis:
		pushl  min
		pushl $fs3
		pushl $fs4
		call printf
		popl %eax
		popl %eax
		popl %eax
		
		pushl $0
		call fflush
		popl %eax

	etexit:
		movl $1, %eax
		movl $0, %ebx
		int $0x80		
