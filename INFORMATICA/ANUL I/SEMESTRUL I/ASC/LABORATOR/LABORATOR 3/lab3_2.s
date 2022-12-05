;#Fie s un string salvat in memorie si t un spatiu alocat cu aceeasi numar de octeti. Sa se obtina in t inversul string-ului s si sa se afiseze pe ecran.
.data
	s: .space 100
	t: .space 100
	len: .space 8
	index: .space 8
	fs0: .asciz "%s"
	fs1: .asciz "%[^\n]s"	#foloseste scanf si actioneaza ca gets (citeste pana la enter), dar este safe
	fs2: .asciz "Stringul s este: "
	fs3: .asciz "Stringul t este: "
	newline: .asciz "\n"
.text
.global main
main:
	pushl $fs2
	call printf
	popl %ebx

	pushl $s
	pushl $fs1
	call scanf
	popl %ebx
	popl %ebx
	
	pushl $s
	call strlen 
	popl %ebx
	
	mov %eax, len
	decl %eax
	movl %eax, index
	
	mov $0, %ecx
	
	lea s, %esi
	lea t, %edi
	
	for:
		cmpl len, %ecx
		je exit_for
		
		movl index,%ebx
		movb (%esi, %ebx, 1), %al 	#al = s[index]
		
		movb %al, (%edi, %ecx, 1) 	#t[i] = s[index]
		
		incl %ecx
		decl index
		
		jmp for
		
	exit_for:
		movb $0, %al
		movb %al, (%edi, %ecx, 1) #t[i] = s[index]
		
		push $fs3
		call printf
		popl %ebx
		
		push $t
		call puts
		popl %ebx
		
	
	exit:
		pushl $newline
		call printf
		popl %ebx
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80
		
