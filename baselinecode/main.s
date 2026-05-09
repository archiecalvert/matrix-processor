	.file	"main.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mavx -mtune=generic -march=x86-64 -O3 -fopenmp -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.type	multicore_matrix_multiply._omp_fn.0, @function
multicore_matrix_multiply._omp_fn.0:
.LFB6653:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rdi, %rbp	# tmp124, .omp_data_i
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
	call	omp_get_num_threads@PLT	#
	movl	%eax, %ebx	# tmp125, _18
	call	omp_get_thread_num@PLT	#
	movl	%eax, %r11d	# tmp126, _19
	movl	24(%rbp), %eax	# *.omp_data_i_11(D).L, *.omp_data_i_11(D).L
	cltd
	idivl	%ebx	# _18
	cmpl	%edx, %r11d	# tt.7_2, _19
	jl	.L2	#,
.L9:
	imull	%eax, %r11d	# q.6_1, tmp118
	addl	%edx, %r11d	# tt.7_2, _24
	leal	(%rax,%r11), %ebx	#, _25
	cmpl	%ebx, %r11d	# _25, _24
	jge	.L14	#,
# main.c:91:     #pragma omp parallel for
	movslq	32(%rbp), %rdx	# *.omp_data_i_11(D).N,
	movslq	28(%rbp), %rax	# *.omp_data_i_11(D).M,
	testl	%edx, %edx	# N
	jle	.L14	#,
	testl	%eax, %eax	# M
	jle	.L14	#,
	movq	16(%rbp), %r12	# *.omp_data_i_11(D).C, C
	movq	8(%rbp), %r9	# *.omp_data_i_11(D).B, B
	movslq	%r11d, %r11	# _24, ivtmp.49
	leaq	0(,%rdx,8), %r10	#, _80
	movq	0(%rbp), %rbp	# *.omp_data_i_11(D).A, A
	leaq	0(,%rax,8), %r8	#, _84
	.p2align 4,,10
	.p2align 3
.L6:
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r12,%r11,8), %r13	# MEM[(double * *)C_15 + ivtmp.49_79 * 8], _31
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	movq	0(%rbp,%r11,8), %rdi	# MEM[(double * *)A_17 + ivtmp.49_79 * 8], _37
	xorl	%ecx, %ecx	# ivtmp.46
	.p2align 4,,10
	.p2align 3
.L7:
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	leaq	0(%r13,%rcx), %rsi	#, _34
	xorl	%eax, %eax	# ivtmp.41
	vmovsd	(%rsi), %xmm1	# *_34, _47
	.p2align 4,,10
	.p2align 3
.L5:
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r9,%rax), %rdx	# MEM[(double * *)B_16 + ivtmp.41_89 * 1], MEM[(double * *)B_16 + ivtmp.41_89 * 1]
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	vmovsd	(%rdx,%rcx), %xmm0	# *_44, *_44
	vmulsd	(%rdi,%rax), %xmm0, %xmm0	# MEM[(double *)_37 + ivtmp.41_89 * 1], *_44, tmp122
# main.c:97:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.41
# main.c:98:                 C[i][j] += A[i][k] * B[k][j];
	vaddsd	%xmm0, %xmm1, %xmm1	# tmp122, _47, _47
	vmovsd	%xmm1, (%rsi)	# _47, *_34
# main.c:97:             for(int k=0; k<M; k++){
	cmpq	%rax, %r8	# ivtmp.41, _84
	jne	.L5	#,
# main.c:95:         for(int j=0; j<N; j++) {
	addq	$8, %rcx	#, ivtmp.46
	cmpq	%rcx, %r10	# ivtmp.46, _80
	jne	.L7	#,
	addq	$1, %r11	#, ivtmp.49
	cmpl	%r11d, %ebx	# ivtmp.49, _25
	jg	.L6	#,
.L14:
# main.c:91:     #pragma omp parallel for
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L2:
	.cfi_restore_state
	addl	$1, %eax	#, q.6_1
# main.c:91:     #pragma omp parallel for
	xorl	%edx, %edx	# tt.7_2
	jmp	.L9	#
	.cfi_endproc
.LFE6653:
	.size	multicore_matrix_multiply._omp_fn.0, .-multicore_matrix_multiply._omp_fn.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"usage: %s <L> <M> <N> <seed>\n"
	.text
	.p2align 4
	.globl	print_help_and_exit
	.type	print_help_and_exit, @function
print_help_and_exit:
.LFB6642:
	.cfi_startproc
	endbr64	
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	popq	%rax	#
	.cfi_def_cfa_offset 8
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC0(%rip), %rsi	#, tmp85
	xorl	%eax, %eax	#
# main.c:17: void print_help_and_exit(char **argv) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	(%rdi), %rdx	# *argv_3(D), *argv_3(D)
	movl	$2, %edi	#,
	call	__printf_chk@PLT	#
# main.c:19:     exit(0);
	xorl	%edi, %edi	#
	call	exit@PLT	#
	.cfi_endproc
.LFE6642:
	.size	print_help_and_exit, .-print_help_and_exit
	.section	.rodata.str1.1
.LC1:
	.string	"%f "
	.text
	.p2align 4
	.globl	print_matrix
	.type	print_matrix, @function
print_matrix:
.LFB6643:
	.cfi_startproc
	endbr64	
# main.c:23:    for(int i=0; i<rows; i++) {
	testl	%esi, %esi	# rows
	jle	.L31	#,
# main.c:22: void print_matrix(double **mat, int rows, int cols) {
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movslq	%esi, %rsi	# rows, rows
	movq	%rdi, %r14	# mat, ivtmp.73
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	leaq	(%rdi,%rsi,8), %r13	#, _9
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movslq	%edx, %rbp	# cols, cols
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	salq	$3, %rbp	#, _24
	movl	%edx, %ebx	# tmp105, cols
.L21:
# main.c:24:         for(int j=0; j<cols; j++){
	testl	%ebx, %ebx	# cols
	jle	.L28	#,
	leaq	.LC1(%rip), %r12	#, tmp102
	.p2align 4,,10
	.p2align 3
.L23:
# main.c:22: void print_matrix(double **mat, int rows, int cols) {
	xorl	%ebx, %ebx	# ivtmp.68
	.p2align 4,,10
	.p2align 3
.L22:
# main.c:25:            printf("%f ", mat[i][j]);
	movq	(%r14), %rax	# MEM[(double * *)_36], MEM[(double * *)_36]
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%r12, %rsi	# tmp102,
	movl	$2, %edi	#,
	vmovsd	(%rax,%rbx), %xmm0	# *_7, *_7
	movl	$1, %eax	#,
# main.c:24:         for(int j=0; j<cols; j++){
	addq	$8, %rbx	#, ivtmp.68
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# main.c:24:         for(int j=0; j<cols; j++){
	cmpq	%rbx, %rbp	# ivtmp.68, _24
	jne	.L22	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
# main.c:23:    for(int i=0; i<rows; i++) {
	addq	$8, %r14	#, ivtmp.73
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main.c:23:    for(int i=0; i<rows; i++) {
	cmpq	%r14, %r13	# ivtmp.73, _9
	jne	.L23	#,
.L29:
# main.c:29: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L28:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
# main.c:23:    for(int i=0; i<rows; i++) {
	addq	$8, %r14	#, ivtmp.73
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main.c:23:    for(int i=0; i<rows; i++) {
	cmpq	%r14, %r13	# ivtmp.73, _9
	jne	.L21	#,
	jmp	.L29	#
.L31:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	ret	
	.cfi_endproc
.LFE6643:
	.size	print_matrix, .-print_matrix
	.p2align 4
	.globl	drand
	.type	drand, @function
drand:
.LFB6644:
	.cfi_startproc
	endbr64	
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# main.c:31: double drand(double min, double max){ //
	vmovsd	%xmm0, 8(%rsp)	# min, %sfp
	vmovsd	%xmm1, (%rsp)	# max, %sfp
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	call	rand@PLT	#
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vmovsd	8(%rsp), %xmm0	# %sfp, min
	vmovsd	(%rsp), %xmm1	# %sfp, max
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vxorps	%xmm2, %xmm2, %xmm2	# tmp98
	vcvtsi2sdl	%eax, %xmm2, %xmm2	# tmp97, tmp98, tmp99
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vdivsd	.LC2(%rip), %xmm2, %xmm2	#, tmp90, random_double
# main.c:35: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vsubsd	%xmm0, %xmm1, %xmm1	# min, max, tmp93
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vmulsd	%xmm1, %xmm2, %xmm1	# tmp93, random_double, _4
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vaddsd	%xmm0, %xmm1, %xmm0	# min, _4, random_double
# main.c:35: }
	ret	
	.cfi_endproc
.LFE6644:
	.size	drand, .-drand
	.p2align 4
	.globl	matrix_multiply
	.type	matrix_multiply, @function
matrix_multiply:
.LFB6645:
	.cfi_startproc
	endbr64	
# main.c:44:     for(int i=0; i<L; i++) {
	testl	%ecx, %ecx	# L
	jle	.L47	#,
# main.c:42: void matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx	# tmp114, C
	movslq	%r9d, %rdx	# tmp117,
	testl	%edx, %edx	# N
	jle	.L45	#,
	movslq	%r8d, %rax	# tmp116,
	testl	%eax, %eax	# M
	jle	.L45	#,
	movslq	%ecx, %rcx	# L, L
	movq	%rdi, %r10	# tmp112, A
	movq	%rsi, %r11	# tmp113, B
# main.c:44:     for(int i=0; i<L; i++) {
	xorl	%r13d, %r13d	# ivtmp.100
	leaq	0(,%rcx,8), %r12	#, _61
	leaq	0(,%rdx,8), %rbp	#, _65
	leaq	0(,%rax,8), %r8	#, _69
	.p2align 4,,10
	.p2align 3
.L39:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%rbx,%r13), %r9	# MEM[(double * *)C_33(D) + ivtmp.100_64 * 1], _4
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r10,%r13), %rdi	# MEM[(double * *)A_34(D) + ivtmp.100_64 * 1], _10
	xorl	%ecx, %ecx	# ivtmp.93
	.p2align 4,,10
	.p2align 3
.L42:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	leaq	(%r9,%rcx), %rsi	#, _7
	xorl	%eax, %eax	# ivtmp.89
	vmovsd	(%rsi), %xmm1	# *_7, _20
	.p2align 4,,10
	.p2align 3
.L40:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r11,%rax), %rdx	# MEM[(double * *)B_35(D) + ivtmp.89_74 * 1], MEM[(double * *)B_35(D) + ivtmp.89_74 * 1]
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	vmovsd	(%rdx,%rcx), %xmm0	# *_17, *_17
	vmulsd	(%rdi,%rax), %xmm0, %xmm0	# MEM[(double *)_10 + ivtmp.89_74 * 1], *_17, tmp110
