        	.Ltext0:
             		.section	.rodata
             	.LC0:
0000 456E7465 		.string	"Enter you String "
     7220796F 
     75205374 
     72696E67 
     2000
             	.LC1:
0012 257300   		.string	"%s"
             	.LC2:
0015 2573200A 		.string	"%s \n"
     00
             		.text
             		.globl	main
             	main:
             	.LFB0:
             		.cfi_startproc
0000 55       		pushq	%rbp
             		.cfi_def_cfa_offset 16
             		.cfi_offset 6, -16
0001 4889E5   		movq	%rsp, %rbp
             		.cfi_def_cfa_register 6
0004 4883EC50 		subq	$80, %rsp
0008 64488B04 		movq	%fs:40, %rax
     25280000 
     00
0011 488945F8 		movq	%rax, -8(%rbp)
0015 31C0     		xorl	%eax, %eax
0017 BF000000 		movl	$.LC0, %edi
     00
001c E8000000 		call	puts
     00
0021 488D45C0 		leaq	-64(%rbp), %rax
0025 4889C6   		movq	%rax, %rsi
0028 BF000000 		movl	$.LC1, %edi
     00
002d B8000000 		movl	$0, %eax
     00
0032 E8000000 		call	__isoc99_scanf
     00
0037 488D45C0 		leaq	-64(%rbp), %rax
003b 4889C7   		movq	%rax, %rdi
003e E8000000 		call	strlen
     00
0043 8945BC   		movl	%eax, -68(%rbp)
0046 488D45C0 		leaq	-64(%rbp), %rax
004a 4889C6   		movq	%rax, %rsi
004d BF000000 		movl	$.LC2, %edi
     00
0052 B8000000 		movl	$0, %eax
     00
0057 E8000000 		call	printf
     00
             	.LBB2:
005c C745B800 		movl	$0, -72(%rbp)
     000000
0063 E9150100 		jmp	.L2
     00
             	.L13:
0068 8B45B8   		movl	-72(%rbp), %eax
006b 4898     		cltq
006d 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
0072 3C30     		cmpb	$48, %al
0074 750F     		jne	.L3
0076 8B45B8   		movl	-72(%rbp), %eax
0079 4898     		cltq
007b C64405C0 		movb	$52, -64(%rbp,%rax)
     34
0080 E9F40000 		jmp	.L4
     00
             	.L3:
0085 8B45B8   		movl	-72(%rbp), %eax
0088 4898     		cltq
008a 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
008f 3C31     		cmpb	$49, %al
0091 750F     		jne	.L5
0093 8B45B8   		movl	-72(%rbp), %eax
0096 4898     		cltq
0098 C64405C0 		movb	$54, -64(%rbp,%rax)
     36
009d E9D70000 		jmp	.L4
     00
             	.L5:
00a2 8B45B8   		movl	-72(%rbp), %eax
00a5 4898     		cltq
00a7 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
00ac 3C32     		cmpb	$50, %al
00ae 750F     		jne	.L6
00b0 8B45B8   		movl	-72(%rbp), %eax
00b3 4898     		cltq
00b5 C64405C0 		movb	$57, -64(%rbp,%rax)
     39
00ba E9BA0000 		jmp	.L4
     00
             	.L6:
00bf 8B45B8   		movl	-72(%rbp), %eax
00c2 4898     		cltq
00c4 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
00c9 3C33     		cmpb	$51, %al
00cb 750F     		jne	.L7
00cd 8B45B8   		movl	-72(%rbp), %eax
00d0 4898     		cltq
00d2 C64405C0 		movb	$53, -64(%rbp,%rax)
     35
00d7 E99D0000 		jmp	.L4
     00
             	.L7:
00dc 8B45B8   		movl	-72(%rbp), %eax
00df 4898     		cltq
00e1 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
00e6 3C34     		cmpb	$52, %al
00e8 750F     		jne	.L8
00ea 8B45B8   		movl	-72(%rbp), %eax
00ed 4898     		cltq
00ef C64405C0 		movb	$48, -64(%rbp,%rax)
     30
00f4 E9800000 		jmp	.L4
     00
             	.L8:
00f9 8B45B8   		movl	-72(%rbp), %eax
00fc 4898     		cltq
00fe 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
0103 3C35     		cmpb	$53, %al
0105 750C     		jne	.L9
0107 8B45B8   		movl	-72(%rbp), %eax
010a 4898     		cltq
010c C64405C0 		movb	$51, -64(%rbp,%rax)
     33
0111 EB66     		jmp	.L4
             	.L9:
0113 8B45B8   		movl	-72(%rbp), %eax
0116 4898     		cltq
0118 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
011d 3C36     		cmpb	$54, %al
011f 750C     		jne	.L10
0121 8B45B8   		movl	-72(%rbp), %eax
0124 4898     		cltq
0126 C64405C0 		movb	$49, -64(%rbp,%rax)
     31
012b EB4C     		jmp	.L4
             	.L10:
012d 8B45B8   		movl	-72(%rbp), %eax
0130 4898     		cltq
0132 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
0137 3C37     		cmpb	$55, %al
0139 750C     		jne	.L11
013b 8B45B8   		movl	-72(%rbp), %eax
013e 4898     		cltq
0140 C64405C0 		movb	$56, -64(%rbp,%rax)
     38
0145 EB32     		jmp	.L4
             	.L11:
0147 8B45B8   		movl	-72(%rbp), %eax
014a 4898     		cltq
014c 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
0151 3C38     		cmpb	$56, %al
0153 750C     		jne	.L12
0155 8B45B8   		movl	-72(%rbp), %eax
0158 4898     		cltq
015a C64405C0 		movb	$55, -64(%rbp,%rax)
     37
015f EB18     		jmp	.L4
             	.L12:
0161 8B45B8   		movl	-72(%rbp), %eax
0164 4898     		cltq
0166 0FB64405 		movzbl	-64(%rbp,%rax), %eax
     C0
016b 3C39     		cmpb	$57, %al
016d 750A     		jne	.L4
016f 8B45B8   		movl	-72(%rbp), %eax
0172 4898     		cltq
0174 C64405C0 		movb	$50, -64(%rbp,%rax)
     32
             	.L4:
0179 8345B801 		addl	$1, -72(%rbp)
             	.L2:
017d 8B45B8   		movl	-72(%rbp), %eax
0180 3B45BC   		cmpl	-68(%rbp), %eax
0183 0F8CDFFE 		jl	.L13
     FFFF
             	.LBE2:
0189 488D45C0 		leaq	-64(%rbp), %rax
018d 4889C6   		movq	%rax, %rsi
0190 BF000000 		movl	$.LC2, %edi
     00
0195 B8000000 		movl	$0, %eax
     00
019a E8000000 		call	printf
     00
019f B8000000 		movl	$0, %eax
     00
01a4 488B55F8 		movq	-8(%rbp), %rdx
01a8 64483314 		xorq	%fs:40, %rdx
     25280000 
     00
01b1 7405     		je	.L15
01b3 E8000000 		call	__stack_chk_fail
     00
             	.L15:
01b8 C9       		leave
             		.cfi_def_cfa 7, 8
01b9 C3       		ret
             		.cfi_endproc
             	.LFE0:
             	.Letext0:
