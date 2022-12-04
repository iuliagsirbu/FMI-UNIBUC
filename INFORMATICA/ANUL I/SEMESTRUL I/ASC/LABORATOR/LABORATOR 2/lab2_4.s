;// Sa se verifice daca un numar dat este prim (folositi ambele variante de structuri repetitive).
.data
	n: .space 20
	nr: .space 20
	fs1: .asciz "Numarul dat este: "
	fs2: .asciz "Numarul este prim.\n"
	fs3: .asciz "Numarul nu este prim.\n"
	fs4: .asciz "Prima metoda:\n"
	fs5: .asciz "A doua metoda:\n"
	fs6: .asciz "%d"
.text
.global main
main:
	pushl $fs1
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	pushl $n
	pushl $fs6
	call scanf
	popl %eax
	popl %eax
	
	pushl $fs4
	call printf
	popl %eax
	
	pushl $0
	call fflush
	popl %eax
	
	mov $0, %ecx
	mov $0, nr
	
	loop1:
		cmp n, %ecx
		je continue
		
		add $1, %ecx
		
		mov $0, %edx
		mov n, %eax
		div %ecx
		
		mov $0, %ebx
		
		cmp %edx, %ebx
		je numar
		jne loop1
		
		numar:
			add $1, nr
		
		jmp loop1
	
	continue:
		mov $2, %ebx
		cmp %ebx, nr
		
		je prim
		jne notprim
		
		prim:
			pushl $fs2
			call printf
			popl %eax
			
			pushl $0
			call fflush
			popl %eax
			
			jmp continue2
			
		notprim:
			pushl $fs3
			call printf
			popl %eax
			
			pushl $0
			call fflush
			popl %eax	
	
	continue2:
		pushl $fs5
		call printf
		popl %eax
		
		pushl $0
		call fflush
		popl %eax
		
		mov $0, nr
		mov n, %eax
		mov n, %ecx
		
		loop2:	
		mov $0, %edx
		div %ecx

		mov $0, %ebx
		
		cmp %edx, %ebx
		je numar2
		jne else2
		numar2:
			add $1, nr
		else2:
			mov n, %eax
			loop loop2
	
	continue3:
		mov $2, %ebx
		cmp %ebx, nr
			
		je prim2
		jne notprim2
		
	prim2:
		pushl $fs2
		call printf
		popl %eax
			
		pushl $0
		call fflush
		popl %eax
			
		jmp etexit
			
	notprim2:
		pushl $fs3
		call printf
		popl %eax
			
		pushl $0
		call fflush
		popl %eax
	
	etexit:
		movl $1, %eax
		movl $0, %ebx
		int $0x80
