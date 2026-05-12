	.file	"main.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mavx -mtune=generic -march=x86-64 -g -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/calvert/Documents/University/Year 2/Semester 2/System Architecture/Coursework 3/baselinecode" "main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"usage: %s <L> <M> <N> <seed> <mode> <additional mode arg>\n"
	.text
	.globl	print_help_and_exit
	.type	print_help_and_exit, @function
print_help_and_exit:
.LFB5039:
	.file 1 "main.c"
	.loc 1 18 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# argv, argv
# main.c:19:     printf("usage: %s <L> <M> <N> <seed> <mode> <additional mode arg>\n", argv[0]);
	.loc 1 19 5
	movq	-8(%rbp), %rax	# argv, tmp83
	movq	(%rax), %rax	# *argv_3(D), _1
	movq	%rax, %rsi	# _1,
	leaq	.LC0(%rip), %rax	#, tmp84
	movq	%rax, %rdi	# tmp84,
	movl	$0, %eax	#,
	call	printf@PLT	#
# main.c:20:     exit(0);
	.loc 1 20 5
	movl	$0, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE5039:
	.size	print_help_and_exit, .-print_help_and_exit
	.section	.rodata
.LC1:
	.string	"%f "
	.text
	.globl	print_matrix
	.type	print_matrix, @function
print_matrix:
.LFB5040:
	.loc 1 24 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# mat, mat
	movl	%esi, -28(%rbp)	# rows, rows
	movl	%edx, -32(%rbp)	# cols, cols
.LBB36:
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 14
	movl	$0, -8(%rbp)	#, i
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 5
	jmp	.L3	#
.L6:
.LBB37:
# main.c:27:         for (int j = 0; j < cols; j++)
	.loc 1 27 18
	movl	$0, -4(%rbp)	#, j
# main.c:27:         for (int j = 0; j < cols; j++)
	.loc 1 27 9
	jmp	.L4	#
.L5:
# main.c:29:             printf("%f ", mat[i][j]);
	.loc 1 29 30
	movl	-8(%rbp), %eax	# i, tmp90
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# mat, tmp91
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# main.c:29:             printf("%f ", mat[i][j]);
	.loc 1 29 33
	movl	-4(%rbp), %edx	# j, tmp92
	movslq	%edx, %rdx	# tmp92, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# main.c:29:             printf("%f ", mat[i][j]);
	.loc 1 29 13
	movq	(%rax), %rax	# *_7, _8
	vmovq	%rax, %xmm0	# _8,
	leaq	.LC1(%rip), %rax	#, tmp93
	movq	%rax, %rdi	# tmp93,
	movl	$1, %eax	#,
	call	printf@PLT	#
# main.c:27:         for (int j = 0; j < cols; j++)
	.loc 1 27 36 discriminator 3
	addl	$1, -4(%rbp)	#, j
.L4:
# main.c:27:         for (int j = 0; j < cols; j++)
	.loc 1 27 27 discriminator 1
	movl	-4(%rbp), %eax	# j, tmp94
	cmpl	-32(%rbp), %eax	# cols, tmp94
	jl	.L5	#,
.LBE37:
# main.c:31:         printf("\n");
	.loc 1 31 9
	movl	$10, %edi	#,
	call	putchar@PLT	#
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 32 discriminator 2
	addl	$1, -8(%rbp)	#, i
.L3:
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 23 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp95
	cmpl	-28(%rbp), %eax	# rows, tmp95
	jl	.L6	#,
.LBE36:
# main.c:33: }
	.loc 1 33 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5040:
	.size	print_matrix, .-print_matrix
	.globl	drand
	.type	drand, @function
drand:
.LFB5041:
	.loc 1 36 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	vmovsd	%xmm0, -24(%rbp)	# min, min
	vmovsd	%xmm1, -32(%rbp)	# max, max
# main.c:37:     double random_double = (double)rand() / RAND_MAX;
	.loc 1 37 36
	call	rand@PLT	#
# main.c:37:     double random_double = (double)rand() / RAND_MAX;
	.loc 1 37 28 discriminator 1
	vcvtsi2sdl	%eax, %xmm0, %xmm0	# _1, _2
# main.c:37:     double random_double = (double)rand() / RAND_MAX;
	.loc 1 37 12 discriminator 1
	vmovsd	.LC2(%rip), %xmm1	#, tmp89
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp89, _2, tmp88
	vmovsd	%xmm0, -8(%rbp)	# tmp88, random_double
# main.c:38:     random_double = (random_double * (max - min)) + min;
	.loc 1 38 43
	vmovsd	-32(%rbp), %xmm0	# max, tmp90
	vsubsd	-24(%rbp), %xmm0, %xmm0	# min, tmp90, _3
# main.c:38:     random_double = (random_double * (max - min)) + min;
	.loc 1 38 36
	vmulsd	-8(%rbp), %xmm0, %xmm0	# random_double, _3, _4
# main.c:38:     random_double = (random_double * (max - min)) + min;
	.loc 1 38 19
	vmovsd	-24(%rbp), %xmm1	# min, tmp92
	vaddsd	%xmm0, %xmm1, %xmm0	# _4, tmp92, tmp91
	vmovsd	%xmm0, -8(%rbp)	# tmp91, random_double
# main.c:39:     return random_double;
	.loc 1 39 12
	vmovsd	-8(%rbp), %xmm0	# random_double, _11
# main.c:40: }
	.loc 1 40 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5041:
	.size	drand, .-drand
	.globl	matrix_multiply
	.type	matrix_multiply, @function
matrix_multiply:
.LFB5042:
	.loc 1 48 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# A, A
	movq	%rsi, -32(%rbp)	# B, B
	movq	%rdx, -40(%rbp)	# C, C
	movl	%ecx, -44(%rbp)	# L, L
	movl	%r8d, -48(%rbp)	# M, M
	movl	%r9d, -52(%rbp)	# N, N
.LBB38:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 14
	movl	$0, -12(%rbp)	#, i
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 5
	jmp	.L10	#
.L15:
.LBB39:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 18
	movl	$0, -8(%rbp)	#, j
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 9
	jmp	.L11	#
.L14:
.LBB40:
# main.c:56:             for (int k = 0; k < M; k++)
	.loc 1 56 22
	movl	$0, -4(%rbp)	#, k
# main.c:56:             for (int k = 0; k < M; k++)
	.loc 1 56 13
	jmp	.L12	#
