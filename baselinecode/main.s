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
.LBB34:
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 14
	movl	$0, -8(%rbp)	#, i
# main.c:25:     for (int i = 0; i < rows; i++)
	.loc 1 25 5
	jmp	.L3	#
.L6:
.LBB35:
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
.LBE35:
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
.LBE34:
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
.LBB36:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 14
	movl	$0, -12(%rbp)	#, i
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 5
	jmp	.L10	#
.L15:
.LBB37:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 18
	movl	$0, -8(%rbp)	#, j
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 9
	jmp	.L11	#
.L14:
.LBB38:
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
.LBE38:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 33 discriminator 2
	addl	$1, -8(%rbp)	#, j
.L11:
# main.c:53:         for (int j = 0; j < N; j++)
	.loc 1 53 27 discriminator 1
	movl	-8(%rbp), %eax	# j, tmp128
	cmpl	-52(%rbp), %eax	# N, tmp128
	jl	.L14	#,
.LBE37:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 29 discriminator 2
	addl	$1, -12(%rbp)	#, i
.L10:
# main.c:50:     for (int i = 0; i < L; i++)
	.loc 1 50 23 discriminator 1
	movl	-12(%rbp), %eax	# i, tmp129
	cmpl	-44(%rbp), %eax	# L, tmp129
	jl	.L15	#,
.LBE36:
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
	movq	%rax, -8(%rbp)	# tmp188, D.31746
	xorl	%eax, %eax	# tmp188
.LBB39:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 14
	movl	$0, -48(%rbp)	#, i
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 5
	jmp	.L17	#
.L31:
.LBB40:
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 18
	movl	$0, -44(%rbp)	#, j
# main.c:75:         for (int j = 0; j < N; j += _unroll)
	.loc 1 75 9
	jmp	.L18	#
.L30:
.LBB41:
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
	movq	%rdx, -24(%rbp)	# _3, D.31421
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
.LBB42:
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
.LBE42:
.LBB43:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 22
	movl	$0, -36(%rbp)	#, u
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 13
	jmp	.L24	#
.L27:
.LBB44:
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
.LBE44:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 43 discriminator 2
	addl	$1, -36(%rbp)	#, u
.L24:
# main.c:84:             for (int u = 0; u < _unroll; u++)
	.loc 1 84 31 discriminator 1
	movl	-36(%rbp), %eax	# u, tmp174
	cmpl	16(%rbp), %eax	# _unroll, tmp174
	jl	.L27	#,
.LBE43:
.LBB45:
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
.LBE45:
	movq	%rsi, %rsp	# saved_stack.2_71,
.LBE41:
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
.LBE40:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 29 discriminator 2
	addl	$1, -48(%rbp)	#, i
.L17:
# main.c:72:     for (int i = 0; i < L; i++)
	.loc 1 72 23 discriminator 1
	movl	-48(%rbp), %eax	# i, tmp185
	cmpl	-76(%rbp), %eax	# L, tmp185
	jl	.L31	#,
.LBE39:
# main.c:99: }
	.loc 1 99 1
	nop	
	movq	-8(%rbp), %rax	# D.31746, tmp189
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
	movq	%rax, -8(%rbp)	# tmp90, D.31749
	xorl	%eax, %eax	# tmp90
.LBB46:
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
.LBE46:
# main.c:122: }
	.loc 1 122 1
	nop	
	movq	-8(%rbp), %rax	# D.31749, tmp91
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
.LBB47:
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 14
	movl	-36(%rbp), %eax	# si, tmp116
	movl	%eax, -20(%rbp)	# tmp116, i
# main.c:127:     for (int i = si; i < si + _block_size; i++)
	.loc 1 127 5
	jmp	.L36	#
.L41:
.LBB48:
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 18
	movl	-40(%rbp), %eax	# sj, tmp117
	movl	%eax, -16(%rbp)	# tmp117, j
# main.c:129:         for (int j = sj; j < sj + _block_size; j++)
	.loc 1 129 9
	jmp	.L37	#
.L40:
.LBB49:
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
.LBB50:
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
.LBE50:
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
.LBE49:
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
.LBE48:
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
.LBE47:
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
.LBB51:
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 14
	movl	$0, -12(%rbp)	#, sj
# main.c:150:     for (int sj = 0; sj < L; sj += _block_size)
	.loc 1 150 5
	jmp	.L43	#
.L48:
.LBB52:
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 18
	movl	$0, -8(%rbp)	#, si
# main.c:153:         for (int si = 0; si < N; si += _block_size)
	.loc 1 153 9
	jmp	.L44	#
.L47:
.LBB53:
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
.LBE53:
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
.LBE52:
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
.LBE51:
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
.LBB54:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 14
	movl	$0, -68(%rsp)	#, i
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 5
	jmp	.L50	#
.L60:
.LBB55:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 18
	movl	$0, -64(%rsp)	#, j
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 9
	jmp	.L51	#
.L59:
.LBB56:
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
.LBB57:
.LBB58:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h"
	.loc 2 869 10
	movq	-56(%rsp), %rax	# __P, tmp118
	vmovapd	(%rax), %ymm0	# MEM[(__m256d * {ref-all})__P_54], D.31697
.LBE58:
.LBE57:
# main.c:178:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 178 26
	vmovapd	%ymm0, -24(%rsp)	# D.31697, c0
.LBB59:
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
.LBB60:
.LBB61:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 20
	movq	-40(%rsp), %rax	# __X, tmp122
	vbroadcastsd	(%rax), %ymm0	#, D.31715
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 10
	nop	
.LBE61:
.LBE60:
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
.LBB62:
.LBB63:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.loc 2 869 10
	movq	-48(%rsp), %rax	# __P, tmp126
	vmovapd	(%rax), %ymm1	# MEM[(__m256d * {ref-all})__P_62], D.31711
	vmovapd	%ymm1, 72(%rsp)	# D.31711, __A
	vmovapd	%ymm0, 104(%rsp)	# D.31715, __B
.LBE63:
.LBE62:
.LBB64:
.LBB65:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	.loc 2 314 10
	vmovapd	72(%rsp), %ymm0	# __A, tmp127
	vmulpd	104(%rsp), %ymm0, %ymm0	# __B, tmp127, D.31707
	vmovapd	-24(%rsp), %ymm1	# c0, tmp128
	vmovapd	%ymm1, 8(%rsp)	# tmp128, __A
	vmovapd	%ymm0, 40(%rsp)	# D.31707, __B
.LBE65:
.LBE64:
.LBB66:
.LBB67:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	.loc 2 143 10
	vmovapd	8(%rsp), %ymm0	# __A, tmp129
	vaddpd	40(%rsp), %ymm0, %ymm0	# __B, tmp129, D.31702
.LBE67:
.LBE66:
# main.c:183:                 c0 = _mm256_add_pd(c0,
	.loc 1 183 22 discriminator 3
	vmovapd	%ymm0, -24(%rsp)	# D.31702, c0
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 37 discriminator 3
	addl	$1, -60(%rsp)	#, k
.L53:
# main.c:180:             for (int k = 0; k < M; k++)
	.loc 1 180 31 discriminator 1
	movl	-60(%rsp), %eax	# k, tmp130
	cmpl	-104(%rsp), %eax	# M, tmp130
	jl	.L58	#,
.LBE59:
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
.LBB68:
.LBB69:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:875:   *(__m256d *)__P = __A;
	.loc 2 875 19
	movq	-32(%rsp), %rax	# __P, tmp135
	vmovapd	136(%rsp), %ymm0	# __A, tmp136
	vmovapd	%ymm0, (%rax)	# tmp136, MEM[(__m256d * {ref-all})__P_66]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:876: }
	.loc 2 876 1
	nop	
.LBE69:
.LBE68:
.LBE56:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 34 discriminator 2
	addl	$4, -64(%rsp)	#, j
.L51:
# main.c:175:         for (int j = 0; j < N; j += MM256_STRIDE)
	.loc 1 175 27 discriminator 1
	movl	-64(%rsp), %eax	# j, tmp137
	cmpl	-108(%rsp), %eax	# N, tmp137
	jl	.L59	#,
.LBE55:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 29 discriminator 2
	addl	$1, -68(%rsp)	#, i
.L50:
# main.c:172:     for (int i = 0; i < L; i++)
	.loc 1 172 23 discriminator 1
	movl	-68(%rsp), %eax	# i, tmp138
	cmpl	-100(%rsp), %eax	# L, tmp138
	jl	.L60	#,
.LBE54:
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
	.loc 1 194 1
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	andq	$-32, %rsp	#,
	subq	$168, %rsp	#,
	movl	%edi, -76(%rsp)	# si, si
	movl	%esi, -80(%rsp)	# sj, sj
	movl	%edx, -84(%rsp)	# sk, sk
	movq	%rcx, -96(%rsp)	# A, A
	movq	%r8, -104(%rsp)	# B, B
	movq	%r9, -112(%rsp)	# C, C
.LBB70:
# main.c:195:     for (int i = si; i < si + block_size; i++)
	.loc 1 195 14
	movl	-76(%rsp), %eax	# si, tmp118
	movl	%eax, -68(%rsp)	# tmp118, i
# main.c:195:     for (int i = si; i < si + block_size; i++)
	.loc 1 195 5
	jmp	.L62	#
.L72:
.LBB71:
# main.c:197:         for (int j = sj; j < sj + block_size; j += MM256_STRIDE)
	.loc 1 197 18
	movl	-80(%rsp), %eax	# sj, tmp119
	movl	%eax, -64(%rsp)	# tmp119, j
# main.c:197:         for (int j = sj; j < sj + block_size; j += MM256_STRIDE)
	.loc 1 197 9
	jmp	.L63	#
.L71:
.LBB72:
# main.c:199:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 199 43
	movl	-68(%rsp), %eax	# i, tmp120
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-112(%rsp), %rax	# C, tmp121
	addq	%rdx, %rax	# _2, _3
	movq	(%rax), %rax	# *_3, _4
# main.c:199:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 199 46
	movl	-64(%rsp), %edx	# j, tmp122
	movslq	%edx, %rdx	# tmp122, _5
	salq	$3, %rdx	#, _6
# main.c:199:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 199 41
	addq	%rdx, %rax	# _6, _7
	movq	%rax, -56(%rsp)	# _7, __P
.LBB73:
.LBB74:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.loc 2 869 10
	movq	-56(%rsp), %rax	# __P, tmp123
	vmovapd	(%rax), %ymm0	# MEM[(__m256d * {ref-all})__P_58], D.31721
.LBE74:
.LBE73:
# main.c:199:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	.loc 1 199 26
	vmovapd	%ymm0, -24(%rsp)	# D.31721, c0
.LBB75:
# main.c:200:             for (int k = sk; k < sk + block_size; k++)
	.loc 1 200 22
	movl	-84(%rsp), %eax	# sk, tmp124
	movl	%eax, -60(%rsp)	# tmp124, k
# main.c:200:             for (int k = sk; k < sk + block_size; k++)
	.loc 1 200 13
	jmp	.L65	#
