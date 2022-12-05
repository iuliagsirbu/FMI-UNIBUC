.data
	n: .space 4
	x: .space 4
	v: .space 400
	fs1: .asciz "%d"
	fs2: .asciz "%d "
	fs3: .asciz "Numarul n este: "
	fs4: .asciz "Numerele din vector: "
	fs5: .asciz "%s\n"
	newline: .asciz "\n"
.text
.global main
main:
	;//citim numarul de elemente
	pushl $fs3 #"Numarul n este: "
	call printf
	popl %ebx 
	
	pushl $n
	pushl $fs1
	call scanf
	popl %ebx
	popl %ebx
	
	;// ----------
	
	mov $0, %ecx
	lea v, %edi
	
	pushl $fs4
	call printf
	popl %ebx
	
	;// for(ecx=0;ecx<n;ecx++)
	for_citire:
		cmp n, %ecx
		je exit_for_citire
		
		pusha
		pushl $x
		pushl $fs1
		call scanf
		popl %ebx
		popl %ebx
		popa
		
		movl x, %eax #punem numarul intr-un registru
		movl %eax, (%edi, %ecx, 4) #punem numarul x in vector
		incl %ecx
		jmp for_citire
	
	exit_for_citire:
	
	;// ----------
	
	;// for(ecx=0;ecx<n;ecx++)
	mov $0, %ecx
	for:
		cmp n, %ecx
		je exit_for
		
		pusha
		movl (%edi, %ecx, 4), %eax
		pushl %eax
		pushl $fs2
		call printf
		popl %ebx
		popl %ebx
		popa
		
		incl %ecx
		jmp for
		
	exit_for:
	
	exit:
		pushl $newline
		call printf
		popl %ebx
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80