.L13:
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 18
	movl	-12(%rbp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-40(%rbp), %rax	# C, tmp116
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 21
	movl	-8(%rbp), %edx	# j, tmp117
	movslq	%edx, %rdx	# tmp117, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
	vmovsd	(%rax), %xmm1	# *_7, _8
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 29
	movl	-12(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-24(%rbp), %rax	# A, tmp119
	addq	%rdx, %rax	# _10, _11
	movq	(%rax), %rax	# *_11, _12
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 32
	movl	-4(%rbp), %edx	# k, tmp120
	movslq	%edx, %rdx	# tmp120, _13
	salq	$3, %rdx	#, _14
	addq	%rdx, %rax	# _14, _15
	vmovsd	(%rax), %xmm2	# *_15, _16
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 39
	movl	-4(%rbp), %eax	# k, tmp121
	cltq
	leaq	0(,%rax,8), %rdx	#, _18
	movq	-32(%rbp), %rax	# B, tmp122
	addq	%rdx, %rax	# _18, _19
	movq	(%rax), %rax	# *_19, _20
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 42
	movl	-8(%rbp), %edx	# j, tmp123
	movslq	%edx, %rdx	# tmp123, _21
	salq	$3, %rdx	#, _22
	addq	%rdx, %rax	# _22, _23
	vmovsd	(%rax), %xmm0	# *_23, _24
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 36
	vmulsd	%xmm0, %xmm2, %xmm0	# _24, _16, _25
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 18
	movl	-12(%rbp), %eax	# i, tmp124
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-40(%rbp), %rax	# C, tmp125
	addq	%rdx, %rax	# _27, _28
	movq	(%rax), %rax	# *_28, _29
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 21
	movl	-8(%rbp), %edx	# j, tmp126
	movslq	%edx, %rdx	# tmp126, _30
	salq	$3, %rdx	#, _31
	addq	%rdx, %rax	# _31, _32
# main.c:58:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 58 25
	vaddsd	%xmm0, %xmm1, %xmm0	# _25, _8, _33
	vmovsd	%xmm0, (%rax)	# _33, *_32
# main.c:56:             for (int k = 0; k < M; k++)
	.loc 1 56 37 discriminator 3
	addl	$1, -4(%rbp)	#, k
.L12:
# main.c:56:             for (int k = 0; k < M; k++)
	.loc 1 56 31 discriminator 1
	movl	-4(%rbp), %eax	# k, tmp127
	cmpl	-48(%rbp), %eax	# M, tmp127
	jl	.L13	#,
.LBE40:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 33 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L11:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 27 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp128
	cmpl	-52(%rbp), %eax	# N, tmp128
	jl	.L14	#,
.LBE39:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 29 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L10:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 23 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp129
	cmpl	-44(%rbp), %eax	# L, tmp129
	jl	.L15	#,
.LBE38:
# main.c:62: }
	.loc 1 62 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5042:
	.size	matrix_multiply, .-matrix_multiply
	.globl	unrolled_matrix_multiply
	.type	unrolled_matrix_multiply, @function
unrolled_matrix_multiply:
.LFB5043:
	.loc 1 70 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# A, A
	movq	%rsi, -64(%rbp)	# B, B
	movq	%rdx, -72(%rbp)	# C, C
	movl	%ecx, -76(%rbp)	# L, L
	movl	%r8d, -80(%rbp)	# M, M
	movl	%r9d, -84(%rbp)	# N, N
# main.c:70: {
	.loc 1 70 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp188
	movq	%rax, -8(%rbp)	# tmp188, D.31766
	xorl	%eax, %eax	# tmp188
.LBB41:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 14
	movl	$0, -48(%rbp)	#, i
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 5
	jmp	.L17	#
.L31:
.LBB42:
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 18
	movl	$0, -44(%rbp)	#, j
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 9
	jmp	.L18	#
.L30:
.LBB43:
# main.c:76:         {
	.loc 1 76 9
	movq	%rsp, %rax	#, tmp135
	movq	%rax, %rsi	# tmp135, saved_stack.2_71
# main.c:77:             double C_temp[_unroll];
	.loc 1 77 13
	movl	16(%rbp), %eax	# _unroll, _unroll.0_73
# main.c:77:             double C_temp[_unroll];
	.loc 1 77 20
	movslq	%eax, %rdx	# _unroll.0_73, _1
	subq	$1, %rdx	#, _2
	movq	%rdx, -24(%rbp)	# _3, D.31437
	cltq
	leaq	0(,%rax,8), %rdx	#, _13
	movl	$16, %eax	#, tmp186
	subq	$1, %rax	#, tmp136
	addq	%rdx, %rax	# _13, tmp137
	movl	$16, %edi	#, tmp187
	movl	$0, %edx	#, tmp140
	divq	%rdi	# tmp187
	imulq	$16, %rax, %rax	#, tmp139, tmp141
	movq	%rax, %rcx	# tmp141, tmp143
	andq	$-4096, %rcx	#, tmp143
	movq	%rsp, %rdx	#, tmp144
	subq	%rcx, %rdx	# tmp143, tmp144
.L19:
	cmpq	%rdx, %rsp	# tmp144,
	je	.L20	#,
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	jmp	.L19	#
.L20:
	movq	%rax, %rdx	# tmp141, tmp145
	andl	$4095, %edx	#, tmp145
	subq	%rdx, %rsp	# tmp145,
	movq	%rax, %rdx	# tmp141, tmp146
	andl	$4095, %edx	#, tmp146
	testq	%rdx, %rdx	# tmp146
	je	.L21	#,
	andl	$4095, %eax	#, tmp147
	subq	$8, %rax	#, tmp147
	addq	%rsp, %rax	#, tmp148
	orq	$0, (%rax)	#,
.L21:
	movq	%rsp, %rax	#, tmp142
	addq	$7, %rax	#, tmp149
	shrq	$3, %rax	#, tmp150
	salq	$3, %rax	#, tmp151
	movq	%rax, -16(%rbp)	# tmp151, C_temp.1
.LBB44:
# main.c:79:             for (int u = 0; u < _unroll; u++)
	.loc 1 79 22
	movl	$0, -40(%rbp)	#, u
# main.c:79:             for (int u = 0; u < _unroll; u++)
	.loc 1 79 13
	jmp	.L22	#
.L23:
# main.c:81:                 C_temp[u] = C[i][j + u];
	.loc 1 81 30
	movl	-48(%rbp), %eax	# i, tmp152
	cltq
	leaq	0(,%rax,8), %rdx	#, _15
	movq	-72(%rbp), %rax	# C, tmp153
	addq	%rdx, %rax	# _15, _16
	movq	(%rax), %rax	# *_16, _17
# main.c:81:                 C_temp[u] = C[i][j + u];
	.loc 1 81 36
	movl	-44(%rbp), %ecx	# j, tmp154
	movl	-40(%rbp), %edx	# u, tmp155
	addl	%ecx, %edx	# tmp154, _18
	movslq	%edx, %rdx	# _18, _19
# main.c:81:                 C_temp[u] = C[i][j + u];
	.loc 1 81 33
	salq	$3, %rdx	#, _20
	addq	%rdx, %rax	# _20, _21
	vmovsd	(%rax), %xmm0	# *_21, _22
# main.c:81:                 C_temp[u] = C[i][j + u];
	.loc 1 81 27
	movq	-16(%rbp), %rax	# C_temp.1, tmp156
	movl	-40(%rbp), %edx	# u, tmp158
	movslq	%edx, %rdx	# tmp158, tmp157
	vmovsd	%xmm0, (%rax,%rdx,8)	# _22, (*C_temp.1_80)[u_54]
# main.c:79:             for (int u = 0; u < _unroll; u++)
	.loc 1 79 43 discriminator 3
	addl	$1, -40(%rbp)	#, u
.L22:
# main.c:79:             for (int u = 0; u < _unroll; u++)
	.loc 1 79 31 discriminator 1
	movl	-40(%rbp), %eax	# u, tmp159
	cmpl	16(%rbp), %eax	# _unroll, tmp159
	jl	.L23	#,
.LBE44:
.LBB45:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 22
	movl	$0, -36(%rbp)	#, u
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 13
	jmp	.L24	#
.L27:
.LBB46:
# main.c:87:                 for (int k = 0; k < M; k++)
	.loc 1 87 26
	movl	$0, -32(%rbp)	#, k
# main.c:87:                 for (int k = 0; k < M; k++)
	.loc 1 87 17
	jmp	.L25	#
.L26:
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 27
	movq	-16(%rbp), %rax	# C_temp.1, tmp160
	movl	-36(%rbp), %edx	# u, tmp162
	movslq	%edx, %rdx	# tmp162, tmp161
	vmovsd	(%rax,%rdx,8), %xmm1	# (*C_temp.1_80)[u_55], _23
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 35
	movl	-48(%rbp), %eax	# i, tmp163
	cltq
	leaq	0(,%rax,8), %rdx	#, _25
	movq	-56(%rbp), %rax	# A, tmp164
	addq	%rdx, %rax	# _25, _26
	movq	(%rax), %rax	# *_26, _27
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 38
	movl	-32(%rbp), %edx	# k, tmp165
	movslq	%edx, %rdx	# tmp165, _28
	salq	$3, %rdx	#, _29
	addq	%rdx, %rax	# _29, _30
	vmovsd	(%rax), %xmm2	# *_30, _31
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 45
	movl	-32(%rbp), %eax	# k, tmp166
	cltq
	leaq	0(,%rax,8), %rdx	#, _33
	movq	-64(%rbp), %rax	# B, tmp167
	addq	%rdx, %rax	# _33, _34
	movq	(%rax), %rax	# *_34, _35
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 51
	movl	-44(%rbp), %ecx	# j, tmp168
	movl	-36(%rbp), %edx	# u, tmp169
	addl	%ecx, %edx	# tmp168, _36
	movslq	%edx, %rdx	# _36, _37
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 48
	salq	$3, %rdx	#, _38
	addq	%rdx, %rax	# _38, _39
	vmovsd	(%rax), %xmm0	# *_39, _40
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 42
	vmulsd	%xmm0, %xmm2, %xmm0	# _40, _31, _41
# main.c:89:                     C_temp[u] += A[i][k] * B[k][j + u];
	.loc 1 89 31
	vaddsd	%xmm0, %xmm1, %xmm0	# _41, _23, _42
	movq	-16(%rbp), %rax	# C_temp.1, tmp170
	movl	-36(%rbp), %edx	# u, tmp172
	movslq	%edx, %rdx	# tmp172, tmp171
	vmovsd	%xmm0, (%rax,%rdx,8)	# _42, (*C_temp.1_80)[u_55]
# main.c:87:                 for (int k = 0; k < M; k++)
	.loc 1 87 41 discriminator 3
	addl	$1, -32(%rbp)	#, k
.L25:
# main.c:87:                 for (int k = 0; k < M; k++)
	.loc 1 87 35 discriminator 1
	movl	-32(%rbp), %eax	# k, tmp173
	cmpl	-80(%rbp), %eax	# M, tmp173
	jl	.L26	#,
.LBE46:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 43 discriminator 2
	addl	$1, -36(%rbp)	#, u
.L24:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 31 discriminator 1
	movl	-36(%rbp), %eax	# u, tmp174
	cmpl	16(%rbp), %eax	# _unroll, tmp174
	jl	.L27	#,
.LBE45:
.LBB47:
# main.c:93:             for (int u = 0; u < _unroll; u++)
	.loc 1 93 22
	movl	$0, -28(%rbp)	#, u
# main.c:93:             for (int u = 0; u < _unroll; u++)
	.loc 1 93 13
	jmp	.L28	#
.L29:
# main.c:95:                 C[i][j + u] = C_temp[u];
	.loc 1 95 18
	movl	-48(%rbp), %eax	# i, tmp175
	cltq
	leaq	0(,%rax,8), %rdx	#, _44
	movq	-72(%rbp), %rax	# C, tmp176
	addq	%rdx, %rax	# _44, _45
	movq	(%rax), %rax	# *_45, _46
# main.c:95:                 C[i][j + u] = C_temp[u];
	.loc 1 95 24
	movl	-44(%rbp), %ecx	# j, tmp177
	movl	-28(%rbp), %edx	# u, tmp178
	addl	%ecx, %edx	# tmp177, _47
	movslq	%edx, %rdx	# _47, _48
# main.c:95:                 C[i][j + u] = C_temp[u];
	.loc 1 95 21
	salq	$3, %rdx	#, _49
	leaq	(%rax,%rdx), %rcx	#, _50
# main.c:95:                 C[i][j + u] = C_temp[u];
	.loc 1 95 37
	movq	-16(%rbp), %rax	# C_temp.1, tmp179
	movl	-28(%rbp), %edx	# u, tmp181
	movslq	%edx, %rdx	# tmp181, tmp180
	vmovsd	(%rax,%rdx,8), %xmm0	# (*C_temp.1_80)[u_57], _51
# main.c:95:                 C[i][j + u] = C_temp[u];
	.loc 1 95 29
	vmovsd	%xmm0, (%rcx)	# _51, *_50
# main.c:93:             for (int u = 0; u < _unroll; u++)
	.loc 1 93 43 discriminator 3
	addl	$1, -28(%rbp)	#, u
.L28:
# main.c:93:             for (int u = 0; u < _unroll; u++)
	.loc 1 93 31 discriminator 1
	movl	-28(%rbp), %eax	# u, tmp182
	cmpl	16(%rbp), %eax	# _unroll, tmp182
	jl	.L29	#,
.LBE47:
	movq	%rsi, %rsp	# saved_stack.2_71,
.LBE43:
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 34 discriminator 2
	movl	16(%rbp), %eax	# _unroll, tmp183
	addl	%eax, -44(%rbp)	# tmp183, j
.L18:
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 27 discriminator 1
	movl	-44(%rbp), %eax	# j, tmp184
	cmpl	-84(%rbp), %eax	# N, tmp184
	jl	.L30	#,
.LBE42:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 29 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L17:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 23 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp185
	cmpl	-76(%rbp), %eax	# L, tmp185
	jl	.L31	#,
.LBE41:
# main.c:99: }
	.loc 1 99 1
	nop	
	movq	-8(%rbp), %rax	# D.31766, tmp189
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp189
	je	.L32	#,
	call	__stack_chk_fail@PLT	#
.L32:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5043:
	.size	unrolled_matrix_multiply, .-unrolled_matrix_multiply
	.globl	multicore_matrix_multiply
	.type	multicore_matrix_multiply, @function
multicore_matrix_multiply:
.LFB5044:
	.loc 1 107 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# A, A
	movq	%rsi, -64(%rbp)	# B, B
	movq	%rdx, -72(%rbp)	# C, C
	movl	%ecx, -76(%rbp)	# L, L
	movl	%r8d, -80(%rbp)	# M, M
	movl	%r9d, -84(%rbp)	# N, N
# main.c:107: {
	.loc 1 107 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp90
	movq	%rax, -8(%rbp)	# tmp90, D.31769
	xorl	%eax, %eax	# tmp90
.LBB48:
# main.c:108: #pragma omp parallel for
	.loc 1 108 9
	movl	-84(%rbp), %eax	# N, tmp82
	movl	%eax, -16(%rbp)	# tmp82, .omp_data_o.5.N
	movl	-80(%rbp), %eax	# M, tmp83
	movl	%eax, -20(%rbp)	# tmp83, .omp_data_o.5.M
	movl	-76(%rbp), %eax	# L, tmp84
	movl	%eax, -24(%rbp)	# tmp84, .omp_data_o.5.L
	movq	-72(%rbp), %rax	# C, tmp85
	movq	%rax, -32(%rbp)	# tmp85, .omp_data_o.5.C
	movq	-64(%rbp), %rax	# B, tmp86
	movq	%rax, -40(%rbp)	# tmp86, .omp_data_o.5.B
	movq	-56(%rbp), %rax	# A, tmp87
	movq	%rax, -48(%rbp)	# tmp87, .omp_data_o.5.A
	leaq	-48(%rbp), %rax	#, tmp88
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp88,
	leaq	multicore_matrix_multiply._omp_fn.0(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	GOMP_parallel@PLT	#
.LBE48:
# main.c:122: }
	.loc 1 122 1
	nop	
	movq	-8(%rbp), %rax	# D.31769, tmp91
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp91
	je	.L34	#,
	call	__stack_chk_fail@PLT	#
.L34:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5044:
	.size	multicore_matrix_multiply, .-multicore_matrix_multiply
	.globl	do_block
	.type	do_block, @function
do_block:
.LFB5045:
	.loc 1 125 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)	# si, si
	movl	%esi, -40(%rbp)	# sj, sj
	movl	%edx, -44(%rbp)	# sk, sk
	movq	%rcx, -56(%rbp)	# A, A
	movq	%r8, -64(%rbp)	# B, B
	movq	%r9, -72(%rbp)	# C, C
.LBB49:
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 14
	movl	-36(%rbp), %eax	# si, tmp116
	movl	%eax, -20(%rbp)	# tmp116, i
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 5
	jmp	.L36	#
.L41:
.LBB50:
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 18
	movl	-40(%rbp), %eax	# sj, tmp117
	movl	%eax, -16(%rbp)	# tmp117, j
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 9
	jmp	.L37	#
.L40:
.LBB51:
# main.c:131:             double C_ij = C[i][j];
	.loc 1 131 28
	movl	-20(%rbp), %eax	# i, tmp118
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-72(%rbp), %rax	# C, tmp119
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# main.c:131:             double C_ij = C[i][j];
	.loc 1 131 31
	movl	-16(%rbp), %edx	# j, tmp120
	movslq	%edx, %rdx	# tmp120, _5
	salq	$3, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# main.c:131:             double C_ij = C[i][j];
	.loc 1 131 20
	vmovsd	(%rax), %xmm0	# *_7, tmp121
	vmovsd	%xmm0, -8(%rbp)	# tmp121, C_ij
.LBB52:
# main.c:132:             for (int k = sk; k < sk + _block_size; k++)
	.loc 1 132 22
	movl	-44(%rbp), %eax	# sk, tmp122
	movl	%eax, -12(%rbp)	# tmp122, k
# main.c:132:             for (int k = sk; k < sk + _block_size; k++)
	.loc 1 132 13
	jmp	.L38	#
.L39:
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 26
	movl	-20(%rbp), %eax	# i, tmp123
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-56(%rbp), %rax	# A, tmp124
	addq	%rdx, %rax	# _9, _10
	movq	(%rax), %rax	# *_10, _11
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 29
	movl	-12(%rbp), %edx	# k, tmp125
	movslq	%edx, %rdx	# tmp125, _12
	salq	$3, %rdx	#, _13
	addq	%rdx, %rax	# _13, _14
	vmovsd	(%rax), %xmm1	# *_14, _15
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 36
	movl	-12(%rbp), %eax	# k, tmp126
	cltq
	leaq	0(,%rax,8), %rdx	#, _17
	movq	-64(%rbp), %rax	# B, tmp127
	addq	%rdx, %rax	# _17, _18
	movq	(%rax), %rax	# *_18, _19
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 39
	movl	-16(%rbp), %edx	# j, tmp128
	movslq	%edx, %rdx	# tmp128, _20
	salq	$3, %rdx	#, _21
	addq	%rdx, %rax	# _21, _22
	vmovsd	(%rax), %xmm0	# *_22, _23
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 33
	vmulsd	%xmm0, %xmm1, %xmm0	# _23, _15, _24
# main.c:135:                 C_ij += A[i][k] * B[k][j];
	.loc 1 135 22
	vmovsd	-8(%rbp), %xmm1	# C_ij, tmp130
	vaddsd	%xmm0, %xmm1, %xmm0	# _24, tmp130, tmp129
	vmovsd	%xmm0, -8(%rbp)	# tmp129, C_ij
# main.c:132:             for (int k = sk; k < sk + _block_size; k++)
	.loc 1 132 53 discriminator 3
	addl	$1, -12(%rbp)	#, k
.L38:
# main.c:132:             for (int k = sk; k < sk + _block_size; k++)
	.loc 1 132 37 discriminator 1
	movl	-44(%rbp), %edx	# sk, tmp131
	movl	16(%rbp), %eax	# _block_size, tmp132
	addl	%edx, %eax	# tmp131, _25
# main.c:132:             for (int k = sk; k < sk + _block_size; k++)
	.loc 1 132 32 discriminator 1
	cmpl	%eax, -12(%rbp)	# _25, k
	jl	.L39	#,
.LBE52:
# main.c:137:             C[i][j] = C_ij;
	.loc 1 137 14
	movl	-20(%rbp), %eax	# i, tmp133
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-72(%rbp), %rax	# C, tmp134
	addq	%rdx, %rax	# _27, _28
	movq	(%rax), %rax	# *_28, _29
# main.c:137:             C[i][j] = C_ij;
	.loc 1 137 17
	movl	-16(%rbp), %edx	# j, tmp135
	movslq	%edx, %rdx	# tmp135, _30
	salq	$3, %rdx	#, _31
	addq	%rdx, %rax	# _31, _32
# main.c:137:             C[i][j] = C_ij;
	.loc 1 137 21
	vmovsd	-8(%rbp), %xmm0	# C_ij, tmp136
	vmovsd	%xmm0, (%rax)	# tmp136, *_32
.LBE51:
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 49 discriminator 2
	addl	$1, -16(%rbp)	#, j
.L37:
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 33 discriminator 1
	movl	-40(%rbp), %edx	# sj, tmp137
	movl	16(%rbp), %eax	# _block_size, tmp138
	addl	%edx, %eax	# tmp137, _33
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 28 discriminator 1
	cmpl	%eax, -16(%rbp)	# _33, j
	jl	.L40	#,
.LBE50:
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 45 discriminator 2
	addl	$1, -20(%rbp)	#, i
.L36:
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 29 discriminator 1
	movl	-36(%rbp), %edx	# si, tmp139
	movl	16(%rbp), %eax	# _block_size, tmp140
	addl	%edx, %eax	# tmp139, _34
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 24 discriminator 1
	cmpl	%eax, -20(%rbp)	# _34, i
	jl	.L41	#,
.LBE49:
# main.c:140: }
	.loc 1 140 1
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5045:
	.size	do_block, .-do_block
	.globl	blocked_matrix_multiply
	.type	blocked_matrix_multiply, @function
blocked_matrix_multiply:
.LFB5046:
	.loc 1 148 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$56, %rsp	#,
	movq	%rdi, -24(%rbp)	# A, A
	movq	%rsi, -32(%rbp)	# B, B
	movq	%rdx, -40(%rbp)	# C, C
	movl	%ecx, -44(%rbp)	# L, L
	movl	%r8d, -48(%rbp)	# M, M
	movl	%r9d, -52(%rbp)	# N, N
.LBB53:
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 14
	movl	$0, -12(%rbp)	#, sj
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 5
	jmp	.L43	#
.L48:
.LBB54:
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 18
	movl	$0, -8(%rbp)	#, si
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 9
	jmp	.L44	#
.L47:
.LBB55:
# main.c:156:             for (int sk = 0; sk < M; sk += _block_size)
	.loc 1 156 22
	movl	$0, -4(%rbp)	#, sk
# main.c:156:             for (int sk = 0; sk < M; sk += _block_size)
	.loc 1 156 13
	jmp	.L45	#
.L46:
# main.c:158:                 do_block(si, sj, sk, A, B, C, _block_size);
	.loc 1 158 17
	movq	-40(%rbp), %r9	# C, tmp82
	movq	-32(%rbp), %r8	# B, tmp83
	movq	-24(%rbp), %rcx	# A, tmp84
	movl	-4(%rbp), %edx	# sk, tmp85
	movl	-12(%rbp), %esi	# sj, tmp86
	movl	-8(%rbp), %eax	# si, tmp87
	movl	16(%rbp), %edi	# _block_size, tmp88
	pushq	%rdi	# tmp88
	movl	%eax, %edi	# tmp87,
	call	do_block	#
	addq	$8, %rsp	#,
# main.c:156:             for (int sk = 0; sk < M; sk += _block_size)
	.loc 1 156 41 discriminator 3
	movl	16(%rbp), %eax	# _block_size, tmp89
	addl	%eax, -4(%rbp)	# tmp89, sk
.L45:
# main.c:156:             for (int sk = 0; sk < M; sk += _block_size)
	.loc 1 156 33 discriminator 1
	movl	-4(%rbp), %eax	# sk, tmp90
	cmpl	-48(%rbp), %eax	# M, tmp90
	jl	.L46	#,
.LBE55:
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 37 discriminator 2
	movl	16(%rbp), %eax	# _block_size, tmp91
	addl	%eax, -8(%rbp)	# tmp91, si
.L44:
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 29 discriminator 1
	movl	-8(%rbp), %eax	# si, tmp92
	cmpl	-52(%rbp), %eax	# N, tmp92
	jl	.L47	#,
.LBE54:
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 33 discriminator 2
	movl	16(%rbp), %eax	# _block_size, tmp93
	addl	%eax, -12(%rbp)	# tmp93, sj
.L43:
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 25 discriminator 1
	movl	-12(%rbp), %eax	# sj, tmp94
	cmpl	-44(%rbp), %eax	# L, tmp94
	jl	.L48	#,
.LBE53:
# main.c:162: }
	.loc 1 162 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5046:
	.size	blocked_matrix_multiply, .-blocked_matrix_multiply
	.globl	subword_parallelism_matrix_multiply
	.type	subword_parallelism_matrix_multiply, @function
subword_parallelism_matrix_multiply:
.LFB5047:
	.loc 1 170 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	andq	$-32, %rsp	#,
	subq	$168, %rsp	#,
	movq	%rdi, -80(%rsp)	# A, A
	movq	%rsi, -88(%rsp)	# B, B
	movq	%rdx, -96(%rsp)	# C, C
	movl	%ecx, -100(%rsp)	# L, L
	movl	%r8d, -104(%rsp)	# M, M
	movl	%r9d, -108(%rsp)	# N, N
.LBB56:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 14
	movl	$0, -68(%rsp)	#, i
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 5
	jmp	.L50	#
.L60:
.LBB57:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 18
	movl	$0, -64(%rsp)	#, j
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 9
	jmp	.L51	#
.L59:
.LBB58:
# main.c:178:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 178 43
	movl	-68(%rsp), %eax	# i, tmp115
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-96(%rsp), %rax	# C, tmp116
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# main.c:178:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 178 46
	movl	-64(%rsp), %edx	# j, tmp117
	movslq	%edx, %rdx	# tmp117, _5
	salq	$3, %rdx	#, _6
# main.c:178:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 178 41
	addq	%rdx, %rax	# _6, _7
	movq	%rax, -56(%rsp)	# _7, __P
.LBB59:
.LBB60:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h"
	.loc 2 869 10
	movq	-56(%rsp), %rax	# __P, tmp118
	vmovapd	(%rax), %ymm0	# MEM[(__m256d * {ref-all})__P_54], D.31717
.LBE60:
.LBE59:
# main.c:178:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 178 26
	vmovapd	%ymm0, -24(%rsp)	# D.31717, c0
.LBB61:
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 22
	movl	$0, -60(%rsp)	#, k
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 13
	jmp	.L53	#
.L58:
# main.c:185:                                                  _mm256_broadcast_sd(&A[i][k])));
	.loc 1 185 72
	movl	-68(%rsp), %eax	# i, tmp119
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-80(%rsp), %rax	# A, tmp120
	addq	%rdx, %rax	# _9, _10
	movq	(%rax), %rax	# *_10, _11
# main.c:185:                                                  _mm256_broadcast_sd(&A[i][k])));
	.loc 1 185 75
	movl	-60(%rsp), %edx	# k, tmp121
	movslq	%edx, %rdx	# tmp121, _12
	salq	$3, %rdx	#, _13
# main.c:185:                                                  _mm256_broadcast_sd(&A[i][k])));
	.loc 1 185 70
	addq	%rdx, %rax	# _13, _14
	movq	%rax, -40(%rsp)	# _14, __X
.LBB62:
.LBB63:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 20
	movq	-40(%rsp), %rax	# __X, tmp122
	vbroadcastsd	(%rax), %ymm0	#, D.31735
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 10
	nop	
.LBE63:
.LBE62:
# main.c:184:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]),
	.loc 1 184 67
	movl	-60(%rsp), %eax	# k, tmp123
	cltq
	leaq	0(,%rax,8), %rdx	#, _17
	movq	-88(%rsp), %rax	# B, tmp124
	addq	%rdx, %rax	# _17, _18
	movq	(%rax), %rax	# *_18, _19
# main.c:184:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]),
	.loc 1 184 70
	movl	-64(%rsp), %edx	# j, tmp125
	movslq	%edx, %rdx	# tmp125, _20
	salq	$3, %rdx	#, _21
# main.c:184:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]),
	.loc 1 184 65
	addq	%rdx, %rax	# _21, _22
	movq	%rax, -48(%rsp)	# _22, __P
.LBB64:
.LBB65:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.loc 2 869 10
	movq	-48(%rsp), %rax	# __P, tmp126
	vmovapd	(%rax), %ymm1	# MEM[(__m256d * {ref-all})__P_62], D.31731
	vmovapd	%ymm1, 72(%rsp)	# D.31731, __A
	vmovapd	%ymm0, 104(%rsp)	# D.31735, __B
.LBE65:
.LBE64:
.LBB66:
.LBB67:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	.loc 2 314 10
	vmovapd	72(%rsp), %ymm0	# __A, tmp127
	vmulpd	104(%rsp), %ymm0, %ymm0	# __B, tmp127, D.31727
	vmovapd	-24(%rsp), %ymm1	# c0, tmp128
	vmovapd	%ymm1, 8(%rsp)	# tmp128, __A
	vmovapd	%ymm0, 40(%rsp)	# D.31727, __B
.LBE67:
.LBE66:
.LBB68:
.LBB69:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	.loc 2 143 10
	vmovapd	8(%rsp), %ymm0	# __A, tmp129
	vaddpd	40(%rsp), %ymm0, %ymm0	# __B, tmp129, D.31722
.LBE69:
.LBE68:
# main.c:183:                 c0 = _mm256_add_pd(c0,
	.loc 1 183 22 discriminator 3
	vmovapd	%ymm0, -24(%rsp)	# D.31722, c0
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 37 discriminator 3
	addl	$1, -60(%rsp)	#, k
.L53:
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 31 discriminator 1
	movl	-60(%rsp), %eax	# k, tmp130
	cmpl	-104(%rsp), %eax	# M, tmp130
	jl	.L58	#,
.LBE61:
# main.c:188:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 188 31
	movl	-68(%rsp), %eax	# i, tmp131
	cltq
	leaq	0(,%rax,8), %rdx	#, _26
	movq	-96(%rsp), %rax	# C, tmp132
	addq	%rdx, %rax	# _26, _27
	movq	(%rax), %rax	# *_27, _28
# main.c:188:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 188 34
	movl	-64(%rsp), %edx	# j, tmp133
	movslq	%edx, %rdx	# tmp133, _29
	salq	$3, %rdx	#, _30
# main.c:188:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 188 13
	addq	%rdx, %rax	# _30, _31
	movq	%rax, -32(%rsp)	# _31, __P
	vmovapd	-24(%rsp), %ymm0	# c0, tmp134
	vmovapd	%ymm0, 136(%rsp)	# tmp134, __A
.LBB70:
.LBB71:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:875:   *(__m256d *)__P = __A;
	.loc 2 875 19
	movq	-32(%rsp), %rax	# __P, tmp135
	vmovapd	136(%rsp), %ymm0	# __A, tmp136
	vmovapd	%ymm0, (%rax)	# tmp136, MEM[(__m256d * {ref-all})__P_66]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:876: }
	.loc 2 876 1
	nop	
.LBE71:
.LBE70:
.LBE58:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 34 discriminator 2
	addl	$4, -64(%rsp)	#, j
.L51:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 27 discriminator 1
	movl	-64(%rsp), %eax	# j, tmp137
	cmpl	-108(%rsp), %eax	# N, tmp137
	jl	.L59	#,
.LBE57:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 29 discriminator 2
	addl	$1, -68(%rsp)	#, i
.L50:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 23 discriminator 1
	movl	-68(%rsp), %eax	# i, tmp138
	cmpl	-100(%rsp), %eax	# L, tmp138
	jl	.L60	#,
.LBE56:
# main.c:191: }
	.loc 1 191 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5047:
	.size	subword_parallelism_matrix_multiply, .-subword_parallelism_matrix_multiply
	.globl	do_block_custom
	.type	do_block_custom, @function
do_block_custom:
.LFB5048:
	.loc 1 195 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	andq	$-32, %rsp	#,
	subq	$200, %rsp	#,
	movl	%edi, -76(%rsp)	# si, si
	movl	%esi, -80(%rsp)	# sj, sj
	movl	%edx, -84(%rsp)	# sk, sk
	movq	%rcx, -96(%rsp)	# A, A
	movq	%r8, -104(%rsp)	# B, B
	movq	%r9, -112(%rsp)	# C, C
# main.c:196:     int i_end = si + block_size < L ? si + block_size : L;
	.loc 1 196 20
	movl	-76(%rsp), %edx	# si, tmp150
	movl	40(%rbp), %eax	# block_size, tmp151
	addl	%edx, %eax	# tmp150, _1
# main.c:196:     int i_end = si + block_size < L ? si + block_size : L;
	.loc 1 196 9
	movl	16(%rbp), %edx	# L, tmp153
	cmpl	%eax, %edx	# _1, tmp153
	cmovle	%edx, %eax	# tmp153,, tmp152
	movl	%eax, -44(%rsp)	# tmp152, i_end
# main.c:197:     int j_end = sj + block_size < N ? sj + block_size : N;
	.loc 1 197 20
	movl	-80(%rsp), %edx	# sj, tmp154
	movl	40(%rbp), %eax	# block_size, tmp155
	addl	%edx, %eax	# tmp154, _2
# main.c:197:     int j_end = sj + block_size < N ? sj + block_size : N;
	.loc 1 197 9
	movl	32(%rbp), %edx	# N, tmp157
	cmpl	%eax, %edx	# _2, tmp157
	cmovle	%edx, %eax	# tmp157,, tmp156
	movl	%eax, -40(%rsp)	# tmp156, j_end
# main.c:198:     int k_end = sk + block_size < M ? sk + block_size : M;
	.loc 1 198 20
	movl	-84(%rsp), %edx	# sk, tmp158
	movl	40(%rbp), %eax	# block_size, tmp159
	addl	%edx, %eax	# tmp158, _3
# main.c:198:     int k_end = sk + block_size < M ? sk + block_size : M;
	.loc 1 198 9
	movl	24(%rbp), %edx	# M, tmp161
	cmpl	%eax, %edx	# _3, tmp161
	cmovle	%edx, %eax	# tmp161,, tmp160
	movl	%eax, -36(%rsp)	# tmp160, k_end
.LBB72:
# main.c:200:     for (int i = si; i < i_end; i++)
	.loc 1 200 14
	movl	-76(%rsp), %eax	# si, tmp162
	movl	%eax, -60(%rsp)	# tmp162, i
# main.c:200:     for (int i = si; i < i_end; i++)
	.loc 1 200 5
	jmp	.L62	#
.L76:
.LBB73:
# main.c:203:         for (j = sj; j + MM256_STRIDE <= j_end; j += MM256_STRIDE)
	.loc 1 203 16
	movl	-80(%rsp), %eax	# sj, tmp163
	movl	%eax, -56(%rsp)	# tmp163, j
# main.c:203:         for (j = sj; j + MM256_STRIDE <= j_end; j += MM256_STRIDE)
	.loc 1 203 9
	jmp	.L63	#
.L71:
.LBB74:
# main.c:205:             __m256d c0 = _mm256_loadu_pd(&C[i][j]);
	.loc 1 205 44
	movl	-60(%rsp), %eax	# i, tmp164
	cltq
	leaq	0(,%rax,8), %rdx	#, _5
	movq	-112(%rsp), %rax	# C, tmp165
	addq	%rdx, %rax	# _5, _6
	movq	(%rax), %rax	# *_6, _7
# main.c:205:             __m256d c0 = _mm256_loadu_pd(&C[i][j]);
	.loc 1 205 47
	movl	-56(%rsp), %edx	# j, tmp166
	movslq	%edx, %rdx	# tmp166, _8
	salq	$3, %rdx	#, _9
# main.c:205:             __m256d c0 = _mm256_loadu_pd(&C[i][j]);
	.loc 1 205 42
	addq	%rdx, %rax	# _9, _10
	movq	%rax, -24(%rsp)	# _10, __P
.LBB75:
.LBB76:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:893:   return *(__m256d_u *)__P;
	.loc 2 893 10
	movq	-24(%rsp), %rax	# __P, tmp167
	vmovupd	(%rax), %ymm0	# MEM[(__m256d_u * {ref-all})__P_106], tmp168
.LBE76:
.LBE75:
# main.c:205:             __m256d c0 = _mm256_loadu_pd(&C[i][j]);
	.loc 1 205 26
	vmovapd	%ymm0, 8(%rsp)	# D.31741, c0
.LBB77:
# main.c:207:             for (int k = sk; k < k_end; k++)
	.loc 1 207 22
	movl	-84(%rsp), %eax	# sk, tmp169
	movl	%eax, -52(%rsp)	# tmp169, k
# main.c:207:             for (int k = sk; k < k_end; k++)
	.loc 1 207 13
	jmp	.L65	#
.L70:
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 103
	movl	-60(%rsp), %eax	# i, tmp170
	cltq
	leaq	0(,%rax,8), %rdx	#, _12
	movq	-96(%rsp), %rax	# A, tmp171
	addq	%rdx, %rax	# _12, _13
	movq	(%rax), %rax	# *_13, _14
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 106
	movl	-52(%rsp), %edx	# k, tmp172
	movslq	%edx, %rdx	# tmp172, _15
	salq	$3, %rdx	#, _16
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 101
	addq	%rdx, %rax	# _16, _17
	movq	%rax, -8(%rsp)	# _17, __X
.LBB78:
.LBB79:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 20
	movq	-8(%rsp), %rax	# __X, tmp173
	vbroadcastsd	(%rax), %ymm0	#, D.31759
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 10
	nop	
.LBE79:
.LBE78:
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 72 discriminator 1
	movl	-52(%rsp), %eax	# k, tmp174
	cltq
	leaq	0(,%rax,8), %rdx	#, _20
	movq	-104(%rsp), %rax	# B, tmp175
	addq	%rdx, %rax	# _20, _21
	movq	(%rax), %rax	# *_21, _22
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 75 discriminator 1
	movl	-56(%rsp), %edx	# j, tmp176
	movslq	%edx, %rdx	# tmp176, _23
	salq	$3, %rdx	#, _24
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 70 discriminator 1
	addq	%rdx, %rax	# _24, _25
	movq	%rax, -16(%rsp)	# _25, __P
.LBB80:
.LBB81:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:893:   return *(__m256d_u *)__P;
	.loc 2 893 10
	movq	-16(%rsp), %rax	# __P, tmp177
	vmovupd	(%rax), %ymm1	# MEM[(__m256d_u * {ref-all})__P_114], tmp178
	vmovapd	%ymm1, 104(%rsp)	# D.31755, __A
	vmovapd	%ymm0, 136(%rsp)	# D.31759, __B
.LBE81:
.LBE80:
.LBB82:
.LBB83:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	.loc 2 314 10
	vmovapd	104(%rsp), %ymm0	# __A, tmp179
	vmulpd	136(%rsp), %ymm0, %ymm0	# __B, tmp179, D.31751
	vmovapd	8(%rsp), %ymm1	# c0, tmp180
	vmovapd	%ymm1, 40(%rsp)	# tmp180, __A
	vmovapd	%ymm0, 72(%rsp)	# D.31751, __B
.LBE83:
.LBE82:
.LBB84:
.LBB85:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	.loc 2 143 10
	vmovapd	40(%rsp), %ymm0	# __A, tmp181
	vaddpd	72(%rsp), %ymm0, %ymm0	# __B, tmp181, D.31746
.LBE85:
.LBE84:
# main.c:209:                 c0 = _mm256_add_pd(c0, _mm256_mul_pd(_mm256_loadu_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k])));
	.loc 1 209 22 discriminator 3
	vmovapd	%ymm0, 8(%rsp)	# D.31746, c0
# main.c:207:             for (int k = sk; k < k_end; k++)
	.loc 1 207 42 discriminator 3
	addl	$1, -52(%rsp)	#, k
.L65:
# main.c:207:             for (int k = sk; k < k_end; k++)
	.loc 1 207 32 discriminator 1
	movl	-52(%rsp), %eax	# k, tmp182
	cmpl	-36(%rsp), %eax	# k_end, tmp182
	jl	.L70	#,
.LBE77:
# main.c:212:             _mm256_storeu_pd(&C[i][j], c0);
	.loc 1 212 32
	movl	-60(%rsp), %eax	# i, tmp183
	cltq
	leaq	0(,%rax,8), %rdx	#, _29
	movq	-112(%rsp), %rax	# C, tmp184
	addq	%rdx, %rax	# _29, _30
	movq	(%rax), %rax	# *_30, _31
# main.c:212:             _mm256_storeu_pd(&C[i][j], c0);
	.loc 1 212 35
	movl	-56(%rsp), %edx	# j, tmp185
	movslq	%edx, %rdx	# tmp185, _32
	salq	$3, %rdx	#, _33
# main.c:212:             _mm256_storeu_pd(&C[i][j], c0);
	.loc 1 212 13
	addq	%rdx, %rax	# _33, _34
	movq	%rax, (%rsp)	# _34, __P
	vmovapd	8(%rsp), %ymm0	# c0, tmp186
	vmovapd	%ymm0, 168(%rsp)	# tmp186, __A
.LBB86:
.LBB87:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:899:   *(__m256d_u *)__P = __A;
	.loc 2 899 21
	vmovapd	168(%rsp), %ymm0	# __A, tmp187
	movq	(%rsp), %rax	# __P, tmp188
	vmovupd	%ymm0, (%rax)	# tmp187, MEM[(__m256d_u * {ref-all})__P_118]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:900: }
	.loc 2 900 1
	nop	
.LBE87:
.LBE86:
.LBE74:
# main.c:203:         for (j = sj; j + MM256_STRIDE <= j_end; j += MM256_STRIDE)
	.loc 1 203 51 discriminator 2
	addl	$4, -56(%rsp)	#, j
.L63:
# main.c:203:         for (j = sj; j + MM256_STRIDE <= j_end; j += MM256_STRIDE)
	.loc 1 203 39 discriminator 1
	movl	-56(%rsp), %eax	# j, tmp189
	addl	$3, %eax	#, _35
	cmpl	%eax, -40(%rsp)	# _35, j_end
	jg	.L71	#,
# main.c:215:         for (; j < j_end; j++)
	.loc 1 215 9
	jmp	.L72	#
.L75:
.LBB88:
# main.c:217:             double sum = C[i][j];
	.loc 1 217 27
	movl	-60(%rsp), %eax	# i, tmp190
	cltq
	leaq	0(,%rax,8), %rdx	#, _37
	movq	-112(%rsp), %rax	# C, tmp191
	addq	%rdx, %rax	# _37, _38
	movq	(%rax), %rax	# *_38, _39
# main.c:217:             double sum = C[i][j];
	.loc 1 217 30
	movl	-56(%rsp), %edx	# j, tmp192
	movslq	%edx, %rdx	# tmp192, _40
	salq	$3, %rdx	#, _41
	addq	%rdx, %rax	# _41, _42
# main.c:217:             double sum = C[i][j];
	.loc 1 217 20
	vmovsd	(%rax), %xmm0	# *_42, tmp193
	vmovsd	%xmm0, -32(%rsp)	# tmp193, sum
.LBB89:
# main.c:219:             for (int k = sk; k < k_end; k++)
	.loc 1 219 22
	movl	-84(%rsp), %eax	# sk, tmp194
	movl	%eax, -48(%rsp)	# tmp194, k
# main.c:219:             for (int k = sk; k < k_end; k++)
	.loc 1 219 13
	jmp	.L73	#
.L74:
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 25
	movl	-60(%rsp), %eax	# i, tmp195
	cltq
	leaq	0(,%rax,8), %rdx	#, _44
	movq	-96(%rsp), %rax	# A, tmp196
	addq	%rdx, %rax	# _44, _45
	movq	(%rax), %rax	# *_45, _46
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 28
	movl	-48(%rsp), %edx	# k, tmp197
	movslq	%edx, %rdx	# tmp197, _47
	salq	$3, %rdx	#, _48
	addq	%rdx, %rax	# _48, _49
	vmovsd	(%rax), %xmm1	# *_49, _50
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 35
	movl	-48(%rsp), %eax	# k, tmp198
	cltq
	leaq	0(,%rax,8), %rdx	#, _52
	movq	-104(%rsp), %rax	# B, tmp199
	addq	%rdx, %rax	# _52, _53
	movq	(%rax), %rax	# *_53, _54
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 38
	movl	-56(%rsp), %edx	# j, tmp200
	movslq	%edx, %rdx	# tmp200, _55
	salq	$3, %rdx	#, _56
	addq	%rdx, %rax	# _56, _57
	vmovsd	(%rax), %xmm0	# *_57, _58
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 32
	vmulsd	%xmm0, %xmm1, %xmm0	# _58, _50, _59
# main.c:221:                 sum += A[i][k] * B[k][j];
	.loc 1 221 21
	vmovsd	-32(%rsp), %xmm1	# sum, tmp202
	vaddsd	%xmm0, %xmm1, %xmm0	# _59, tmp202, tmp201
	vmovsd	%xmm0, -32(%rsp)	# tmp201, sum
# main.c:219:             for (int k = sk; k < k_end; k++)
	.loc 1 219 42 discriminator 3
	addl	$1, -48(%rsp)	#, k
.L73:
# main.c:219:             for (int k = sk; k < k_end; k++)
	.loc 1 219 32 discriminator 1
	movl	-48(%rsp), %eax	# k, tmp203
	cmpl	-36(%rsp), %eax	# k_end, tmp203
	jl	.L74	#,
.LBE89:
# main.c:224:             C[i][j] = sum;
	.loc 1 224 14
	movl	-60(%rsp), %eax	# i, tmp204
	cltq
	leaq	0(,%rax,8), %rdx	#, _61
	movq	-112(%rsp), %rax	# C, tmp205
	addq	%rdx, %rax	# _61, _62
	movq	(%rax), %rax	# *_62, _63
# main.c:224:             C[i][j] = sum;
	.loc 1 224 17
	movl	-56(%rsp), %edx	# j, tmp206
	movslq	%edx, %rdx	# tmp206, _64
	salq	$3, %rdx	#, _65
	addq	%rdx, %rax	# _65, _66
# main.c:224:             C[i][j] = sum;
	.loc 1 224 21
	vmovsd	-32(%rsp), %xmm0	# sum, tmp207
	vmovsd	%xmm0, (%rax)	# tmp207, *_66
.LBE88:
# main.c:215:         for (; j < j_end; j++)
	.loc 1 215 28
	addl	$1, -56(%rsp)	#, j
.L72:
# main.c:215:         for (; j < j_end; j++)
	.loc 1 215 18 discriminator 1
	movl	-56(%rsp), %eax	# j, tmp208
	cmpl	-40(%rsp), %eax	# j_end, tmp208
	jl	.L75	#,
.LBE73:
# main.c:200:     for (int i = si; i < i_end; i++)
	.loc 1 200 34 discriminator 2
	addl	$1, -60(%rsp)	#, i
.L62:
# main.c:200:     for (int i = si; i < i_end; i++)
	.loc 1 200 24 discriminator 1
	movl	-60(%rsp), %eax	# i, tmp209
	cmpl	-44(%rsp), %eax	# i_end, tmp209
	jl	.L76	#,
.LBE72:
# main.c:227: }
	.loc 1 227 1
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5048:
	.size	do_block_custom, .-do_block_custom
	.globl	custom_matrix_multiply
	.type	custom_matrix_multiply, @function
custom_matrix_multiply:
.LFB5049:
	.loc 1 235 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$96, %rsp	#,
	movq	%rdi, -56(%rbp)	# A, A
	movq	%rsi, -64(%rbp)	# B, B
	movq	%rdx, -72(%rbp)	# C, C
	movl	%ecx, -76(%rbp)	# L, L
	movl	%r8d, -80(%rbp)	# M, M
	movl	%r9d, -84(%rbp)	# N, N
# main.c:235: {
	.loc 1 235 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.31770
	xorl	%eax, %eax	# tmp92
# main.c:236:     omp_set_num_threads(thread_count);
	.loc 1 236 5
	movl	24(%rbp), %eax	# thread_count, tmp82
	movl	%eax, %edi	# tmp82,
	call	omp_set_num_threads@PLT	#
.LBB90:
# main.c:237: #pragma omp parallel for
	.loc 1 237 9
	movl	16(%rbp), %eax	# block_size, tmp83
	movl	%eax, -12(%rbp)	# tmp83, .omp_data_o.11.block_size
	movl	-84(%rbp), %eax	# N, tmp84
	movl	%eax, -16(%rbp)	# tmp84, .omp_data_o.11.N
	movl	-80(%rbp), %eax	# M, tmp85
	movl	%eax, -20(%rbp)	# tmp85, .omp_data_o.11.M
	movl	-76(%rbp), %eax	# L, tmp86
	movl	%eax, -24(%rbp)	# tmp86, .omp_data_o.11.L
	movq	-72(%rbp), %rax	# C, tmp87
	movq	%rax, -32(%rbp)	# tmp87, .omp_data_o.11.C
	movq	-64(%rbp), %rax	# B, tmp88
	movq	%rax, -40(%rbp)	# tmp88, .omp_data_o.11.B
	movq	-56(%rbp), %rax	# A, tmp89
	movq	%rax, -48(%rbp)	# tmp89, .omp_data_o.11.A
	leaq	-48(%rbp), %rax	#, tmp90
	movl	$0, %ecx	#,
	movl	$0, %edx	#,
	movq	%rax, %rsi	# tmp90,
	leaq	custom_matrix_multiply._omp_fn.0(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	GOMP_parallel@PLT	#
.LBE90:
# main.c:251: }
	.loc 1 251 1
	nop	
	movq	-8(%rbp), %rax	# D.31770, tmp93
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	je	.L78	#,
	call	__stack_chk_fail@PLT	#
.L78:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5049:
	.size	custom_matrix_multiply, .-custom_matrix_multiply
	.globl	free_matrices
	.type	free_matrices, @function
free_matrices:
.LFB5050:
	.loc 1 260 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
	movq	%rdi, -24(%rbp)	# A, A
	movq	%rsi, -32(%rbp)	# B, B
	movq	%rdx, -40(%rbp)	# C, C
	movl	%ecx, -44(%rbp)	# L, L
	movl	%r8d, -48(%rbp)	# M, M
	movl	%r9d, -52(%rbp)	# N, N
.LBB91:
# main.c:261:     for (int i = 0; i < L; i++)
	.loc 1 261 14
	movl	$0, -8(%rbp)	#, i
# main.c:261:     for (int i = 0; i < L; i++)
	.loc 1 261 5
	jmp	.L80	#
.L81:
# main.c:263:         free(A[i]);
	.loc 1 263 15
	movl	-8(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# A, tmp95
	addq	%rdx, %rax	# _2, _3
# main.c:263:         free(A[i]);
	.loc 1 263 9
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	free@PLT	#
# main.c:264:         free(C[i]);
	.loc 1 264 15
	movl	-8(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-40(%rbp), %rax	# C, tmp97
	addq	%rdx, %rax	# _6, _7
# main.c:264:         free(C[i]);
	.loc 1 264 9
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rdi	# _8,
	call	free@PLT	#
# main.c:261:     for (int i = 0; i < L; i++)
	.loc 1 261 29 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L80:
# main.c:261:     for (int i = 0; i < L; i++)
	.loc 1 261 23 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp98
	cmpl	-44(%rbp), %eax	# L, tmp98
	jl	.L81	#,
.LBE91:
.LBB92:
# main.c:266:     for (int i = 0; i < M; i++)
	.loc 1 266 14
	movl	$0, -4(%rbp)	#, i
# main.c:266:     for (int i = 0; i < M; i++)
	.loc 1 266 5
	jmp	.L82	#
.L83:
# main.c:268:         free(B[i]);
	.loc 1 268 15
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-32(%rbp), %rax	# B, tmp100
	addq	%rdx, %rax	# _10, _11
# main.c:268:         free(B[i]);
	.loc 1 268 9
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	free@PLT	#
# main.c:266:     for (int i = 0; i < M; i++)
	.loc 1 266 29 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L82:
# main.c:266:     for (int i = 0; i < M; i++)
	.loc 1 266 23 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-48(%rbp), %eax	# M, tmp101
	jl	.L83	#,
.LBE92:
# main.c:270:     free(A);
	.loc 1 270 5
	movq	-24(%rbp), %rax	# A, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free@PLT	#
# main.c:271:     free(B);
	.loc 1 271 5
	movq	-32(%rbp), %rax	# B, tmp103
	movq	%rax, %rdi	# tmp103,
	call	free@PLT	#
# main.c:272:     free(C);
	.loc 1 272 5
	movq	-40(%rbp), %rax	# C, tmp104
	movq	%rax, %rdi	# tmp104,
	call	free@PLT	#
# main.c:273: }
	.loc 1 273 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5050:
	.size	free_matrices, .-free_matrices
	.section	.rodata
	.align 8
.LC3:
	.string	"ERROR: incorrect number of arguments"
.LC4:
	.string	"ERROR: invalid arguments"
	.align 8
.LC5:
	.string	"ERROR: cannot allocate memory for matrix A"
	.align 8
.LC6:
	.string	"ERROR: cannot allocate memory for matrix B"
	.align 8
.LC9:
	.string	"ERROR: cannot allocate memory for matrix C"
.LC10:
	.string	"\nMATRIX A:"
.LC11:
	.string	"\nMATRIX B:"
.LC12:
	.string	"\nMATRIX C (init to zero):"
.LC13:
	.string	"\nOutput C:"
	.align 8
.LC14:
	.string	"\nBaseline Output C from matrix_multiply():"
	.align 8
.LC15:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, UNROLL: %u\n"
	.align 8
.LC16:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, THREADS: %u\n"
	.align 8
.LC17:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, BLOCK SIZE: %u\n"
	.align 8
.LC18:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5051:
	.loc 1 276 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 3, -24
	movl	%edi, -180(%rbp)	# argc, argc
	movq	%rsi, -192(%rbp)	# argv, argv
# main.c:276: {
	.loc 1 276 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp355
	movq	%rax, -24(%rbp)	# tmp355, D.31771
	xorl	%eax, %eax	# tmp355
# main.c:286:     if (argc > 8)
	.loc 1 286 8
	cmpl	$8, -180(%rbp)	#, argc
	jle	.L85	#,
# main.c:288:         printf("ERROR: incorrect number of arguments\n");
	.loc 1 288 9
	leaq	.LC3(%rip), %rax	#, tmp184
	movq	%rax, %rdi	# tmp184,
	call	puts@PLT	#
# main.c:289:         print_help_and_exit(argv);
	.loc 1 289 9
	movq	-192(%rbp), %rax	# argv, tmp185
	movq	%rax, %rdi	# tmp185,
	call	print_help_and_exit	#
.L85:
# main.c:292:     L = atoi(argv[1]);
	.loc 1 292 18
	movq	-192(%rbp), %rax	# argv, tmp186
	addq	$8, %rax	#, _1
# main.c:292:     L = atoi(argv[1]);
	.loc 1 292 9
	movq	(%rax), %rax	# *_1, _2
	movq	%rax, %rdi	# _2,
	call	atoi@PLT	#
	movl	%eax, -124(%rbp)	# tmp187, L
# main.c:293:     M = atoi(argv[2]);
	.loc 1 293 18
	movq	-192(%rbp), %rax	# argv, tmp188
	addq	$16, %rax	#, _3
# main.c:293:     M = atoi(argv[2]);
	.loc 1 293 9
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	atoi@PLT	#
	movl	%eax, -120(%rbp)	# tmp189, M
# main.c:294:     N = atoi(argv[3]);
	.loc 1 294 18
	movq	-192(%rbp), %rax	# argv, tmp190
	addq	$24, %rax	#, _5
# main.c:294:     N = atoi(argv[3]);
	.loc 1 294 9
	movq	(%rax), %rax	# *_5, _6
	movq	%rax, %rdi	# _6,
	call	atoi@PLT	#
	movl	%eax, -116(%rbp)	# tmp191, N
# main.c:295:     seed = atoi(argv[4]);
	.loc 1 295 21
	movq	-192(%rbp), %rax	# argv, tmp192
	addq	$32, %rax	#, _7
# main.c:295:     seed = atoi(argv[4]);
	.loc 1 295 12
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rdi	# _8,
	call	atoi@PLT	#
	movl	%eax, -112(%rbp)	# tmp193, seed
# main.c:296:     mode = atoi(argv[5]);
	.loc 1 296 21
	movq	-192(%rbp), %rax	# argv, tmp194
	addq	$40, %rax	#, _9
# main.c:296:     mode = atoi(argv[5]);
	.loc 1 296 12
	movq	(%rax), %rax	# *_9, _10
	movq	%rax, %rdi	# _10,
	call	atoi@PLT	#
	movl	%eax, -108(%rbp)	# tmp195, mode
# main.c:297:     if (mode != 1 && mode != 5)
	.loc 1 297 8
	cmpl	$1, -108(%rbp)	#, mode
	je	.L86	#,
# main.c:297:     if (mode != 1 && mode != 5)
	.loc 1 297 19 discriminator 1
	cmpl	$5, -108(%rbp)	#, mode
	je	.L86	#,
# main.c:298:         ADDIT_ARG = atoi(argv[6]);
	.loc 1 298 30
	movq	-192(%rbp), %rax	# argv, tmp196
	addq	$48, %rax	#, _11
# main.c:298:         ADDIT_ARG = atoi(argv[6]);
	.loc 1 298 21
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	atoi@PLT	#
	movl	%eax, -172(%rbp)	# tmp197, ADDIT_ARG
.L86:
# main.c:299:     if (mode == 6)
	.loc 1 299 8
	cmpl	$6, -108(%rbp)	#, mode
	jne	.L87	#,
# main.c:300:         ADDIT_ARG2 = atoi(argv[7]);
	.loc 1 300 31
	movq	-192(%rbp), %rax	# argv, tmp198
	addq	$56, %rax	#, _13
# main.c:300:         ADDIT_ARG2 = atoi(argv[7]);
	.loc 1 300 22
	movq	(%rax), %rax	# *_13, _14
	movq	%rax, %rdi	# _14,
	call	atoi@PLT	#
	movl	%eax, -168(%rbp)	# tmp199, ADDIT_ARG2
.L87:
# main.c:301:     srand(seed);
	.loc 1 301 5
	movl	-112(%rbp), %eax	# seed, seed.14_15
	movl	%eax, %edi	# seed.14_15,
	call	srand@PLT	#
# main.c:303:     if (!L || !M || !N)
	.loc 1 303 8
	cmpl	$0, -124(%rbp)	#, L
	je	.L88	#,
# main.c:303:     if (!L || !M || !N)
	.loc 1 303 12 discriminator 1
	cmpl	$0, -120(%rbp)	#, M
	je	.L88	#,
# main.c:303:     if (!L || !M || !N)
	.loc 1 303 18 discriminator 2
	cmpl	$0, -116(%rbp)	#, N
	jne	.L89	#,
.L88:
# main.c:305:         printf("ERROR: invalid arguments\n");
	.loc 1 305 9
	leaq	.LC4(%rip), %rax	#, tmp200
	movq	%rax, %rdi	# tmp200,
	call	puts@PLT	#
# main.c:306:         print_help_and_exit(argv);
	.loc 1 306 9
	movq	-192(%rbp), %rax	# argv, tmp201
	movq	%rax, %rdi	# tmp201,
	call	print_help_and_exit	#
.L89:
# main.c:310:     if (mode == 3)
	.loc 1 310 8
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L90	#,
# main.c:311:         omp_set_num_threads(ADDIT_ARG);
	.loc 1 311 9
	movl	-172(%rbp), %eax	# ADDIT_ARG, tmp202
	movl	%eax, %edi	# tmp202,
	call	omp_set_num_threads@PLT	#
	jmp	.L91	#
.L90:
# main.c:313:         omp_set_num_threads(OMP_THREADS);
	.loc 1 313 9
	movl	$4, %edi	#,
	call	omp_set_num_threads@PLT	#
.L91:
# main.c:319:     A = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	.loc 1 319 9
	movl	-124(%rbp), %eax	# L, tmp203
	cltq
	salq	$3, %rax	#, _17
	movq	%rax, %rsi	# _17,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -104(%rbp)	# tmp204, A
# main.c:320:     if (A == NULL)
	.loc 1 320 8
	cmpq	$0, -104(%rbp)	#, A
	jne	.L92	#,
# main.c:322:         printf("ERROR: cannot allocate memory for matrix A\n");
	.loc 1 322 9
	leaq	.LC5(%rip), %rax	#, tmp205
	movq	%rax, %rdi	# tmp205,
	call	puts@PLT	#
# main.c:323:         return 0;
	.loc 1 323 16
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L92:
.LBB93:
# main.c:325:     for (int i = 0; i < L; i++)
	.loc 1 325 14
	movl	$0, -164(%rbp)	#, i
# main.c:325:     for (int i = 0; i < L; i++)
	.loc 1 325 5
	jmp	.L94	#
.L96:
# main.c:327:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 327 16
	movl	-120(%rbp), %eax	# M, tmp206
	cltq
	salq	$3, %rax	#, _19
# main.c:327:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 327 10
	movl	-164(%rbp), %edx	# i, tmp207
	movslq	%edx, %rdx	# tmp207, _20
	leaq	0(,%rdx,8), %rcx	#, _21
	movq	-104(%rbp), %rdx	# A, tmp208
	leaq	(%rcx,%rdx), %rbx	#, _22
# main.c:327:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 327 16
	movq	%rax, %rsi	# _19,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:327:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 327 14 discriminator 1
	movq	%rax, (%rbx)	# _23, *_22
# main.c:328:         if (A[i] == NULL)
	.loc 1 328 14
	movl	-164(%rbp), %eax	# i, tmp210
	cltq
	leaq	0(,%rax,8), %rdx	#, _25
	movq	-104(%rbp), %rax	# A, tmp211
	addq	%rdx, %rax	# _25, _26
	movq	(%rax), %rax	# *_26, _27
# main.c:328:         if (A[i] == NULL)
	.loc 1 328 12
	testq	%rax, %rax	# _27
	jne	.L95	#,
# main.c:330:             printf("ERROR: cannot allocate memory for matrix A\n");
	.loc 1 330 13
	leaq	.LC5(%rip), %rax	#, tmp212
	movq	%rax, %rdi	# tmp212,
	call	puts@PLT	#
# main.c:331:             return 0;
	.loc 1 331 20
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L95:
# main.c:325:     for (int i = 0; i < L; i++)
	.loc 1 325 29 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L94:
# main.c:325:     for (int i = 0; i < L; i++)
	.loc 1 325 23 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp213
	cmpl	-124(%rbp), %eax	# L, tmp213
	jl	.L96	#,
.LBE93:
# main.c:336:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	.loc 1 336 9
	movl	-120(%rbp), %eax	# M, tmp214
	cltq
	salq	$3, %rax	#, _29
	movq	%rax, %rsi	# _29,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -96(%rbp)	# tmp215, B
# main.c:337:     if (B == NULL)
	.loc 1 337 8
	cmpq	$0, -96(%rbp)	#, B
	jne	.L97	#,
# main.c:339:         printf("ERROR: cannot allocate memory for matrix B\n");
	.loc 1 339 9
	leaq	.LC6(%rip), %rax	#, tmp216
	movq	%rax, %rdi	# tmp216,
	call	puts@PLT	#
# main.c:340:         return 0;
	.loc 1 340 16
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L97:
.LBB94:
# main.c:342:     for (int i = 0; i < M; i++)
	.loc 1 342 14
	movl	$0, -160(%rbp)	#, i
# main.c:342:     for (int i = 0; i < M; i++)
	.loc 1 342 5
	jmp	.L98	#
.L100:
# main.c:344:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 344 16
	movl	-116(%rbp), %eax	# N, tmp217
	cltq
	salq	$3, %rax	#, _31
# main.c:344:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 344 10
	movl	-160(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, _32
	leaq	0(,%rdx,8), %rcx	#, _33
	movq	-96(%rbp), %rdx	# B, tmp219
	leaq	(%rcx,%rdx), %rbx	#, _34
# main.c:344:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 344 16
	movq	%rax, %rsi	# _31,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:344:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 344 14 discriminator 1
	movq	%rax, (%rbx)	# _35, *_34
# main.c:345:         if (B[i] == NULL)
	.loc 1 345 14
	movl	-160(%rbp), %eax	# i, tmp221
	cltq
	leaq	0(,%rax,8), %rdx	#, _37
	movq	-96(%rbp), %rax	# B, tmp222
	addq	%rdx, %rax	# _37, _38
	movq	(%rax), %rax	# *_38, _39
# main.c:345:         if (B[i] == NULL)
	.loc 1 345 12
	testq	%rax, %rax	# _39
	jne	.L99	#,
# main.c:347:             printf("ERROR: cannot allocate memory for matrix B\n");
	.loc 1 347 13
	leaq	.LC6(%rip), %rax	#, tmp223
	movq	%rax, %rdi	# tmp223,
	call	puts@PLT	#
# main.c:348:             return 0;
	.loc 1 348 20
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L99:
# main.c:342:     for (int i = 0; i < M; i++)
	.loc 1 342 29 discriminator 2
	addl	$1, -160(%rbp)	#, i
.L98:
# main.c:342:     for (int i = 0; i < M; i++)
	.loc 1 342 23 discriminator 1
	movl	-160(%rbp), %eax	# i, tmp224
	cmpl	-120(%rbp), %eax	# M, tmp224
	jl	.L100	#,
.LBE94:
.LBB95:
# main.c:352:     for (int i = 0; i < L; i++)
	.loc 1 352 14
	movl	$0, -156(%rbp)	#, i
# main.c:352:     for (int i = 0; i < L; i++)
	.loc 1 352 5
	jmp	.L101	#
.L104:
.LBB96:
# main.c:353:         for (int j = 0; j < M; j++)
	.loc 1 353 18
	movl	$0, -152(%rbp)	#, j
# main.c:353:         for (int j = 0; j < M; j++)
	.loc 1 353 9
	jmp	.L102	#
.L103:
# main.c:354:             A[i][j] = drand(MIN, MAX);
	.loc 1 354 14
	movl	-156(%rbp), %eax	# i, tmp225
	cltq
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-104(%rbp), %rax	# A, tmp226
	addq	%rdx, %rax	# _41, _42
	movq	(%rax), %rax	# *_42, _43
# main.c:354:             A[i][j] = drand(MIN, MAX);
	.loc 1 354 17
	movl	-152(%rbp), %edx	# j, tmp227
	movslq	%edx, %rdx	# tmp227, _44
	salq	$3, %rdx	#, _45
	leaq	(%rax,%rdx), %rbx	#, _46
# main.c:354:             A[i][j] = drand(MIN, MAX);
	.loc 1 354 23
	vmovsd	.LC7(%rip), %xmm0	#, tmp228
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp228,
	movq	.LC8(%rip), %rax	#, tmp229
	vmovq	%rax, %xmm0	# tmp229,
	call	drand	#
	vmovq	%xmm0, %rax	#, _47
# main.c:354:             A[i][j] = drand(MIN, MAX);
	.loc 1 354 21 discriminator 1
	movq	%rax, (%rbx)	# _47, *_46
# main.c:353:         for (int j = 0; j < M; j++)
	.loc 1 353 33 discriminator 3
	addl	$1, -152(%rbp)	#, j
.L102:
# main.c:353:         for (int j = 0; j < M; j++)
	.loc 1 353 27 discriminator 1
	movl	-152(%rbp), %eax	# j, tmp230
	cmpl	-120(%rbp), %eax	# M, tmp230
	jl	.L103	#,
.LBE96:
# main.c:352:     for (int i = 0; i < L; i++)
	.loc 1 352 29 discriminator 2
	addl	$1, -156(%rbp)	#, i
.L101:
# main.c:352:     for (int i = 0; i < L; i++)
	.loc 1 352 23 discriminator 1
	movl	-156(%rbp), %eax	# i, tmp231
	cmpl	-124(%rbp), %eax	# L, tmp231
	jl	.L104	#,
.LBE95:
.LBB97:
# main.c:356:     for (int i = 0; i < M; i++)
	.loc 1 356 14
	movl	$0, -148(%rbp)	#, i
# main.c:356:     for (int i = 0; i < M; i++)
	.loc 1 356 5
	jmp	.L105	#
.L108:
.LBB98:
# main.c:357:         for (int j = 0; j < N; j++)
	.loc 1 357 18
	movl	$0, -144(%rbp)	#, j
# main.c:357:         for (int j = 0; j < N; j++)
	.loc 1 357 9
	jmp	.L106	#
.L107:
# main.c:358:             B[i][j] = drand(MIN, MAX);
	.loc 1 358 14
	movl	-148(%rbp), %eax	# i, tmp232
	cltq
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-96(%rbp), %rax	# B, tmp233
	addq	%rdx, %rax	# _49, _50
	movq	(%rax), %rax	# *_50, _51
# main.c:358:             B[i][j] = drand(MIN, MAX);
	.loc 1 358 17
	movl	-144(%rbp), %edx	# j, tmp234
	movslq	%edx, %rdx	# tmp234, _52
	salq	$3, %rdx	#, _53
	leaq	(%rax,%rdx), %rbx	#, _54
# main.c:358:             B[i][j] = drand(MIN, MAX);
	.loc 1 358 23
	vmovsd	.LC7(%rip), %xmm0	#, tmp235
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp235,
	movq	.LC8(%rip), %rax	#, tmp236
	vmovq	%rax, %xmm0	# tmp236,
	call	drand	#
	vmovq	%xmm0, %rax	#, _55
# main.c:358:             B[i][j] = drand(MIN, MAX);
	.loc 1 358 21 discriminator 1
	movq	%rax, (%rbx)	# _55, *_54
# main.c:357:         for (int j = 0; j < N; j++)
	.loc 1 357 33 discriminator 3
	addl	$1, -144(%rbp)	#, j
.L106:
# main.c:357:         for (int j = 0; j < N; j++)
	.loc 1 357 27 discriminator 1
	movl	-144(%rbp), %eax	# j, tmp237
	cmpl	-116(%rbp), %eax	# N, tmp237
	jl	.L107	#,
.LBE98:
# main.c:356:     for (int i = 0; i < M; i++)
	.loc 1 356 29 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L105:
# main.c:356:     for (int i = 0; i < M; i++)
	.loc 1 356 23 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp238
	cmpl	-120(%rbp), %eax	# M, tmp238
	jl	.L108	#,
.LBE97:
# main.c:361:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	.loc 1 361 9
	movl	-124(%rbp), %eax	# L, tmp239
	cltq
	salq	$3, %rax	#, _57
	movq	%rax, %rsi	# _57,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -88(%rbp)	# tmp240, C
# main.c:362:     if (C == NULL)
	.loc 1 362 8
	cmpq	$0, -88(%rbp)	#, C
	jne	.L109	#,
# main.c:364:         printf("ERROR: cannot allocate memory for matrix C\n");
	.loc 1 364 9
	leaq	.LC9(%rip), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	call	puts@PLT	#
# main.c:365:         return 0;
	.loc 1 365 16
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L109:
.LBB99:
# main.c:367:     for (int i = 0; i < L; i++)
	.loc 1 367 14
	movl	$0, -140(%rbp)	#, i
# main.c:367:     for (int i = 0; i < L; i++)
	.loc 1 367 5
	jmp	.L110	#
.L114:
# main.c:369:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 369 16
	movl	-116(%rbp), %eax	# N, tmp242
	cltq
	salq	$3, %rax	#, _59
# main.c:369:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 369 10
	movl	-140(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, _60
	leaq	0(,%rdx,8), %rcx	#, _61
	movq	-88(%rbp), %rdx	# C, tmp244
	leaq	(%rcx,%rdx), %rbx	#, _62
# main.c:369:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 369 16
	movq	%rax, %rsi	# _59,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:369:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 369 14 discriminator 1
	movq	%rax, (%rbx)	# _63, *_62
# main.c:370:         if (C[i] == NULL)
	.loc 1 370 14
	movl	-140(%rbp), %eax	# i, tmp246
	cltq
	leaq	0(,%rax,8), %rdx	#, _65
	movq	-88(%rbp), %rax	# C, tmp247
	addq	%rdx, %rax	# _65, _66
	movq	(%rax), %rax	# *_66, _67
# main.c:370:         if (C[i] == NULL)
	.loc 1 370 12
	testq	%rax, %rax	# _67
	jne	.L111	#,
# main.c:372:             printf("ERROR: cannot allocate memory for matrix C\n");
	.loc 1 372 13
	leaq	.LC9(%rip), %rax	#, tmp248
	movq	%rax, %rdi	# tmp248,
	call	puts@PLT	#
# main.c:373:             return 0;
	.loc 1 373 20
	movl	$0, %eax	#, _113
	jmp	.L131	#
.L111:
.LBB100:
# main.c:376:         for (int j = 0; j < N; j++)
	.loc 1 376 18
	movl	$0, -136(%rbp)	#, j
# main.c:376:         for (int j = 0; j < N; j++)
	.loc 1 376 9
	jmp	.L112	#
.L113:
# main.c:378:             C[i][j] = 0.0;
	.loc 1 378 14
	movl	-140(%rbp), %eax	# i, tmp249
	cltq
	leaq	0(,%rax,8), %rdx	#, _69
	movq	-88(%rbp), %rax	# C, tmp250
	addq	%rdx, %rax	# _69, _70
	movq	(%rax), %rax	# *_70, _71
# main.c:378:             C[i][j] = 0.0;
	.loc 1 378 17
	movl	-136(%rbp), %edx	# j, tmp251
	movslq	%edx, %rdx	# tmp251, _72
	salq	$3, %rdx	#, _73
	addq	%rdx, %rax	# _73, _74
# main.c:378:             C[i][j] = 0.0;
	.loc 1 378 21
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp252
	vmovsd	%xmm0, (%rax)	# tmp252, *_74
# main.c:376:         for (int j = 0; j < N; j++)
	.loc 1 376 33 discriminator 3
	addl	$1, -136(%rbp)	#, j
.L112:
# main.c:376:         for (int j = 0; j < N; j++)
	.loc 1 376 27 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp253
	cmpl	-116(%rbp), %eax	# N, tmp253
	jl	.L113	#,
.LBE100:
# main.c:367:     for (int i = 0; i < L; i++)
	.loc 1 367 29 discriminator 2
	addl	$1, -140(%rbp)	#, i
.L110:
# main.c:367:     for (int i = 0; i < L; i++)
	.loc 1 367 23 discriminator 1
	movl	-140(%rbp), %eax	# i, tmp254
	cmpl	-124(%rbp), %eax	# L, tmp254
	jl	.L114	#,
.LBE99:
# main.c:384:         printf("\nMATRIX A:\n");
	.loc 1 384 9
	leaq	.LC10(%rip), %rax	#, tmp255
	movq	%rax, %rdi	# tmp255,
	call	puts@PLT	#
# main.c:385:         print_matrix(A, L, M);
	.loc 1 385 9
	movl	-120(%rbp), %edx	# M, tmp256
	movl	-124(%rbp), %ecx	# L, tmp257
	movq	-104(%rbp), %rax	# A, tmp258
	movl	%ecx, %esi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	print_matrix	#
# main.c:387:         printf("\nMATRIX B:\n");
	.loc 1 387 9
	leaq	.LC11(%rip), %rax	#, tmp259
	movq	%rax, %rdi	# tmp259,
	call	puts@PLT	#
# main.c:388:         print_matrix(B, M, N);
	.loc 1 388 9
	movl	-116(%rbp), %edx	# N, tmp260
	movl	-120(%rbp), %ecx	# M, tmp261
	movq	-96(%rbp), %rax	# B, tmp262
	movl	%ecx, %esi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	print_matrix	#
# main.c:390:         printf("\nMATRIX C (init to zero):\n");
	.loc 1 390 9
	leaq	.LC12(%rip), %rax	#, tmp263
	movq	%rax, %rdi	# tmp263,
	call	puts@PLT	#
# main.c:391:         print_matrix(C, L, N);
	.loc 1 391 9
	movl	-116(%rbp), %edx	# N, tmp264
	movl	-124(%rbp), %ecx	# L, tmp265
	movq	-88(%rbp), %rax	# C, tmp266
	movl	%ecx, %esi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	print_matrix	#
# main.c:397:     gettimeofday(&start, NULL);
	.loc 1 397 5
	leaq	-80(%rbp), %rax	#, tmp267
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp267,
	call	gettimeofday@PLT	#
# main.c:400:     if (mode == 1 || mode == 0)
	.loc 1 400 8
	cmpl	$1, -108(%rbp)	#, mode
	je	.L115	#,
# main.c:400:     if (mode == 1 || mode == 0)
	.loc 1 400 19 discriminator 1
	cmpl	$0, -108(%rbp)	#, mode
	jne	.L116	#,
.L115:
# main.c:401:         matrix_multiply(A, B, C, L, M, N);
	.loc 1 401 9
	movl	-116(%rbp), %r8d	# N, tmp268
	movl	-120(%rbp), %edi	# M, tmp269
	movl	-124(%rbp), %ecx	# L, tmp270
	movq	-88(%rbp), %rdx	# C, tmp271
	movq	-96(%rbp), %rsi	# B, tmp272
	movq	-104(%rbp), %rax	# A, tmp273
	movl	%r8d, %r9d	# tmp268,
	movl	%edi, %r8d	# tmp269,
	movq	%rax, %rdi	# tmp273,
	call	matrix_multiply	#
	jmp	.L117	#
.L116:
# main.c:402:     else if (mode == 2)
	.loc 1 402 13
	cmpl	$2, -108(%rbp)	#, mode
	jne	.L118	#,
# main.c:403:         unrolled_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG);
	.loc 1 403 9
	movl	-116(%rbp), %r9d	# N, tmp274
	movl	-120(%rbp), %r8d	# M, tmp275
	movl	-124(%rbp), %ecx	# L, tmp276
	movq	-88(%rbp), %rdx	# C, tmp277
	movq	-96(%rbp), %rsi	# B, tmp278
	movq	-104(%rbp), %rax	# A, tmp279
	subq	$8, %rsp	#,
	movl	-172(%rbp), %edi	# ADDIT_ARG, tmp280
	pushq	%rdi	# tmp280
	movq	%rax, %rdi	# tmp279,
	call	unrolled_matrix_multiply	#
	addq	$16, %rsp	#,
	jmp	.L117	#
.L118:
# main.c:404:     else if (mode == 3)
	.loc 1 404 13
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L119	#,
# main.c:405:         multicore_matrix_multiply(A, B, C, L, M, N);
	.loc 1 405 9
	movl	-116(%rbp), %r8d	# N, tmp281
	movl	-120(%rbp), %edi	# M, tmp282
	movl	-124(%rbp), %ecx	# L, tmp283
	movq	-88(%rbp), %rdx	# C, tmp284
	movq	-96(%rbp), %rsi	# B, tmp285
	movq	-104(%rbp), %rax	# A, tmp286
	movl	%r8d, %r9d	# tmp281,
	movl	%edi, %r8d	# tmp282,
	movq	%rax, %rdi	# tmp286,
	call	multicore_matrix_multiply	#
	jmp	.L117	#
.L119:
# main.c:406:     else if (mode == 4)
	.loc 1 406 13
	cmpl	$4, -108(%rbp)	#, mode
	jne	.L120	#,
# main.c:407:         blocked_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG);
	.loc 1 407 9
	movl	-116(%rbp), %r9d	# N, tmp287
	movl	-120(%rbp), %r8d	# M, tmp288
	movl	-124(%rbp), %ecx	# L, tmp289
	movq	-88(%rbp), %rdx	# C, tmp290
	movq	-96(%rbp), %rsi	# B, tmp291
	movq	-104(%rbp), %rax	# A, tmp292
	subq	$8, %rsp	#,
	movl	-172(%rbp), %edi	# ADDIT_ARG, tmp293
	pushq	%rdi	# tmp293
	movq	%rax, %rdi	# tmp292,
	call	blocked_matrix_multiply	#
	addq	$16, %rsp	#,
	jmp	.L117	#
.L120:
# main.c:408:     else if (mode == 5)
	.loc 1 408 13
	cmpl	$5, -108(%rbp)	#, mode
	jne	.L121	#,
# main.c:409:         subword_parallelism_matrix_multiply(A, B, C, L, M, N);
	.loc 1 409 9
	movl	-116(%rbp), %r8d	# N, tmp294
	movl	-120(%rbp), %edi	# M, tmp295
	movl	-124(%rbp), %ecx	# L, tmp296
	movq	-88(%rbp), %rdx	# C, tmp297
	movq	-96(%rbp), %rsi	# B, tmp298
	movq	-104(%rbp), %rax	# A, tmp299
	movl	%r8d, %r9d	# tmp294,
	movl	%edi, %r8d	# tmp295,
	movq	%rax, %rdi	# tmp299,
	call	subword_parallelism_matrix_multiply	#
	jmp	.L117	#
.L121:
# main.c:410:     else if (mode == 6)
	.loc 1 410 13
	cmpl	$6, -108(%rbp)	#, mode
	jne	.L117	#,
# main.c:411:         custom_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG, ADDIT_ARG2);
	.loc 1 411 9
	movl	-116(%rbp), %r9d	# N, tmp300
	movl	-120(%rbp), %r8d	# M, tmp301
	movl	-124(%rbp), %ecx	# L, tmp302
	movq	-88(%rbp), %rdx	# C, tmp303
	movq	-96(%rbp), %rsi	# B, tmp304
	movq	-104(%rbp), %rax	# A, tmp305
	movl	-168(%rbp), %edi	# ADDIT_ARG2, tmp306
	pushq	%rdi	# tmp306
	movl	-172(%rbp), %edi	# ADDIT_ARG, tmp307
	pushq	%rdi	# tmp307
	movq	%rax, %rdi	# tmp305,
	call	custom_matrix_multiply	#
	addq	$16, %rsp	#,
.L117:
# main.c:413:     gettimeofday(&stop, NULL);
	.loc 1 413 5
	leaq	-64(%rbp), %rax	#, tmp308
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp308,
	call	gettimeofday@PLT	#
# main.c:414:     timersub(&stop, &start, &total);
	.loc 1 414 5
	movq	-64(%rbp), %rdx	# stop.tv_sec, _75
	movq	-80(%rbp), %rax	# start.tv_sec, _76
	subq	%rax, %rdx	# _76, _77
	movq	%rdx, -48(%rbp)	# _77, total.tv_sec
	movq	-56(%rbp), %rdx	# stop.tv_usec, _78
	movq	-72(%rbp), %rax	# start.tv_usec, _79
	subq	%rax, %rdx	# _79, _80
	movq	%rdx, -40(%rbp)	# _80, total.tv_usec
	movq	-40(%rbp), %rax	# total.tv_usec, _81
	testq	%rax, %rax	# _81
	jns	.L122	#,
# main.c:414:     timersub(&stop, &start, &total);
	.loc 1 414 5 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# total.tv_sec, _82
	subq	$1, %rax	#, _83
	movq	%rax, -48(%rbp)	# _83, total.tv_sec
	movq	-40(%rbp), %rax	# total.tv_usec, _84
	addq	$1000000, %rax	#, _85
	movq	%rax, -40(%rbp)	# _85, total.tv_usec
.L122:
# main.c:421:         printf("\nOutput C:\n");
	.loc 1 421 9 is_stmt 1
	leaq	.LC13(%rip), %rax	#, tmp309
	movq	%rax, %rdi	# tmp309,
	call	puts@PLT	#
# main.c:422:         print_matrix(C, L, N);
	.loc 1 422 9
	movl	-116(%rbp), %edx	# N, tmp310
	movl	-124(%rbp), %ecx	# L, tmp311
	movq	-88(%rbp), %rax	# C, tmp312
	movl	%ecx, %esi	# tmp311,
	movq	%rax, %rdi	# tmp312,
	call	print_matrix	#
.LBB101:
# main.c:428:         for (int i = 0; i < L; i++)
	.loc 1 428 18
	movl	$0, -132(%rbp)	#, i
# main.c:428:         for (int i = 0; i < L; i++)
	.loc 1 428 9
	jmp	.L123	#
.L126:
.LBB102:
# main.c:430:             for (int j = 0; j < N; j++)
	.loc 1 430 22
	movl	$0, -128(%rbp)	#, j
# main.c:430:             for (int j = 0; j < N; j++)
	.loc 1 430 13
	jmp	.L124	#
.L125:
# main.c:432:                 C[i][j] = 0.0;
	.loc 1 432 18
	movl	-132(%rbp), %eax	# i, tmp313
	cltq
	leaq	0(,%rax,8), %rdx	#, _87
	movq	-88(%rbp), %rax	# C, tmp314
	addq	%rdx, %rax	# _87, _88
	movq	(%rax), %rax	# *_88, _89
# main.c:432:                 C[i][j] = 0.0;
	.loc 1 432 21
	movl	-128(%rbp), %edx	# j, tmp315
	movslq	%edx, %rdx	# tmp315, _90
	salq	$3, %rdx	#, _91
	addq	%rdx, %rax	# _91, _92
# main.c:432:                 C[i][j] = 0.0;
	.loc 1 432 25
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp316
	vmovsd	%xmm0, (%rax)	# tmp316, *_92
# main.c:430:             for (int j = 0; j < N; j++)
	.loc 1 430 37 discriminator 3
	addl	$1, -128(%rbp)	#, j
.L124:
# main.c:430:             for (int j = 0; j < N; j++)
	.loc 1 430 31 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp317
	cmpl	-116(%rbp), %eax	# N, tmp317
	jl	.L125	#,
.LBE102:
# main.c:428:         for (int i = 0; i < L; i++)
	.loc 1 428 33 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L123:
# main.c:428:         for (int i = 0; i < L; i++)
	.loc 1 428 27 discriminator 1
	movl	-132(%rbp), %eax	# i, tmp318
	cmpl	-124(%rbp), %eax	# L, tmp318
	jl	.L126	#,
.LBE101:
# main.c:435:         matrix_multiply(A, B, C, L, M, N);
	.loc 1 435 9
	movl	-116(%rbp), %r8d	# N, tmp319
	movl	-120(%rbp), %edi	# M, tmp320
	movl	-124(%rbp), %ecx	# L, tmp321
	movq	-88(%rbp), %rdx	# C, tmp322
	movq	-96(%rbp), %rsi	# B, tmp323
	movq	-104(%rbp), %rax	# A, tmp324
	movl	%r8d, %r9d	# tmp319,
	movl	%edi, %r8d	# tmp320,
	movq	%rax, %rdi	# tmp324,
	call	matrix_multiply	#
# main.c:436:         printf("\nBaseline Output C from matrix_multiply():\n");
	.loc 1 436 9
	leaq	.LC14(%rip), %rax	#, tmp325
	movq	%rax, %rdi	# tmp325,
	call	puts@PLT	#
# main.c:437:         print_matrix(C, L, N);
	.loc 1 437 9
	movl	-116(%rbp), %edx	# N, tmp326
	movl	-124(%rbp), %ecx	# L, tmp327
	movq	-88(%rbp), %rax	# C, tmp328
	movl	%ecx, %esi	# tmp327,
	movq	%rax, %rdi	# tmp328,
	call	print_matrix	#
# main.c:438:         printf("\n");
	.loc 1 438 9
	movl	$10, %edi	#,
	call	putchar@PLT	#
# main.c:442:     if (mode == 2)
	.loc 1 442 8
	cmpl	$2, -108(%rbp)	#, mode
	jne	.L127	#,
# main.c:443:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, UNROLL: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 443 9
	movq	-40(%rbp), %r8	# total.tv_usec, _93
	movq	-48(%rbp), %rdi	# total.tv_sec, _94
	movl	-116(%rbp), %ecx	# N, tmp329
	movl	-120(%rbp), %edx	# M, tmp330
	movl	-124(%rbp), %eax	# L, tmp331
	subq	$8, %rsp	#,
	movl	-172(%rbp), %esi	# ADDIT_ARG, tmp332
	pushq	%rsi	# tmp332
	movq	%r8, %r9	# _93,
	movq	%rdi, %r8	# _94,
	movl	%eax, %esi	# tmp331,
	leaq	.LC15(%rip), %rax	#, tmp333
	movq	%rax, %rdi	# tmp333,
	movl	$0, %eax	#,
	call	printf@PLT	#
	addq	$16, %rsp	#,
	jmp	.L128	#
.L127:
# main.c:444:     else if (mode == 3)
	.loc 1 444 13
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L129	#,
# main.c:445:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, THREADS: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 445 9
	movq	-40(%rbp), %r8	# total.tv_usec, _95
	movq	-48(%rbp), %rdi	# total.tv_sec, _96
	movl	-116(%rbp), %ecx	# N, tmp334
	movl	-120(%rbp), %edx	# M, tmp335
	movl	-124(%rbp), %eax	# L, tmp336
	subq	$8, %rsp	#,
	movl	-172(%rbp), %esi	# ADDIT_ARG, tmp337
	pushq	%rsi	# tmp337
	movq	%r8, %r9	# _95,
	movq	%rdi, %r8	# _96,
	movl	%eax, %esi	# tmp336,
	leaq	.LC16(%rip), %rax	#, tmp338
	movq	%rax, %rdi	# tmp338,
	movl	$0, %eax	#,
	call	printf@PLT	#
	addq	$16, %rsp	#,
	jmp	.L128	#
.L129:
# main.c:446:     else if (mode == 4)
	.loc 1 446 13
	cmpl	$4, -108(%rbp)	#, mode
	jne	.L130	#,
# main.c:447:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, BLOCK SIZE: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 447 9
	movq	-40(%rbp), %r8	# total.tv_usec, _97
	movq	-48(%rbp), %rdi	# total.tv_sec, _98
	movl	-116(%rbp), %ecx	# N, tmp339
	movl	-120(%rbp), %edx	# M, tmp340
	movl	-124(%rbp), %eax	# L, tmp341
	subq	$8, %rsp	#,
	movl	-172(%rbp), %esi	# ADDIT_ARG, tmp342
	pushq	%rsi	# tmp342
	movq	%r8, %r9	# _97,
	movq	%rdi, %r8	# _98,
	movl	%eax, %esi	# tmp341,
	leaq	.LC17(%rip), %rax	#, tmp343
	movq	%rax, %rdi	# tmp343,
	movl	$0, %eax	#,
	call	printf@PLT	#
	addq	$16, %rsp	#,
	jmp	.L128	#
.L130:
# main.c:449:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld\n", L, M, N, total.tv_sec, total.tv_usec);
	.loc 1 449 9
	movq	-40(%rbp), %rdi	# total.tv_usec, _99
	movq	-48(%rbp), %rsi	# total.tv_sec, _100
	movl	-116(%rbp), %ecx	# N, tmp344
	movl	-120(%rbp), %edx	# M, tmp345
	movl	-124(%rbp), %eax	# L, tmp346
	movq	%rdi, %r9	# _99,
	movq	%rsi, %r8	# _100,
	movl	%eax, %esi	# tmp346,
	leaq	.LC18(%rip), %rax	#, tmp347
	movq	%rax, %rdi	# tmp347,
	movl	$0, %eax	#,
	call	printf@PLT	#
.L128:
# main.c:452:     free_matrices(A, B, C, L, M, N);
	.loc 1 452 5
	movl	-116(%rbp), %r8d	# N, tmp348
	movl	-120(%rbp), %edi	# M, tmp349
	movl	-124(%rbp), %ecx	# L, tmp350
	movq	-88(%rbp), %rdx	# C, tmp351
	movq	-96(%rbp), %rsi	# B, tmp352
	movq	-104(%rbp), %rax	# A, tmp353
	movl	%r8d, %r9d	# tmp348,
	movl	%edi, %r8d	# tmp349,
	movq	%rax, %rdi	# tmp353,
	call	free_matrices	#
# main.c:454:     return 0;
	.loc 1 454 12
	movl	$0, %eax	#, _113
.L131:
# main.c:455: }
	.loc 1 455 1
	movq	-24(%rbp), %rdx	# D.31771, tmp356
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp356
	je	.L132	#,
	call	__stack_chk_fail@PLT	#
.L132:
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5051:
	.size	main, .-main
	.type	multicore_matrix_multiply._omp_fn.0, @function
multicore_matrix_multiply._omp_fn.0:
.LFB5052:
	.loc 1 108 9
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r12	#
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)	# .omp_data_i, .omp_data_i
# main.c:108: #pragma omp parallel for
	.loc 1 108 9 discriminator 1
	movq	-72(%rbp), %rax	# .omp_data_i, tmp123
	movl	32(%rax), %eax	# .omp_data_i_11(D)->N, tmp124
	movl	%eax, -52(%rbp)	# tmp124, N
	movq	-72(%rbp), %rax	# .omp_data_i, tmp125
	movl	28(%rax), %eax	# .omp_data_i_11(D)->M, tmp126
	movl	%eax, -48(%rbp)	# tmp126, M
	movq	-72(%rbp), %rax	# .omp_data_i, tmp127
	movl	24(%rax), %eax	# .omp_data_i_11(D)->L, tmp128
	movl	%eax, -44(%rbp)	# tmp128, L
	movq	-72(%rbp), %rax	# .omp_data_i, tmp129
	movq	16(%rax), %rax	# .omp_data_i_11(D)->C, tmp130
	movq	%rax, -40(%rbp)	# tmp130, C
	movq	-72(%rbp), %rax	# .omp_data_i, tmp131
	movq	8(%rax), %rax	# .omp_data_i_11(D)->B, tmp132
	movq	%rax, -32(%rbp)	# tmp132, B
	movq	-72(%rbp), %rax	# .omp_data_i, tmp133
	movq	(%rax), %rax	# .omp_data_i_11(D)->A, tmp134
	movq	%rax, -24(%rbp)	# tmp134, A
.LBB103:
.LBB104:
	movl	-44(%rbp), %ebx	# L, L.4_18
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	#, _19
	call	omp_get_thread_num@PLT	#
	movl	%eax, %esi	#, _20
	movl	%ebx, %eax	# L.4_18, tmp135
	cltd
	idivl	%r12d	# _19
	movl	%eax, %ecx	# tmp135, q.6_1
	movl	%ebx, %eax	# L.4_18, L.4_18
	cltd
	idivl	%r12d	# _19
	movl	%edx, %eax	# tmp137, tt.7_2
	cmpl	%eax, %esi	# tt.7_2, _20
	jl	.L134	#,
.L141:
	imull	%ecx, %esi	# q.6_1, _20
	movl	%esi, %edx	# _20, _25
	addl	%edx, %eax	# _25, _26
	leal	(%rax,%rcx), %edx	#, _27
	cmpl	%edx, %eax	# _27, _26
	jge	.L142	#,
	movl	%eax, -64(%rbp)	# _26, i
.L137:
.LBB105:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 18
	movl	$0, -60(%rbp)	#, j
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 9
	nop	
.L139:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 27 discriminator 1
	movl	-60(%rbp), %eax	# j, tmp139
	cmpl	-52(%rbp), %eax	# N, tmp139
	jl	.L136	#,
	addl	$1, -64(%rbp)	#, i
	cmpl	%edx, -64(%rbp)	# _27, i
	jl	.L137	#,
.LBE105:
.LBE104:
.LBE103:
# main.c:108: #pragma omp parallel for
	.loc 1 108 9
	jmp	.L142	#
.L136:
.LBB110:
.LBB109:
.LBB108:
.LBB106:
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 22
	movl	$0, -56(%rbp)	#, k
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 13
	nop	
.L140:
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 31 discriminator 1
	movl	-56(%rbp), %eax	# k, tmp140
	cmpl	-48(%rbp), %eax	# M, tmp140
	jl	.L138	#,
.LBE106:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 33 discriminator 2
	addl	$1, -60(%rbp)	#, j
	jmp	.L139	#
.L138:
.LBB107:
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 18
	movl	-64(%rbp), %eax	# i, tmp141
	cltq
	leaq	0(,%rax,8), %rcx	#, _34
	movq	-40(%rbp), %rax	# C, tmp142
	addq	%rcx, %rax	# _34, _35
	movq	(%rax), %rax	# *_35, _36
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 21
	movl	-60(%rbp), %ecx	# j, tmp143
	movslq	%ecx, %rcx	# tmp143, _37
	salq	$3, %rcx	#, _38
	addq	%rcx, %rax	# _38, _39
	vmovsd	(%rax), %xmm1	# *_39, _40
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 29
	movl	-64(%rbp), %eax	# i, tmp144
	cltq
	leaq	0(,%rax,8), %rcx	#, _42
	movq	-24(%rbp), %rax	# A, tmp145
	addq	%rcx, %rax	# _42, _43
	movq	(%rax), %rax	# *_43, _44
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 32
	movl	-56(%rbp), %ecx	# k, tmp146
	movslq	%ecx, %rcx	# tmp146, _45
	salq	$3, %rcx	#, _46
	addq	%rcx, %rax	# _46, _47
	vmovsd	(%rax), %xmm2	# *_47, _48
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 39
	movl	-56(%rbp), %eax	# k, tmp147
	cltq
	leaq	0(,%rax,8), %rcx	#, _50
	movq	-32(%rbp), %rax	# B, tmp148
	addq	%rcx, %rax	# _50, _51
	movq	(%rax), %rax	# *_51, _52
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 42
	movl	-60(%rbp), %ecx	# j, tmp149
	movslq	%ecx, %rcx	# tmp149, _53
	salq	$3, %rcx	#, _54
	addq	%rcx, %rax	# _54, _55
	vmovsd	(%rax), %xmm0	# *_55, _56
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 36
	vmulsd	%xmm0, %xmm2, %xmm0	# _56, _48, _57
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 18
	movl	-64(%rbp), %eax	# i, tmp150
	cltq
	leaq	0(,%rax,8), %rcx	#, _59
	movq	-40(%rbp), %rax	# C, tmp151
	addq	%rcx, %rax	# _59, _60
	movq	(%rax), %rax	# *_60, _61
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 21
	movl	-60(%rbp), %ecx	# j, tmp152
	movslq	%ecx, %rcx	# tmp152, _62
	salq	$3, %rcx	#, _63
	addq	%rcx, %rax	# _63, _64
# main.c:118:                 C[i][j] += A[i][k] * B[k][j];
	.loc 1 118 25
	vaddsd	%xmm0, %xmm1, %xmm0	# _57, _40, _65
	vmovsd	%xmm0, (%rax)	# _65, *_64
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 37 discriminator 3
	addl	$1, -56(%rbp)	#, k
	jmp	.L140	#
.L134:
	movl	$0, %eax	#, tt.7_2
	addl	$1, %ecx	#, q.6_1
	jmp	.L141	#
.L142:
.LBE107:
.LBE108:
.LBE109:
.LBE110:
# main.c:108: #pragma omp parallel for
	.loc 1 108 9
	nop	
	addq	$64, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5052:
	.size	multicore_matrix_multiply._omp_fn.0, .-multicore_matrix_multiply._omp_fn.0
	.type	custom_matrix_multiply._omp_fn.0, @function
custom_matrix_multiply._omp_fn.0:
.LFB5053:
	.loc 1 237 9
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$88, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)	# .omp_data_i, .omp_data_i
# main.c:237: #pragma omp parallel for
	.loc 1 237 9 discriminator 1
	movq	-104(%rbp), %rax	# .omp_data_i, tmp95
	movl	36(%rax), %eax	# .omp_data_i_11(D)->block_size, tmp96
	movl	%eax, -72(%rbp)	# tmp96, block_size
	movq	-104(%rbp), %rax	# .omp_data_i, tmp97
	movl	32(%rax), %eax	# .omp_data_i_11(D)->N, tmp98
	movl	%eax, -68(%rbp)	# tmp98, N
	movq	-104(%rbp), %rax	# .omp_data_i, tmp99
	movl	28(%rax), %eax	# .omp_data_i_11(D)->M, tmp100
	movl	%eax, -64(%rbp)	# tmp100, M
	movq	-104(%rbp), %rax	# .omp_data_i, tmp101
	movl	24(%rax), %eax	# .omp_data_i_11(D)->L, tmp102
	movl	%eax, -60(%rbp)	# tmp102, L
	movq	-104(%rbp), %rax	# .omp_data_i, tmp103
	movq	16(%rax), %rax	# .omp_data_i_11(D)->C, tmp104
	movq	%rax, -56(%rbp)	# tmp104, C
	movq	-104(%rbp), %rax	# .omp_data_i, tmp105
	movq	8(%rax), %rax	# .omp_data_i_11(D)->B, tmp106
	movq	%rax, -48(%rbp)	# tmp106, B
	movq	-104(%rbp), %rax	# .omp_data_i, tmp107
	movq	(%rax), %rax	# .omp_data_i_11(D)->A, tmp108
	movq	%rax, -40(%rbp)	# tmp108, A
.LBB111:
.LBB112:
	movl	-60(%rbp), %r13d	# L, L.9_19
	movl	-72(%rbp), %ebx	# block_size, block_size.10_20
	call	omp_get_num_threads@PLT	#
	movl	%eax, %r12d	#, _21
	call	omp_get_thread_num@PLT	#
	movl	%eax, %edi	#, _22
	leal	-1(%rbx), %eax	#, _23
	addl	%r13d, %eax	# L.9_19, _24
	cltd
	idivl	%ebx	# block_size.10_20
	movl	%eax, %esi	# tmp109, _25
	movl	%esi, %eax	# _25, tmp111
	cltd
	idivl	%r12d	# _21
	movl	%eax, %ecx	# tmp111, q.12_1
	movl	%esi, %eax	# _25, _25
	cltd
	idivl	%r12d	# _21
	movl	%edx, %eax	# tmp113, tt.13_2
	cmpl	%eax, %edi	# tt.13_2, _22
	jl	.L144	#,
.L151:
	movl	%edi, %edx	# _22, _22
	imull	%ecx, %edx	# q.12_1, _22
	addl	%edx, %eax	# _30, _31
	leal	(%rax,%rcx), %edx	#, _32
	cmpl	%edx, %eax	# _32, _31
	jge	.L152	#,
	imull	%ebx, %eax	# block_size.10_20, tmp115
	movl	%eax, -84(%rbp)	# tmp115, sj
	imull	%ebx, %edx	# block_size.10_20, _32
	movl	%edx, %r12d	# _32, _34
.L147:
.LBB113:
# main.c:242:         for (int si = 0; si < N; si += block_size)
	.loc 1 242 18
	movl	$0, -80(%rbp)	#, si
# main.c:242:         for (int si = 0; si < N; si += block_size)
	.loc 1 242 9
	nop	
.L149:
# main.c:242:         for (int si = 0; si < N; si += block_size)
	.loc 1 242 29 discriminator 1
	movl	-80(%rbp), %eax	# si, tmp116
	cmpl	-68(%rbp), %eax	# N, tmp116
	jl	.L146	#,
	addl	%ebx, -84(%rbp)	# block_size.10_20, sj
	cmpl	%r12d, -84(%rbp)	# _34, sj
	jl	.L147	#,
.LBE113:
.LBE112:
.LBE111:
# main.c:237: #pragma omp parallel for
	.loc 1 237 9
	jmp	.L152	#
.L146:
.LBB118:
.LBB117:
.LBB116:
.LBB114:
# main.c:245:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 245 22
	movl	$0, -76(%rbp)	#, sk
# main.c:245:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 245 13
	nop	
.L150:
# main.c:245:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 245 33 discriminator 1
	movl	-76(%rbp), %eax	# sk, tmp117
	cmpl	-64(%rbp), %eax	# M, tmp117
	jl	.L148	#,
.LBE114:
# main.c:242:         for (int si = 0; si < N; si += block_size)
	.loc 1 242 37 discriminator 2
	movl	-72(%rbp), %eax	# block_size, tmp118
	addl	%eax, -80(%rbp)	# tmp118, si
	jmp	.L149	#
.L148:
.LBB115:
# main.c:247:                 do_block_custom(si, sj, sk, A, B, C, L, N, M, block_size);
	.loc 1 247 17
	movq	-56(%rbp), %r9	# C, tmp119
	movq	-48(%rbp), %r8	# B, tmp120
	movq	-40(%rbp), %rcx	# A, tmp121
	movl	-76(%rbp), %edx	# sk, tmp122
	movl	-84(%rbp), %esi	# sj, tmp123
	movl	-80(%rbp), %eax	# si, tmp124
	movl	-72(%rbp), %edi	# block_size, tmp125
	pushq	%rdi	# tmp125
	movl	-64(%rbp), %edi	# M, tmp126
	pushq	%rdi	# tmp126
	movl	-68(%rbp), %edi	# N, tmp127
	pushq	%rdi	# tmp127
	movl	-60(%rbp), %edi	# L, tmp128
	pushq	%rdi	# tmp128
	movl	%eax, %edi	# tmp124,
	call	do_block_custom	#
	addq	$32, %rsp	#,
# main.c:245:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 245 41 discriminator 3
	movl	-72(%rbp), %eax	# block_size, tmp129
	addl	%eax, -76(%rbp)	# tmp129, sk
	jmp	.L150	#
.L144:
	movl	$0, %eax	#, tt.13_2
	addl	$1, %ecx	#, q.12_1
	jmp	.L151	#
.L152:
.LBE115:
.LBE116:
.LBE117:
.LBE118:
# main.c:237: #pragma omp parallel for
	.loc 1 237 9
	nop	
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5053:
	.size	custom_matrix_multiply._omp_fn.0, .-custom_matrix_multiply._omp_fn.0
	.section	.rodata
	.align 8
.LC2:
	.long	-4194304
	.long	1105199103
	.align 8
.LC7:
	.long	0
	.long	1072693248
	.align 8
.LC8:
	.long	0
	.long	0
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h"
	.file 6 "/usr/include/x86_64-linux-gnu/sys/time.h"
	.file 7 "/usr/include/stdlib.h"
	.file 8 "/usr/lib/gcc/x86_64-linux-gnu/13/include/omp.h"
	.file 9 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1219
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x26
	.long	.LASF75
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x13
	.long	.LASF9
	.byte	0x3
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x27
	.byte	0x8
	.uleb128 0x14
	.long	0x48
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x28
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x13
	.long	.LASF10
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x72
	.uleb128 0x13
	.long	.LASF11
	.byte	0x4
	.byte	0xa2
	.byte	0x1f
	.long	0x72
	.uleb128 0xd
	.long	0x96
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x19
	.long	0x96
	.uleb128 0xd
	.long	0x9d
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x29
	.long	.LASF76
	.byte	0x10
	.byte	0x5
	.byte	0x8
	.byte	0x8
	.long	0xd6
	.uleb128 0x18
	.long	.LASF14
	.byte	0x5
	.byte	0xe
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0x18
	.long	.LASF15
	.byte	0x5
	.byte	0xf
	.byte	0x11
	.long	0x85
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0x6
	.byte	0x10
	.byte	0x4
	.long	.LASF17
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF19
	.uleb128 0x19
	.long	0xeb
	.uleb128 0x13
	.long	.LASF20
	.byte	0x2
	.byte	0x29
	.byte	0x10
	.long	0x103
	.uleb128 0x1a
	.long	0xeb
	.long	0x10e
	.uleb128 0x1b
	.byte	0
	.uleb128 0x13
	.long	.LASF21
	.byte	0x2
	.byte	0x3b
	.byte	0x10
	.long	0x11a
	.uleb128 0x1a
	.long	0xeb
	.long	0x125
	.uleb128 0x1b
	.byte	0
	.uleb128 0x2a
	.long	.LASF77
	.byte	0x2
	.byte	0x45
	.byte	0x10
	.long	0x11a
	.byte	0x1
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.long	.LASF22
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.long	.LASF23
	.uleb128 0x1c
	.long	.LASF24
	.byte	0x6
	.byte	0x43
	.long	0x6b
	.long	0x15a
	.uleb128 0x9
	.long	0x15f
	.uleb128 0x9
	.long	0x4a
	.byte	0
	.uleb128 0xd
	.long	0xae
	.uleb128 0x14
	.long	0x15a
	.uleb128 0x1d
	.long	.LASF25
	.byte	0x7
	.value	0x2d4
	.byte	0xe
	.long	0x48
	.long	0x180
	.uleb128 0x9
	.long	0x2e
	.uleb128 0x9
	.long	0x2e
	.byte	0
	.uleb128 0x1e
	.long	.LASF27
	.value	0x23f
	.long	0x191
	.uleb128 0x9
	.long	0x41
	.byte	0
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x7
	.byte	0x69
	.long	0x6b
	.long	0x1a6
	.uleb128 0x9
	.long	0xa2
	.byte	0
	.uleb128 0x1e
	.long	.LASF28
	.value	0x2af
	.long	0x1b7
	.uleb128 0x9
	.long	0x48
	.byte	0
	.uleb128 0x2b
	.long	.LASF29
	.byte	0x8
	.byte	0xd5
	.byte	0xd
	.long	0x1c9
	.uleb128 0x9
	.long	0x6b
	.byte	0
	.uleb128 0x10
	.long	.LASF32
	.byte	0xea
	.quad	.LFB5049
	.quad	.LFE5049-.LFB5049
	.uleb128 0x1
	.byte	0x9c
	.long	0x308
	.uleb128 0x1
	.string	"A"
	.byte	0xea
	.byte	0x26
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0xea
	.byte	0x32
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0xea
	.byte	0x3e
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"L"
	.byte	0xea
	.byte	0x45
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"M"
	.byte	0xea
	.byte	0x4c
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"N"
	.byte	0xea
	.byte	0x53
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.long	.LASF30
	.byte	0xea
	.byte	0x5a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF31
	.byte	0xea
	.byte	0x6a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	.LASF34
	.quad	.LFB5053
	.quad	.LFE5053-.LFB5053
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	0x366
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.string	"A"
	.byte	0xea
	.byte	0x26
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"B"
	.byte	0xea
	.byte	0x32
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"C"
	.byte	0xea
	.byte	0x3e
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"L"
	.byte	0xea
	.byte	0x45
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"M"
	.byte	0xea
	.byte	0x4c
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"N"
	.byte	0xea
	.byte	0x53
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0xe
	.long	.LASF30
	.byte	0xea
	.byte	0x5a
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x11
	.long	.LLRL2
	.uleb128 0x2
	.string	"sj"
	.byte	0xef
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x11
	.long	.LLRL2
	.uleb128 0x2
	.string	"si"
	.byte	0xf2
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x11
	.long	.LLRL3
	.uleb128 0x2
	.string	"sk"
	.byte	0xf5
	.byte	0x16
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x30d
	.uleb128 0xd
	.long	0xeb
	.uleb128 0x21
	.long	0x361
	.uleb128 0x7
	.string	"A"
	.byte	0xea
	.byte	0x26
	.long	0x308
	.byte	0
	.uleb128 0x7
	.string	"B"
	.byte	0xea
	.byte	0x32
	.long	0x308
	.byte	0x8
	.uleb128 0x7
	.string	"C"
	.byte	0xea
	.byte	0x3e
	.long	0x308
	.byte	0x10
	.uleb128 0x7
	.string	"L"
	.byte	0xea
	.byte	0x45
	.long	0x6b
	.byte	0x18
	.uleb128 0x7
	.string	"M"
	.byte	0xea
	.byte	0x4c
	.long	0x6b
	.byte	0x1c
	.uleb128 0x7
	.string	"N"
	.byte	0xea
	.byte	0x53
	.long	0x6b
	.byte	0x20
	.uleb128 0x18
	.long	.LASF30
	.byte	0x1
	.byte	0xea
	.byte	0x5a
	.long	0x6b
	.byte	0x24
	.byte	0
	.uleb128 0x22
	.long	0x312
	.uleb128 0x14
	.long	0x361
	.uleb128 0x10
	.long	.LASF33
	.byte	0x6a
	.quad	.LFB5044
	.quad	.LFE5044-.LFB5044
	.uleb128 0x1
	.byte	0x9c
	.long	0x479
	.uleb128 0x1
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"L"
	.byte	0x6a
	.byte	0x48
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"M"
	.byte	0x6a
	.byte	0x4f
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"N"
	.byte	0x6a
	.byte	0x56
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1f
	.long	.LASF35
	.quad	.LFB5052
	.quad	.LFE5052-.LFB5052
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x20
	.long	0x4c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"L"
	.byte	0x6a
	.byte	0x48
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2
	.string	"M"
	.byte	0x6a
	.byte	0x4f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"N"
	.byte	0x6a
	.byte	0x56
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x11
	.long	.LLRL0
	.uleb128 0x2
	.string	"i"
	.byte	0x6e
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x11
	.long	.LLRL0
	.uleb128 0x2
	.string	"j"
	.byte	0x71
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x11
	.long	.LLRL1
	.uleb128 0x2
	.string	"k"
	.byte	0x74
	.byte	0x16
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x4bb
	.uleb128 0x7
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x308
	.byte	0
	.uleb128 0x7
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x308
	.byte	0x8
	.uleb128 0x7
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x308
	.byte	0x10
	.uleb128 0x7
	.string	"L"
	.byte	0x6a
	.byte	0x48
	.long	0x6b
	.byte	0x18
	.uleb128 0x7
	.string	"M"
	.byte	0x6a
	.byte	0x4f
	.long	0x6b
	.byte	0x1c
	.uleb128 0x7
	.string	"N"
	.byte	0x6a
	.byte	0x56
	.long	0x6b
	.byte	0x20
	.byte	0
	.uleb128 0x22
	.long	0x479
	.uleb128 0x14
	.long	0x4bb
	.uleb128 0x2c
	.long	.LASF78
	.byte	0x7
	.value	0x23d
	.byte	0xc
	.long	0x6b
	.uleb128 0x2d
	.long	.LASF36
	.byte	0x7
	.value	0x2f4
	.byte	0xd
	.long	0x4e5
	.uleb128 0x9
	.long	0x6b
	.byte	0
	.uleb128 0x1d
	.long	.LASF37
	.byte	0x9
	.value	0x16b
	.byte	0xc
	.long	0x6b
	.long	0x4fd
	.uleb128 0x9
	.long	0xa2
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.long	.LASF61
	.byte	0x1
	.value	0x113
	.byte	0x5
	.long	0x6b
	.quad	.LFB5051
	.quad	.LFE5051-.LFB5051
	.uleb128 0x1
	.byte	0x9c
	.long	0x754
	.uleb128 0x23
	.long	.LASF38
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x23
	.long	.LASF39
	.byte	0x1b
	.long	0x754
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x4
	.string	"L"
	.value	0x119
	.byte	0x9
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x4
	.string	"M"
	.value	0x119
	.byte	0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x4
	.string	"N"
	.value	0x119
	.byte	0xf
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xf
	.long	.LASF40
	.value	0x119
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xf
	.long	.LASF41
	.value	0x119
	.byte	0x18
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0xf
	.long	.LASF42
	.value	0x119
	.byte	0x23
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0xf
	.long	.LASF43
	.value	0x11a
	.byte	0x9
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x4
	.string	"A"
	.value	0x11b
	.byte	0xe
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x4
	.string	"B"
	.value	0x11b
	.byte	0x13
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x4
	.string	"C"
	.value	0x11b
	.byte	0x18
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xf
	.long	.LASF44
	.value	0x11c
	.byte	0x14
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.long	.LASF45
	.value	0x11c
	.byte	0x1b
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.long	.LASF46
	.value	0x11c
	.byte	0x21
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x8
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x623
	.uleb128 0x4
	.string	"i"
	.value	0x145
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x8
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.long	0x647
	.uleb128 0x4
	.string	"i"
	.value	0x156
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x8
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x68b
	.uleb128 0x4
	.string	"i"
	.value	0x160
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x3
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x4
	.string	"j"
	.value	0x161
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.long	0x6cf
	.uleb128 0x4
	.string	"i"
	.value	0x164
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x4
	.string	"j"
	.value	0x165
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x8
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.long	0x713
	.uleb128 0x4
	.string	"i"
	.value	0x16f
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x3
	.quad	.LBB100
	.quad	.LBE100-.LBB100
	.uleb128 0x4
	.string	"j"
	.value	0x178
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LBB101
	.quad	.LBE101-.LBB101
	.uleb128 0x4
	.string	"i"
	.value	0x1ac
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x3
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0x4
	.string	"j"
	.value	0x1ae
	.byte	0x16
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x91
	.uleb128 0x30
	.long	.LASF47
	.byte	0x1
	.value	0x103
	.byte	0x6
	.quad	.LFB5050
	.quad	.LFE5050-.LFB5050
	.uleb128 0x1
	.byte	0x9c
	.long	0x7fe
	.uleb128 0x12
	.string	"A"
	.byte	0x1d
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"B"
	.byte	0x29
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x12
	.string	"C"
	.byte	0x35
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x12
	.string	"L"
	.byte	0x3c
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x12
	.string	"M"
	.byte	0x43
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"N"
	.byte	0x4a
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x8
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x7de
	.uleb128 0x4
	.string	"i"
	.value	0x105
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x4
	.string	"i"
	.value	0x10a
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF48
	.byte	0xc2
	.quad	.LFB5048
	.quad	.LFE5048-.LFB5048
	.uleb128 0x1
	.byte	0x9c
	.long	0xa73
	.uleb128 0x1
	.string	"si"
	.byte	0xc2
	.byte	0x1a
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -76
	.uleb128 0x1
	.string	"sj"
	.byte	0xc2
	.byte	0x22
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -80
	.uleb128 0x1
	.string	"sk"
	.byte	0xc2
	.byte	0x2a
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -84
	.uleb128 0x1
	.string	"A"
	.byte	0xc2
	.byte	0x36
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -96
	.uleb128 0x1
	.string	"B"
	.byte	0xc2
	.byte	0x42
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -104
	.uleb128 0x1
	.string	"C"
	.byte	0xc2
	.byte	0x4e
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -112
	.uleb128 0x1
	.string	"L"
	.byte	0xc2
	.byte	0x54
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.string	"M"
	.byte	0xc2
	.byte	0x5b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.string	"N"
	.byte	0xc2
	.byte	0x62
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.long	.LASF30
	.byte	0xc2
	.byte	0x69
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.long	.LASF49
	.byte	0xc4
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -44
	.uleb128 0xe
	.long	.LASF50
	.byte	0xc5
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -40
	.uleb128 0xe
	.long	.LASF51
	.byte	0xc6
	.byte	0x9
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -36
	.uleb128 0x3
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x2
	.string	"i"
	.byte	0xc8
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -60
	.uleb128 0x3
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.uleb128 0x2
	.string	"j"
	.byte	0xca
	.byte	0xd
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -56
	.uleb128 0x8
	.quad	.LBB74
	.quad	.LBE74-.LBB74
	.long	0xa32
	.uleb128 0x2
	.string	"c0"
	.byte	0xcd
	.byte	0x15
	.long	0x10e
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.uleb128 0x8
	.quad	.LBB77
	.quad	.LBE77-.LBB77
	.long	0x9e4
	.uleb128 0x2
	.string	"k"
	.byte	0xcf
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -52
	.uleb128 0xc
	.long	0x11b4
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.byte	0xd1
	.byte	0x16
	.long	0x968
	.uleb128 0x5
	.long	0x11c3
	.uleb128 0x2
	.byte	0x77
	.sleb128 -8
	.byte	0
	.uleb128 0xc
	.long	0x1153
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.byte	0xd1
	.byte	0x16
	.long	0x98c
	.uleb128 0x5
	.long	0x1162
	.uleb128 0x2
	.byte	0x77
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.long	0x11d0
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.byte	0xd1
	.byte	0x16
	.long	0x9ba
	.uleb128 0x5
	.long	0x11eb
	.uleb128 0x3
	.byte	0x77
	.sleb128 136
	.uleb128 0x5
	.long	0x11df
	.uleb128 0x3
	.byte	0x77
	.sleb128 104
	.byte	0
	.uleb128 0x16
	.long	0x11f8
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0xd1
	.byte	0x16
	.uleb128 0x5
	.long	0x1210
	.uleb128 0x3
	.byte	0x77
	.sleb128 72
	.uleb128 0x5
	.long	0x1205
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x1153
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.byte	0xcd
	.byte	0x1a
	.long	0xa08
	.uleb128 0x5
	.long	0x1162
	.uleb128 0x2
	.byte	0x77
	.sleb128 -24
	.byte	0
	.uleb128 0x16
	.long	0x112f
	.quad	.LBB86
	.quad	.LBE86-.LBB86
	.byte	0xd4
	.byte	0xd
	.uleb128 0x5
	.long	0x1146
	.uleb128 0x3
	.byte	0x77
	.sleb128 168
	.uleb128 0x5
	.long	0x113a
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2
	.string	"sum"
	.byte	0xd9
	.byte	0x14
	.long	0xeb
	.uleb128 0x2
	.byte	0x77
	.sleb128 -32
	.uleb128 0x3
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.uleb128 0x2
	.string	"k"
	.byte	0xdb
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -48
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF52
	.byte	0xa9
	.quad	.LFB5047
	.quad	.LFE5047-.LFB5047
	.uleb128 0x1
	.byte	0x9c
	.long	0xc47
	.uleb128 0x1
	.string	"A"
	.byte	0xa9
	.byte	0x33
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -80
	.uleb128 0x1
	.string	"B"
	.byte	0xa9
	.byte	0x3f
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -88
	.uleb128 0x1
	.string	"C"
	.byte	0xa9
	.byte	0x4b
	.long	0x308
	.uleb128 0x3
	.byte	0x77
	.sleb128 -96
	.uleb128 0x1
	.string	"L"
	.byte	0xa9
	.byte	0x52
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -100
	.uleb128 0x1
	.string	"M"
	.byte	0xa9
	.byte	0x59
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -104
	.uleb128 0x1
	.string	"N"
	.byte	0xa9
	.byte	0x60
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -108
	.uleb128 0x3
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2
	.string	"i"
	.byte	0xac
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -68
	.uleb128 0x3
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.uleb128 0x2
	.string	"j"
	.byte	0xaf
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.uleb128 0x3
	.quad	.LBB58
	.quad	.LBE58-.LBB58
	.uleb128 0x2
	.string	"c0"
	.byte	0xb2
	.byte	0x15
	.long	0x10e
	.uleb128 0x2
	.byte	0x77
	.sleb128 -24
	.uleb128 0x8
	.quad	.LBB61
	.quad	.LBE61-.LBB61
	.long	0xbf6
	.uleb128 0x2
	.string	"k"
	.byte	0xb4
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -60
	.uleb128 0xc
	.long	0x11b4
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0xb7
	.byte	0x16
	.long	0xb7b
	.uleb128 0x5
	.long	0x11c3
	.uleb128 0x2
	.byte	0x77
	.sleb128 -40
	.byte	0
	.uleb128 0xc
	.long	0x1198
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.byte	0xb7
	.byte	0x16
	.long	0xb9f
	.uleb128 0x5
	.long	0x11a7
	.uleb128 0x2
	.byte	0x77
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.long	0x11d0
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0xb7
	.byte	0x16
	.long	0xbcd
	.uleb128 0x5
	.long	0x11eb
	.uleb128 0x3
	.byte	0x77
	.sleb128 104
	.uleb128 0x5
	.long	0x11df
	.uleb128 0x3
	.byte	0x77
	.sleb128 72
	.byte	0
	.uleb128 0x16
	.long	0x11f8
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0xb7
	.byte	0x16
	.uleb128 0x5
	.long	0x1210
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x5
	.long	0x1205
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x1198
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.byte	0xb2
	.byte	0x1a
	.long	0xc1a
	.uleb128 0x5
	.long	0x11a7
	.uleb128 0x2
	.byte	0x77
	.sleb128 -56
	.byte	0
	.uleb128 0x16
	.long	0x1174
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.byte	0xbc
	.byte	0xd
	.uleb128 0x5
	.long	0x118b
	.uleb128 0x3
	.byte	0x77
	.sleb128 136
	.uleb128 0x5
	.long	0x117f
	.uleb128 0x2
	.byte	0x77
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF53
	.byte	0x93
	.quad	.LFB5046
	.quad	.LFE5046-.LFB5046
	.uleb128 0x1
	.byte	0x9c
	.long	0xd18
	.uleb128 0x1
	.string	"A"
	.byte	0x93
	.byte	0x27
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x93
	.byte	0x33
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"C"
	.byte	0x93
	.byte	0x3f
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"L"
	.byte	0x93
	.byte	0x46
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"M"
	.byte	0x93
	.byte	0x4d
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"N"
	.byte	0x93
	.byte	0x54
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0xa
	.long	.LASF54
	.byte	0x93
	.byte	0x5b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB53
	.quad	.LBE53-.LBB53
	.uleb128 0x2
	.string	"sj"
	.byte	0x96
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2
	.string	"si"
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2
	.string	"sk"
	.byte	0x9c
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF55
	.byte	0x7c
	.quad	.LFB5045
	.quad	.LFE5045-.LFB5045
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0b
	.uleb128 0x1
	.string	"si"
	.byte	0x7c
	.byte	0x13
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"sj"
	.byte	0x7c
	.byte	0x1b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"sk"
	.byte	0x7c
	.byte	0x23
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"A"
	.byte	0x7c
	.byte	0x30
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x7c
	.byte	0x3c
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x7c
	.byte	0x48
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7c
	.byte	0x4f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x2
	.string	"i"
	.byte	0x7f
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.quad	.LBB50
	.quad	.LBE50-.LBB50
	.uleb128 0x2
	.string	"j"
	.byte	0x81
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0xe
	.long	.LASF56
	.byte	0x83
	.byte	0x14
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2
	.string	"k"
	.byte	0x84
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x45
	.quad	.LFB5043
	.quad	.LFE5043-.LFB5043
	.uleb128 0x1
	.byte	0x9c
	.long	0xf61
	.uleb128 0x1
	.string	"A"
	.byte	0x45
	.byte	0x28
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x45
	.byte	0x34
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x45
	.byte	0x40
	.long	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"L"
	.byte	0x45
	.byte	0x47
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"M"
	.byte	0x45
	.byte	0x4e
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"N"
	.byte	0x45
	.byte	0x55
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.long	.LASF58
	.byte	0x45
	.byte	0x5c
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x2
	.string	"i"
	.byte	0x48
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.uleb128 0x2
	.string	"j"
	.byte	0x4b
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.uleb128 0xe
	.long	.LASF59
	.byte	0x4d
	.byte	0x14
	.long	0xf61
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x8
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.long	0xeff
	.uleb128 0x2
	.string	"u"
	.byte	0x4f
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x8
	.quad	.LBB45
	.quad	.LBE45-.LBB45
	.long	0xf3f
	.uleb128 0x2
	.string	"u"
	.byte	0x54
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.uleb128 0x2
	.string	"k"
	.byte	0x57
	.byte	0x1a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2
	.string	"u"
	.byte	0x5d
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0xeb
	.long	0xf74
	.uleb128 0x32
	.long	0x3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x15
	.long	.LASF60
	.byte	0x2f
	.quad	.LFB5042
	.quad	.LFE5042-.LFB5042
	.uleb128 0x1
	.byte	0x9c
	.long	0x1034
	.uleb128 0x1
	.string	"A"
	.byte	0x2f
	.byte	0x1f
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x2f
	.byte	0x2b
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"C"
	.byte	0x2f
	.byte	0x37
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"L"
	.byte	0x2f
	.byte	0x3e
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"M"
	.byte	0x2f
	.byte	0x45
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"N"
	.byte	0x2f
	.byte	0x4c
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.quad	.LBB38
	.quad	.LBE38-.LBB38
	.uleb128 0x2
	.string	"i"
	.byte	0x32
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2
	.string	"j"
	.byte	0x35
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2
	.string	"k"
	.byte	0x38
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF62
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.long	0xeb
	.quad	.LFB5041
	.quad	.LFE5041-.LFB5041
	.uleb128 0x1
	.byte	0x9c
	.long	0x1081
	.uleb128 0x1
	.string	"min"
	.byte	0x23
	.byte	0x15
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"max"
	.byte	0x23
	.byte	0x21
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xe
	.long	.LASF63
	.byte	0x25
	.byte	0xc
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x10
	.long	.LASF64
	.byte	0x17
	.quad	.LFB5040
	.quad	.LFE5040-.LFB5040
	.uleb128 0x1
	.byte	0x9c
	.long	0x1104
	.uleb128 0x1
	.string	"mat"
	.byte	0x17
	.byte	0x1c
	.long	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF65
	.byte	0x17
	.byte	0x25
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF66
	.byte	0x17
	.byte	0x2f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2
	.string	"i"
	.byte	0x19
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2
	.string	"j"
	.byte	0x1b
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x11
	.quad	.LFB5039
	.quad	.LFE5039-.LFB5039
	.uleb128 0x1
	.byte	0x9c
	.long	0x112f
	.uleb128 0xa
	.long	.LASF39
	.byte	0x11
	.byte	0x21
	.long	0x754
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x24
	.long	.LASF68
	.value	0x381
	.long	0x1153
	.uleb128 0xb
	.string	"__P"
	.value	0x381
	.byte	0x1b
	.long	0x30d
	.uleb128 0xb
	.string	"__A"
	.value	0x381
	.byte	0x28
	.long	0x10e
	.byte	0
	.uleb128 0x17
	.long	.LASF70
	.value	0x37b
	.long	0x10e
	.long	0x116f
	.uleb128 0xb
	.string	"__P"
	.value	0x37b
	.byte	0x20
	.long	0x116f
	.byte	0
	.uleb128 0xd
	.long	0xf2
	.uleb128 0x24
	.long	.LASF69
	.value	0x369
	.long	0x1198
	.uleb128 0xb
	.string	"__P"
	.value	0x369
	.byte	0x1a
	.long	0x30d
	.uleb128 0xb
	.string	"__A"
	.value	0x369
	.byte	0x27
	.long	0x10e
	.byte	0
	.uleb128 0x17
	.long	.LASF71
	.value	0x363
	.long	0x10e
	.long	0x11b4
	.uleb128 0xb
	.string	"__P"
	.value	0x363
	.byte	0x1f
	.long	0x116f
	.byte	0
	.uleb128 0x17
	.long	.LASF72
	.value	0x2de
	.long	0x10e
	.long	0x11d0
	.uleb128 0xb
	.string	"__X"
	.value	0x2de
	.byte	0x24
	.long	0x116f
	.byte	0
	.uleb128 0x17
	.long	.LASF73
	.value	0x138
	.long	0x10e
	.long	0x11f8
	.uleb128 0xb
	.string	"__A"
	.value	0x138
	.byte	0x18
	.long	0x10e
	.uleb128 0xb
	.string	"__B"
	.value	0x138
	.byte	0x25
	.long	0x10e
	.byte	0
	.uleb128 0x34
	.long	.LASF74
	.byte	0x2
	.byte	0x8d
	.byte	0x1
	.long	0x10e
	.byte	0x3
	.uleb128 0x25
	.string	"__A"
	.byte	0x8d
	.byte	0x18
	.long	0x10e
	.uleb128 0x25
	.string	"__B"
	.byte	0x8d
	.byte	0x25
	.long	0x10e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 259
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x2107
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 12
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 40
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 275
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB103-.Ltext0
	.uleb128 .LBE103-.Ltext0
	.byte	0x4
	.uleb128 .LBB110-.Ltext0
	.uleb128 .LBE110-.Ltext0
	.byte	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB106-.Ltext0
	.uleb128 .LBE106-.Ltext0
	.byte	0x4
	.uleb128 .LBB107-.Ltext0
	.uleb128 .LBE107-.Ltext0
	.byte	0
.LLRL2:
	.byte	0x4
	.uleb128 .LBB111-.Ltext0
	.uleb128 .LBE111-.Ltext0
	.byte	0x4
	.uleb128 .LBB118-.Ltext0
	.uleb128 .LBE118-.Ltext0
	.byte	0
.LLRL3:
	.byte	0x4
	.uleb128 .LBB114-.Ltext0
	.uleb128 .LBE114-.Ltext0
	.byte	0x4
	.uleb128 .LBB115-.Ltext0
	.uleb128 .LBE115-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"_Float16"
.LASF41:
	.string	"ADDIT_ARG"
.LASF30:
	.string	"block_size"
.LASF71:
	.string	"_mm256_load_pd"
.LASF32:
	.string	"custom_matrix_multiply"
.LASF14:
	.string	"tv_sec"
.LASF69:
	.string	"_mm256_store_pd"
.LASF72:
	.string	"_mm256_broadcast_sd"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF57:
	.string	"unrolled_matrix_multiply"
.LASF33:
	.string	"multicore_matrix_multiply"
.LASF29:
	.string	"omp_set_num_threads"
.LASF61:
	.string	"main"
.LASF43:
	.string	"mode"
.LASF35:
	.string	"multicore_matrix_multiply._omp_fn.0"
.LASF78:
	.string	"rand"
.LASF51:
	.string	"k_end"
.LASF21:
	.string	"__m256d"
.LASF28:
	.string	"free"
.LASF64:
	.string	"print_matrix"
.LASF38:
	.string	"argc"
.LASF52:
	.string	"subword_parallelism_matrix_multiply"
.LASF18:
	.string	"float"
.LASF13:
	.string	"long long int"
.LASF73:
	.string	"_mm256_mul_pd"
.LASF8:
	.string	"long int"
.LASF37:
	.string	"printf"
.LASF74:
	.string	"_mm256_add_pd"
.LASF26:
	.string	"atoi"
.LASF53:
	.string	"blocked_matrix_multiply"
.LASF36:
	.string	"exit"
.LASF17:
	.string	"long double"
.LASF55:
	.string	"do_block"
.LASF4:
	.string	"unsigned char"
.LASF42:
	.string	"ADDIT_ARG2"
.LASF6:
	.string	"signed char"
.LASF24:
	.string	"gettimeofday"
.LASF16:
	.string	"long long unsigned int"
.LASF65:
	.string	"rows"
.LASF49:
	.string	"i_end"
.LASF34:
	.string	"custom_matrix_multiply._omp_fn.0"
.LASF39:
	.string	"argv"
.LASF59:
	.string	"C_temp"
.LASF44:
	.string	"start"
.LASF5:
	.string	"short unsigned int"
.LASF48:
	.string	"do_block_custom"
.LASF12:
	.string	"char"
.LASF40:
	.string	"seed"
.LASF68:
	.string	"_mm256_storeu_pd"
.LASF60:
	.string	"matrix_multiply"
.LASF70:
	.string	"_mm256_loadu_pd"
.LASF25:
	.string	"aligned_alloc"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"double"
.LASF66:
	.string	"cols"
.LASF54:
	.string	"_block_size"
.LASF20:
	.string	"__v4df"
.LASF76:
	.string	"timeval"
.LASF10:
	.string	"__time_t"
.LASF56:
	.string	"C_ij"
.LASF77:
	.string	"__m256d_u"
.LASF15:
	.string	"tv_usec"
.LASF67:
	.string	"print_help_and_exit"
.LASF62:
	.string	"drand"
.LASF63:
	.string	"random_double"
.LASF23:
	.string	"__bf16"
.LASF46:
	.string	"total"
.LASF50:
	.string	"j_end"
.LASF47:
	.string	"free_matrices"
.LASF11:
	.string	"__suseconds_t"
.LASF3:
	.string	"unsigned int"
.LASF45:
	.string	"stop"
.LASF27:
	.string	"srand"
.LASF31:
	.string	"thread_count"
.LASF75:
	.string	"GNU C17 13.3.0 -mavx -mtune=generic -march=x86-64 -g -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF58:
	.string	"_unroll"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"main.c"
.LASF1:
	.string	"/home/calvert/Documents/University/Year 2/Semester 2/System Architecture/Coursework 3/baselinecode"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