.L70:
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 98
	movl	-68(%rsp), %eax	# i, tmp125
	cltq
	leaq	0(,%rax,8), %rdx	#, _9
	movq	-96(%rsp), %rax	# A, tmp126
	addq	%rdx, %rax	# _9, _10
	movq	(%rax), %rax	# *_10, _11
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 101
	movl	-60(%rsp), %edx	# k, tmp127
	movslq	%edx, %rdx	# tmp127, _12
	salq	$3, %rdx	#, _13
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 96
	addq	%rdx, %rax	# _13, _14
	movq	%rax, -40(%rsp)	# _14, __X
.LBB76:
.LBB77:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 20
	movq	-40(%rsp), %rax	# __X, tmp128
	vbroadcastsd	(%rax), %ymm0	#, D.31739
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	.loc 2 736 10
	nop	
.LBE77:
.LBE76:
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 67
	movl	-60(%rsp), %eax	# k, tmp129
	cltq
	leaq	0(,%rax,8), %rdx	#, _17
	movq	-104(%rsp), %rax	# B, tmp130
	addq	%rdx, %rax	# _17, _18
	movq	(%rax), %rax	# *_18, _19
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 70
	movl	-64(%rsp), %edx	# j, tmp131
	movslq	%edx, %rdx	# tmp131, _20
	salq	$3, %rdx	#, _21
# main.c:204:                                    _mm256_mul_pd(_mm256_load_pd(&B[k][j]), _mm256_broadcast_sd(&A[i][k]))
	.loc 1 204 65
	addq	%rdx, %rax	# _21, _22
	movq	%rax, -48(%rsp)	# _22, __P
.LBB78:
.LBB79:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	.loc 2 869 10
	movq	-48(%rsp), %rax	# __P, tmp132
	vmovapd	(%rax), %ymm1	# MEM[(__m256d * {ref-all})__P_66], D.31735
	vmovapd	%ymm1, 72(%rsp)	# D.31735, __A
	vmovapd	%ymm0, 104(%rsp)	# D.31739, __B
.LBE79:
.LBE78:
.LBB80:
.LBB81:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	.loc 2 314 10
	vmovapd	72(%rsp), %ymm0	# __A, tmp133
	vmulpd	104(%rsp), %ymm0, %ymm0	# __B, tmp133, D.31731
	vmovapd	-24(%rsp), %ymm1	# c0, tmp134
	vmovapd	%ymm1, 8(%rsp)	# tmp134, __A
	vmovapd	%ymm0, 40(%rsp)	# D.31731, __B
.LBE81:
.LBE80:
.LBB82:
.LBB83:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	.loc 2 143 10
	vmovapd	8(%rsp), %ymm0	# __A, tmp135
	vaddpd	40(%rsp), %ymm0, %ymm0	# __B, tmp135, D.31726
.LBE83:
.LBE82:
# main.c:203:                 c0 = _mm256_add_pd(c0,
	.loc 1 203 22 discriminator 3
	vmovapd	%ymm0, -24(%rsp)	# D.31726, c0
# main.c:200:             for (int k = sk; k < sk + block_size; k++)
	.loc 1 200 52 discriminator 3
	addl	$1, -60(%rsp)	#, k
.L65:
# main.c:200:             for (int k = sk; k < sk + block_size; k++)
	.loc 1 200 37 discriminator 1
	movl	-84(%rsp), %edx	# sk, tmp136
	movl	16(%rbp), %eax	# block_size, tmp137
	addl	%edx, %eax	# tmp136, _25
# main.c:200:             for (int k = sk; k < sk + block_size; k++)
	.loc 1 200 32 discriminator 1
	cmpl	%eax, -60(%rsp)	# _25, k
	jl	.L70	#,
.LBE75:
# main.c:207:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 207 31
	movl	-68(%rsp), %eax	# i, tmp138
	cltq
	leaq	0(,%rax,8), %rdx	#, _27
	movq	-112(%rsp), %rax	# C, tmp139
	addq	%rdx, %rax	# _27, _28
	movq	(%rax), %rax	# *_28, _29
# main.c:207:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 207 34
	movl	-64(%rsp), %edx	# j, tmp140
	movslq	%edx, %rdx	# tmp140, _30
	salq	$3, %rdx	#, _31
# main.c:207:             _mm256_store_pd(&C[i][j], c0);
	.loc 1 207 13
	addq	%rdx, %rax	# _31, _32
	movq	%rax, -32(%rsp)	# _32, __P
	vmovapd	-24(%rsp), %ymm0	# c0, tmp141
	vmovapd	%ymm0, 136(%rsp)	# tmp141, __A
.LBB84:
.LBB85:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:875:   *(__m256d *)__P = __A;
	.loc 2 875 19
	movq	-32(%rsp), %rax	# __P, tmp142
	vmovapd	136(%rsp), %ymm0	# __A, tmp143
	vmovapd	%ymm0, (%rax)	# tmp143, MEM[(__m256d * {ref-all})__P_70]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:876: }
	.loc 2 876 1
	nop	
.LBE85:
.LBE84:
.LBE72:
# main.c:197:         for (int j = sj; j < sj + block_size; j += MM256_STRIDE)
	.loc 1 197 49 discriminator 2
	addl	$4, -64(%rsp)	#, j
.L63:
# main.c:197:         for (int j = sj; j < sj + block_size; j += MM256_STRIDE)
	.loc 1 197 33 discriminator 1
	movl	-80(%rsp), %edx	# sj, tmp144
	movl	16(%rbp), %eax	# block_size, tmp145
	addl	%edx, %eax	# tmp144, _33
# main.c:197:         for (int j = sj; j < sj + block_size; j += MM256_STRIDE)
	.loc 1 197 28 discriminator 1
	cmpl	%eax, -64(%rsp)	# _33, j
	jl	.L71	#,
.LBE71:
# main.c:195:     for (int i = si; i < si + block_size; i++)
	.loc 1 195 44 discriminator 2
	addl	$1, -68(%rsp)	#, i
.L62:
# main.c:195:     for (int i = si; i < si + block_size; i++)
	.loc 1 195 29 discriminator 1
	movl	-76(%rsp), %edx	# si, tmp146
	movl	16(%rbp), %eax	# block_size, tmp147
	addl	%edx, %eax	# tmp146, _34
# main.c:195:     for (int i = si; i < si + block_size; i++)
	.loc 1 195 24 discriminator 1
	cmpl	%eax, -68(%rsp)	# _34, i
	jl	.L72	#,
.LBE70:
# main.c:210: }
	.loc 1 210 1
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
	.loc 1 219 1
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
# main.c:219: {
	.loc 1 219 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp92
	movq	%rax, -8(%rbp)	# tmp92, D.31750
	xorl	%eax, %eax	# tmp92
# main.c:220:     omp_set_num_threads(thread_count);
	.loc 1 220 5
	movl	24(%rbp), %eax	# thread_count, tmp82
	movl	%eax, %edi	# tmp82,
	call	omp_set_num_threads@PLT	#
.LBB86:
# main.c:221: #pragma omp parallel for
	.loc 1 221 9
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
.LBE86:
# main.c:235: }
	.loc 1 235 1
	nop	
	movq	-8(%rbp), %rax	# D.31750, tmp93
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp93
	je	.L74	#,
	call	__stack_chk_fail@PLT	#
.L74:
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
	.loc 1 244 1
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
.LBB87:
# main.c:245:     for (int i = 0; i < L; i++)
	.loc 1 245 14
	movl	$0, -8(%rbp)	#, i
# main.c:245:     for (int i = 0; i < L; i++)
	.loc 1 245 5
	jmp	.L76	#
.L77:
# main.c:247:         free(A[i]);
	.loc 1 247 15
	movl	-8(%rbp), %eax	# i, tmp94
	cltq
	leaq	0(,%rax,8), %rdx	#, _2
	movq	-24(%rbp), %rax	# A, tmp95
	addq	%rdx, %rax	# _2, _3
# main.c:247:         free(A[i]);
	.loc 1 247 9
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	free@PLT	#
# main.c:248:         free(C[i]);
	.loc 1 248 15
	movl	-8(%rbp), %eax	# i, tmp96
	cltq
	leaq	0(,%rax,8), %rdx	#, _6
	movq	-40(%rbp), %rax	# C, tmp97
	addq	%rdx, %rax	# _6, _7
# main.c:248:         free(C[i]);
	.loc 1 248 9
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rdi	# _8,
	call	free@PLT	#
# main.c:245:     for (int i = 0; i < L; i++)
	.loc 1 245 29 discriminator 3
	addl	$1, -8(%rbp)	#, i
.L76:
# main.c:245:     for (int i = 0; i < L; i++)
	.loc 1 245 23 discriminator 1
	movl	-8(%rbp), %eax	# i, tmp98
	cmpl	-44(%rbp), %eax	# L, tmp98
	jl	.L77	#,
.LBE87:
.LBB88:
# main.c:250:     for (int i = 0; i < M; i++)
	.loc 1 250 14
	movl	$0, -4(%rbp)	#, i
# main.c:250:     for (int i = 0; i < M; i++)
	.loc 1 250 5
	jmp	.L78	#
.L79:
# main.c:252:         free(B[i]);
	.loc 1 252 15
	movl	-4(%rbp), %eax	# i, tmp99
	cltq
	leaq	0(,%rax,8), %rdx	#, _10
	movq	-32(%rbp), %rax	# B, tmp100
	addq	%rdx, %rax	# _10, _11
# main.c:252:         free(B[i]);
	.loc 1 252 9
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	free@PLT	#
# main.c:250:     for (int i = 0; i < M; i++)
	.loc 1 250 29 discriminator 3
	addl	$1, -4(%rbp)	#, i
.L78:
# main.c:250:     for (int i = 0; i < M; i++)
	.loc 1 250 23 discriminator 1
	movl	-4(%rbp), %eax	# i, tmp101
	cmpl	-48(%rbp), %eax	# M, tmp101
	jl	.L79	#,
.LBE88:
# main.c:254:     free(A);
	.loc 1 254 5
	movq	-24(%rbp), %rax	# A, tmp102
	movq	%rax, %rdi	# tmp102,
	call	free@PLT	#
# main.c:255:     free(B);
	.loc 1 255 5
	movq	-32(%rbp), %rax	# B, tmp103
	movq	%rax, %rdi	# tmp103,
	call	free@PLT	#
# main.c:256:     free(C);
	.loc 1 256 5
	movq	-40(%rbp), %rax	# C, tmp104
	movq	%rax, %rdi	# tmp104,
	call	free@PLT	#
# main.c:257: }
	.loc 1 257 1
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
	.loc 1 260 1
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
# main.c:260: {
	.loc 1 260 1
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp355
	movq	%rax, -24(%rbp)	# tmp355, D.31751
	xorl	%eax, %eax	# tmp355
# main.c:270:     if (argc > 8)
	.loc 1 270 8
	cmpl	$8, -180(%rbp)	#, argc
	jle	.L81	#,
