;#Sa se determine maximul si numarul de aparitii al acestuia intr-un array.
.data
	n: .space 4
	x: .space 4
	maxim: .space 4
	nr: .space 4
	v: .space 400
	fs1: .asciz "%d"
	fs2: .asciz "%d "
	fs3: .asciz "Numarul n este: "
	fs4: .asciz "Numerele din vector: "
	fs5: .asciz "%s\n"
	fs6: .asciz "Maximul este: "
	fs7: .asciz "Numarul de aparitii este: "
	fs8: .asciz "%d\n"
	newline: .asciz "\n"
.text
.global main
main:
	movl $0, maxim
	movl $0, nr

	;//citim numarul de elemente
	pushl $fs3 #"Numarul n este: "
	call printf
	popl %ebx 
	
	pusha
	pushl $n
	pushl $fs1
	call scanf
	popl %ebx
	popl %ebx
	popa
	
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
		
		cmp maxim, %eax
		jg max
		je max2
		
		breakpoint:
		
		movl %eax, (%edi, %ecx, 4) #punem numarul x in vector
		incl %ecx
		jmp for_citire
	
	max:
		mov %eax, maxim
		mov $1, nr
		jmp breakpoint
	
	max2:
		add $1, nr
		jmp breakpoint
	
	exit_for_citire:
	
	pushl $fs6
	call printf
	popl %ebx

	pushl maxim
	pushl $fs8
	call printf
	popl %ebx
	popl %ebx
	
	pushl $fs7
	call printf
	popl %ebx
	
	pushl nr
	pushl $fs8
	call printf
	popl %ebx
	popl %ebx
	
	;// ----------
	
	exit:
		pushl $newline
		call printf
		popl %ebx
	
	movl $1, %eax
	movl $0, %ebx
	int $0x80		