# main.c:48:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.89
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	vaddsd	%xmm0, %xmm1, %xmm1	# tmp110, _20, _20
	vmovsd	%xmm1, (%rsi)	# _20, *_7
# main.c:48:             for(int k=0; k<M; k++){
	cmpq	%rax, %r8	# ivtmp.89, _69
	jne	.L40	#,
# main.c:46:         for(int j=0; j<N; j++) {
	addq	$8, %rcx	#, ivtmp.93
	cmpq	%rcx, %rbp	# ivtmp.93, _65
	jne	.L42	#,
# main.c:44:     for(int i=0; i<L; i++) {
	addq	$8, %r13	#, ivtmp.100
	cmpq	%r13, %r12	# ivtmp.100, _61
	jne	.L39	#,
.L45:
# main.c:53: }
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L47:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret	
	.cfi_endproc
.LFE6645:
	.size	matrix_multiply, .-matrix_multiply
	.p2align 4
	.globl	unrolled_matrix_multiply
	.type	unrolled_matrix_multiply, @function
unrolled_matrix_multiply:
.LFB6646:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	movq	%rdi, %rax	# tmp290, A
	movq	%rdx, %rdi	# tmp292, C
	pushq	-8(%r10)	#
	movslq	%ecx, %rdx	# tmp293,
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	movq	%rsi, %r15	# tmp291, B
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$160, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# main.c:60: void unrolled_matrix_multiply(double **A, double **B, double **C, int L, int M, int N, int _unroll) {
	movl	%r9d, -140(%rbp)	# N, %sfp
	movl	(%r10), %esi	# _unroll, _unroll
	movq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp296
	movq	%rcx, -56(%rbp)	# tmp296, D.41108
	xorl	%ecx, %ecx	# tmp296
# main.c:62:     for(int i=0; i<L; i++) {
	testl	%edx, %edx	# L
	jle	.L50	#,
# main.c:65:             double C_temp[_unroll];
	movslq	%esi, %rcx	# _unroll, _unroll
	leaq	0(,%rcx,8), %rbx	#, _2
	movq	%rbx, -136(%rbp)	# _2, %sfp
	testl	%r9d, %r9d	# N
	jle	.L50	#,
	movq	%rdi, -128(%rbp)	# ivtmp.149, %sfp
	leaq	(%rdi,%rdx,8), %rdi	#, _176
# main.c:68:                     C_temp[u] = C[i][j+u];
	leal	-1(%rsi), %edx	#, tmp189
	movl	%r8d, %r14d	# M, _136
	movl	%r8d, %r12d	# tmp294, M
	leal	-1(%r8), %r11d	#, _116
	andl	$-4, %r14d	#, _136
	movl	%esi, -88(%rbp)	# _unroll, %sfp
	leaq	8(,%rdx,8), %rcx	#, _130
	movl	%r8d, %edx	# M, bnd.112
	movl	%r14d, %r10d	# _136, _136
	movq	%rdi, %r8	# _176, _176
	shrl	$2, %edx	#,
	movq	%rcx, -96(%rbp)	# _130, %sfp
	movl	%r12d, %r14d	# M, M
	movq	%rax, %rsi	# ivtmp.150, ivtmp.150
	salq	$5, %rdx	#, bnd.112
	movl	%r11d, %r12d	# _116, _116
	movq	%rdx, %r13	# bnd.112, _172
	leaq	15(%rbx), %rdx	#, tmp280
# main.c:65:             double C_temp[_unroll];
	movq	%rdx, %rbx	# tmp280, tmp199
	andl	$4080, %edx	#, tmp280
	andq	$-16, %rbx	#, tmp199
	movq	%rdx, %r11	# tmp203, tmp203
	movq	%rbx, -160(%rbp)	# tmp199, %sfp
	leaq	-8(%rdx), %rbx	#, tmp287
	movq	%rbx, -176(%rbp)	# tmp287, %sfp
.L52:
	movq	-160(%rbp), %rdi	# %sfp, tmp201
# main.c:60: void unrolled_matrix_multiply(double **A, double **B, double **C, int L, int M, int N, int _unroll) {
	xorl	%eax, %eax	# ivtmp.144
# main.c:64:         for(int j=0; j<N; j+=_unroll) {
	xorl	%ebx, %ebx	# j
# main.c:65:             double C_temp[_unroll];
	andq	$-4096, %rdi	#, tmp201
.L57:
	movq	%rsp, %rdx	#, tmp202
# main.c:64:         for(int j=0; j<N; j+=_unroll) {
	movq	%rsp, %r9	#, saved_stack.2_156
# main.c:65:             double C_temp[_unroll];
	subq	%rdi, %rdx	# tmp201, tmp202
	cmpq	%rdx, %rsp	# tmp202,
	je	.L54	#,
.L88:
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	cmpq	%rdx, %rsp	# tmp202,
	jne	.L88	#,
.L54:
	subq	%r11, %rsp	# tmp203,
	testq	%r11, %r11	# tmp203
	je	.L55	#,
	movq	-176(%rbp), %rcx	# %sfp, tmp287
	orq	$0, (%rsp,%rcx)	#,
.L55:
# main.c:67:             for (int u=0; u<_unroll; u++){
	movl	-88(%rbp), %edx	# %sfp,
# main.c:65:             double C_temp[_unroll];
	movq	%rsp, %rcx	#, C_temp.1
# main.c:67:             for (int u=0; u<_unroll; u++){
	testl	%edx, %edx	#
	jle	.L89	#,
	movq	%rsi, -120(%rbp)	# ivtmp.150, %sfp
	movq	%rax, -104(%rbp)	# ivtmp.144, %sfp
	movq	%r9, -152(%rbp)	# saved_stack.2_156, %sfp
	movq	%r8, -184(%rbp)	# _176, %sfp
	movq	%r11, -168(%rbp)	# tmp203, %sfp
	movl	%r12d, -84(%rbp)	# _116, %sfp
	movl	%r10d, %r12d	# _136, _136
.L56:
	movq	-128(%rbp), %rax	# %sfp, ivtmp.149
	movq	-104(%rbp), %r11	# %sfp, _127
# main.c:68:                     C_temp[u] = C[i][j+u];
	movq	%rcx, %rdi	# C_temp.1,
	movq	-96(%rbp), %rdx	# %sfp,
	addq	(%rax), %r11	# MEM[(double * *)_177], _127
	movq	%r11, %rsi	# _127,
	movq	%r11, -72(%rbp)	# _127, %sfp
	call	memcpy@PLT	#
	movq	-72(%rbp), %r11	# %sfp, _127
	movl	%ebx, %edx	# j, ivtmp.139
	movq	%rax, %rcx	#, C_temp.1
	movq	%rax, %rdi	# C_temp.1, ivtmp.138
	movl	-88(%rbp), %eax	# %sfp, _unroll
	leal	(%rbx,%rax), %ebx	#, j
.L59:
# main.c:73:                 for(int k=0; k<M; k++){
	testl	%r14d, %r14d	# M
	jle	.L82	#,
	movq	-120(%rbp), %rax	# %sfp, ivtmp.150
	movl	%edx, -72(%rbp)	# ivtmp.139, %sfp
	movq	%r11, -112(%rbp)	# _127, %sfp
	movq	%rcx, %r11	# C_temp.1, C_temp.1
	movq	(%rax), %r9	# MEM[(double * *)_178], _16
	.p2align 4,,10
	.p2align 3
.L63:
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	movslq	-72(%rbp), %rcx	# %sfp, ivtmp.139
	cmpl	$2, -84(%rbp)	#, %sfp
	vmovsd	(%rdi), %xmm2	# MEM[(double *)_161], C_temp.1__I_lsm.109
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	leaq	0(,%rcx,8), %rsi	#, _25
	jbe	.L70	#,
	movq	%rdi, -80(%rbp)	# ivtmp.138, %sfp
	xorl	%eax, %eax	# ivtmp.129
	.p2align 4,,10
	.p2align 3
.L61:
	leaq	(%r15,%rax), %rdx	#, _104
	movq	(%rdx), %r8	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 0>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 0>
	movq	16(%rdx), %r10	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 128>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 128>
	movq	8(%rdx), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 64>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 64>
	movq	24(%rdx), %rdx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 192>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_104], 64, 192>
	vmovsd	(%r10,%rsi), %xmm1	# MEM[(double *)_48], MEM[(double *)_48]
	vmovsd	(%r8,%rsi), %xmm0	# MEM[(double *)_79], MEM[(double *)_79]
	vmovhpd	(%rdx,%rsi), %xmm1, %xmm1	# MEM[(double *)_44], MEM[(double *)_48], tmp223
	vmovhpd	(%rdi,%rsi), %xmm0, %xmm0	# MEM[(double *)_73], MEM[(double *)_79], tmp226
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0	# tmp223, tmp226, vect__27.121
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmulpd	(%r9,%rax), %ymm0, %ymm0	# MEM <vector(4) double> [(double *)_16 + ivtmp.129_175 * 1], vect__27.121, vect__28.122
	addq	$32, %rax	#, ivtmp.129
	vaddsd	%xmm2, %xmm0, %xmm2	# C_temp.1__I_lsm.109, stmp__29.123, stmp__29.123
	vunpckhpd	%xmm0, %xmm0, %xmm1	# tmp230, stmp__29.123
	vextractf128	$0x1, %ymm0, %xmm0	# vect__28.122, tmp232
	vaddsd	%xmm2, %xmm1, %xmm1	# stmp__29.123, stmp__29.123, stmp__29.123
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm1, %xmm1	# stmp__29.123, stmp__29.123, stmp__29.123
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp232, stmp__29.123
	vaddsd	%xmm0, %xmm1, %xmm2	# stmp__29.123, stmp__29.123, C_temp.1__I_lsm.109
	cmpq	%rax, %r13	# ivtmp.129, _172
	jne	.L61	#,
	movq	-80(%rbp), %rdi	# %sfp, ivtmp.138
# main.c:73:                 for(int k=0; k<M; k++){
	movl	%r12d, %eax	# _136, k
	cmpl	%r12d, %r14d	# _136, M
	je	.L62	#,
.L60:
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	movslq	%eax, %r8	# k, k
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	(%r15,%r8,8), %rdx	# *_26, *_26
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	leaq	0(,%r8,8), %rsi	#, _20
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%rdx,%rcx,8), %xmm0	# *_28, *_28
	vmulsd	(%r9,%r8,8), %xmm0, %xmm0	# *_21, *_28, tmp238