# main.c:272:         printf("ERROR: incorrect number of arguments\n");
	.loc 1 272 9
	leaq	.LC3(%rip), %rax	#, tmp184
	movq	%rax, %rdi	# tmp184,
	call	puts@PLT	#
# main.c:273:         print_help_and_exit(argv);
	.loc 1 273 9
	movq	-192(%rbp), %rax	# argv, tmp185
	movq	%rax, %rdi	# tmp185,
	call	print_help_and_exit	#
.L81:
# main.c:276:     L = atoi(argv[1]);
	.loc 1 276 18
	movq	-192(%rbp), %rax	# argv, tmp186
	addq	$8, %rax	#, _1
# main.c:276:     L = atoi(argv[1]);
	.loc 1 276 9
	movq	(%rax), %rax	# *_1, _2
	movq	%rax, %rdi	# _2,
	call	atoi@PLT	#
	movl	%eax, -124(%rbp)	# tmp187, L
# main.c:277:     M = atoi(argv[2]);
	.loc 1 277 18
	movq	-192(%rbp), %rax	# argv, tmp188
	addq	$16, %rax	#, _3
# main.c:277:     M = atoi(argv[2]);
	.loc 1 277 9
	movq	(%rax), %rax	# *_3, _4
	movq	%rax, %rdi	# _4,
	call	atoi@PLT	#
	movl	%eax, -120(%rbp)	# tmp189, M
# main.c:278:     N = atoi(argv[3]);
	.loc 1 278 18
	movq	-192(%rbp), %rax	# argv, tmp190
	addq	$24, %rax	#, _5
# main.c:278:     N = atoi(argv[3]);
	.loc 1 278 9
	movq	(%rax), %rax	# *_5, _6
	movq	%rax, %rdi	# _6,
	call	atoi@PLT	#
	movl	%eax, -116(%rbp)	# tmp191, N
# main.c:279:     seed = atoi(argv[4]);
	.loc 1 279 21
	movq	-192(%rbp), %rax	# argv, tmp192
	addq	$32, %rax	#, _7
# main.c:279:     seed = atoi(argv[4]);
	.loc 1 279 12
	movq	(%rax), %rax	# *_7, _8
	movq	%rax, %rdi	# _8,
	call	atoi@PLT	#
	movl	%eax, -112(%rbp)	# tmp193, seed
# main.c:280:     mode = atoi(argv[5]);
	.loc 1 280 21
	movq	-192(%rbp), %rax	# argv, tmp194
	addq	$40, %rax	#, _9
# main.c:280:     mode = atoi(argv[5]);
	.loc 1 280 12
	movq	(%rax), %rax	# *_9, _10
	movq	%rax, %rdi	# _10,
	call	atoi@PLT	#
	movl	%eax, -108(%rbp)	# tmp195, mode
# main.c:281:     if (mode != 1 && mode != 5)
	.loc 1 281 8
	cmpl	$1, -108(%rbp)	#, mode
	je	.L82	#,
# main.c:281:     if (mode != 1 && mode != 5)
	.loc 1 281 19 discriminator 1
	cmpl	$5, -108(%rbp)	#, mode
	je	.L82	#,
# main.c:282:         ADDIT_ARG = atoi(argv[6]);
	.loc 1 282 30
	movq	-192(%rbp), %rax	# argv, tmp196
	addq	$48, %rax	#, _11
# main.c:282:         ADDIT_ARG = atoi(argv[6]);
	.loc 1 282 21
	movq	(%rax), %rax	# *_11, _12
	movq	%rax, %rdi	# _12,
	call	atoi@PLT	#
	movl	%eax, -172(%rbp)	# tmp197, ADDIT_ARG
.L82:
# main.c:283:     if (mode == 6)
	.loc 1 283 8
	cmpl	$6, -108(%rbp)	#, mode
	jne	.L83	#,
# main.c:284:         ADDIT_ARG2 = atoi(argv[7]);
	.loc 1 284 31
	movq	-192(%rbp), %rax	# argv, tmp198
	addq	$56, %rax	#, _13
# main.c:284:         ADDIT_ARG2 = atoi(argv[7]);
	.loc 1 284 22
	movq	(%rax), %rax	# *_13, _14
	movq	%rax, %rdi	# _14,
	call	atoi@PLT	#
	movl	%eax, -168(%rbp)	# tmp199, ADDIT_ARG2
.L83:
# main.c:285:     srand(seed);
	.loc 1 285 5
	movl	-112(%rbp), %eax	# seed, seed.14_15
	movl	%eax, %edi	# seed.14_15,
	call	srand@PLT	#
# main.c:287:     if (!L || !M || !N)
	.loc 1 287 8
	cmpl	$0, -124(%rbp)	#, L
	je	.L84	#,
# main.c:287:     if (!L || !M || !N)
	.loc 1 287 12 discriminator 1
	cmpl	$0, -120(%rbp)	#, M
	je	.L84	#,
# main.c:287:     if (!L || !M || !N)
	.loc 1 287 18 discriminator 2
	cmpl	$0, -116(%rbp)	#, N
	jne	.L85	#,
.L84:
# main.c:289:         printf("ERROR: invalid arguments\n");
	.loc 1 289 9
	leaq	.LC4(%rip), %rax	#, tmp200
	movq	%rax, %rdi	# tmp200,
	call	puts@PLT	#
# main.c:290:         print_help_and_exit(argv);
	.loc 1 290 9
	movq	-192(%rbp), %rax	# argv, tmp201
	movq	%rax, %rdi	# tmp201,
	call	print_help_and_exit	#
.L85:
# main.c:294:     if (mode == 3)
	.loc 1 294 8
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L86	#,
# main.c:295:         omp_set_num_threads(ADDIT_ARG);
	.loc 1 295 9
	movl	-172(%rbp), %eax	# ADDIT_ARG, tmp202
	movl	%eax, %edi	# tmp202,
	call	omp_set_num_threads@PLT	#
	jmp	.L87	#
.L86:
# main.c:297:         omp_set_num_threads(OMP_THREADS);
	.loc 1 297 9
	movl	$4, %edi	#,
	call	omp_set_num_threads@PLT	#
.L87:
# main.c:303:     A = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	.loc 1 303 9
	movl	-124(%rbp), %eax	# L, tmp203
	cltq
	salq	$3, %rax	#, _17
	movq	%rax, %rsi	# _17,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -104(%rbp)	# tmp204, A
# main.c:304:     if (A == NULL)
	.loc 1 304 8
	cmpq	$0, -104(%rbp)	#, A
	jne	.L88	#,
# main.c:306:         printf("ERROR: cannot allocate memory for matrix A\n");
	.loc 1 306 9
	leaq	.LC5(%rip), %rax	#, tmp205
	movq	%rax, %rdi	# tmp205,
	call	puts@PLT	#
# main.c:307:         return 0;
	.loc 1 307 16
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L88:
.LBB89:
# main.c:309:     for (int i = 0; i < L; i++)
	.loc 1 309 14
	movl	$0, -164(%rbp)	#, i
# main.c:309:     for (int i = 0; i < L; i++)
	.loc 1 309 5
	jmp	.L90	#
.L92:
# main.c:311:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 311 16
	movl	-120(%rbp), %eax	# M, tmp206
	cltq
	salq	$3, %rax	#, _19
# main.c:311:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 311 10
	movl	-164(%rbp), %edx	# i, tmp207
	movslq	%edx, %rdx	# tmp207, _20
	leaq	0(,%rdx,8), %rcx	#, _21
	movq	-104(%rbp), %rdx	# A, tmp208
	leaq	(%rcx,%rdx), %rbx	#, _22
# main.c:311:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 311 16
	movq	%rax, %rsi	# _19,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:311:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	.loc 1 311 14 discriminator 1
	movq	%rax, (%rbx)	# _23, *_22
# main.c:312:         if (A[i] == NULL)
	.loc 1 312 14
	movl	-164(%rbp), %eax	# i, tmp210
	cltq
	leaq	0(,%rax,8), %rdx	#, _25
	movq	-104(%rbp), %rax	# A, tmp211
	addq	%rdx, %rax	# _25, _26
	movq	(%rax), %rax	# *_26, _27
# main.c:312:         if (A[i] == NULL)
	.loc 1 312 12
	testq	%rax, %rax	# _27
	jne	.L91	#,
# main.c:314:             printf("ERROR: cannot allocate memory for matrix A\n");
	.loc 1 314 13
	leaq	.LC5(%rip), %rax	#, tmp212
	movq	%rax, %rdi	# tmp212,
	call	puts@PLT	#
# main.c:315:             return 0;
	.loc 1 315 20
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L91:
# main.c:309:     for (int i = 0; i < L; i++)
	.loc 1 309 29 discriminator 2
	addl	$1, -164(%rbp)	#, i
.L90:
# main.c:309:     for (int i = 0; i < L; i++)
	.loc 1 309 23 discriminator 1
	movl	-164(%rbp), %eax	# i, tmp213
	cmpl	-124(%rbp), %eax	# L, tmp213
	jl	.L92	#,
.LBE89:
# main.c:320:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	.loc 1 320 9
	movl	-120(%rbp), %eax	# M, tmp214
	cltq
	salq	$3, %rax	#, _29
	movq	%rax, %rsi	# _29,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -96(%rbp)	# tmp215, B
# main.c:321:     if (B == NULL)
	.loc 1 321 8
	cmpq	$0, -96(%rbp)	#, B
	jne	.L93	#,
# main.c:323:         printf("ERROR: cannot allocate memory for matrix B\n");
	.loc 1 323 9
	leaq	.LC6(%rip), %rax	#, tmp216
	movq	%rax, %rdi	# tmp216,
	call	puts@PLT	#
# main.c:324:         return 0;
	.loc 1 324 16
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L93:
.LBB90:
# main.c:326:     for (int i = 0; i < M; i++)
	.loc 1 326 14
	movl	$0, -160(%rbp)	#, i
# main.c:326:     for (int i = 0; i < M; i++)
	.loc 1 326 5
	jmp	.L94	#
.L96:
# main.c:328:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 328 16
	movl	-116(%rbp), %eax	# N, tmp217
	cltq
	salq	$3, %rax	#, _31
# main.c:328:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 328 10
	movl	-160(%rbp), %edx	# i, tmp218
	movslq	%edx, %rdx	# tmp218, _32
	leaq	0(,%rdx,8), %rcx	#, _33
	movq	-96(%rbp), %rdx	# B, tmp219
	leaq	(%rcx,%rdx), %rbx	#, _34
# main.c:328:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 328 16
	movq	%rax, %rsi	# _31,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:328:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 328 14 discriminator 1
	movq	%rax, (%rbx)	# _35, *_34
# main.c:329:         if (B[i] == NULL)
	.loc 1 329 14
	movl	-160(%rbp), %eax	# i, tmp221
	cltq
	leaq	0(,%rax,8), %rdx	#, _37
	movq	-96(%rbp), %rax	# B, tmp222
	addq	%rdx, %rax	# _37, _38
	movq	(%rax), %rax	# *_38, _39
# main.c:329:         if (B[i] == NULL)
	.loc 1 329 12
	testq	%rax, %rax	# _39
	jne	.L95	#,
# main.c:331:             printf("ERROR: cannot allocate memory for matrix B\n");
	.loc 1 331 13
	leaq	.LC6(%rip), %rax	#, tmp223
	movq	%rax, %rdi	# tmp223,
	call	puts@PLT	#
# main.c:332:             return 0;
	.loc 1 332 20
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L95:
# main.c:326:     for (int i = 0; i < M; i++)
	.loc 1 326 29 discriminator 2
	addl	$1, -160(%rbp)	#, i
.L94:
# main.c:326:     for (int i = 0; i < M; i++)
	.loc 1 326 23 discriminator 1
	movl	-160(%rbp), %eax	# i, tmp224
	cmpl	-120(%rbp), %eax	# M, tmp224
	jl	.L96	#,
.LBE90:
.LBB91:
# main.c:336:     for (int i = 0; i < L; i++)
	.loc 1 336 14
	movl	$0, -156(%rbp)	#, i
# main.c:336:     for (int i = 0; i < L; i++)
	.loc 1 336 5
	jmp	.L97	#
.L100:
.LBB92:
# main.c:337:         for (int j = 0; j < M; j++)
	.loc 1 337 18
	movl	$0, -152(%rbp)	#, j
# main.c:337:         for (int j = 0; j < M; j++)
	.loc 1 337 9
	jmp	.L98	#
.L99:
# main.c:338:             A[i][j] = drand(MIN, MAX);
	.loc 1 338 14
	movl	-156(%rbp), %eax	# i, tmp225
	cltq
	leaq	0(,%rax,8), %rdx	#, _41
	movq	-104(%rbp), %rax	# A, tmp226
	addq	%rdx, %rax	# _41, _42
	movq	(%rax), %rax	# *_42, _43
# main.c:338:             A[i][j] = drand(MIN, MAX);
	.loc 1 338 17
	movl	-152(%rbp), %edx	# j, tmp227
	movslq	%edx, %rdx	# tmp227, _44
	salq	$3, %rdx	#, _45
	leaq	(%rax,%rdx), %rbx	#, _46
# main.c:338:             A[i][j] = drand(MIN, MAX);
	.loc 1 338 23
	vmovsd	.LC7(%rip), %xmm0	#, tmp228
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp228,
	movq	.LC8(%rip), %rax	#, tmp229
	vmovq	%rax, %xmm0	# tmp229,
	call	drand	#
	vmovq	%xmm0, %rax	#, _47
# main.c:338:             A[i][j] = drand(MIN, MAX);
	.loc 1 338 21 discriminator 1
	movq	%rax, (%rbx)	# _47, *_46
# main.c:337:         for (int j = 0; j < M; j++)
	.loc 1 337 33 discriminator 3
	addl	$1, -152(%rbp)	#, j
.L98:
# main.c:337:         for (int j = 0; j < M; j++)
	.loc 1 337 27 discriminator 1
	movl	-152(%rbp), %eax	# j, tmp230
	cmpl	-120(%rbp), %eax	# M, tmp230
	jl	.L99	#,
.LBE92:
# main.c:336:     for (int i = 0; i < L; i++)
	.loc 1 336 29 discriminator 2
	addl	$1, -156(%rbp)	#, i
.L97:
# main.c:336:     for (int i = 0; i < L; i++)
	.loc 1 336 23 discriminator 1
	movl	-156(%rbp), %eax	# i, tmp231
	cmpl	-124(%rbp), %eax	# L, tmp231
	jl	.L100	#,
.LBE91:
.LBB93:
# main.c:340:     for (int i = 0; i < M; i++)
	.loc 1 340 14
	movl	$0, -148(%rbp)	#, i
# main.c:340:     for (int i = 0; i < M; i++)
	.loc 1 340 5
	jmp	.L101	#
.L104:
.LBB94:
# main.c:341:         for (int j = 0; j < N; j++)
	.loc 1 341 18
	movl	$0, -144(%rbp)	#, j
# main.c:341:         for (int j = 0; j < N; j++)
	.loc 1 341 9
	jmp	.L102	#
.L103:
# main.c:342:             B[i][j] = drand(MIN, MAX);
	.loc 1 342 14
	movl	-148(%rbp), %eax	# i, tmp232
	cltq
	leaq	0(,%rax,8), %rdx	#, _49
	movq	-96(%rbp), %rax	# B, tmp233
	addq	%rdx, %rax	# _49, _50
	movq	(%rax), %rax	# *_50, _51
# main.c:342:             B[i][j] = drand(MIN, MAX);
	.loc 1 342 17
	movl	-144(%rbp), %edx	# j, tmp234
	movslq	%edx, %rdx	# tmp234, _52
	salq	$3, %rdx	#, _53
	leaq	(%rax,%rdx), %rbx	#, _54
# main.c:342:             B[i][j] = drand(MIN, MAX);
	.loc 1 342 23
	vmovsd	.LC7(%rip), %xmm0	#, tmp235
	vmovsd	%xmm0, %xmm0, %xmm1	# tmp235,
	movq	.LC8(%rip), %rax	#, tmp236
	vmovq	%rax, %xmm0	# tmp236,
	call	drand	#
	vmovq	%xmm0, %rax	#, _55
# main.c:342:             B[i][j] = drand(MIN, MAX);
	.loc 1 342 21 discriminator 1
	movq	%rax, (%rbx)	# _55, *_54
# main.c:341:         for (int j = 0; j < N; j++)
	.loc 1 341 33 discriminator 3
	addl	$1, -144(%rbp)	#, j
.L102:
# main.c:341:         for (int j = 0; j < N; j++)
	.loc 1 341 27 discriminator 1
	movl	-144(%rbp), %eax	# j, tmp237
	cmpl	-116(%rbp), %eax	# N, tmp237
	jl	.L103	#,
.LBE94:
# main.c:340:     for (int i = 0; i < M; i++)
	.loc 1 340 29 discriminator 2
	addl	$1, -148(%rbp)	#, i
.L101:
# main.c:340:     for (int i = 0; i < M; i++)
	.loc 1 340 23 discriminator 1
	movl	-148(%rbp), %eax	# i, tmp238
	cmpl	-120(%rbp), %eax	# M, tmp238
	jl	.L104	#,
.LBE93:
# main.c:345:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	.loc 1 345 9
	movl	-124(%rbp), %eax	# L, tmp239
	cltq
	salq	$3, %rax	#, _57
	movq	%rax, %rsi	# _57,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, -88(%rbp)	# tmp240, C
# main.c:346:     if (C == NULL)
	.loc 1 346 8
	cmpq	$0, -88(%rbp)	#, C
	jne	.L105	#,
# main.c:348:         printf("ERROR: cannot allocate memory for matrix C\n");
	.loc 1 348 9
	leaq	.LC9(%rip), %rax	#, tmp241
	movq	%rax, %rdi	# tmp241,
	call	puts@PLT	#
# main.c:349:         return 0;
	.loc 1 349 16
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L105:
.LBB95:
# main.c:351:     for (int i = 0; i < L; i++)
	.loc 1 351 14
	movl	$0, -140(%rbp)	#, i
# main.c:351:     for (int i = 0; i < L; i++)
	.loc 1 351 5
	jmp	.L106	#
.L110:
# main.c:353:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 353 16
	movl	-116(%rbp), %eax	# N, tmp242
	cltq
	salq	$3, %rax	#, _59
# main.c:353:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 353 10
	movl	-140(%rbp), %edx	# i, tmp243
	movslq	%edx, %rdx	# tmp243, _60
	leaq	0(,%rdx,8), %rcx	#, _61
	movq	-88(%rbp), %rdx	# C, tmp244
	leaq	(%rcx,%rdx), %rbx	#, _62
# main.c:353:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 353 16
	movq	%rax, %rsi	# _59,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:353:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	.loc 1 353 14 discriminator 1
	movq	%rax, (%rbx)	# _63, *_62
# main.c:354:         if (C[i] == NULL)
	.loc 1 354 14
	movl	-140(%rbp), %eax	# i, tmp246
	cltq
	leaq	0(,%rax,8), %rdx	#, _65
	movq	-88(%rbp), %rax	# C, tmp247
	addq	%rdx, %rax	# _65, _66
	movq	(%rax), %rax	# *_66, _67
# main.c:354:         if (C[i] == NULL)
	.loc 1 354 12
	testq	%rax, %rax	# _67
	jne	.L107	#,
# main.c:356:             printf("ERROR: cannot allocate memory for matrix C\n");
	.loc 1 356 13
	leaq	.LC9(%rip), %rax	#, tmp248
	movq	%rax, %rdi	# tmp248,
	call	puts@PLT	#
# main.c:357:             return 0;
	.loc 1 357 20
	movl	$0, %eax	#, _113
	jmp	.L127	#
.L107:
.LBB96:
# main.c:360:         for (int j = 0; j < N; j++)
	.loc 1 360 18
	movl	$0, -136(%rbp)	#, j
# main.c:360:         for (int j = 0; j < N; j++)
	.loc 1 360 9
	jmp	.L108	#
.L109:
# main.c:362:             C[i][j] = 0.0;
	.loc 1 362 14
	movl	-140(%rbp), %eax	# i, tmp249
	cltq
	leaq	0(,%rax,8), %rdx	#, _69
	movq	-88(%rbp), %rax	# C, tmp250
	addq	%rdx, %rax	# _69, _70
	movq	(%rax), %rax	# *_70, _71
# main.c:362:             C[i][j] = 0.0;
	.loc 1 362 17
	movl	-136(%rbp), %edx	# j, tmp251
	movslq	%edx, %rdx	# tmp251, _72
	salq	$3, %rdx	#, _73
	addq	%rdx, %rax	# _73, _74
# main.c:362:             C[i][j] = 0.0;
	.loc 1 362 21
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp252
	vmovsd	%xmm0, (%rax)	# tmp252, *_74
# main.c:360:         for (int j = 0; j < N; j++)
	.loc 1 360 33 discriminator 3
	addl	$1, -136(%rbp)	#, j
.L108:
# main.c:360:         for (int j = 0; j < N; j++)
	.loc 1 360 27 discriminator 1
	movl	-136(%rbp), %eax	# j, tmp253
	cmpl	-116(%rbp), %eax	# N, tmp253
	jl	.L109	#,
.LBE96:
# main.c:351:     for (int i = 0; i < L; i++)
	.loc 1 351 29 discriminator 2
	addl	$1, -140(%rbp)	#, i
.L106:
# main.c:351:     for (int i = 0; i < L; i++)
	.loc 1 351 23 discriminator 1
	movl	-140(%rbp), %eax	# i, tmp254
	cmpl	-124(%rbp), %eax	# L, tmp254
	jl	.L110	#,
.LBE95:
# main.c:368:         printf("\nMATRIX A:\n");
	.loc 1 368 9
	leaq	.LC10(%rip), %rax	#, tmp255
	movq	%rax, %rdi	# tmp255,
	call	puts@PLT	#
# main.c:369:         print_matrix(A, L, M);
	.loc 1 369 9
	movl	-120(%rbp), %edx	# M, tmp256
	movl	-124(%rbp), %ecx	# L, tmp257
	movq	-104(%rbp), %rax	# A, tmp258
	movl	%ecx, %esi	# tmp257,
	movq	%rax, %rdi	# tmp258,
	call	print_matrix	#
# main.c:371:         printf("\nMATRIX B:\n");
	.loc 1 371 9
	leaq	.LC11(%rip), %rax	#, tmp259
	movq	%rax, %rdi	# tmp259,
	call	puts@PLT	#
# main.c:372:         print_matrix(B, M, N);
	.loc 1 372 9
	movl	-116(%rbp), %edx	# N, tmp260
	movl	-120(%rbp), %ecx	# M, tmp261
	movq	-96(%rbp), %rax	# B, tmp262
	movl	%ecx, %esi	# tmp261,
	movq	%rax, %rdi	# tmp262,
	call	print_matrix	#
# main.c:374:         printf("\nMATRIX C (init to zero):\n");
	.loc 1 374 9
	leaq	.LC12(%rip), %rax	#, tmp263
	movq	%rax, %rdi	# tmp263,
	call	puts@PLT	#
# main.c:375:         print_matrix(C, L, N);
	.loc 1 375 9
	movl	-116(%rbp), %edx	# N, tmp264
	movl	-124(%rbp), %ecx	# L, tmp265
	movq	-88(%rbp), %rax	# C, tmp266
	movl	%ecx, %esi	# tmp265,
	movq	%rax, %rdi	# tmp266,
	call	print_matrix	#
# main.c:381:     gettimeofday(&start, NULL);
	.loc 1 381 5
	leaq	-80(%rbp), %rax	#, tmp267
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp267,
	call	gettimeofday@PLT	#
# main.c:384:     if (mode == 1 || mode == 0)
	.loc 1 384 8
	cmpl	$1, -108(%rbp)	#, mode
	je	.L111	#,
# main.c:384:     if (mode == 1 || mode == 0)
	.loc 1 384 19 discriminator 1
	cmpl	$0, -108(%rbp)	#, mode
	jne	.L112	#,
.L111:
# main.c:385:         matrix_multiply(A, B, C, L, M, N);
	.loc 1 385 9
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
	jmp	.L113	#
.L112:
# main.c:386:     else if (mode == 2)
	.loc 1 386 13
	cmpl	$2, -108(%rbp)	#, mode
	jne	.L114	#,
# main.c:387:         unrolled_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG);
	.loc 1 387 9
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
	jmp	.L113	#
.L114:
# main.c:388:     else if (mode == 3)
	.loc 1 388 13
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L115	#,
# main.c:389:         multicore_matrix_multiply(A, B, C, L, M, N);
	.loc 1 389 9
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
	jmp	.L113	#
.L115:
# main.c:390:     else if (mode == 4)
	.loc 1 390 13
	cmpl	$4, -108(%rbp)	#, mode
	jne	.L116	#,
# main.c:391:         blocked_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG);
	.loc 1 391 9
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
	jmp	.L113	#
.L116:
# main.c:392:     else if (mode == 5)
	.loc 1 392 13
	cmpl	$5, -108(%rbp)	#, mode
	jne	.L117	#,
# main.c:393:         subword_parallelism_matrix_multiply(A, B, C, L, M, N);
	.loc 1 393 9
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
	jmp	.L113	#
.L117:
# main.c:394:     else if (mode == 6)
	.loc 1 394 13
	cmpl	$6, -108(%rbp)	#, mode
	jne	.L113	#,
# main.c:395:         custom_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG, ADDIT_ARG2);
	.loc 1 395 9
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
.L113:
# main.c:397:     gettimeofday(&stop, NULL);
	.loc 1 397 5
	leaq	-64(%rbp), %rax	#, tmp308
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp308,
	call	gettimeofday@PLT	#
# main.c:398:     timersub(&stop, &start, &total);
	.loc 1 398 5
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
	jns	.L118	#,
# main.c:398:     timersub(&stop, &start, &total);
	.loc 1 398 5 is_stmt 0 discriminator 1
	movq	-48(%rbp), %rax	# total.tv_sec, _82
	subq	$1, %rax	#, _83
	movq	%rax, -48(%rbp)	# _83, total.tv_sec
	movq	-40(%rbp), %rax	# total.tv_usec, _84
	addq	$1000000, %rax	#, _85
	movq	%rax, -40(%rbp)	# _85, total.tv_usec
.L118:
# main.c:405:         printf("\nOutput C:\n");
	.loc 1 405 9 is_stmt 1
	leaq	.LC13(%rip), %rax	#, tmp309
	movq	%rax, %rdi	# tmp309,
	call	puts@PLT	#
# main.c:406:         print_matrix(C, L, N);
	.loc 1 406 9
	movl	-116(%rbp), %edx	# N, tmp310
	movl	-124(%rbp), %ecx	# L, tmp311
	movq	-88(%rbp), %rax	# C, tmp312
	movl	%ecx, %esi	# tmp311,
	movq	%rax, %rdi	# tmp312,
	call	print_matrix	#
.LBB97:
# main.c:412:         for (int i = 0; i < L; i++)
	.loc 1 412 18
	movl	$0, -132(%rbp)	#, i
# main.c:412:         for (int i = 0; i < L; i++)
	.loc 1 412 9
	jmp	.L119	#
.L122:
.LBB98:
# main.c:414:             for (int j = 0; j < N; j++)
	.loc 1 414 22
	movl	$0, -128(%rbp)	#, j
# main.c:414:             for (int j = 0; j < N; j++)
	.loc 1 414 13
	jmp	.L120	#
.L121:
# main.c:416:                 C[i][j] = 0.0;
	.loc 1 416 18
	movl	-132(%rbp), %eax	# i, tmp313
	cltq
	leaq	0(,%rax,8), %rdx	#, _87
	movq	-88(%rbp), %rax	# C, tmp314
	addq	%rdx, %rax	# _87, _88
	movq	(%rax), %rax	# *_88, _89
# main.c:416:                 C[i][j] = 0.0;
	.loc 1 416 21
	movl	-128(%rbp), %edx	# j, tmp315
	movslq	%edx, %rdx	# tmp315, _90
	salq	$3, %rdx	#, _91
	addq	%rdx, %rax	# _91, _92
# main.c:416:                 C[i][j] = 0.0;
	.loc 1 416 25
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp316
	vmovsd	%xmm0, (%rax)	# tmp316, *_92
# main.c:414:             for (int j = 0; j < N; j++)
	.loc 1 414 37 discriminator 3
	addl	$1, -128(%rbp)	#, j
.L120:
# main.c:414:             for (int j = 0; j < N; j++)
	.loc 1 414 31 discriminator 1
	movl	-128(%rbp), %eax	# j, tmp317
	cmpl	-116(%rbp), %eax	# N, tmp317
	jl	.L121	#,
.LBE98:
# main.c:412:         for (int i = 0; i < L; i++)
	.loc 1 412 33 discriminator 2
	addl	$1, -132(%rbp)	#, i
.L119:
# main.c:412:         for (int i = 0; i < L; i++)
	.loc 1 412 27 discriminator 1
	movl	-132(%rbp), %eax	# i, tmp318
	cmpl	-124(%rbp), %eax	# L, tmp318
	jl	.L122	#,
.LBE97:
# main.c:419:         matrix_multiply(A, B, C, L, M, N);
	.loc 1 419 9
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
# main.c:420:         printf("\nBaseline Output C from matrix_multiply():\n");
	.loc 1 420 9
	leaq	.LC14(%rip), %rax	#, tmp325
	movq	%rax, %rdi	# tmp325,
	call	puts@PLT	#
# main.c:421:         print_matrix(C, L, N);
	.loc 1 421 9
	movl	-116(%rbp), %edx	# N, tmp326
	movl	-124(%rbp), %ecx	# L, tmp327
	movq	-88(%rbp), %rax	# C, tmp328
	movl	%ecx, %esi	# tmp327,
	movq	%rax, %rdi	# tmp328,
	call	print_matrix	#
# main.c:422:         printf("\n");
	.loc 1 422 9
	movl	$10, %edi	#,
	call	putchar@PLT	#
# main.c:426:     if (mode == 2)
	.loc 1 426 8
	cmpl	$2, -108(%rbp)	#, mode
	jne	.L123	#,
# main.c:427:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, UNROLL: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 427 9
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
	jmp	.L124	#
.L123:
# main.c:428:     else if (mode == 3)
	.loc 1 428 13
	cmpl	$3, -108(%rbp)	#, mode
	jne	.L125	#,
# main.c:429:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, THREADS: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 429 9
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
	jmp	.L124	#
.L125:
# main.c:430:     else if (mode == 4)
	.loc 1 430 13
	cmpl	$4, -108(%rbp)	#, mode
	jne	.L126	#,
# main.c:431:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, BLOCK SIZE: %u\n", L, M, N, total.tv_sec, total.tv_usec, ADDIT_ARG);
	.loc 1 431 9
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
	jmp	.L124	#
.L126:
# main.c:433:         printf("L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld\n", L, M, N, total.tv_sec, total.tv_usec);
	.loc 1 433 9
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
.L124:
# main.c:436:     free_matrices(A, B, C, L, M, N);
	.loc 1 436 5
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
# main.c:438:     return 0;
	.loc 1 438 12
	movl	$0, %eax	#, _113
.L127:
# main.c:439: }
	.loc 1 439 1
	movq	-24(%rbp), %rdx	# D.31751, tmp356
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp356
	je	.L128	#,
	call	__stack_chk_fail@PLT	#
.L128:
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
.LBB99:
.LBB100:
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
	jl	.L130	#,
.L137:
	imull	%ecx, %esi	# q.6_1, _20
	movl	%esi, %edx	# _20, _25
	addl	%edx, %eax	# _25, _26
	leal	(%rax,%rcx), %edx	#, _27
	cmpl	%edx, %eax	# _27, _26
	jge	.L138	#,
	movl	%eax, -64(%rbp)	# _26, i
.L133:
.LBB101:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 18
	movl	$0, -60(%rbp)	#, j
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 9
	nop	
.L135:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 27 discriminator 1
	movl	-60(%rbp), %eax	# j, tmp139
	cmpl	-52(%rbp), %eax	# N, tmp139
	jl	.L132	#,
	addl	$1, -64(%rbp)	#, i
	cmpl	%edx, -64(%rbp)	# _27, i
	jl	.L133	#,
.LBE101:
.LBE100:
.LBE99:
# main.c:108: #pragma omp parallel for
	.loc 1 108 9
	jmp	.L138	#
.L132:
.LBB106:
.LBB105:
.LBB104:
.LBB102:
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 22
	movl	$0, -56(%rbp)	#, k
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 13
	nop	