# main.c:73:                 for(int k=0; k<M; k++){
	leal	1(%rax), %r8d	#, k
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp238, C_temp.1__I_lsm.109, C_temp.1__I_lsm.109
# main.c:73:                 for(int k=0; k<M; k++){
	cmpl	%r8d, %r14d	# k, M
	jle	.L62	#,
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	8(%r15,%rsi), %r8	# *_145, *_145
# main.c:73:                 for(int k=0; k<M; k++){
	addl	$2, %eax	#, k
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%r8,%rcx,8), %xmm0	# *_147, *_147
	vmulsd	8(%r9,%rsi), %xmm0, %xmm0	# *_143, *_147, tmp242
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp242, C_temp.1__I_lsm.109, C_temp.1__I_lsm.109
# main.c:73:                 for(int k=0; k<M; k++){
	cmpl	%eax, %r14d	# k, M
	jle	.L62	#,
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	16(%r15,%rsi), %rax	# *_64, *_64
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%rax,%rcx,8), %xmm0	# *_87, *_87
	vmulsd	16(%r9,%rsi), %xmm0, %xmm0	# *_38, *_87, tmp246
# main.c:74:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp246, C_temp.1__I_lsm.109, C_temp.1__I_lsm.109
.L62:
# main.c:71:             for (int u=0; u<_unroll; u++){
	addl	$1, -72(%rbp)	#, %sfp
	movl	-72(%rbp), %eax	# %sfp, ivtmp.139
	addq	$8, %rdi	#, ivtmp.138
	vmovsd	%xmm2, -8(%rdi)	# C_temp.1__I_lsm.109, MEM[(double *)_161]
	cmpl	%ebx, %eax	# j, ivtmp.139
	jne	.L63	#,
	movq	%r11, %rcx	# C_temp.1, C_temp.1
	movq	-112(%rbp), %r11	# %sfp, _127
	vzeroupper
.L64:
# main.c:79:                 C[i][j+u] = C_temp[u];
	movq	-96(%rbp), %rdx	# %sfp,
	movq	%rcx, %rsi	# C_temp.1,
	movq	%r11, %rdi	# _127,
	call	memcpy@PLT	#
	movq	-152(%rbp), %rsp	# %sfp,
# main.c:64:         for(int j=0; j<N; j+=_unroll) {
	movq	-136(%rbp), %rcx	# %sfp, _2
	addq	%rcx, -104(%rbp)	# _2, %sfp
	cmpl	%ebx, -140(%rbp)	# j, %sfp
	jle	.L85	#,
# main.c:65:             double C_temp[_unroll];
	movq	-160(%rbp), %rdx	# %sfp, tmp263
	movq	%rsp, %rax	#, tmp264
	andq	$-4096, %rdx	#, tmp263
	subq	%rdx, %rax	# tmp263, tmp264
	cmpq	%rax, %rsp	# tmp264,
	je	.L67	#,
.L90:
	subq	$4096, %rsp	#,
	orq	$0, 4088(%rsp)	#,
	cmpq	%rax, %rsp	# tmp264,
	jne	.L90	#,
.L67:
	movq	-168(%rbp), %rax	# %sfp, tmp203
	subq	%rax, %rsp	# tmp203,
	testq	%rax, %rax	# tmp203
	je	.L68	#,
	movq	-176(%rbp), %rax	# %sfp, tmp287
	orq	$0, (%rsp,%rax)	#,
.L68:
	movq	%rsp, %rcx	#, C_temp.1
	jmp	.L56	#
.L82:
# main.c:71:             for (int u=0; u<_unroll; u++){
	addl	$1, %edx	#, ivtmp.139
	addq	$8, %rdi	#, ivtmp.138
	cmpl	%edx, %ebx	# ivtmp.139, j
	jne	.L59	#,
	jmp	.L64	#
.L70:
# main.c:73:                 for(int k=0; k<M; k++){
	xorl	%eax, %eax	# k
	jmp	.L60	#
.L89:
# main.c:64:         for(int j=0; j<N; j+=_unroll) {
	movl	-88(%rbp), %ecx	# %sfp, _unroll
	movq	%r9, %rsp	# saved_stack.2_156,
	addl	%ecx, %ebx	# _unroll, j
# main.c:64:         for(int j=0; j<N; j+=_unroll) {
	movq	-136(%rbp), %rcx	# %sfp, _2
	addq	%rcx, %rax	# _2, ivtmp.144
	cmpl	%ebx, -140(%rbp)	# j, %sfp
	jg	.L57	#,
.L58:
# main.c:62:     for(int i=0; i<L; i++) {
	addq	$8, -128(%rbp)	#, %sfp
	movq	-128(%rbp), %rax	# %sfp, ivtmp.149
	addq	$8, %rsi	#, ivtmp.150
	cmpq	%r8, %rax	# _176, ivtmp.149
	jne	.L52	#,
.L50:
# main.c:83: }
	movq	-56(%rbp), %rax	# D.41108, tmp297
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp297
	jne	.L91	#,
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
.L85:
	.cfi_restore_state
	movl	%r12d, %r10d	# _136, _136
	movq	-120(%rbp), %rsi	# %sfp, ivtmp.150
	movl	-84(%rbp), %r12d	# %sfp, _116
	movq	-184(%rbp), %r8	# %sfp, _176
	movq	-168(%rbp), %r11	# %sfp, tmp203
	jmp	.L58	#
.L91:
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6646:
	.size	unrolled_matrix_multiply, .-unrolled_matrix_multiply
	.p2align 4
	.globl	multicore_matrix_multiply
	.type	multicore_matrix_multiply, @function
multicore_matrix_multiply:
.LFB6647:
	.cfi_startproc
	endbr64	
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 64
# main.c:90: void multicore_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	movq	%rax, 40(%rsp)	# tmp98, D.41120
	xorl	%eax, %eax	# tmp98
# main.c:91:     #pragma omp parallel for
	movl	%ecx, 24(%rsp)	# tmp95, .omp_data_o.5.L
	xorl	%ecx, %ecx	#
	movq	%rdx, 16(%rsp)	# tmp94, .omp_data_o.5.C
	xorl	%edx, %edx	#
	movq	%rsi, 8(%rsp)	# tmp93, .omp_data_o.5.B
	movq	%rsp, %rsi	#, tmp89
	movq	%rdi, (%rsp)	# tmp92, .omp_data_o.5.A
	leaq	multicore_matrix_multiply._omp_fn.0(%rip), %rdi	#, tmp90
	movl	%r9d, 32(%rsp)	# tmp97, .omp_data_o.5.N
	movl	%r8d, 28(%rsp)	# tmp96, .omp_data_o.5.M
	call	GOMP_parallel@PLT	#
# main.c:102: }
	movq	40(%rsp), %rax	# D.41120, tmp99
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	jne	.L96	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L96:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6647:
	.size	multicore_matrix_multiply, .-multicore_matrix_multiply
	.p2align 4
	.globl	do_block
	.type	do_block, @function
do_block:
.LFB6648:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%edi, %rdi	# tmp436, si
	movslq	%esi, %rsi	# tmp437, sj
	movslq	%edx, %rdx	# tmp438, sk
	leaq	0(,%rdi,8), %rax	#, ivtmp.192
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	andq	$-32, %rsp	#,
	subq	$136, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%rax, -56(%rsp)	# ivtmp.192, %sfp
	addq	$256, %rax	#, _145
	movq	%rax, -80(%rsp)	# _145, %sfp
	leaq	0(,%rsi,8), %rax	#, ivtmp.180
	movq	%rax, -72(%rsp)	# ivtmp.180, %sfp
	addq	$256, %rax	#, _20
	movq	%rax, 112(%rsp)	# _20, %sfp
	leaq	0(,%rdx,8), %rax	#, _98
	movq	%rax, -64(%rsp)	# _98, %sfp
	addq	%r8, %rax	# tmp440, vectp.165
	movq	24(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94], 64, 192>, _60
	movq	16(%rax), %r15	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94], 64, 128>, _41
# main.c:104: void do_block(int si, int sj, int sk, double **A, double **B, double **C){
	movq	%rcx, -88(%rsp)	# tmp439, %sfp
	movq	%r9, -96(%rsp)	# tmp441, %sfp
	movq	(%rax), %r14	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94], 64, 0>, _11
	movq	%rbx, 104(%rsp)	# _60, %sfp
	movq	8(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94], 64, 64>, _15
	movq	%rbx, 120(%rsp)	# _15, %sfp
	movq	56(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 32B], 64, 192>, _125
	movq	%rbx, 56(%rsp)	# _125, %sfp
	movq	48(%rax), %r13	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 32B], 64, 128>, _121
	movq	40(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 32B], 64, 64>, _117
	movq	184(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 160B], 64, 192>, _265
	movq	88(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 64B], 64, 192>, _160
	movq	32(%rax), %r12	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 32B], 64, 0>, _113
	movq	64(%rax), %r11	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 64B], 64, 0>, _148
	movq	112(%rax), %r10	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 96B], 64, 128>, _191
	movq	%rdi, 64(%rsp)	# _117, %sfp
	movq	72(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 64B], 64, 64>, _152
	movq	96(%rax), %r9	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 96B], 64, 0>, _183
	movq	%rcx, -16(%rsp)	# _265, %sfp
	movq	168(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 160B], 64, 64>, _257
	movq	%rbx, 40(%rsp)	# _160, %sfp
	movq	144(%rax), %r8	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 128B], 64, 128>, _226
	movq	80(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 64B], 64, 128>, _156
	movq	%rdi, 48(%rsp)	# _152, %sfp
	movq	120(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 96B], 64, 192>, _195
	movq	176(%rax), %rsi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 160B], 64, 128>, _261
	movq	%rcx, -8(%rsp)	# _257, %sfp
	movq	160(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 160B], 64, 0>, _253
	movq	%rdi, 24(%rsp)	# _195, %sfp
	movq	104(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 96B], 64, 64>, _187
	movq	%rcx, (%rsp)	# _253, %sfp
	movq	216(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 192B], 64, 192>, _300
	movq	%rdi, 32(%rsp)	# _187, %sfp
	movq	152(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 128B], 64, 192>, _230
	movq	%rcx, -48(%rsp)	# _300, %sfp
	movq	208(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 192B], 64, 128>, _296
	movq	%rdi, 8(%rsp)	# _230, %sfp
	movq	136(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 128B], 64, 64>, _222
	movq	%rdi, 16(%rsp)	# _222, %sfp
	movq	128(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 128B], 64, 0>, _218
	movq	%rcx, -40(%rsp)	# _296, %sfp
	movq	200(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 192B], 64, 64>, _292
	movq	%rcx, -32(%rsp)	# _292, %sfp
	movq	192(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 192B], 64, 0>, _288
	movq	%rcx, -24(%rsp)	# _288, %sfp
	movq	248(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 224B], 64, 192>, _76
	movq	%rcx, 96(%rsp)	# _76, %sfp
	movq	240(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 224B], 64, 128>, _80
	movq	%rcx, 88(%rsp)	# _80, %sfp
	movq	232(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 224B], 64, 64>, _84
	movq	224(%rax), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.165_94 + 224B], 64, 0>, _88
	movq	%rcx, 80(%rsp)	# _84, %sfp
	movq	%rax, 72(%rsp)	# _88, %sfp