.L136:
# main.c:116:             for (int k = 0; k < M; k++)
	.loc 1 116 31 discriminator 1
	movl	-56(%rbp), %eax	# k, tmp140
	cmpl	-48(%rbp), %eax	# M, tmp140
	jl	.L134	#,
.LBE102:
# main.c:113:         for (int j = 0; j < N; j++)
	.loc 1 113 33 discriminator 2
	addl	$1, -60(%rbp)	#, j
	jmp	.L135	#
.L134:
.LBB103:
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
	jmp	.L136	#
.L130:
	movl	$0, %eax	#, tt.7_2
	addl	$1, %ecx	#, q.6_1
	jmp	.L137	#
.L138:
.LBE103:
.LBE104:
.LBE105:
.LBE106:
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
	.loc 1 221 9
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
# main.c:221: #pragma omp parallel for
	.loc 1 221 9 discriminator 1
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
.LBB107:
.LBB108:
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
	jl	.L140	#,
.L147:
	imull	%ecx, %edi	# q.12_1, _22
	movl	%edi, %edx	# _22, _30
	addl	%edx, %eax	# _30, _31
	leal	(%rax,%rcx), %edx	#, _32
	cmpl	%edx, %eax	# _32, _31
	jge	.L148	#,
	imull	%ebx, %eax	# block_size.10_20, tmp115
	movl	%eax, -84(%rbp)	# tmp115, sj
	imull	%ebx, %edx	# block_size.10_20, _32
	movl	%edx, %r12d	# _32, _34
.L143:
.LBB109:
# main.c:226:         for (int si = 0; si < N; si += block_size)
	.loc 1 226 18
	movl	$0, -80(%rbp)	#, si
# main.c:226:         for (int si = 0; si < N; si += block_size)
	.loc 1 226 9
	nop	
.L145:
# main.c:226:         for (int si = 0; si < N; si += block_size)
	.loc 1 226 29 discriminator 1
	movl	-80(%rbp), %eax	# si, tmp116
	cmpl	-68(%rbp), %eax	# N, tmp116
	jl	.L142	#,
	addl	%ebx, -84(%rbp)	# block_size.10_20, sj
	cmpl	%r12d, -84(%rbp)	# _34, sj
	jl	.L143	#,
.LBE109:
.LBE108:
.LBE107:
# main.c:221: #pragma omp parallel for
	.loc 1 221 9
	jmp	.L148	#
.L142:
.LBB114:
.LBB113:
.LBB112:
.LBB110:
# main.c:229:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 229 22
	movl	$0, -76(%rbp)	#, sk
# main.c:229:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 229 13
	nop	
.L146:
# main.c:229:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 229 33 discriminator 1
	movl	-76(%rbp), %eax	# sk, tmp117
	cmpl	-64(%rbp), %eax	# M, tmp117
	jl	.L144	#,
.LBE110:
# main.c:226:         for (int si = 0; si < N; si += block_size)
	.loc 1 226 37 discriminator 2
	movl	-72(%rbp), %eax	# block_size, tmp118
	addl	%eax, -80(%rbp)	# tmp118, si
	jmp	.L145	#
.L144:
.LBB111:
# main.c:231:                 do_block_custom(si, sj, sk, A, B, C, block_size);
	.loc 1 231 17
	movq	-56(%rbp), %r9	# C, tmp119
	movq	-48(%rbp), %r8	# B, tmp120
	movq	-40(%rbp), %rcx	# A, tmp121
	movl	-76(%rbp), %edx	# sk, tmp122
	movl	-84(%rbp), %esi	# sj, tmp123
	movl	-80(%rbp), %eax	# si, tmp124
	subq	$8, %rsp	#,
	movl	-72(%rbp), %edi	# block_size, tmp125
	pushq	%rdi	# tmp125
	movl	%eax, %edi	# tmp124,
	call	do_block_custom	#
	addq	$16, %rsp	#,
# main.c:229:             for (int sk = 0; sk < M; sk += block_size)
	.loc 1 229 41 discriminator 3
	movl	-72(%rbp), %eax	# block_size, tmp126
	addl	%eax, -76(%rbp)	# tmp126, sk
	jmp	.L146	#
.L140:
	movl	$0, %eax	#, tt.13_2
	addl	$1, %ecx	#, q.12_1
	jmp	.L147	#