.L98:
# main.c:108: 	    double C_ij = C[i][j];
	movq	-56(%rsp), %rax	# %sfp, ivtmp.192
	movq	-96(%rsp), %rcx	# %sfp, C
	movq	-64(%rsp), %rdx	# %sfp, vectp.162
	movq	(%rcx,%rax), %rcx	# MEM[(double * *)C_33(D) + ivtmp.192_19 * 1], _4
	movq	%rcx, 128(%rsp)	# _4, %sfp
	movq	-88(%rsp), %rcx	# %sfp, A
	addq	(%rcx,%rax), %rdx	# MEM[(double * *)A_38(D) + ivtmp.192_19 * 1], vectp.162
	movq	128(%rsp), %rcx	# %sfp, _4
	movq	%rsi, 128(%rsp)	# _261, %sfp
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	movq	-72(%rsp), %rax	# %sfp, ivtmp.180
	.p2align 4,,10
	.p2align 3
.L99:
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r15), %xmm0	# MEM[(double *)_93], MEM[(double *)_93]
	movq	104(%rsp), %rsi	# %sfp, _60
	vmovsd	(%r14,%rax), %xmm1	# MEM[(double *)_13], MEM[(double *)_13]
	vmovsd	(%rcx,%rax), %xmm2	# MEM[(double *)_4 + ivtmp.180_21 * 1], stmp_C_ij_40.169
	vmovhpd	(%rax,%rsi), %xmm0, %xmm0	# MEM[(double *)_57], MEM[(double *)_93], tmp323
	movq	120(%rsp), %rsi	# %sfp, _15
	vmovhpd	(%rsi,%rax), %xmm1, %xmm1	# MEM[(double *)_17], MEM[(double *)_13], tmp326
	movq	56(%rsp), %rsi	# %sfp, _125
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm1	# tmp323, tmp326, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm2, %xmm2	# tmp330, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm0	# tmp330, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp332
	vaddsd	%xmm2, %xmm0, %xmm2	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm1, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r13), %xmm2	# MEM[(double *)_123], MEM[(double *)_123]
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp332, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_127], MEM[(double *)_123], tmp337
	movq	64(%rsp), %rsi	# %sfp, _117
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r12), %xmm1	# MEM[(double *)_115], MEM[(double *)_115]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_119], MEM[(double *)_115], tmp340
	movq	40(%rsp), %rsi	# %sfp, _160
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp337, tmp340, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	32(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 32B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp344, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp346
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rbx), %xmm2	# MEM[(double *)_158], MEM[(double *)_158]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_162], MEM[(double *)_158], tmp351
	movq	48(%rsp), %rsi	# %sfp, _152
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp346, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r11), %xmm1	# MEM[(double *)_150], MEM[(double *)_150]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_154], MEM[(double *)_150], tmp354
	movq	24(%rsp), %rsi	# %sfp, _195
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp351, tmp354, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	64(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 64B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp358, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp360
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r10), %xmm2	# MEM[(double *)_193], MEM[(double *)_193]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_197], MEM[(double *)_193], tmp365
	movq	32(%rsp), %rsi	# %sfp, _187
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp360, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r9), %xmm1	# MEM[(double *)_185], MEM[(double *)_185]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_189], MEM[(double *)_185], tmp368
	movq	8(%rsp), %rsi	# %sfp, _230
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp365, tmp368, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	96(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 96B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp372, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp374
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r8), %xmm2	# MEM[(double *)_228], MEM[(double *)_228]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_232], MEM[(double *)_228], tmp379
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp374, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rdi), %xmm1	# MEM[(double *)_220], MEM[(double *)_220]
	movq	16(%rsp), %rsi	# %sfp, _222
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_224], MEM[(double *)_220], tmp382
	movq	128(%rsp), %rsi	# %sfp, _261
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp379, tmp382, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	128(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 128B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp386, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp388
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_263], MEM[(double *)_263]
	movq	-16(%rsp), %rsi	# %sfp, _265
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_267], MEM[(double *)_263], tmp393
	movq	(%rsp), %rsi	# %sfp, _253
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp388, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_255], MEM[(double *)_255]
	movq	-8(%rsp), %rsi	# %sfp, _257
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_259], MEM[(double *)_255], tmp396
	movq	-40(%rsp), %rsi	# %sfp, _296
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp393, tmp396, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	160(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 160B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp400, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp402
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_298], MEM[(double *)_298]
	movq	-48(%rsp), %rsi	# %sfp, _300
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_302], MEM[(double *)_298], tmp407
	movq	-24(%rsp), %rsi	# %sfp, _288
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp402, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_290], MEM[(double *)_290]
	movq	-32(%rsp), %rsi	# %sfp, _292
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_294], MEM[(double *)_290], tmp410
	movq	88(%rsp), %rsi	# %sfp, _80
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp407, tmp410, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	192(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 192B], vect__17.167, vect__18.168
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, C_ij, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp414, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.168, tmp416
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_78], MEM[(double *)_78]
	movq	96(%rsp), %rsi	# %sfp, _76
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_74], MEM[(double *)_78], tmp421
	movq	72(%rsp), %rsi	# %sfp, _88
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp416, stmp_C_ij_40.169
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_86], MEM[(double *)_86]
	movq	80(%rsp), %rsi	# %sfp, _84
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_82], MEM[(double *)_86], tmp424
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp421, tmp424, vect__17.167
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	224(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.162_103 + 224B], vect__17.167, vect__18.168
	vaddsd	%xmm0, %xmm1, %xmm0	# C_ij, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp428, stmp_C_ij_40.169
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vextractf128	$0x1, %ymm1, %xmm0	# vect__18.168, tmp430
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm0, %xmm1	# stmp_C_ij_40.169, stmp_C_ij_40.169, stmp_C_ij_40.169
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp430, stmp_C_ij_40.169
	vaddsd	%xmm0, %xmm1, %xmm0	# stmp_C_ij_40.169, stmp_C_ij_40.169, C_ij
# main.c:113:             C[i][j] = C_ij;
	vmovsd	%xmm0, (%rcx,%rax)	# C_ij, MEM[(double *)_4 + ivtmp.180_21 * 1]
# main.c:107:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	addq	$8, %rax	#, ivtmp.180
	cmpq	%rax, 112(%rsp)	# ivtmp.180, %sfp
	jne	.L99	#,
# main.c:106:     for (int i=si; i<si+BLOCK_SIZE; i++){
	addq	$8, -56(%rsp)	#, %sfp
	movq	-80(%rsp), %rcx	# %sfp, _145
	movq	-56(%rsp), %rax	# %sfp, ivtmp.192
	movq	128(%rsp), %rsi	# %sfp, _261
	cmpq	%rcx, %rax	# _145, ivtmp.192
	jne	.L98	#,
	vzeroupper
# main.c:116: }
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6648:
	.size	do_block, .-do_block
	.p2align 4
	.globl	blocked_matrix_multiply
	.type	blocked_matrix_multiply, @function
blocked_matrix_multiply:
.LFB6649:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsi, %r11	# tmp455, B
	movl	%ecx, %esi	# tmp457, L
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	andq	$-32, %rsp	#,
	subq	$200, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# main.c:123: void blocked_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	movq	%rdi, -32(%rsp)	# tmp454, %sfp
	movq	%rdx, -40(%rsp)	# tmp456, %sfp
# main.c:125:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	testl	%ecx, %ecx	# L
	jle	.L118	#,
	testl	%r9d, %r9d	# N
	jle	.L118	#,
	movl	%r8d, %eax	# tmp458, M
	testl	%r8d, %r8d	# M
	jle	.L118	#,
	subl	$1, %eax	#, tmp333
	xorl	%ebx, %ebx	# ivtmp.252
# main.c:125:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	xorl	%edx, %edx	# sj
	shrl	$5, %eax	#, tmp334
	addl	$1, %eax	#,
	salq	$8, %rax	#, tmp336
	movq	%rax, 16(%rsp)	# tmp336, %sfp
.L107:
	movl	%edx, -60(%rsp)	# sj, %sfp
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	movl	$256, %r12d	#, ivtmp.246
# main.c:127:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	xorl	%r10d, %r10d	# si
	movq	%rbx, %rcx	# ivtmp.252, ivtmp.252
	leaq	256(%rbx), %rax	#, _131
	movq	%r12, %rdi	# ivtmp.246, ivtmp.246
	movq	%rax, -56(%rsp)	# _131, %sfp
.L114:
	leaq	-256(%rdi), %rax	#, ivtmp.233
	movl	%esi, -64(%rsp)	# L, %sfp
	movq	%r11, %rdx	# B, ivtmp.241
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	xorl	%ebx, %ebx	# ivtmp.240
	movq	%rax, -48(%rsp)	# ivtmp.233, %sfp
	movl	%r10d, %r13d	# si, si
	movq	%r11, -72(%rsp)	# B, %sfp
	movl	%r9d, -76(%rsp)	# N, %sfp
.L113:
	movq	24(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_262], 64, 192>, _100
	movq	-48(%rsp), %r12	# %sfp, ivtmp.233
	movq	16(%rdx), %r15	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_262], 64, 128>, _42
	movq	%rax, 136(%rsp)	# _100, %sfp
	movq	8(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_262], 64, 64>, _36
	movq	%rax, 176(%rsp)	# _36, %sfp
	movq	(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_262], 64, 0>, _32
	movq	%rax, 184(%rsp)	# _32, %sfp
	movq	56(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_263], 64, 192>, _44
	movq	%rax, 168(%rsp)	# _44, %sfp
	movq	48(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_263], 64, 128>, _50
	movq	%rax, 160(%rsp)	# _50, %sfp
	movq	40(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_263], 64, 64>, _55
	movq	%rax, 152(%rsp)	# _55, %sfp
	movq	32(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_263], 64, 0>, _60
	movq	%rax, 144(%rsp)	# _60, %sfp
	movq	88(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_264], 64, 192>, _174
	movq	%rax, 88(%rsp)	# _174, %sfp
	movq	80(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_264], 64, 128>, _170
	movq	%rax, 96(%rsp)	# _170, %sfp
	movq	72(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_264], 64, 64>, _166
	movq	%rax, 104(%rsp)	# _166, %sfp
	movq	64(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_264], 64, 0>, _162
	movq	%rax, 112(%rsp)	# _162, %sfp
	movq	120(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_295], 64, 192>, _209
	movq	%rax, 56(%rsp)	# _209, %sfp
	movq	112(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_295], 64, 128>, _205
	movq	%rax, 64(%rsp)	# _205, %sfp
	movq	104(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_295], 64, 64>, _201
	movq	%rax, 72(%rsp)	# _201, %sfp
	movq	96(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_295], 64, 0>, _197
	movq	%rax, 80(%rsp)	# _197, %sfp
	movq	152(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_228], 64, 192>, _244
	movq	%rdx, -88(%rsp)	# ivtmp.241, %sfp
	movq	160(%rdx), %r11	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_136], 64, 0>, _267
	movq	%rax, 24(%rsp)	# _244, %sfp
	movq	144(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_228], 64, 128>, _240
	movq	208(%rdx), %r10	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_143], 64, 128>, _310
	movq	192(%rdx), %r9	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_143], 64, 0>, _302
	movq	%rax, 32(%rsp)	# _240, %sfp
	movq	136(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_228], 64, 64>, _236
	movq	240(%rdx), %rsi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_137], 64, 128>, _120
	movq	%rax, 40(%rsp)	# _236, %sfp
	movq	128(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_228], 64, 0>, _232
	movq	%rax, 48(%rsp)	# _232, %sfp
	movq	184(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_136], 64, 192>, _279
	movq	%rax, -8(%rsp)	# _279, %sfp
	movq	176(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_136], 64, 128>, _275
	movq	%rax, (%rsp)	# _275, %sfp
	movq	168(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_136], 64, 64>, _271
	movq	%rax, 8(%rsp)	# _271, %sfp
	movq	216(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_143], 64, 192>, _314
	movq	%rax, -24(%rsp)	# _314, %sfp
	movq	200(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_143], 64, 64>, _306
	movq	%rax, -16(%rsp)	# _306, %sfp
	movq	248(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_137], 64, 192>, _116
	movq	%rax, 128(%rsp)	# _116, %sfp
	movq	232(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_137], 64, 64>, _124
	movq	%rax, 120(%rsp)	# _124, %sfp
	movq	224(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_137], 64, 0>, _128
.L111:
# main.c:108: 	    double C_ij = C[i][j];
	movq	-40(%rsp), %rdx	# %sfp, C
	movq	%rbx, -96(%rsp)	# ivtmp.240, %sfp
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	movq	%rcx, %r8	# ivtmp.252, ivtmp.221
# main.c:108: 	    double C_ij = C[i][j];
	movq	(%rdx,%r12), %rdx	# MEM[(double * *)C_15(D) + ivtmp.233_80 * 1], _22
	movq	%rdx, 192(%rsp)	# _22, %sfp
	movq	-32(%rsp), %rdx	# %sfp, A
	movq	(%rdx,%r12), %r14	# MEM[(double * *)A_13(D) + ivtmp.233_80 * 1], vectp.203
	movq	192(%rsp), %rdx	# %sfp, _22
	movq	%r12, 192(%rsp)	# ivtmp.233, %sfp
	movq	-96(%rsp), %r12	# %sfp, ivtmp.240
	addq	%rbx, %r14	# ivtmp.240, vectp.203
	movq	%rdi, %rbx	# ivtmp.246, ivtmp.246
	movq	%rcx, %rdi	# ivtmp.252, ivtmp.252
	movl	%r13d, %ecx	# si, si
	movq	%rbx, %r13	# ivtmp.246, ivtmp.246
	.p2align 4,,10
	.p2align 3
.L108:
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r15,%r8), %xmm1	# MEM[(double *)_133], MEM[(double *)_133]
	movq	136(%rsp), %rbx	# %sfp, _100
	vmovsd	(%rdx,%r8), %xmm2	# MEM[(double *)_22 + ivtmp.221_83 * 1], stmp_C_ij_41.210
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_98], MEM[(double *)_133], tmp338
	movq	184(%rsp), %rbx	# %sfp, _32
	vmovsd	(%rbx,%r8), %xmm0	# MEM[(double *)_34], MEM[(double *)_34]
	movq	176(%rsp), %rbx	# %sfp, _36
	vmovhpd	(%rbx,%r8), %xmm0, %xmm0	# MEM[(double *)_38], MEM[(double *)_34], tmp341
	movq	160(%rsp), %rbx	# %sfp, _50
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0	# tmp338, tmp341, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	(%r14), %ymm0, %ymm0	# MEM <vector(4) double> [(double *)vectp.203_145], vect__38.208, vect__39.209
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp345, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm0, %xmm0, %xmm1	# tmp345, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm0, %xmm0	# vect__39.209, tmp347
	vaddsd	%xmm2, %xmm1, %xmm1	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm2	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp347, stmp_C_ij_41.210
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rbx,%r8), %xmm0	# MEM[(double *)_48], MEM[(double *)_48]
	movq	168(%rsp), %rbx	# %sfp, _44
	vmovhpd	(%rbx,%r8), %xmm0, %xmm0	# MEM[(double *)_40], MEM[(double *)_48], tmp352
	movq	144(%rsp), %rbx	# %sfp, _60
	vmovsd	(%rbx,%r8), %xmm1	# MEM[(double *)_57], MEM[(double *)_57]
	movq	152(%rsp), %rbx	# %sfp, _55
	vmovhpd	(%rbx,%r8), %xmm1, %xmm1	# MEM[(double *)_53], MEM[(double *)_57], tmp355
	movq	96(%rsp), %rbx	# %sfp, _170
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm1	# tmp352, tmp355, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	32(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 32B], vect__38.208, vect__39.209
	vaddsd	%xmm2, %xmm1, %xmm2	# C_ij, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm0	# tmp359, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp361
	vaddsd	%xmm2, %xmm0, %xmm2	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm1, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_172], MEM[(double *)_172]
	movq	88(%rsp), %rbx	# %sfp, _174
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp361, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_176], MEM[(double *)_172], tmp366
	movq	112(%rsp), %rbx	# %sfp, _162
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_164], MEM[(double *)_164]
	movq	104(%rsp), %rbx	# %sfp, _166
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_168], MEM[(double *)_164], tmp369
	movq	64(%rsp), %rbx	# %sfp, _205
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp366, tmp369, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	64(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 64B], vect__38.208, vect__39.209
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, C_ij, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp373, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp375
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_207], MEM[(double *)_207]
	movq	56(%rsp), %rbx	# %sfp, _209
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_211], MEM[(double *)_207], tmp380
	movq	80(%rsp), %rbx	# %sfp, _197
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp375, stmp_C_ij_41.210
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_199], MEM[(double *)_199]
	movq	72(%rsp), %rbx	# %sfp, _201
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_203], MEM[(double *)_199], tmp383
	movq	32(%rsp), %rbx	# %sfp, _240
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp380, tmp383, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	96(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 96B], vect__38.208, vect__39.209
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, C_ij, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp387, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp389
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_242], MEM[(double *)_242]
	movq	24(%rsp), %rbx	# %sfp, _244
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_246], MEM[(double *)_242], tmp394
	movq	48(%rsp), %rbx	# %sfp, _232
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp389, stmp_C_ij_41.210
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_234], MEM[(double *)_234]
	movq	40(%rsp), %rbx	# %sfp, _236
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_238], MEM[(double *)_234], tmp397
	movq	(%rsp), %rbx	# %sfp, _275
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp394, tmp397, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	128(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 128B], vect__38.208, vect__39.209
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, C_ij, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp401, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp403
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_277], MEM[(double *)_277]
	movq	-8(%rsp), %rbx	# %sfp, _279
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_281], MEM[(double *)_277], tmp408
	movq	8(%rsp), %rbx	# %sfp, _271
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp403, stmp_C_ij_41.210
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r11), %xmm1	# MEM[(double *)_269], MEM[(double *)_269]
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_273], MEM[(double *)_269], tmp411
	movq	-24(%rsp), %rbx	# %sfp, _314
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp408, tmp411, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	160(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 160B], vect__38.208, vect__39.209
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, C_ij, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp415, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp417
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r10), %xmm2	# MEM[(double *)_312], MEM[(double *)_312]
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_316], MEM[(double *)_312], tmp422
	movq	-16(%rsp), %rbx	# %sfp, _306
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp417, stmp_C_ij_41.210
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r9), %xmm1	# MEM[(double *)_304], MEM[(double *)_304]
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_308], MEM[(double *)_304], tmp425
	movq	128(%rsp), %rbx	# %sfp, _116
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp422, tmp425, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	192(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 192B], vect__38.208, vect__39.209
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, C_ij, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp429, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.209, tmp431
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rsi), %xmm2	# MEM[(double *)_118], MEM[(double *)_118]
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_114], MEM[(double *)_118], tmp436
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp431, stmp_C_ij_41.210
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rax), %xmm1	# MEM[(double *)_126], MEM[(double *)_126]
	movq	120(%rsp), %rbx	# %sfp, _124
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_122], MEM[(double *)_126], tmp439
# main.c:107:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	movq	-56(%rsp), %rbx	# %sfp, _131
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp436, tmp439, vect__38.208
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	224(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.203_145 + 224B], vect__38.208, vect__39.209
	vaddsd	%xmm0, %xmm1, %xmm0	# C_ij, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp443, stmp_C_ij_41.210
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vextractf128	$0x1, %ymm1, %xmm0	# vect__39.209, tmp445
# main.c:111: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm0, %xmm1	# stmp_C_ij_41.210, stmp_C_ij_41.210, stmp_C_ij_41.210
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp445, stmp_C_ij_41.210
	vaddsd	%xmm0, %xmm1, %xmm0	# stmp_C_ij_41.210, stmp_C_ij_41.210, C_ij
# main.c:113:             C[i][j] = C_ij;
	vmovsd	%xmm0, (%rdx,%r8)	# C_ij, MEM[(double *)_22 + ivtmp.221_83 * 1]
# main.c:107:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	addq	$8, %r8	#, ivtmp.221
	cmpq	%rbx, %r8	# _131, ivtmp.221
	jne	.L108	#,
# main.c:106:     for (int i=si; i<si+BLOCK_SIZE; i++){
	movq	%r12, %rbx	# ivtmp.240, ivtmp.240
	movq	192(%rsp), %r12	# %sfp, ivtmp.233
	movq	%r13, %rdx	# ivtmp.246, ivtmp.246
	movl	%ecx, %r13d	# si, si
	movq	%rdi, %rcx	# ivtmp.252, ivtmp.252
	movq	%rdx, %rdi	# ivtmp.246, ivtmp.246
	addq	$8, %r12	#, ivtmp.233
	cmpq	%rdx, %r12	# ivtmp.246, ivtmp.233
	jne	.L111	#,
# main.c:129:             for(int sk=0; sk<M; sk+=BLOCK_SIZE){
	movq	-88(%rsp), %rdx	# %sfp, ivtmp.241
	movq	16(%rsp), %rax	# %sfp, _260
	addq	$256, %rbx	#, ivtmp.240
	addq	$256, %rdx	#, ivtmp.241
	cmpq	%rax, %rbx	# _260, ivtmp.240
	jne	.L113	#,
# main.c:127:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	movl	%r13d, %r10d	# si, si
	movl	-76(%rsp), %r9d	# %sfp, N
	movl	-64(%rsp), %esi	# %sfp, L
# main.c:127:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	leaq	256(%r12), %rdi	#, ivtmp.246
# main.c:127:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	addl	$32, %r10d	#, si
	movq	-72(%rsp), %r11	# %sfp, B
# main.c:127:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	cmpl	%r10d, %r9d	# si, N
	jg	.L114	#,
# main.c:125:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	movl	-60(%rsp), %edx	# %sfp, sj
	addl	$32, %edx	#, sj
# main.c:125:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	cmpl	%edx, %esi	# sj, L
	jle	.L117	#,
	movq	%r8, %rbx	# ivtmp.221, ivtmp.252
	jmp	.L107	#
.L117:
	vzeroupper
.L118:
# main.c:134: }
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6649:
	.size	blocked_matrix_multiply, .-blocked_matrix_multiply
	.p2align 4
	.globl	subword_parallelism_matrix_multiply
	.type	subword_parallelism_matrix_multiply, @function
subword_parallelism_matrix_multiply:
.LFB6650:
	.cfi_startproc
	endbr64	
	movq	%rdx, %r11	# tmp134, C
	movslq	%ecx, %rdx	# tmp135,
# main.c:143:     for(int i=0; i<L; i++) {
	testl	%edx, %edx	# L
	jle	.L133	#,
	movl	%r9d, %eax	# tmp137, N
	testl	%r9d, %r9d	# N
	jle	.L133	#,
# main.c:141: void subword_parallelism_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9	# A, ivtmp.276
	movq	%rsi, %r10	# tmp133, B
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	.cfi_offset 13, -24
	leaq	(%rdi,%rdx,8), %r13	#, _72
	movslq	%r8d, %rdi	# M, M
	pushq	%r12	#
	salq	$3, %rdi	#, _47
	.cfi_offset 12, -32
	movl	%r8d, %r12d	# tmp136, M
	pushq	%rbx	#
	.cfi_offset 3, -40
	leal	-1(%rax), %ebx	#, tmp118
	shrl	$2, %ebx	#, tmp119
	addl	$1, %ebx	#,
	salq	$5, %rbx	#, _22
	.p2align 4,,10
	.p2align 3
.L123:
# main.c:141: void subword_parallelism_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	xorl	%ecx, %ecx	# ivtmp.270
	.p2align 4,,10
	.p2align 3
.L126:
# main.c:147:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	movq	(%r11), %r8	# MEM[(double * *)_74], MEM[(double * *)_74]
	leaq	(%r8,%rcx), %rax	#, _67
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	vmovapd	(%rax), %ymm1	# MEM[(__m256d * {ref-all})_7], c0
# main.c:149:             for(int k=0; k<M; k++){
	testl	%r12d, %r12d	# M
	jle	.L124	#,
	movq	(%r9), %rsi	# MEM[(double * *)_75], MEM[(double * *)_75]
	xorl	%eax, %eax	# ivtmp.263
	.p2align 4,,10
	.p2align 3
.L125:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	movq	(%r10,%rax), %rdx	# MEM[(double * *)B_35(D) + ivtmp.263_62 * 1], MEM[(double * *)B_35(D) + ivtmp.263_62 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	vbroadcastsd	(%rsi,%rax), %ymm0	#* ivtmp.263, tmp124
# main.c:149:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.263
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	vmulpd	(%rdx,%rcx), %ymm0, %ymm0	# MEM[(__m256d * {ref-all})_15], tmp124, tmp128
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	vaddpd	%ymm0, %ymm1, %ymm1	# tmp128, c0, c0
# main.c:149:             for(int k=0; k<M; k++){
	cmpq	%rax, %rdi	# ivtmp.263, _47
	jne	.L125	#,
# main.c:156: 	    _mm256_store_pd(&C[i][j], c0);
	leaq	(%r8,%rcx), %rax	#, _67
.L124:
# main.c:145:         for(int j=0; j<N; j+=MM256_STRIDE) {
	addq	$32, %rcx	#, ivtmp.270
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:875:   *(__m256d *)__P = __A;
	vmovapd	%ymm1, (%rax)	# c0, MEM[(__m256d * {ref-all})prephitmp_68]
# main.c:145:         for(int j=0; j<N; j+=MM256_STRIDE) {
	cmpq	%rcx, %rbx	# ivtmp.270, _22
	jne	.L126	#,
# main.c:143:     for(int i=0; i<L; i++) {
	addq	$8, %r9	#, ivtmp.276
	addq	$8, %r11	#, ivtmp.275
	cmpq	%r13, %r9	# _72, ivtmp.276
	jne	.L123	#,
	vzeroupper
# main.c:159: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
.L133:
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	ret	
	.cfi_endproc
.LFE6650:
	.size	subword_parallelism_matrix_multiply, .-subword_parallelism_matrix_multiply
	.p2align 4
	.globl	free_matrices
	.type	free_matrices, @function
free_matrices:
.LFB6651:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13	# tmp110, A
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12	# tmp111, B
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movslq	%r8d, %rbp	# tmp114,
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# main.c:167: void free_matrices(double **A, double **B, double **C, int L, int M, int N) {
	movq	%rdx, 8(%rsp)	# C, %sfp
# main.c:168:     for(int i=0; i<L; i++) {
	testl	%ecx, %ecx	# L
	jle	.L137	#,
	movslq	%ecx, %rcx	# L, L
	movq	%rdi, %r14	# A, ivtmp.291
	movq	%rdx, %rbx	# C, ivtmp.292
	leaq	(%rdi,%rcx,8), %r15	#, _52
	.p2align 4,,10
	.p2align 3
.L138:
# main.c:169:         free(A[i]);
	movq	(%r14), %rdi	# MEM[(double * *)_47], MEM[(double * *)_47]
# main.c:168:     for(int i=0; i<L; i++) {
	addq	$8, %r14	#, ivtmp.291
	addq	$8, %rbx	#, ivtmp.292
# main.c:169:         free(A[i]);
	call	free@PLT	#
# main.c:170:         free(C[i]);
	movq	-8(%rbx), %rdi	# MEM[(double * *)_48], MEM[(double * *)_48]
	call	free@PLT	#
# main.c:168:     for(int i=0; i<L; i++) {
	cmpq	%r15, %r14	# _52, ivtmp.291
	jne	.L138	#,
.L137:
# main.c:172:     for(int i=0; i<M; i++) {
	testl	%ebp, %ebp	# M
	jle	.L139	#,
	movq	%r12, %rbx	# B, ivtmp.286
	leaq	(%r12,%rbp,8), %rbp	#, _29
	.p2align 4,,10
	.p2align 3
.L140:
# main.c:173:         free(B[i]);
	movq	(%rbx), %rdi	# MEM[(double * *)_39], MEM[(double * *)_39]
# main.c:172:     for(int i=0; i<M; i++) {
	addq	$8, %rbx	#, ivtmp.286
# main.c:173:         free(B[i]);
	call	free@PLT	#
# main.c:172:     for(int i=0; i<M; i++) {
	cmpq	%rbx, %rbp	# ivtmp.286, _29
	jne	.L140	#,
.L139:
# main.c:175:     free(A);
	movq	%r13, %rdi	# A,
	call	free@PLT	#
# main.c:176:     free(B);
	movq	%r12, %rdi	# B,
	call	free@PLT	#
# main.c:177:     free(C);
	movq	8(%rsp), %rdi	# %sfp,
# main.c:178: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# main.c:177:     free(C);
	jmp	free@PLT	#
	.cfi_endproc
.LFE6651:
	.size	free_matrices, .-free_matrices
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"ERROR: incorrect number of arguments"
	.section	.rodata.str1.1
.LC4:
	.string	"ERROR: invalid arguments"
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"ERROR: cannot allocate memory for matrix A"
	.align 8
.LC6:
	.string	"ERROR: cannot allocate memory for matrix B"
	.align 8
.LC8:
	.string	"ERROR: cannot allocate memory for matrix C"
	.align 8
.LC9:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, UNROLL: %u\n"
	.align 8
.LC10:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld, THREADS: %u\n"
	.align 8
.LC11:
	.string	"L = %u, M = %u, N = %u, EXEC TIME: %ld.%06ld\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB6652:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r13	# tmp292, argv
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$168, %rsp	#,
	.cfi_def_cfa_offset 224
# main.c:180: int main(int argc, char **argv) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp312
	movq	%rax, 152(%rsp)	# tmp312, D.41342
	xorl	%eax, %eax	# tmp312
# main.c:190:     if(argc > 7) {
	cmpl	$7, %edi	#, tmp291
	jg	.L231	#,
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_83(D) + 8B], MEM[(char * *)argv_83(D) + 8B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
	movq	16(%r13), %rdi	# MEM[(char * *)argv_83(D) + 16B], MEM[(char * *)argv_83(D) + 16B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%rax, 8(%rsp)	# _130, %sfp
	movl	%eax, %r15d	# _130, _131
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	24(%r13), %rdi	# MEM[(char * *)argv_83(D) + 24B], MEM[(char * *)argv_83(D) + 24B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %rbp	# tmp294, _128
	movq	%rax, 24(%rsp)	# _128, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, 80(%rsp)	# tmp352, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	32(%r13), %rdi	# MEM[(char * *)argv_83(D) + 32B], MEM[(char * *)argv_83(D) + 32B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, 16(%rsp)	# _126, %sfp
	movq	%rax, %r14	# tmp295, _126
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, 76(%rsp)	# tmp353, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	40(%r13), %rdi	# MEM[(char * *)argv_83(D) + 40B], MEM[(char * *)argv_83(D) + 40B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %rbx	# tmp296, _125
	call	strtol@PLT	#
	movq	48(%r13), %rdi	# MEM[(char * *)argv_83(D) + 48B], MEM[(char * *)argv_83(D) + 48B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%rax, 32(%rsp)	# tmp297, %sfp
	call	strtol@PLT	#
# main.c:201:     srand(seed);
	movl	%ebx, %edi	# _125, _125
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	%rax, 88(%rsp)	# _121, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %r12d	# _121, _122
# main.c:201:     srand(seed);
	call	srand@PLT	#
# main.c:203:     if( !L || !M || !N ) {
	movl	8(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	sete	%al	#, tmp212
# main.c:203:     if( !L || !M || !N ) {
	testl	%ebp, %ebp	# _128
	sete	%dl	#, tmp214
# main.c:203:     if( !L || !M || !N ) {
	orb	%dl, %al	# tmp214, tmp313
	jne	.L192	#,
	testl	%r14d, %r14d	# _126
	je	.L192	#,
# main.c:209:     if (mode == 3)
	cmpl	$3, 32(%rsp)	#, %sfp
	je	.L232	#,
# main.c:212:         omp_set_num_threads(OMP_THREADS);
	movl	$4, %edi	#,
	call	omp_set_num_threads@PLT	#
.L149:
# main.c:218:     A = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	8(%rsp), %rbx	# %sfp, _130
	movl	$32, %edi	#,
	movslq	%ebx, %rax	# _130, _131
	salq	$3, %rax	#, _14
	movq	%rax, %rsi	# _14,
	movq	%rax, 56(%rsp)	# _14, %sfp
	call	aligned_alloc@PLT	#
	movq	%rax, 40(%rsp)	# A, %sfp
# main.c:219:     if(A == NULL) {
	testq	%rax, %rax	# A
	je	.L150	#,
# main.c:232:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	movslq	24(%rsp), %r12	# %sfp, _129
	salq	$3, %r12	#, _237
# main.c:223:     for(int i=0; i<L; i++) {
	testl	%ebx, %ebx	# _130
	jle	.L156	#,
	movq	%rax, %rcx	# A, A
	movq	%rax, %r13	# A, ivtmp.337
	movq	8(%rsp), %rax	# %sfp, _130
	subl	$1, %eax	#, tmp225
	leaq	8(%rcx,%rax,8), %rbx	#, _272
	.p2align 4,,10
	.p2align 3
.L155:
# main.c:224:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	movq	%r12, %rsi	# _237,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:224:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	movq	%rax, 0(%r13)	# tmp228, MEM[(double * *)_265]
# main.c:225:         if(A[i] == NULL) {
	testq	%rax, %rax	# tmp228
	je	.L150	#,
# main.c:223:     for(int i=0; i<L; i++) {
	addq	$8, %r13	#, ivtmp.337
	cmpq	%rbx, %r13	# _272, ivtmp.337
	jne	.L155	#,
.L156:
# main.c:232:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	movq	%r12, %rsi	# _237,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, 48(%rsp)	# B, %sfp
# main.c:233:     if(B == NULL) {
	testq	%rax, %rax	# B
	je	.L152	#,
# main.c:237:     for(int i=0; i<M; i++) {
	movl	24(%rsp), %eax	# %sfp,
	testl	%eax, %eax	#
	jle	.L233	#,
# main.c:238:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movslq	16(%rsp), %rax	# %sfp, _127
	movl	24(%rsp), %ecx	# %sfp, tmp361
	movq	%rax, 64(%rsp)	# _127, %sfp
	leal	-1(%rcx), %r12d	#,
	leaq	0(,%rax,8), %r13	#, _24
	movq	48(%rsp), %rax	# %sfp, B
	movq	%r12, %rbp	#,
	addq	$1, %r12	#, tmp287
	movq	%rax, %r14	# B, ivtmp.332
	leaq	(%rax,%r12,8), %rbx	#, _261
	.p2align 4,,10
	.p2align 3
.L159:
	movq	%r13, %rsi	# _24,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:238:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, (%r14)	# tmp234, MEM[(double * *)_254]
# main.c:239:         if(B[i] == NULL) {
	testq	%rax, %rax	# tmp234
	je	.L152	#,
# main.c:237:     for(int i=0; i<M; i++) {
	addq	$8, %r14	#, ivtmp.332
	cmpq	%rbx, %r14	# _261, ivtmp.332
	jne	.L159	#,
# main.c:245:     for(int i=0; i<L; i++)
	movl	8(%rsp), %r14d	# %sfp,
	testl	%r14d, %r14d	#
	jle	.L165	#,
	movl	%ebp, 84(%rsp)	# tmp289, %sfp
	movq	40(%rsp), %rbx	# %sfp, ivtmp.328
	salq	$3, %r12	#, _21
# main.c:245:     for(int i=0; i<L; i++)
	xorl	%r14d, %r14d	# i
	vmovsd	.LC2(%rip), %xmm7	#, tmp290
	vmovsd	%xmm7, (%rsp)	# tmp290, %sfp
	.p2align 4,,10
	.p2align 3
.L163:
# main.c:180: int main(int argc, char **argv) {
	xorl	%r13d, %r13d	# ivtmp.323
	.p2align 4,,10
	.p2align 3
.L166:
# main.c:247:             A[i][j] = drand(MIN, MAX);
	movq	(%rbx), %rbp	# MEM[(double * *)_250], _35
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	call	rand@PLT	#
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp365
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp367
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vcvtsi2sdl	%eax, %xmm1, %xmm0	# tmp303, tmp365, tmp310
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vdivsd	(%rsp), %xmm0, %xmm0	# %sfp, tmp237, random_double
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vaddsd	%xmm3, %xmm0, %xmm0	# tmp367, random_double, random_double
# main.c:247:             A[i][j] = drand(MIN, MAX);
	addq	%r13, %rbp	# ivtmp.323, _35
# main.c:246:         for(int j=0; j<M; j++)
	addq	$8, %r13	#, ivtmp.323
# main.c:247:             A[i][j] = drand(MIN, MAX);
	vmovsd	%xmm0, 0(%rbp)	# random_double, *_35
# main.c:246:         for(int j=0; j<M; j++)
	cmpq	%r13, %r12	# ivtmp.323, _21
	jne	.L166	#,
# main.c:245:     for(int i=0; i<L; i++)
	addl	$1, %r14d	#, i
# main.c:245:     for(int i=0; i<L; i++)
	addq	$8, %rbx	#, ivtmp.328
	cmpl	%r15d, %r14d	# _131, i
	jl	.L163	#,
	movl	84(%rsp), %ebp	# %sfp, tmp289
.L165:
	movq	16(%rsp), %rdx	# %sfp, _126
	testl	%edx, %edx	# _126
	jle	.L167	#,
	movq	48(%rsp), %rcx	# %sfp, B
	movl	%ebp, %eax	# tmp289, tmp242
	vmovsd	.LC2(%rip), %xmm7	#, tmp290
	leaq	8(%rcx,%rax,8), %r12	#, _150
	leal	-1(%rdx), %eax	#, tmp246
	movq	%rcx, %r14	# B, ivtmp.319
	vmovsd	%xmm7, (%rsp)	# tmp290, %sfp
	leaq	8(,%rax,8), %rbx	#, _50
	.p2align 4,,10
	.p2align 3
.L168:
# main.c:245:     for(int i=0; i<L; i++)
	xorl	%ebp, %ebp	# ivtmp.314
	.p2align 4,,10
	.p2align 3
.L169:
# main.c:251:             B[i][j] = drand(MIN, MAX);
	movq	(%r14), %r13	# MEM[(double * *)_154], _42
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	call	rand@PLT	#
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp372
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp374
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vcvtsi2sdl	%eax, %xmm4, %xmm0	# tmp304, tmp372, tmp311
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vdivsd	(%rsp), %xmm0, %xmm0	# %sfp, tmp249, random_double
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vaddsd	%xmm6, %xmm0, %xmm0	# tmp374, random_double, random_double
# main.c:251:             B[i][j] = drand(MIN, MAX);
	addq	%rbp, %r13	# ivtmp.314, _42
# main.c:250:         for(int j=0; j<N; j++)
	addq	$8, %rbp	#, ivtmp.314
# main.c:251:             B[i][j] = drand(MIN, MAX);
	vmovsd	%xmm0, 0(%r13)	# random_double, *_42
# main.c:250:         for(int j=0; j<N; j++)
	cmpq	%rbp, %rbx	# ivtmp.314, _50
	jne	.L169	#,
# main.c:249:     for(int i=0; i<M; i++)
	addq	$8, %r14	#, ivtmp.319
	cmpq	%r14, %r12	# ivtmp.319, _150
	jne	.L168	#,
.L167:
# main.c:254:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	56(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, %rbp	# tmp305, C
# main.c:255:     if(C == NULL) {
	testq	%rax, %rax	# C
	je	.L174	#,
# main.c:259:     for(int i=0; i<L; i++) {
	movl	8(%rsp), %r13d	# %sfp,
	testl	%r13d, %r13d	#
	jle	.L190	#,
.L172:
	movq	8(%rsp), %rax	# %sfp, _130
# main.c:260:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	64(%rsp), %r13	# %sfp, _127
# main.c:267:             C[i][j] = 0.0;    
	movl	%r15d, (%rsp)	# _131, %sfp
	movq	%rbp, %rbx	# C, ivtmp.309
	movl	76(%rsp), %r15d	# %sfp, _127
	subl	$1, %eax	#, tmp257
# main.c:260:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	salq	$3, %r13	#, _127
	leaq	8(%rbp,%rax,8), %r12	#, _173
# main.c:267:             C[i][j] = 0.0;    
	movq	16(%rsp), %rax	# %sfp, _126
	subl	$1, %eax	#, tmp261
	leaq	8(,%rax,8), %r14	#, _182
	.p2align 4,,10
	.p2align 3
.L176:
# main.c:260:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movl	$32, %edi	#,
	movq	%r13, %rsi	# _44,
	call	aligned_alloc@PLT	#
# main.c:260:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, (%rbx)	# tmp263, MEM[(double * *)_72]
# main.c:260:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, %rdi	# tmp306, tmp263
# main.c:261:         if(C[i] == NULL) {
	testq	%rax, %rax	# tmp263
	je	.L174	#,
# main.c:266:         for(int j=0; j<N; j++){
	testl	%r15d, %r15d	# _127
	jle	.L177	#,
# main.c:267:             C[i][j] = 0.0;    
	movq	%r14, %rdx	# _182,
	xorl	%esi, %esi	#
	call	memset@PLT	#
.L177:
# main.c:259:     for(int i=0; i<L; i++) {
	addq	$8, %rbx	#, ivtmp.309
	cmpq	%r12, %rbx	# _173, ivtmp.309
	jne	.L176	#,
	movl	(%rsp), %r15d	# %sfp, _131
.L190:
# main.c:285:     gettimeofday(&start, NULL);
	xorl	%esi, %esi	#
	leaq	96(%rsp), %rdi	#, tmp268
	call	gettimeofday@PLT	#
# main.c:288:     if (mode == 1 || mode == 0)
	cmpl	$1, 32(%rsp)	#, %sfp
	jbe	.L234	#,
# main.c:290:     else if (mode == 2)
	cmpl	$2, 32(%rsp)	#, %sfp
	je	.L235	#,
# main.c:292:     else if (mode == 3)
	cmpl	$3, 32(%rsp)	#, %sfp
	je	.L236	#,
# main.c:294:     else if (mode == 4)
	cmpl	$4, 32(%rsp)	#, %sfp
	je	.L237	#,
# main.c:296:     else if (mode == 5)
	cmpl	$5, 32(%rsp)	#, %sfp
	je	.L238	#,
.L179:
# main.c:299:     gettimeofday(&stop, NULL);
	leaq	112(%rsp), %rdi	#, tmp281
	xorl	%esi, %esi	#
	call	gettimeofday@PLT	#
# main.c:300:     timersub(&stop, &start, &total);
	movq	112(%rsp), %r9	# MEM[(struct timeval *)_226].tv_sec, MEM[(struct timeval *)_226].tv_sec
	movq	120(%rsp), %rax	# MEM[(struct timeval *)_226].tv_usec, MEM[(struct timeval *)_226].tv_usec
	subq	96(%rsp), %r9	# start.tv_sec, _65
	subq	104(%rsp), %rax	# start.tv_usec, _73
	js	.L239	#,
.L189:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	pushq	%rdx	#
	.cfi_def_cfa_offset 232
	leaq	.LC11(%rip), %rsi	#, tmp279
	movl	%r15d, %edx	# _131,
	movl	$2, %edi	#,
	pushq	%rax	# _73
	.cfi_def_cfa_offset 240
	movl	32(%rsp), %r8d	# %sfp,
	xorl	%eax, %eax	#
	movl	96(%rsp), %ecx	# %sfp,
	call	__printf_chk@PLT	#
	popq	%rcx	#
	.cfi_def_cfa_offset 232
	popq	%rsi	#
	.cfi_def_cfa_offset 224
.L187:
# main.c:332:     free_matrices(A, B, C, L, M, N);
	movl	16(%rsp), %r9d	# %sfp,
	movl	24(%rsp), %r8d	# %sfp,
	movl	%r15d, %ecx	# _131,
	movq	%rbp, %rdx	# C,
	movq	48(%rsp), %rsi	# %sfp,
	movq	40(%rsp), %rdi	# %sfp,
	call	free_matrices	#
.L154:
# main.c:335: }
	movq	152(%rsp), %rax	# D.41342, tmp314
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp314
	jne	.L240	#,
	addq	$168, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L232:
	.cfi_restore_state
# main.c:210:         omp_set_num_threads(ADDIT_ARG);
	movl	%r12d, %edi	# _122,
	call	omp_set_num_threads@PLT	#
	jmp	.L149	#
.L234:
# main.c:289:         matrix_multiply(A, B, C, L, M, N);
	movl	16(%rsp), %r9d	# %sfp,
	movl	24(%rsp), %r8d	# %sfp,
	movl	%r15d, %ecx	# _131,
	movq	%rbp, %rdx	# C,
	movq	48(%rsp), %rsi	# %sfp,
	movq	40(%rsp), %rdi	# %sfp,
	call	matrix_multiply	#
	jmp	.L179	#
.L236:
# main.c:91:     #pragma omp parallel for
	movl	16(%rsp), %eax	# %sfp, tmp379
	leaq	112(%rsp), %rbx	#, tmp272
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	movq	%rbx, %rsi	# tmp272,
	leaq	multicore_matrix_multiply._omp_fn.0(%rip), %rdi	#, tmp273
	movq	%rbp, 128(%rsp)	# C, MEM[(struct .omp_data_s.3 *)_226].C
	movl	%eax, 144(%rsp)	# tmp379, MEM[(struct .omp_data_s.3 *)_226].N
	movl	24(%rsp), %eax	# %sfp, tmp380
	movl	%eax, 140(%rsp)	# tmp380, MEM[(struct .omp_data_s.3 *)_226].M
	movl	8(%rsp), %eax	# %sfp, tmp381
	movl	%eax, 136(%rsp)	# tmp381, MEM[(struct .omp_data_s.3 *)_226].L
	movq	48(%rsp), %rax	# %sfp, B
	movq	%rax, 120(%rsp)	# B, MEM[(struct .omp_data_s.3 *)_226].B
	movq	40(%rsp), %rax	# %sfp, A
	movq	%rax, 112(%rsp)	# A, MEM[(struct .omp_data_s.3 *)_226].A
	call	GOMP_parallel@PLT	#
# main.c:299:     gettimeofday(&stop, NULL);
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# tmp272,
	call	gettimeofday@PLT	#
# main.c:300:     timersub(&stop, &start, &total);
	movq	112(%rsp), %r9	# MEM[(struct timeval *)_226].tv_sec, MEM[(struct timeval *)_226].tv_sec
	movq	120(%rsp), %rax	# MEM[(struct timeval *)_226].tv_usec, MEM[(struct timeval *)_226].tv_usec
	subq	96(%rsp), %r9	# start.tv_sec, _208
	subq	104(%rsp), %rax	# start.tv_usec, _211
	jns	.L185	#,
# main.c:300:     timersub(&stop, &start, &total);
	subq	$1, %r9	#, _208
	addq	$1000000, %rax	#, _211
.L185:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	88(%rsp), %ecx	# %sfp, tmp385
	movl	$2, %edi	#,
	movl	%r15d, %edx	# _131,
	leaq	.LC10(%rip), %rsi	#, tmp278
	pushq	%rcx	# tmp385
	.cfi_def_cfa_offset 232
	pushq	%rax	# _211
	.cfi_def_cfa_offset 240
	movl	32(%rsp), %r8d	# %sfp,
	xorl	%eax, %eax	#
	movl	96(%rsp), %ecx	# %sfp,
	call	__printf_chk@PLT	#
	popq	%rdi	#
	.cfi_def_cfa_offset 232
	popq	%r8	#
	.cfi_def_cfa_offset 224
	jmp	.L187	#
.L235:
# main.c:291:         unrolled_matrix_multiply(A, B, C, L, M, N, ADDIT_ARG);
	pushq	%r11	#
	.cfi_def_cfa_offset 232
	movl	96(%rsp), %eax	# %sfp, tmp378
	movl	%r15d, %ecx	# _131,
	movq	%rbp, %rdx	# C,
	pushq	%rax	# tmp378
	.cfi_def_cfa_offset 240
	movl	32(%rsp), %r9d	# %sfp,
	movl	40(%rsp), %r8d	# %sfp,
	movq	64(%rsp), %rsi	# %sfp,
	movq	56(%rsp), %rdi	# %sfp,
	call	unrolled_matrix_multiply	#
# main.c:299:     gettimeofday(&stop, NULL);
	leaq	128(%rsp), %rdi	#, tmp269
	xorl	%esi, %esi	#
	call	gettimeofday@PLT	#
# main.c:300:     timersub(&stop, &start, &total);
	movq	128(%rsp), %r9	# MEM[(struct timeval *)_226].tv_sec, MEM[(struct timeval *)_226].tv_sec
	movq	136(%rsp), %rax	# MEM[(struct timeval *)_226].tv_usec, MEM[(struct timeval *)_226].tv_usec
	subq	112(%rsp), %r9	# start.tv_sec, total$tv_sec
	popq	%rbx	#
	.cfi_def_cfa_offset 232
	popq	%r12	#
	.cfi_def_cfa_offset 224
	subq	104(%rsp), %rax	# start.tv_usec, total$tv_usec
	jns	.L182	#,
# main.c:300:     timersub(&stop, &start, &total);
	subq	$1, %r9	#, total$tv_sec
	addq	$1000000, %rax	#, total$tv_usec
.L182:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	88(%rsp), %ecx	# %sfp, tmp384
	movl	%r15d, %edx	# _131,
	movl	$2, %edi	#,
	leaq	.LC9(%rip), %rsi	#, tmp277
	pushq	%rcx	# tmp384
	.cfi_def_cfa_offset 232
	pushq	%rax	# total$tv_usec
	.cfi_def_cfa_offset 240
	movl	32(%rsp), %r8d	# %sfp,
	xorl	%eax, %eax	#
	movl	96(%rsp), %ecx	# %sfp,
	call	__printf_chk@PLT	#
	popq	%r9	#
	.cfi_def_cfa_offset 232
	popq	%r10	#
	.cfi_def_cfa_offset 224
	jmp	.L187	#
.L237:
# main.c:295:         blocked_matrix_multiply(A, B, C, L, M, N);
	movl	16(%rsp), %r9d	# %sfp,
	movl	24(%rsp), %r8d	# %sfp,
	movl	%r15d, %ecx	# _131,
	movq	%rbp, %rdx	# C,
	movq	48(%rsp), %rsi	# %sfp,
	movq	40(%rsp), %rdi	# %sfp,
	call	blocked_matrix_multiply	#
	jmp	.L179	#
.L239:
# main.c:300:     timersub(&stop, &start, &total);
	subq	$1, %r9	#, _65
	addq	$1000000, %rax	#, _73
	jmp	.L189	#
.L238:
# main.c:297:         subword_parallelism_matrix_multiply(A, B, C, L, M, N);
	movl	16(%rsp), %r9d	# %sfp,
	movl	24(%rsp), %r8d	# %sfp,
	movl	%r15d, %ecx	# _131,
	movq	%rbp, %rdx	# C,
	movq	48(%rsp), %rsi	# %sfp,
	movq	40(%rsp), %rdi	# %sfp,
	call	subword_parallelism_matrix_multiply	#
	jmp	.L179	#
.L233:
# main.c:245:     for(int i=0; i<L; i++)
	cmpl	$0, 8(%rsp)	#, %sfp
	jle	.L241	#,
# main.c:254:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	56(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, %rbp	# tmp308, C
# main.c:255:     if(C == NULL) {
	testq	%rax, %rax	# C
	je	.L174	#,
	movslq	16(%rsp), %rax	# %sfp, _127
	movq	%rax, 64(%rsp)	# _127, %sfp
	jmp	.L172	#
.L192:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC4(%rip), %rdi	#, tmp218
	call	puts@PLT	#
# main.c:205:         print_help_and_exit(argv);
	movq	%r13, %rdi	# argv,
	call	print_help_and_exit	#
.L231:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC3(%rip), %rdi	#, tmp203
	call	puts@PLT	#
# main.c:192:         print_help_and_exit(argv);
	movq	%r13, %rdi	# argv,
	call	print_help_and_exit	#
.L150:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC5(%rip), %rdi	#, tmp223
	call	puts@PLT	#
# main.c:221:         return 0;
	jmp	.L154	#
.L241:
# main.c:254:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	56(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, %rbp	# tmp307, C
# main.c:255:     if(C == NULL) {
	testq	%rax, %rax	# C
	jne	.L190	#,
.L174:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC8(%rip), %rdi	#, tmp254
	call	puts@PLT	#
# main.c:257:         return 0;
	jmp	.L154	#
.L152:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC6(%rip), %rdi	#, tmp229
	call	puts@PLT	#
# main.c:235:         return 0;
	jmp	.L154	#
.L240:
# main.c:335: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE6652:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	-4194304
	.long	1105199103
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