.L148:
.LBE111:
.LBE112:
.LBE113:
.LBE114:
# main.c:221: #pragma omp parallel for
	.loc 1 221 9
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
	.long	0x1140
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x24
	.long	.LASF70
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x11
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
	.uleb128 0x25
	.byte	0x8
	.uleb128 0x12
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
	.uleb128 0x26
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x11
	.long	.LASF10
	.byte	0x4
	.byte	0xa0
	.byte	0x1a
	.long	0x72
	.uleb128 0x11
	.long	.LASF11
	.byte	0x4
	.byte	0xa2
	.byte	0x1f
	.long	0x72
	.uleb128 0xc
	.long	0x96
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x18
	.long	0x96
	.uleb128 0xc
	.long	0x9d
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF13
	.uleb128 0x27
	.long	.LASF71
	.byte	0x10
	.byte	0x5
	.byte	0x8
	.byte	0x8
	.long	0xd6
	.uleb128 0x16
	.long	.LASF14
	.byte	0x5
	.byte	0xe
	.byte	0xc
	.long	0x79
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
	.long	0xeb
	.uleb128 0x11
	.long	.LASF20
	.byte	0x2
	.byte	0x29
	.byte	0x10
	.long	0x103
	.uleb128 0x19
	.long	0xeb
	.long	0x10e
	.uleb128 0x1a
	.byte	0
	.uleb128 0x11
	.long	.LASF21
	.byte	0x2
	.byte	0x3b
	.byte	0x10
	.long	0x11a
	.uleb128 0x19
	.long	0xeb
	.long	0x125
	.uleb128 0x1a
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.long	.LASF22
	.uleb128 0x6
	.byte	0x2
	.byte	0x4
	.long	.LASF23
	.uleb128 0x1b
	.long	.LASF24
	.byte	0x6
	.byte	0x43
	.long	0x6b
	.long	0x14d
	.uleb128 0x8
	.long	0x152
	.uleb128 0x8
	.long	0x4a
	.byte	0
	.uleb128 0xc
	.long	0xae
	.uleb128 0x12
	.long	0x14d
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x7
	.value	0x2d4
	.byte	0xe
	.long	0x48
	.long	0x173
	.uleb128 0x8
	.long	0x2e
	.uleb128 0x8
	.long	0x2e
	.byte	0
	.uleb128 0x1d
	.long	.LASF27
	.value	0x23f
	.long	0x184
	.uleb128 0x8
	.long	0x41
	.byte	0
	.uleb128 0x1b
	.long	.LASF26
	.byte	0x7
	.byte	0x69
	.long	0x6b
	.long	0x199
	.uleb128 0x8
	.long	0xa2
	.byte	0
	.uleb128 0x1d
	.long	.LASF28
	.value	0x2af
	.long	0x1aa
	.uleb128 0x8
	.long	0x48
	.byte	0
	.uleb128 0x28
	.long	.LASF29
	.byte	0x8
	.byte	0xd5
	.byte	0xd
	.long	0x1bc
	.uleb128 0x8
	.long	0x6b
	.byte	0
	.uleb128 0xd
	.long	.LASF32
	.byte	0xda
	.quad	.LFB5049
	.quad	.LFE5049-.LFB5049
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fb
	.uleb128 0x1
	.string	"A"
	.byte	0xda
	.byte	0x26
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0xda
	.byte	0x32
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0xda
	.byte	0x3e
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"L"
	.byte	0xda
	.byte	0x45
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x1
	.string	"M"
	.byte	0xda
	.byte	0x4c
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.string	"N"
	.byte	0xda
	.byte	0x53
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xa
	.long	.LASF30
	.byte	0xda
	.byte	0x5a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.long	.LASF31
	.byte	0xda
	.byte	0x6a
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1e
	.long	.LASF34
	.quad	.LFB5053
	.quad	.LFE5053-.LFB5053
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	0x359
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2
	.string	"A"
	.byte	0xda
	.byte	0x26
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2
	.string	"B"
	.byte	0xda
	.byte	0x32
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2
	.string	"C"
	.byte	0xda
	.byte	0x3e
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2
	.string	"L"
	.byte	0xda
	.byte	0x45
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2
	.string	"M"
	.byte	0xda
	.byte	0x4c
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2
	.string	"N"
	.byte	0xda
	.byte	0x53
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.long	.LASF30
	.byte	0xda
	.byte	0x5a
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xf
	.long	.LLRL2
	.uleb128 0x2
	.string	"sj"
	.byte	0xdf
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0xf
	.long	.LLRL2
	.uleb128 0x2
	.string	"si"
	.byte	0xe2
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xf
	.long	.LLRL3
	.uleb128 0x2
	.string	"sk"
	.byte	0xe5
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
	.uleb128 0xc
	.long	0x300
	.uleb128 0xc
	.long	0xeb
	.uleb128 0x20
	.long	0x354
	.uleb128 0x7
	.string	"A"
	.byte	0xda
	.byte	0x26
	.long	0x2fb
	.byte	0
	.uleb128 0x7
	.string	"B"
	.byte	0xda
	.byte	0x32
	.long	0x2fb
	.byte	0x8
	.uleb128 0x7
	.string	"C"
	.byte	0xda
	.byte	0x3e
	.long	0x2fb
	.byte	0x10
	.uleb128 0x7
	.string	"L"
	.byte	0xda
	.byte	0x45
	.long	0x6b
	.byte	0x18
	.uleb128 0x7
	.string	"M"
	.byte	0xda
	.byte	0x4c
	.long	0x6b
	.byte	0x1c
	.uleb128 0x7
	.string	"N"
	.byte	0xda
	.byte	0x53
	.long	0x6b
	.byte	0x20
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0xda
	.byte	0x5a
	.long	0x6b
	.byte	0x24
	.byte	0
	.uleb128 0x21
	.long	0x305
	.uleb128 0x12
	.long	0x354
	.uleb128 0xd
	.long	.LASF33
	.byte	0x6a
	.quad	.LFB5044
	.quad	.LFE5044-.LFB5044
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c
	.uleb128 0x1
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x2fb
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
	.uleb128 0x1e
	.long	.LASF35
	.quad	.LFB5052
	.quad	.LFE5052-.LFB5052
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1f
	.long	0x4b3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x2fb
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
	.uleb128 0xf
	.long	.LLRL0
	.uleb128 0x2
	.string	"i"
	.byte	0x6e
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xf
	.long	.LLRL0
	.uleb128 0x2
	.string	"j"
	.byte	0x71
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xf
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
	.uleb128 0x20
	.long	0x4ae
	.uleb128 0x7
	.string	"A"
	.byte	0x6a
	.byte	0x29
	.long	0x2fb
	.byte	0
	.uleb128 0x7
	.string	"B"
	.byte	0x6a
	.byte	0x35
	.long	0x2fb
	.byte	0x8
	.uleb128 0x7
	.string	"C"
	.byte	0x6a
	.byte	0x41
	.long	0x2fb
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
	.uleb128 0x21
	.long	0x46c
	.uleb128 0x12
	.long	0x4ae
	.uleb128 0x29
	.long	.LASF72
	.byte	0x7
	.value	0x23d
	.byte	0xc
	.long	0x6b
	.uleb128 0x2a
	.long	.LASF36
	.byte	0x7
	.value	0x2f4
	.byte	0xd
	.long	0x4d8
	.uleb128 0x8
	.long	0x6b
	.byte	0
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x9
	.value	0x16b
	.byte	0xc
	.long	0x6b
	.long	0x4f0
	.uleb128 0x8
	.long	0xa2
	.uleb128 0x2b
	.byte	0
	.uleb128 0x2c
	.long	.LASF58
	.byte	0x1
	.value	0x103
	.byte	0x5
	.long	0x6b
	.quad	.LFB5051
	.quad	.LFE5051-.LFB5051
	.uleb128 0x1
	.byte	0x9c
	.long	0x747
	.uleb128 0x22
	.long	.LASF38
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x22
	.long	.LASF39
	.byte	0x1b
	.long	0x747
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x5
	.string	"L"
	.value	0x109
	.byte	0x9
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x5
	.string	"M"
	.value	0x109
	.byte	0xc
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x5
	.string	"N"
	.value	0x109
	.byte	0xf
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0xe
	.long	.LASF40
	.value	0x109
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xe
	.long	.LASF41
	.value	0x109
	.byte	0x18
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0xe
	.long	.LASF42
	.value	0x109
	.byte	0x23
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0xe
	.long	.LASF43
	.value	0x10a
	.byte	0x9
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x5
	.string	"A"
	.value	0x10b
	.byte	0xe
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x5
	.string	"B"
	.value	0x10b
	.byte	0x13
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x5
	.string	"C"
	.value	0x10b
	.byte	0x18
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0xe
	.long	.LASF44
	.value	0x10c
	.byte	0x14
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xe
	.long	.LASF45
	.value	0x10c
	.byte	0x1b
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.long	.LASF46
	.value	0x10c
	.byte	0x21
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.long	0x616
	.uleb128 0x5
	.string	"i"
	.value	0x135
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.byte	0
	.uleb128 0x9
	.quad	.LBB90
	.quad	.LBE90-.LBB90
	.long	0x63a
	.uleb128 0x5
	.string	"i"
	.value	0x146
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.byte	0
	.uleb128 0x9
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.long	0x67e
	.uleb128 0x5
	.string	"i"
	.value	0x150
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x3
	.quad	.LBB92
	.quad	.LBE92-.LBB92
	.uleb128 0x5
	.string	"j"
	.value	0x151
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.long	0x6c2
	.uleb128 0x5
	.string	"i"
	.value	0x154
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x3
	.quad	.LBB94
	.quad	.LBE94-.LBB94
	.uleb128 0x5
	.string	"j"
	.value	0x155
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.uleb128 0x9
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.long	0x706
	.uleb128 0x5
	.string	"i"
	.value	0x15f
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x3
	.quad	.LBB96
	.quad	.LBE96-.LBB96
	.uleb128 0x5
	.string	"j"
	.value	0x168
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.byte	0
	.byte	0
	.uleb128 0x3
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.uleb128 0x5
	.string	"i"
	.value	0x19c
	.byte	0x12
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x3
	.quad	.LBB98
	.quad	.LBE98-.LBB98
	.uleb128 0x5
	.string	"j"
	.value	0x19e
	.byte	0x16
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x91
	.uleb128 0xd
	.long	.LASF47
	.byte	0xf3
	.quad	.LFB5050
	.quad	.LFE5050-.LFB5050
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f2
	.uleb128 0x1
	.string	"A"
	.byte	0xf3
	.byte	0x1d
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0xf3
	.byte	0x29
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"C"
	.byte	0xf3
	.byte	0x35
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"L"
	.byte	0xf3
	.byte	0x3c
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"M"
	.byte	0xf3
	.byte	0x43
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"N"
	.byte	0xf3
	.byte	0x4a
	.long	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x9
	.quad	.LBB87
	.quad	.LBE87-.LBB87
	.long	0x7d3
	.uleb128 0x2
	.string	"i"
	.byte	0xf5
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3
	.quad	.LBB88
	.quad	.LBE88-.LBB88
	.uleb128 0x2
	.string	"i"
	.byte	0xfa
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF48
	.byte	0xc1
	.quad	.LFB5048
	.quad	.LFE5048-.LFB5048
	.uleb128 0x1
	.byte	0x9c
	.long	0x9d7
	.uleb128 0x1
	.string	"si"
	.byte	0xc1
	.byte	0x1a
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -76
	.uleb128 0x1
	.string	"sj"
	.byte	0xc1
	.byte	0x22
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -80
	.uleb128 0x1
	.string	"sk"
	.byte	0xc1
	.byte	0x2a
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -84
	.uleb128 0x1
	.string	"A"
	.byte	0xc1
	.byte	0x37
	.long	0x2fb
	.uleb128 0x3
	.byte	0x77
	.sleb128 -96
	.uleb128 0x1
	.string	"B"
	.byte	0xc1
	.byte	0x43
	.long	0x2fb
	.uleb128 0x3
	.byte	0x77
	.sleb128 -104
	.uleb128 0x1
	.string	"C"
	.byte	0xc1
	.byte	0x4f
	.long	0x2fb
	.uleb128 0x3
	.byte	0x77
	.sleb128 -112
	.uleb128 0xa
	.long	.LASF30
	.byte	0xc1
	.byte	0x56
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB70
	.quad	.LBE70-.LBB70
	.uleb128 0x2
	.string	"i"
	.byte	0xc3
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -68
	.uleb128 0x3
	.quad	.LBB71
	.quad	.LBE71-.LBB71
	.uleb128 0x2
	.string	"j"
	.byte	0xc5
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.uleb128 0x3
	.quad	.LBB72
	.quad	.LBE72-.LBB72
	.uleb128 0x2
	.string	"c0"
	.byte	0xc7
	.byte	0x15
	.long	0x10e
	.uleb128 0x2
	.byte	0x77
	.sleb128 -24
	.uleb128 0x9
	.quad	.LBB75
	.quad	.LBE75-.LBB75
	.long	0x986
	.uleb128 0x2
	.string	"k"
	.byte	0xc8
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -60
	.uleb128 0xb
	.long	0x10db
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0xcb
	.byte	0x16
	.long	0x90b
	.uleb128 0x4
	.long	0x10ea
	.uleb128 0x2
	.byte	0x77
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.long	0x10ba
	.quad	.LBB78
	.quad	.LBE78-.LBB78
	.byte	0xcb
	.byte	0x16
	.long	0x92f
	.uleb128 0x4
	.long	0x10c9
	.uleb128 0x2
	.byte	0x77
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0x10f7
	.quad	.LBB80
	.quad	.LBE80-.LBB80
	.byte	0xcb
	.byte	0x16
	.long	0x95d
	.uleb128 0x4
	.long	0x1112
	.uleb128 0x3
	.byte	0x77
	.sleb128 104
	.uleb128 0x4
	.long	0x1106
	.uleb128 0x3
	.byte	0x77
	.sleb128 72
	.byte	0
	.uleb128 0x15
	.long	0x111f
	.quad	.LBB82
	.quad	.LBE82-.LBB82
	.byte	0xcb
	.byte	0x16
	.uleb128 0x4
	.long	0x1137
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.long	0x112c
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x10ba
	.quad	.LBB73
	.quad	.LBE73-.LBB73
	.byte	0xc7
	.byte	0x1a
	.long	0x9aa
	.uleb128 0x4
	.long	0x10c9
	.uleb128 0x2
	.byte	0x77
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.long	0x1093
	.quad	.LBB84
	.quad	.LBE84-.LBB84
	.byte	0xcf
	.byte	0xd
	.uleb128 0x4
	.long	0x10ad
	.uleb128 0x3
	.byte	0x77
	.sleb128 136
	.uleb128 0x4
	.long	0x10a1
	.uleb128 0x2
	.byte	0x77
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF49
	.byte	0xa9
	.quad	.LFB5047
	.quad	.LFE5047-.LFB5047
	.uleb128 0x1
	.byte	0x9c
	.long	0xbab
	.uleb128 0x1
	.string	"A"
	.byte	0xa9
	.byte	0x33
	.long	0x2fb
	.uleb128 0x3
	.byte	0x77
	.sleb128 -80
	.uleb128 0x1
	.string	"B"
	.byte	0xa9
	.byte	0x3f
	.long	0x2fb
	.uleb128 0x3
	.byte	0x77
	.sleb128 -88
	.uleb128 0x1
	.string	"C"
	.byte	0xa9
	.byte	0x4b
	.long	0x2fb
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
	.quad	.LBB54
	.quad	.LBE54-.LBB54
	.uleb128 0x2
	.string	"i"
	.byte	0xac
	.byte	0xe
	.long	0x6b
	.uleb128 0x3
	.byte	0x77
	.sleb128 -68
	.uleb128 0x3
	.quad	.LBB55
	.quad	.LBE55-.LBB55
	.uleb128 0x2
	.string	"j"
	.byte	0xaf
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -64
	.uleb128 0x3
	.quad	.LBB56
	.quad	.LBE56-.LBB56
	.uleb128 0x2
	.string	"c0"
	.byte	0xb2
	.byte	0x15
	.long	0x10e
	.uleb128 0x2
	.byte	0x77
	.sleb128 -24
	.uleb128 0x9
	.quad	.LBB59
	.quad	.LBE59-.LBB59
	.long	0xb5a
	.uleb128 0x2
	.string	"k"
	.byte	0xb4
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x77
	.sleb128 -60
	.uleb128 0xb
	.long	0x10db
	.quad	.LBB60
	.quad	.LBE60-.LBB60
	.byte	0xb7
	.byte	0x16
	.long	0xadf
	.uleb128 0x4
	.long	0x10ea
	.uleb128 0x2
	.byte	0x77
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.long	0x10ba
	.quad	.LBB62
	.quad	.LBE62-.LBB62
	.byte	0xb7
	.byte	0x16
	.long	0xb03
	.uleb128 0x4
	.long	0x10c9
	.uleb128 0x2
	.byte	0x77
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0x10f7
	.quad	.LBB64
	.quad	.LBE64-.LBB64
	.byte	0xb7
	.byte	0x16
	.long	0xb31
	.uleb128 0x4
	.long	0x1112
	.uleb128 0x3
	.byte	0x77
	.sleb128 104
	.uleb128 0x4
	.long	0x1106
	.uleb128 0x3
	.byte	0x77
	.sleb128 72
	.byte	0
	.uleb128 0x15
	.long	0x111f
	.quad	.LBB66
	.quad	.LBE66-.LBB66
	.byte	0xb7
	.byte	0x16
	.uleb128 0x4
	.long	0x1137
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x4
	.long	0x112c
	.uleb128 0x2
	.byte	0x77
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x10ba
	.quad	.LBB57
	.quad	.LBE57-.LBB57
	.byte	0xb2
	.byte	0x1a
	.long	0xb7e
	.uleb128 0x4
	.long	0x10c9
	.uleb128 0x2
	.byte	0x77
	.sleb128 -56
	.byte	0
	.uleb128 0x15
	.long	0x1093
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0xbc
	.byte	0xd
	.uleb128 0x4
	.long	0x10ad
	.uleb128 0x3
	.byte	0x77
	.sleb128 136
	.uleb128 0x4
	.long	0x10a1
	.uleb128 0x2
	.byte	0x77
	.sleb128 -32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x93
	.quad	.LFB5046
	.quad	.LFE5046-.LFB5046
	.uleb128 0x1
	.byte	0x9c
	.long	0xc7c
	.uleb128 0x1
	.string	"A"
	.byte	0x93
	.byte	0x27
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x93
	.byte	0x33
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"C"
	.byte	0x93
	.byte	0x3f
	.long	0x2fb
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
	.long	.LASF51
	.byte	0x93
	.byte	0x5b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB51
	.quad	.LBE51-.LBB51
	.uleb128 0x2
	.string	"sj"
	.byte	0x96
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB52
	.quad	.LBE52-.LBB52
	.uleb128 0x2
	.string	"si"
	.byte	0x99
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB53
	.quad	.LBE53-.LBB53
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
	.uleb128 0x14
	.long	.LASF52
	.byte	0x7c
	.quad	.LFB5045
	.quad	.LFE5045-.LFB5045
	.uleb128 0x1
	.byte	0x9c
	.long	0xd6f
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
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x7c
	.byte	0x3c
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x7c
	.byte	0x48
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0xa
	.long	.LASF51
	.byte	0x7c
	.byte	0x4f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB47
	.quad	.LBE47-.LBB47
	.uleb128 0x2
	.string	"i"
	.byte	0x7f
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.quad	.LBB48
	.quad	.LBE48-.LBB48
	.uleb128 0x2
	.string	"j"
	.byte	0x81
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.quad	.LBB49
	.quad	.LBE49-.LBB49
	.uleb128 0x13
	.long	.LASF53
	.byte	0x83
	.byte	0x14
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB50
	.quad	.LBE50-.LBB50
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
	.uleb128 0xd
	.long	.LASF54
	.byte	0x45
	.quad	.LFB5043
	.quad	.LFE5043-.LFB5043
	.uleb128 0x1
	.byte	0x9c
	.long	0xec5
	.uleb128 0x1
	.string	"A"
	.byte	0x45
	.byte	0x28
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"B"
	.byte	0x45
	.byte	0x34
	.long	0x2fb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"C"
	.byte	0x45
	.byte	0x40
	.long	0x2fb
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
	.long	.LASF55
	.byte	0x45
	.byte	0x5c
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.quad	.LBB39
	.quad	.LBE39-.LBB39
	.uleb128 0x2
	.string	"i"
	.byte	0x48
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.uleb128 0x2
	.string	"j"
	.byte	0x4b
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.quad	.LBB41
	.quad	.LBE41-.LBB41
	.uleb128 0x13
	.long	.LASF56
	.byte	0x4d
	.byte	0x14
	.long	0xec5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.uleb128 0x9
	.quad	.LBB42
	.quad	.LBE42-.LBB42
	.long	0xe63
	.uleb128 0x2
	.string	"u"
	.byte	0x4f
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x9
	.quad	.LBB43
	.quad	.LBE43-.LBB43
	.long	0xea3
	.uleb128 0x2
	.string	"u"
	.byte	0x54
	.byte	0x16
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.quad	.LBB44
	.quad	.LBE44-.LBB44
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
	.quad	.LBB45
	.quad	.LBE45-.LBB45
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
	.uleb128 0x2d
	.long	0xeb
	.long	0xed8
	.uleb128 0x2e
	.long	0x3a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0
	.uleb128 0x14
	.long	.LASF57
	.byte	0x2f
	.quad	.LFB5042
	.quad	.LFE5042-.LFB5042
	.uleb128 0x1
	.byte	0x9c
	.long	0xf98
	.uleb128 0x1
	.string	"A"
	.byte	0x2f
	.byte	0x1f
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"B"
	.byte	0x2f
	.byte	0x2b
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"C"
	.byte	0x2f
	.byte	0x37
	.long	0x2fb
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
	.quad	.LBB36
	.quad	.LBE36-.LBB36
	.uleb128 0x2
	.string	"i"
	.byte	0x32
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.uleb128 0x2
	.string	"j"
	.byte	0x35
	.byte	0x12
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB38
	.quad	.LBE38-.LBB38
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
	.uleb128 0x2f
	.long	.LASF59
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.long	0xeb
	.quad	.LFB5041
	.quad	.LFE5041-.LFB5041
	.uleb128 0x1
	.byte	0x9c
	.long	0xfe5
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
	.uleb128 0x13
	.long	.LASF60
	.byte	0x25
	.byte	0xc
	.long	0xeb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	.LASF61
	.byte	0x17
	.quad	.LFB5040
	.quad	.LFE5040-.LFB5040
	.uleb128 0x1
	.byte	0x9c
	.long	0x1068
	.uleb128 0x1
	.string	"mat"
	.byte	0x17
	.byte	0x1c
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF62
	.byte	0x17
	.byte	0x25
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF63
	.byte	0x17
	.byte	0x2f
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.quad	.LBB34
	.quad	.LBE34-.LBB34
	.uleb128 0x2
	.string	"i"
	.byte	0x19
	.byte	0xe
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.quad	.LBB35
	.quad	.LBE35-.LBB35
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
	.uleb128 0xd
	.long	.LASF64
	.byte	0x11
	.quad	.LFB5039
	.quad	.LFE5039-.LFB5039
	.uleb128 0x1
	.byte	0x9c
	.long	0x1093
	.uleb128 0xa
	.long	.LASF39
	.byte	0x11
	.byte	0x21
	.long	0x747
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	.LASF65
	.byte	0x2
	.value	0x369
	.byte	0x1
	.byte	0x3
	.long	0x10ba
	.uleb128 0x10
	.string	"__P"
	.value	0x369
	.byte	0x1a
	.long	0x300
	.uleb128 0x10
	.string	"__A"
	.value	0x369
	.byte	0x27
	.long	0x10e
	.byte	0
	.uleb128 0x17
	.long	.LASF66
	.value	0x363
	.long	0x10e
	.long	0x10d6
	.uleb128 0x10
	.string	"__P"
	.value	0x363
	.byte	0x1f
	.long	0x10d6
	.byte	0
	.uleb128 0xc
	.long	0xf2
	.uleb128 0x17
	.long	.LASF67
	.value	0x2de
	.long	0x10e
	.long	0x10f7
	.uleb128 0x10
	.string	"__X"
	.value	0x2de
	.byte	0x24
	.long	0x10d6
	.byte	0
	.uleb128 0x17
	.long	.LASF68
	.value	0x138
	.long	0x10e
	.long	0x111f
	.uleb128 0x10
	.string	"__A"
	.value	0x138
	.byte	0x18
	.long	0x10e
	.uleb128 0x10
	.string	"__B"
	.value	0x138
	.byte	0x25
	.long	0x10e
	.byte	0
	.uleb128 0x31
	.long	.LASF69
	.byte	0x2
	.byte	0x8d
	.byte	0x1
	.long	0x10e
	.byte	0x3
	.uleb128 0x23
	.string	"__A"
	.byte	0x8d
	.byte	0x18
	.long	0x10e
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x2f
	.uleb128 0x21
	.sleb128 3
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 .LBB99-.Ltext0
	.uleb128 .LBE99-.Ltext0
	.byte	0x4
	.uleb128 .LBB106-.Ltext0
	.uleb128 .LBE106-.Ltext0
	.byte	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB102-.Ltext0
	.uleb128 .LBE102-.Ltext0
	.byte	0x4
	.uleb128 .LBB103-.Ltext0
	.uleb128 .LBE103-.Ltext0
	.byte	0
.LLRL2:
	.byte	0x4
	.uleb128 .LBB107-.Ltext0
	.uleb128 .LBE107-.Ltext0
	.byte	0x4
	.uleb128 .LBB114-.Ltext0
	.uleb128 .LBE114-.Ltext0
	.byte	0
.LLRL3:
	.byte	0x4
	.uleb128 .LBB110-.Ltext0
	.uleb128 .LBE110-.Ltext0
	.byte	0x4
	.uleb128 .LBB111-.Ltext0
	.uleb128 .LBE111-.Ltext0
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
.LASF32:
	.string	"custom_matrix_multiply"
.LASF14:
	.string	"tv_sec"
.LASF65:
	.string	"_mm256_store_pd"
.LASF67:
	.string	"_mm256_broadcast_sd"
.LASF7:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF33:
	.string	"multicore_matrix_multiply"
.LASF29:
	.string	"omp_set_num_threads"
.LASF58:
	.string	"main"
.LASF43:
	.string	"mode"
.LASF35:
	.string	"multicore_matrix_multiply._omp_fn.0"
.LASF72:
	.string	"rand"
.LASF21:
	.string	"__m256d"
.LASF28:
	.string	"free"
.LASF61:
	.string	"print_matrix"
.LASF38:
	.string	"argc"
.LASF49:
	.string	"subword_parallelism_matrix_multiply"
.LASF18:
	.string	"float"
.LASF13:
	.string	"long long int"
.LASF68:
	.string	"_mm256_mul_pd"
.LASF8:
	.string	"long int"
.LASF37:
	.string	"printf"
.LASF69:
	.string	"_mm256_add_pd"
.LASF26:
	.string	"atoi"
.LASF50:
	.string	"blocked_matrix_multiply"
.LASF36:
	.string	"exit"
.LASF17:
	.string	"long double"
.LASF52:
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
.LASF62:
	.string	"rows"
.LASF54:
	.string	"unrolled_matrix_multiply"
.LASF34:
	.string	"custom_matrix_multiply._omp_fn.0"
.LASF39:
	.string	"argv"
.LASF56:
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
.LASF66:
	.string	"_mm256_load_pd"
.LASF57:
	.string	"matrix_multiply"
.LASF25:
	.string	"aligned_alloc"
.LASF2:
	.string	"long unsigned int"
.LASF19:
	.string	"double"
.LASF63:
	.string	"cols"
.LASF51:
	.string	"_block_size"
.LASF20:
	.string	"__v4df"
.LASF71:
	.string	"timeval"
.LASF10:
	.string	"__time_t"
.LASF53:
	.string	"C_ij"
.LASF15:
	.string	"tv_usec"
.LASF64:
	.string	"print_help_and_exit"
.LASF59:
	.string	"drand"
.LASF60:
	.string	"random_double"
.LASF23:
	.string	"__bf16"
.LASF46:
	.string	"total"
.LASF31:
	.string	"thread_count"
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
.LASF70:
	.string	"GNU C17 13.3.0 -mavx -mtune=generic -march=x86-64 -g -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF55:
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
