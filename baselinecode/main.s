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
	cmpl	%edx, %r11d	# tt.4_2, _19
	jl	.L2	#,
.L9:
	imull	%eax, %r11d	# q.3_1, tmp118
	addl	%edx, %r11d	# tt.4_2, _24
	leal	(%rax,%r11), %ebx	#, _25
	cmpl	%ebx, %r11d	# _25, _24
	jge	.L14	#,
# main.c:88:     #pragma omp parallel for
	movslq	32(%rbp), %rdx	# *.omp_data_i_11(D).N,
	movslq	28(%rbp), %rax	# *.omp_data_i_11(D).M,
	testl	%edx, %edx	# N
	jle	.L14	#,
	testl	%eax, %eax	# M
	jle	.L14	#,
	movq	16(%rbp), %r12	# *.omp_data_i_11(D).C, C
	movq	8(%rbp), %r9	# *.omp_data_i_11(D).B, B
	movslq	%r11d, %r11	# _24, ivtmp.45
	leaq	0(,%rdx,8), %r10	#, _80
	movq	0(%rbp), %rbp	# *.omp_data_i_11(D).A, A
	leaq	0(,%rax,8), %r8	#, _84
	.p2align 4,,10
	.p2align 3
.L6:
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r12,%r11,8), %r13	# MEM[(double * *)C_15 + ivtmp.45_79 * 8], _31
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	movq	0(%rbp,%r11,8), %rdi	# MEM[(double * *)A_17 + ivtmp.45_79 * 8], _37
	xorl	%ecx, %ecx	# ivtmp.42
	.p2align 4,,10
	.p2align 3
.L7:
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	leaq	0(%r13,%rcx), %rsi	#, _34
	xorl	%eax, %eax	# ivtmp.37
	vmovsd	(%rsi), %xmm1	# *_34, _47
	.p2align 4,,10
	.p2align 3
.L5:
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r9,%rax), %rdx	# MEM[(double * *)B_16 + ivtmp.37_89 * 1], MEM[(double * *)B_16 + ivtmp.37_89 * 1]
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	vmovsd	(%rdx,%rcx), %xmm0	# *_44, *_44
	vmulsd	(%rdi,%rax), %xmm0, %xmm0	# MEM[(double *)_37 + ivtmp.37_89 * 1], *_44, tmp122
# main.c:94:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.37
# main.c:95:                 C[i][j] += A[i][k] * B[k][j];
	vaddsd	%xmm0, %xmm1, %xmm1	# tmp122, _47, _47
	vmovsd	%xmm1, (%rsi)	# _47, *_34
# main.c:94:             for(int k=0; k<M; k++){
	cmpq	%rax, %r8	# ivtmp.37, _84
	jne	.L5	#,
# main.c:92:         for(int j=0; j<N; j++) {
	addq	$8, %rcx	#, ivtmp.42
	cmpq	%rcx, %r10	# ivtmp.42, _80
	jne	.L7	#,
	addq	$1, %r11	#, ivtmp.45
	cmpl	%r11d, %ebx	# ivtmp.45, _25
	jg	.L6	#,
.L14:
# main.c:88:     #pragma omp parallel for
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
	addl	$1, %eax	#, q.3_1
# main.c:88:     #pragma omp parallel for
	xorl	%edx, %edx	# tt.4_2
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
	movq	%rdi, %r14	# mat, ivtmp.69
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
	xorl	%ebx, %ebx	# ivtmp.64
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
	addq	$8, %rbx	#, ivtmp.64
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# main.c:24:         for(int j=0; j<cols; j++){
	cmpq	%rbx, %rbp	# ivtmp.64, _24
	jne	.L22	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$10, %edi	#,
# main.c:23:    for(int i=0; i<rows; i++) {
	addq	$8, %r14	#, ivtmp.69
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main.c:23:    for(int i=0; i<rows; i++) {
	cmpq	%r14, %r13	# ivtmp.69, _9
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
	addq	$8, %r14	#, ivtmp.69
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	putchar@PLT	#
# main.c:23:    for(int i=0; i<rows; i++) {
	cmpq	%r14, %r13	# ivtmp.69, _9
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
	xorl	%r13d, %r13d	# ivtmp.96
	leaq	0(,%rcx,8), %r12	#, _61
	leaq	0(,%rdx,8), %rbp	#, _65
	leaq	0(,%rax,8), %r8	#, _69
	.p2align 4,,10
	.p2align 3
.L39:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%rbx,%r13), %r9	# MEM[(double * *)C_33(D) + ivtmp.96_64 * 1], _4
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r10,%r13), %rdi	# MEM[(double * *)A_34(D) + ivtmp.96_64 * 1], _10
	xorl	%ecx, %ecx	# ivtmp.89
	.p2align 4,,10
	.p2align 3
.L42:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	leaq	(%r9,%rcx), %rsi	#, _7
	xorl	%eax, %eax	# ivtmp.85
	vmovsd	(%rsi), %xmm1	# *_7, _20
	.p2align 4,,10
	.p2align 3
.L40:
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	movq	(%r11,%rax), %rdx	# MEM[(double * *)B_35(D) + ivtmp.85_74 * 1], MEM[(double * *)B_35(D) + ivtmp.85_74 * 1]
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	vmovsd	(%rdx,%rcx), %xmm0	# *_17, *_17
	vmulsd	(%rdi,%rax), %xmm0, %xmm0	# MEM[(double *)_10 + ivtmp.85_74 * 1], *_17, tmp110
# main.c:48:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.85
# main.c:49:                 C[i][j] += A[i][k] * B[k][j];
	vaddsd	%xmm0, %xmm1, %xmm1	# tmp110, _20, _20
	vmovsd	%xmm1, (%rsi)	# _20, *_7
# main.c:48:             for(int k=0; k<M; k++){
	cmpq	%rax, %r8	# ivtmp.85, _69
	jne	.L40	#,
# main.c:46:         for(int j=0; j<N; j++) {
	addq	$8, %rcx	#, ivtmp.89
	cmpq	%rcx, %rbp	# ivtmp.89, _65
	jne	.L42	#,
# main.c:44:     for(int i=0; i<L; i++) {
	addq	$8, %r13	#, ivtmp.96
	cmpq	%r13, %r12	# ivtmp.96, _61
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
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movslq	%ecx, %rax	# tmp225,
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	andq	$-32, %rsp	#,
	subq	$160, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# main.c:60: void unrolled_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	movq	%rdi, 40(%rsp)	# tmp222, %sfp
	movq	%fs:40, %rcx	# MEM[(<address-space-1> long unsigned int *)40B], tmp228
	movq	%rcx, 152(%rsp)	# tmp228, D.41069
	xorl	%ecx, %ecx	# tmp228
# main.c:62:     for(int i=0; i<L; i++) {
	testl	%eax, %eax	# L
	jle	.L50	#,
	movl	%r9d, %r13d	# tmp227, N
	testl	%r9d, %r9d	# N
	jle	.L50	#,
	movl	%r8d, %r11d	# M, bnd.107
	movq	%rdx, 24(%rsp)	# C, %sfp
	movl	%r8d, %r15d	# M, tmp214
	movq	%rsi, %r10	# tmp223, B
	shrl	$2, %r11d	#,
	movl	%r8d, %ebx	# tmp226, M
	xorl	%esi, %esi	# ivtmp.160
	andl	$3, %r15d	#, tmp214
	leaq	0(,%rax,8), %rdi	#, _176
	leal	-1(%r8), %eax	#, _118
	salq	$5, %r11	#, _15
	movl	%eax, 80(%rsp)	# _118, %sfp
	movl	%r8d, %eax	# M, _142
	leaq	96(%rsp), %r14	#, ivtmp.145
	leaq	128(%rsp), %r12	#, _129
	andl	$-4, %eax	#, _142
	movq	%rdi, 32(%rsp)	# _176, %sfp
	movl	%eax, 76(%rsp)	# _142, %sfp
.L52:
	movq	24(%rsp), %rax	# %sfp, C
	movq	%rsi, %rdi	# ivtmp.160, ivtmp.160
	xorl	%edx, %edx	# j
	movq	(%rax,%rsi), %rax	# MEM[(double * *)C_55(D) + ivtmp.160_173 * 1], ivtmp.152
	movl	%r13d, %esi	# N, N
	movq	%r12, %r13	# _129, _129
	.p2align 4,,10
	.p2align 3
.L61:
# main.c:67:                 C_temp[u] = C[i][j+u];
	vmovupd	(%rax), %ymm5	# MEM <vector(4) double> [(double *)_112], tmp298
	movq	%r14, %rcx	# ivtmp.145, ivtmp.145
	movl	%edx, %r9d	# j, ivtmp.146
	vmovapd	%ymm5, 96(%rsp)	# tmp298, MEM <vector(4) double> [(double *)&C_temp]
.L60:
# main.c:71:             	for(int k=0; k<M; k++){
	testl	%ebx, %ebx	# M
	jle	.L70	#,
	movq	40(%rsp), %r8	# %sfp, A
	movl	%edx, 72(%rsp)	# j, %sfp
	movq	%rax, 64(%rsp)	# ivtmp.152, %sfp
	movq	%rcx, 88(%rsp)	# ivtmp.145, %sfp
	movq	(%r8,%rdi), %r12	# MEM[(double * *)A_60(D) + ivtmp.160_173 * 1], _14
	movq	%rdi, 56(%rsp)	# ivtmp.160, %sfp
	movl	%esi, 52(%rsp)	# N, %sfp
.L56:
	movq	88(%rsp), %rax	# %sfp, ivtmp.145
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	movslq	%r9d, %rdx	# ivtmp.146, ivtmp.146
	cmpl	$2, 80(%rsp)	#, %sfp
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	leaq	0(,%rdx,8), %rsi	#, _23
	vmovsd	(%rax), %xmm2	# MEM[(double *)_108], C_temp_I_lsm.104
	jbe	.L63	#,
	movl	%r9d, 84(%rsp)	# ivtmp.146, %sfp
	xorl	%eax, %eax	# ivtmp.134
	.p2align 4,,10
	.p2align 3
.L54:
	leaq	(%r10,%rax), %rcx	#, _29
	movq	(%rcx), %r8	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 0>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 0>
	movq	16(%rcx), %r9	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 128>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 128>
	movq	8(%rcx), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 64>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 64>
	movq	24(%rcx), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 192>, BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_29], 64, 192>
	vmovsd	(%r9,%rsi), %xmm1	# MEM[(double *)_36], MEM[(double *)_36]
	vmovsd	(%r8,%rsi), %xmm0	# MEM[(double *)_45], MEM[(double *)_45]
	vmovhpd	(%rcx,%rsi), %xmm1, %xmm1	# MEM[(double *)_8], MEM[(double *)_36], tmp180
	vmovhpd	(%rdi,%rsi), %xmm0, %xmm0	# MEM[(double *)_41], MEM[(double *)_45], tmp183
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0	# tmp180, tmp183, vect__25.116
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmulpd	(%r12,%rax), %ymm0, %ymm0	# MEM <vector(4) double> [(double *)_14 + ivtmp.134_80 * 1], vect__25.116, vect__26.117
	addq	$32, %rax	#, ivtmp.134
	vaddsd	%xmm2, %xmm0, %xmm2	# C_temp_I_lsm.104, stmp__27.118, stmp__27.118
	vunpckhpd	%xmm0, %xmm0, %xmm1	# tmp187, stmp__27.118
	vextractf128	$0x1, %ymm0, %xmm0	# vect__26.117, tmp189
	vaddsd	%xmm2, %xmm1, %xmm1	# stmp__27.118, stmp__27.118, stmp__27.118
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm1, %xmm1	# stmp__27.118, stmp__27.118, stmp__27.118
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp189, stmp__27.118
	vaddsd	%xmm0, %xmm1, %xmm2	# stmp__27.118, stmp__27.118, C_temp_I_lsm.104
	cmpq	%rax, %r11	# ivtmp.134, _15
	jne	.L54	#,
	movl	84(%rsp), %r9d	# %sfp, ivtmp.146
	testl	%r15d, %r15d	# tmp214
	je	.L55	#,
# main.c:71:             	for(int k=0; k<M; k++){
	movl	76(%rsp), %eax	# %sfp, k
.L53:
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	movslq	%eax, %rdi	# k, k
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	(%r10,%rdi,8), %rcx	# *_24, *_24
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	leaq	0(,%rdi,8), %rsi	#, _18
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%rcx,%rdx,8), %xmm0	# *_26, *_26
	vmulsd	(%r12,%rdi,8), %xmm0, %xmm0	# *_19, *_26, tmp196
# main.c:71:             	for(int k=0; k<M; k++){
	leal	1(%rax), %edi	#, k
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp196, C_temp_I_lsm.104, C_temp_I_lsm.104
# main.c:71:             	for(int k=0; k<M; k++){
	cmpl	%edi, %ebx	# k, M
	jle	.L55	#,
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	8(%r10,%rsi), %rdi	# *_95, *_95
# main.c:71:             	for(int k=0; k<M; k++){
	addl	$2, %eax	#, k
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%rdi,%rdx,8), %xmm0	# *_97, *_97
	vmulsd	8(%r12,%rsi), %xmm0, %xmm0	# *_92, *_97, tmp200
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp200, C_temp_I_lsm.104, C_temp_I_lsm.104
# main.c:71:             	for(int k=0; k<M; k++){
	cmpl	%eax, %ebx	# k, M
	jle	.L55	#,
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	movq	16(%r10,%rsi), %rax	# *_144, *_144
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vmovsd	(%rax,%rdx,8), %xmm0	# *_136, *_136
	vmulsd	16(%r12,%rsi), %xmm0, %xmm0	# *_146, *_136, tmp204
# main.c:72:                     C_temp[u] += A[i][k] * B[k][j+u];
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp204, C_temp_I_lsm.104, C_temp_I_lsm.104
.L55:
	movq	88(%rsp), %rax	# %sfp, ivtmp.145
# main.c:69: 	    for (int u=0; u<UNROLL; u++){
	addl	$1, %r9d	#, ivtmp.146
	vmovsd	%xmm2, (%rax)	# C_temp_I_lsm.104, MEM[(double *)_108]
	addq	$8, %rax	#, ivtmp.145
	movq	%rax, 88(%rsp)	# ivtmp.145, %sfp
	cmpq	%rax, %r13	# ivtmp.145, _129
	jne	.L56	#,
	movl	72(%rsp), %edx	# %sfp, j
	movq	64(%rsp), %rax	# %sfp, ivtmp.152
	movq	56(%rsp), %rdi	# %sfp, ivtmp.160
	movl	52(%rsp), %esi	# %sfp, N
.L57:
# main.c:76: 	        C[i][j+u] = C_temp[u];
	vmovapd	96(%rsp), %ymm4	# MEM <vector(4) double> [(double *)&C_temp], tmp297
# main.c:64:         for(int j=0; j<N; j+=UNROLL) {
	addl	$4, %edx	#, j
# main.c:64:         for(int j=0; j<N; j+=UNROLL) {
	addq	$32, %rax	#, ivtmp.152
# main.c:76: 	        C[i][j+u] = C_temp[u];
	vmovupd	%ymm4, -32(%rax)	# tmp297, MEM <vector(4) double> [(double *)_112]
# main.c:64:         for(int j=0; j<N; j+=UNROLL) {
	cmpl	%edx, %esi	# j, N
	jg	.L61	#,
# main.c:62:     for(int i=0; i<L; i++) {
	movq	%r13, %r12	# _129, _129
	movq	32(%rsp), %rax	# %sfp, _176
	movl	%esi, %r13d	# N, N
	movq	%rdi, %rsi	# ivtmp.160, ivtmp.160
	addq	$8, %rsi	#, ivtmp.160
	cmpq	%rax, %rsi	# _176, ivtmp.160
	jne	.L52	#,
	vzeroupper
.L50:
# main.c:80: }
	movq	152(%rsp), %rax	# D.41069, tmp229
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp229
	jne	.L75	#,
	leaq	-40(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L70:
	.cfi_restore_state
# main.c:69: 	    for (int u=0; u<UNROLL; u++){
	addq	$8, %rcx	#, ivtmp.145
	addl	$1, %r9d	#, ivtmp.146
	cmpq	%r13, %rcx	# _129, ivtmp.145
	jne	.L60	#,
	jmp	.L57	#
.L63:
# main.c:71:             	for(int k=0; k<M; k++){
	xorl	%eax, %eax	# k
	jmp	.L53	#
.L75:
# main.c:80: }
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
# main.c:87: void multicore_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp98
	movq	%rax, 40(%rsp)	# tmp98, D.41074
	xorl	%eax, %eax	# tmp98
# main.c:88:     #pragma omp parallel for
	movl	%ecx, 24(%rsp)	# tmp95, .omp_data_o.2.L
	xorl	%ecx, %ecx	#
	movq	%rdx, 16(%rsp)	# tmp94, .omp_data_o.2.C
	xorl	%edx, %edx	#
	movq	%rsi, 8(%rsp)	# tmp93, .omp_data_o.2.B
	movq	%rsp, %rsi	#, tmp89
	movq	%rdi, (%rsp)	# tmp92, .omp_data_o.2.A
	leaq	multicore_matrix_multiply._omp_fn.0(%rip), %rdi	#, tmp90
	movl	%r9d, 32(%rsp)	# tmp97, .omp_data_o.2.N
	movl	%r8d, 28(%rsp)	# tmp96, .omp_data_o.2.M
	call	GOMP_parallel@PLT	#
# main.c:99: }
	movq	40(%rsp), %rax	# D.41074, tmp99
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp99
	jne	.L80	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L80:
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
	leaq	0(,%rdi,8), %rax	#, ivtmp.201
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
	movq	%rax, -56(%rsp)	# ivtmp.201, %sfp
	addq	$256, %rax	#, _145
	movq	%rax, -80(%rsp)	# _145, %sfp
	leaq	0(,%rsi,8), %rax	#, ivtmp.189
	movq	%rax, -72(%rsp)	# ivtmp.189, %sfp
	addq	$256, %rax	#, _20
	movq	%rax, 112(%rsp)	# _20, %sfp
	leaq	0(,%rdx,8), %rax	#, _98
	movq	%rax, -64(%rsp)	# _98, %sfp
	addq	%r8, %rax	# tmp440, vectp.174
	movq	24(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94], 64, 192>, _60
	movq	16(%rax), %r15	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94], 64, 128>, _41
# main.c:101: void do_block(int si, int sj, int sk, double **A, double **B, double **C){
	movq	%rcx, -88(%rsp)	# tmp439, %sfp
	movq	%r9, -96(%rsp)	# tmp441, %sfp
	movq	(%rax), %r14	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94], 64, 0>, _11
	movq	%rbx, 104(%rsp)	# _60, %sfp
	movq	8(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94], 64, 64>, _15
	movq	%rbx, 120(%rsp)	# _15, %sfp
	movq	56(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 32B], 64, 192>, _125
	movq	%rbx, 56(%rsp)	# _125, %sfp
	movq	48(%rax), %r13	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 32B], 64, 128>, _121
	movq	40(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 32B], 64, 64>, _117
	movq	184(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 160B], 64, 192>, _265
	movq	88(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 64B], 64, 192>, _160
	movq	32(%rax), %r12	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 32B], 64, 0>, _113
	movq	64(%rax), %r11	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 64B], 64, 0>, _148
	movq	112(%rax), %r10	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 96B], 64, 128>, _191
	movq	%rdi, 64(%rsp)	# _117, %sfp
	movq	72(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 64B], 64, 64>, _152
	movq	96(%rax), %r9	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 96B], 64, 0>, _183
	movq	%rcx, -16(%rsp)	# _265, %sfp
	movq	168(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 160B], 64, 64>, _257
	movq	%rbx, 40(%rsp)	# _160, %sfp
	movq	144(%rax), %r8	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 128B], 64, 128>, _226
	movq	80(%rax), %rbx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 64B], 64, 128>, _156
	movq	%rdi, 48(%rsp)	# _152, %sfp
	movq	120(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 96B], 64, 192>, _195
	movq	176(%rax), %rsi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 160B], 64, 128>, _261
	movq	%rcx, -8(%rsp)	# _257, %sfp
	movq	160(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 160B], 64, 0>, _253
	movq	%rdi, 24(%rsp)	# _195, %sfp
	movq	104(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 96B], 64, 64>, _187
	movq	%rcx, (%rsp)	# _253, %sfp
	movq	216(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 192B], 64, 192>, _300
	movq	%rdi, 32(%rsp)	# _187, %sfp
	movq	152(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 128B], 64, 192>, _230
	movq	%rcx, -48(%rsp)	# _300, %sfp
	movq	208(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 192B], 64, 128>, _296
	movq	%rdi, 8(%rsp)	# _230, %sfp
	movq	136(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 128B], 64, 64>, _222
	movq	%rdi, 16(%rsp)	# _222, %sfp
	movq	128(%rax), %rdi	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 128B], 64, 0>, _218
	movq	%rcx, -40(%rsp)	# _296, %sfp
	movq	200(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 192B], 64, 64>, _292
	movq	%rcx, -32(%rsp)	# _292, %sfp
	movq	192(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 192B], 64, 0>, _288
	movq	%rcx, -24(%rsp)	# _288, %sfp
	movq	248(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 224B], 64, 192>, _76
	movq	%rcx, 96(%rsp)	# _76, %sfp
	movq	240(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 224B], 64, 128>, _80
	movq	%rcx, 88(%rsp)	# _80, %sfp
	movq	232(%rax), %rcx	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 224B], 64, 64>, _84
	movq	224(%rax), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)vectp.174_94 + 224B], 64, 0>, _88
	movq	%rcx, 80(%rsp)	# _84, %sfp
	movq	%rax, 72(%rsp)	# _88, %sfp
.L82:
# main.c:105: 	    double C_ij = C[i][j];
	movq	-56(%rsp), %rax	# %sfp, ivtmp.201
	movq	-96(%rsp), %rcx	# %sfp, C
	movq	-64(%rsp), %rdx	# %sfp, vectp.171
	movq	(%rcx,%rax), %rcx	# MEM[(double * *)C_33(D) + ivtmp.201_19 * 1], _4
	movq	%rcx, 128(%rsp)	# _4, %sfp
	movq	-88(%rsp), %rcx	# %sfp, A
	addq	(%rcx,%rax), %rdx	# MEM[(double * *)A_38(D) + ivtmp.201_19 * 1], vectp.171
	movq	128(%rsp), %rcx	# %sfp, _4
	movq	%rsi, 128(%rsp)	# _261, %sfp
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	movq	-72(%rsp), %rax	# %sfp, ivtmp.189
	.p2align 4,,10
	.p2align 3
.L83:
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r15), %xmm0	# MEM[(double *)_93], MEM[(double *)_93]
	movq	104(%rsp), %rsi	# %sfp, _60
	vmovsd	(%r14,%rax), %xmm1	# MEM[(double *)_13], MEM[(double *)_13]
	vmovsd	(%rcx,%rax), %xmm2	# MEM[(double *)_4 + ivtmp.189_21 * 1], stmp_C_ij_40.178
	vmovhpd	(%rax,%rsi), %xmm0, %xmm0	# MEM[(double *)_57], MEM[(double *)_93], tmp323
	movq	120(%rsp), %rsi	# %sfp, _15
	vmovhpd	(%rsi,%rax), %xmm1, %xmm1	# MEM[(double *)_17], MEM[(double *)_13], tmp326
	movq	56(%rsp), %rsi	# %sfp, _125
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm1	# tmp323, tmp326, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm2, %xmm2	# tmp330, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm0	# tmp330, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp332
	vaddsd	%xmm2, %xmm0, %xmm2	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm1, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r13), %xmm2	# MEM[(double *)_123], MEM[(double *)_123]
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp332, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_127], MEM[(double *)_123], tmp337
	movq	64(%rsp), %rsi	# %sfp, _117
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r12), %xmm1	# MEM[(double *)_115], MEM[(double *)_115]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_119], MEM[(double *)_115], tmp340
	movq	40(%rsp), %rsi	# %sfp, _160
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp337, tmp340, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	32(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 32B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp344, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp346
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rbx), %xmm2	# MEM[(double *)_158], MEM[(double *)_158]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_162], MEM[(double *)_158], tmp351
	movq	48(%rsp), %rsi	# %sfp, _152
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp346, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r11), %xmm1	# MEM[(double *)_150], MEM[(double *)_150]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_154], MEM[(double *)_150], tmp354
	movq	24(%rsp), %rsi	# %sfp, _195
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp351, tmp354, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	64(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 64B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp358, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp360
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r10), %xmm2	# MEM[(double *)_193], MEM[(double *)_193]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_197], MEM[(double *)_193], tmp365
	movq	32(%rsp), %rsi	# %sfp, _187
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp360, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r9), %xmm1	# MEM[(double *)_185], MEM[(double *)_185]
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_189], MEM[(double *)_185], tmp368
	movq	8(%rsp), %rsi	# %sfp, _230
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp365, tmp368, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	96(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 96B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp372, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp374
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%r8), %xmm2	# MEM[(double *)_228], MEM[(double *)_228]
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_232], MEM[(double *)_228], tmp379
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp374, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rdi), %xmm1	# MEM[(double *)_220], MEM[(double *)_220]
	movq	16(%rsp), %rsi	# %sfp, _222
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_224], MEM[(double *)_220], tmp382
	movq	128(%rsp), %rsi	# %sfp, _261
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp379, tmp382, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	128(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 128B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp386, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp388
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_263], MEM[(double *)_263]
	movq	-16(%rsp), %rsi	# %sfp, _265
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_267], MEM[(double *)_263], tmp393
	movq	(%rsp), %rsi	# %sfp, _253
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp388, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_255], MEM[(double *)_255]
	movq	-8(%rsp), %rsi	# %sfp, _257
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_259], MEM[(double *)_255], tmp396
	movq	-40(%rsp), %rsi	# %sfp, _296
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp393, tmp396, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	160(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 160B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp400, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp402
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_298], MEM[(double *)_298]
	movq	-48(%rsp), %rsi	# %sfp, _300
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_302], MEM[(double *)_298], tmp407
	movq	-24(%rsp), %rsi	# %sfp, _288
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp402, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_290], MEM[(double *)_290]
	movq	-32(%rsp), %rsi	# %sfp, _292
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_294], MEM[(double *)_290], tmp410
	movq	88(%rsp), %rsi	# %sfp, _80
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp407, tmp410, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	192(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 192B], vect__17.176, vect__18.177
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, C_ij, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp414, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm1	# vect__18.177, tmp416
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm2	# MEM[(double *)_78], MEM[(double *)_78]
	movq	96(%rsp), %rsi	# %sfp, _76
	vmovhpd	(%rax,%rsi), %xmm2, %xmm2	# MEM[(double *)_74], MEM[(double *)_78], tmp421
	movq	72(%rsp), %rsi	# %sfp, _88
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp416, stmp_C_ij_40.178
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rax,%rsi), %xmm1	# MEM[(double *)_86], MEM[(double *)_86]
	movq	80(%rsp), %rsi	# %sfp, _84
	vmovhpd	(%rax,%rsi), %xmm1, %xmm1	# MEM[(double *)_82], MEM[(double *)_86], tmp424
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp421, tmp424, vect__17.176
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	224(%rdx), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.171_103 + 224B], vect__17.176, vect__18.177
	vaddsd	%xmm0, %xmm1, %xmm0	# C_ij, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp428, stmp_C_ij_40.178
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vextractf128	$0x1, %ymm1, %xmm0	# vect__18.177, tmp430
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm0, %xmm1	# stmp_C_ij_40.178, stmp_C_ij_40.178, stmp_C_ij_40.178
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp430, stmp_C_ij_40.178
	vaddsd	%xmm0, %xmm1, %xmm0	# stmp_C_ij_40.178, stmp_C_ij_40.178, C_ij
# main.c:110:             C[i][j] = C_ij;
	vmovsd	%xmm0, (%rcx,%rax)	# C_ij, MEM[(double *)_4 + ivtmp.189_21 * 1]
# main.c:104:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	addq	$8, %rax	#, ivtmp.189
	cmpq	%rax, 112(%rsp)	# ivtmp.189, %sfp
	jne	.L83	#,
# main.c:103:     for (int i=si; i<si+BLOCK_SIZE; i++){
	addq	$8, -56(%rsp)	#, %sfp
	movq	-80(%rsp), %rcx	# %sfp, _145
	movq	-56(%rsp), %rax	# %sfp, ivtmp.201
	movq	128(%rsp), %rsi	# %sfp, _261
	cmpq	%rcx, %rax	# _145, ivtmp.201
	jne	.L82	#,
	vzeroupper
# main.c:113: }
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
# main.c:120: void blocked_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	movq	%rdi, -32(%rsp)	# tmp454, %sfp
	movq	%rdx, -40(%rsp)	# tmp456, %sfp
# main.c:122:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	testl	%ecx, %ecx	# L
	jle	.L102	#,
	testl	%r9d, %r9d	# N
	jle	.L102	#,
	movl	%r8d, %eax	# tmp458, M
	testl	%r8d, %r8d	# M
	jle	.L102	#,
	subl	$1, %eax	#, tmp333
	xorl	%ebx, %ebx	# ivtmp.261
# main.c:122:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	xorl	%edx, %edx	# sj
	shrl	$5, %eax	#, tmp334
	addl	$1, %eax	#,
	salq	$8, %rax	#, tmp336
	movq	%rax, 16(%rsp)	# tmp336, %sfp
.L91:
	movl	%edx, -60(%rsp)	# sj, %sfp
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	movl	$256, %r12d	#, ivtmp.255
# main.c:124:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	xorl	%r10d, %r10d	# si
	movq	%rbx, %rcx	# ivtmp.261, ivtmp.261
	leaq	256(%rbx), %rax	#, _131
	movq	%r12, %rdi	# ivtmp.255, ivtmp.255
	movq	%rax, -56(%rsp)	# _131, %sfp
.L98:
	leaq	-256(%rdi), %rax	#, ivtmp.242
	movl	%esi, -64(%rsp)	# L, %sfp
	movq	%r11, %rdx	# B, ivtmp.250
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	xorl	%ebx, %ebx	# ivtmp.249
	movq	%rax, -48(%rsp)	# ivtmp.242, %sfp
	movl	%r10d, %r13d	# si, si
	movq	%r11, -72(%rsp)	# B, %sfp
	movl	%r9d, -76(%rsp)	# N, %sfp
.L97:
	movq	24(%rdx), %rax	# BIT_FIELD_REF <MEM <vector(4) long unsigned int> [(double * *)_262], 64, 192>, _100
	movq	-48(%rsp), %r12	# %sfp, ivtmp.242
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
	movq	%rdx, -88(%rsp)	# ivtmp.250, %sfp
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
.L95:
# main.c:105: 	    double C_ij = C[i][j];
	movq	-40(%rsp), %rdx	# %sfp, C
	movq	%rbx, -96(%rsp)	# ivtmp.249, %sfp
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	movq	%rcx, %r8	# ivtmp.261, ivtmp.230
# main.c:105: 	    double C_ij = C[i][j];
	movq	(%rdx,%r12), %rdx	# MEM[(double * *)C_15(D) + ivtmp.242_80 * 1], _22
	movq	%rdx, 192(%rsp)	# _22, %sfp
	movq	-32(%rsp), %rdx	# %sfp, A
	movq	(%rdx,%r12), %r14	# MEM[(double * *)A_13(D) + ivtmp.242_80 * 1], vectp.212
	movq	192(%rsp), %rdx	# %sfp, _22
	movq	%r12, 192(%rsp)	# ivtmp.242, %sfp
	movq	-96(%rsp), %r12	# %sfp, ivtmp.249
	addq	%rbx, %r14	# ivtmp.249, vectp.212
	movq	%rdi, %rbx	# ivtmp.255, ivtmp.255
	movq	%rcx, %rdi	# ivtmp.261, ivtmp.261
	movl	%r13d, %ecx	# si, si
	movq	%rbx, %r13	# ivtmp.255, ivtmp.255
	.p2align 4,,10
	.p2align 3
.L92:
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r15,%r8), %xmm1	# MEM[(double *)_133], MEM[(double *)_133]
	movq	136(%rsp), %rbx	# %sfp, _100
	vmovsd	(%rdx,%r8), %xmm2	# MEM[(double *)_22 + ivtmp.230_83 * 1], stmp_C_ij_41.219
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_98], MEM[(double *)_133], tmp338
	movq	184(%rsp), %rbx	# %sfp, _32
	vmovsd	(%rbx,%r8), %xmm0	# MEM[(double *)_34], MEM[(double *)_34]
	movq	176(%rsp), %rbx	# %sfp, _36
	vmovhpd	(%rbx,%r8), %xmm0, %xmm0	# MEM[(double *)_38], MEM[(double *)_34], tmp341
	movq	160(%rsp), %rbx	# %sfp, _50
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0	# tmp338, tmp341, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	(%r14), %ymm0, %ymm0	# MEM <vector(4) double> [(double *)vectp.212_145], vect__38.217, vect__39.218
	vaddsd	%xmm0, %xmm2, %xmm2	# tmp345, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm0, %xmm0, %xmm1	# tmp345, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm0, %xmm0	# vect__39.218, tmp347
	vaddsd	%xmm2, %xmm1, %xmm1	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm2	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp347, stmp_C_ij_41.219
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%rbx,%r8), %xmm0	# MEM[(double *)_48], MEM[(double *)_48]
	movq	168(%rsp), %rbx	# %sfp, _44
	vmovhpd	(%rbx,%r8), %xmm0, %xmm0	# MEM[(double *)_40], MEM[(double *)_48], tmp352
	movq	144(%rsp), %rbx	# %sfp, _60
	vmovsd	(%rbx,%r8), %xmm1	# MEM[(double *)_57], MEM[(double *)_57]
	movq	152(%rsp), %rbx	# %sfp, _55
	vmovhpd	(%rbx,%r8), %xmm1, %xmm1	# MEM[(double *)_53], MEM[(double *)_57], tmp355
	movq	96(%rsp), %rbx	# %sfp, _170
	vinsertf128	$0x1, %xmm0, %ymm1, %ymm1	# tmp352, tmp355, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	32(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 32B], vect__38.217, vect__39.218
	vaddsd	%xmm2, %xmm1, %xmm2	# C_ij, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm0	# tmp359, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp361
	vaddsd	%xmm2, %xmm0, %xmm2	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm1, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_172], MEM[(double *)_172]
	movq	88(%rsp), %rbx	# %sfp, _174
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp361, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_176], MEM[(double *)_172], tmp366
	movq	112(%rsp), %rbx	# %sfp, _162
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_164], MEM[(double *)_164]
	movq	104(%rsp), %rbx	# %sfp, _166
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_168], MEM[(double *)_164], tmp369
	movq	64(%rsp), %rbx	# %sfp, _205
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp366, tmp369, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	64(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 64B], vect__38.217, vect__39.218
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, C_ij, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp373, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp375
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_207], MEM[(double *)_207]
	movq	56(%rsp), %rbx	# %sfp, _209
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_211], MEM[(double *)_207], tmp380
	movq	80(%rsp), %rbx	# %sfp, _197
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp375, stmp_C_ij_41.219
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_199], MEM[(double *)_199]
	movq	72(%rsp), %rbx	# %sfp, _201
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_203], MEM[(double *)_199], tmp383
	movq	32(%rsp), %rbx	# %sfp, _240
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp380, tmp383, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	96(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 96B], vect__38.217, vect__39.218
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, C_ij, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp387, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp389
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_242], MEM[(double *)_242]
	movq	24(%rsp), %rbx	# %sfp, _244
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_246], MEM[(double *)_242], tmp394
	movq	48(%rsp), %rbx	# %sfp, _232
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp389, stmp_C_ij_41.219
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm1	# MEM[(double *)_234], MEM[(double *)_234]
	movq	40(%rsp), %rbx	# %sfp, _236
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_238], MEM[(double *)_234], tmp397
	movq	(%rsp), %rbx	# %sfp, _275
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp394, tmp397, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	128(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 128B], vect__38.217, vect__39.218
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, C_ij, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp401, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp403
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rbx), %xmm2	# MEM[(double *)_277], MEM[(double *)_277]
	movq	-8(%rsp), %rbx	# %sfp, _279
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_281], MEM[(double *)_277], tmp408
	movq	8(%rsp), %rbx	# %sfp, _271
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp403, stmp_C_ij_41.219
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r11), %xmm1	# MEM[(double *)_269], MEM[(double *)_269]
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_273], MEM[(double *)_269], tmp411
	movq	-24(%rsp), %rbx	# %sfp, _314
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp408, tmp411, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	160(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 160B], vect__38.217, vect__39.218
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, C_ij, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp415, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp417
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r10), %xmm2	# MEM[(double *)_312], MEM[(double *)_312]
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_316], MEM[(double *)_312], tmp422
	movq	-16(%rsp), %rbx	# %sfp, _306
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp417, stmp_C_ij_41.219
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%r9), %xmm1	# MEM[(double *)_304], MEM[(double *)_304]
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_308], MEM[(double *)_304], tmp425
	movq	128(%rsp), %rbx	# %sfp, _116
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp422, tmp425, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	192(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 192B], vect__38.217, vect__39.218
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, C_ij, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp429, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm1	# vect__39.218, tmp431
	vaddsd	%xmm2, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rsi), %xmm2	# MEM[(double *)_118], MEM[(double *)_118]
	vmovhpd	(%r8,%rbx), %xmm2, %xmm2	# MEM[(double *)_114], MEM[(double *)_118], tmp436
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm1	# tmp431, stmp_C_ij_41.219
	vaddsd	%xmm1, %xmm0, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmovsd	(%r8,%rax), %xmm1	# MEM[(double *)_126], MEM[(double *)_126]
	movq	120(%rsp), %rbx	# %sfp, _124
	vmovhpd	(%r8,%rbx), %xmm1, %xmm1	# MEM[(double *)_122], MEM[(double *)_126], tmp439
# main.c:104:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	movq	-56(%rsp), %rbx	# %sfp, _131
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vinsertf128	$0x1, %xmm2, %ymm1, %ymm1	# tmp436, tmp439, vect__38.217
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vmulpd	224(%r14), %ymm1, %ymm1	# MEM <vector(4) double> [(double *)vectp.212_145 + 224B], vect__38.217, vect__39.218
	vaddsd	%xmm0, %xmm1, %xmm0	# C_ij, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm1, %xmm1, %xmm2	# tmp443, stmp_C_ij_41.219
	vaddsd	%xmm0, %xmm2, %xmm2	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vextractf128	$0x1, %ymm1, %xmm0	# vect__39.218, tmp445
# main.c:108: 		C_ij += A[i][k] * B[k][j]; 
	vaddsd	%xmm2, %xmm0, %xmm1	# stmp_C_ij_41.219, stmp_C_ij_41.219, stmp_C_ij_41.219
	vunpckhpd	%xmm0, %xmm0, %xmm0	# tmp445, stmp_C_ij_41.219
	vaddsd	%xmm0, %xmm1, %xmm0	# stmp_C_ij_41.219, stmp_C_ij_41.219, C_ij
# main.c:110:             C[i][j] = C_ij;
	vmovsd	%xmm0, (%rdx,%r8)	# C_ij, MEM[(double *)_22 + ivtmp.230_83 * 1]
# main.c:104:         for (int j=sj; j<sj+BLOCK_SIZE; j++){
	addq	$8, %r8	#, ivtmp.230
	cmpq	%rbx, %r8	# _131, ivtmp.230
	jne	.L92	#,
# main.c:103:     for (int i=si; i<si+BLOCK_SIZE; i++){
	movq	%r12, %rbx	# ivtmp.249, ivtmp.249
	movq	192(%rsp), %r12	# %sfp, ivtmp.242
	movq	%r13, %rdx	# ivtmp.255, ivtmp.255
	movl	%ecx, %r13d	# si, si
	movq	%rdi, %rcx	# ivtmp.261, ivtmp.261
	movq	%rdx, %rdi	# ivtmp.255, ivtmp.255
	addq	$8, %r12	#, ivtmp.242
	cmpq	%rdx, %r12	# ivtmp.255, ivtmp.242
	jne	.L95	#,
# main.c:126:             for(int sk=0; sk<M; sk+=BLOCK_SIZE){
	movq	-88(%rsp), %rdx	# %sfp, ivtmp.250
	movq	16(%rsp), %rax	# %sfp, _260
	addq	$256, %rbx	#, ivtmp.249
	addq	$256, %rdx	#, ivtmp.250
	cmpq	%rax, %rbx	# _260, ivtmp.249
	jne	.L97	#,
# main.c:124:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	movl	%r13d, %r10d	# si, si
	movl	-76(%rsp), %r9d	# %sfp, N
	movl	-64(%rsp), %esi	# %sfp, L
# main.c:124:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	leaq	256(%r12), %rdi	#, ivtmp.255
# main.c:124:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	addl	$32, %r10d	#, si
	movq	-72(%rsp), %r11	# %sfp, B
# main.c:124:         for(int si=0; si<N; si+=BLOCK_SIZE) {
	cmpl	%r10d, %r9d	# si, N
	jg	.L98	#,
# main.c:122:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	movl	-60(%rsp), %edx	# %sfp, sj
	addl	$32, %edx	#, sj
# main.c:122:     for(int sj=0; sj<L; sj+=BLOCK_SIZE) {
	cmpl	%edx, %esi	# sj, L
	jle	.L101	#,
	movq	%r8, %rbx	# ivtmp.230, ivtmp.261
	jmp	.L91	#
.L101:
	vzeroupper
.L102:
# main.c:131: }
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
# main.c:140:     for(int i=0; i<L; i++) {
	testl	%edx, %edx	# L
	jle	.L117	#,
	movl	%r9d, %eax	# tmp137, N
	testl	%r9d, %r9d	# N
	jle	.L117	#,
# main.c:138: void subword_parallelism_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9	# A, ivtmp.285
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
.L107:
# main.c:138: void subword_parallelism_matrix_multiply(double **A, double **B, double **C, int L, int M, int N) {
	xorl	%ecx, %ecx	# ivtmp.279
	.p2align 4,,10
	.p2align 3
.L110:
# main.c:144:             __m256d c0 = _mm256_load_pd(&C[i][j]);
	movq	(%r11), %r8	# MEM[(double * *)_74], MEM[(double * *)_74]
	leaq	(%r8,%rcx), %rax	#, _67
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	vmovapd	(%rax), %ymm1	# MEM[(__m256d * {ref-all})_7], c0
# main.c:146:             for(int k=0; k<M; k++){
	testl	%r12d, %r12d	# M
	jle	.L108	#,
	movq	(%r9), %rsi	# MEM[(double * *)_75], MEM[(double * *)_75]
	xorl	%eax, %eax	# ivtmp.272
	.p2align 4,,10
	.p2align 3
.L109:
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:869:   return *(__m256d *)__P;
	movq	(%r10,%rax), %rdx	# MEM[(double * *)B_35(D) + ivtmp.272_62 * 1], MEM[(double * *)B_35(D) + ivtmp.272_62 * 1]
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:736:   return (__m256d) __builtin_ia32_vbroadcastsd256 (__X);
	vbroadcastsd	(%rsi,%rax), %ymm0	#* ivtmp.272, tmp124
# main.c:146:             for(int k=0; k<M; k++){
	addq	$8, %rax	#, ivtmp.272
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:314:   return (__m256d) ((__v4df)__A * (__v4df)__B);
	vmulpd	(%rdx,%rcx), %ymm0, %ymm0	# MEM[(__m256d * {ref-all})_15], tmp124, tmp128
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:143:   return (__m256d) ((__v4df)__A + (__v4df)__B);
	vaddpd	%ymm0, %ymm1, %ymm1	# tmp128, c0, c0
# main.c:146:             for(int k=0; k<M; k++){
	cmpq	%rax, %rdi	# ivtmp.272, _47
	jne	.L109	#,
# main.c:153: 	    _mm256_store_pd(&C[i][j], c0);
	leaq	(%r8,%rcx), %rax	#, _67
.L108:
# main.c:142:         for(int j=0; j<N; j+=MM256_STRIDE) {
	addq	$32, %rcx	#, ivtmp.279
# /usr/lib/gcc/x86_64-linux-gnu/13/include/avxintrin.h:875:   *(__m256d *)__P = __A;
	vmovapd	%ymm1, (%rax)	# c0, MEM[(__m256d * {ref-all})prephitmp_68]
# main.c:142:         for(int j=0; j<N; j+=MM256_STRIDE) {
	cmpq	%rcx, %rbx	# ivtmp.279, _22
	jne	.L110	#,
# main.c:140:     for(int i=0; i<L; i++) {
	addq	$8, %r9	#, ivtmp.285
	addq	$8, %r11	#, ivtmp.284
	cmpq	%r13, %r9	# _72, ivtmp.285
	jne	.L107	#,
	vzeroupper
# main.c:156: }
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
.L117:
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
# main.c:164: void free_matrices(double **A, double **B, double **C, int L, int M, int N) {
	movq	%rdx, 8(%rsp)	# C, %sfp
# main.c:165:     for(int i=0; i<L; i++) {
	testl	%ecx, %ecx	# L
	jle	.L121	#,
	movslq	%ecx, %rcx	# L, L
	movq	%rdi, %r14	# A, ivtmp.300
	movq	%rdx, %rbx	# C, ivtmp.301
	leaq	(%rdi,%rcx,8), %r15	#, _52
	.p2align 4,,10
	.p2align 3
.L122:
# main.c:166:         free(A[i]);
	movq	(%r14), %rdi	# MEM[(double * *)_47], MEM[(double * *)_47]
# main.c:165:     for(int i=0; i<L; i++) {
	addq	$8, %r14	#, ivtmp.300
	addq	$8, %rbx	#, ivtmp.301
# main.c:166:         free(A[i]);
	call	free@PLT	#
# main.c:167:         free(C[i]);
	movq	-8(%rbx), %rdi	# MEM[(double * *)_48], MEM[(double * *)_48]
	call	free@PLT	#
# main.c:165:     for(int i=0; i<L; i++) {
	cmpq	%r15, %r14	# _52, ivtmp.300
	jne	.L122	#,
.L121:
# main.c:169:     for(int i=0; i<M; i++) {
	testl	%ebp, %ebp	# M
	jle	.L123	#,
	movq	%r12, %rbx	# B, ivtmp.295
	leaq	(%r12,%rbp,8), %rbp	#, _29
	.p2align 4,,10
	.p2align 3
.L124:
# main.c:170:         free(B[i]);
	movq	(%rbx), %rdi	# MEM[(double * *)_39], MEM[(double * *)_39]
# main.c:169:     for(int i=0; i<M; i++) {
	addq	$8, %rbx	#, ivtmp.295
# main.c:170:         free(B[i]);
	call	free@PLT	#
# main.c:169:     for(int i=0; i<M; i++) {
	cmpq	%rbx, %rbp	# ivtmp.295, _29
	jne	.L124	#,
.L123:
# main.c:172:     free(A);
	movq	%r13, %rdi	# A,
	call	free@PLT	#
# main.c:173:     free(B);
	movq	%r12, %rdi	# B,
	call	free@PLT	#
# main.c:174:     free(C);
	movq	8(%rsp), %rdi	# %sfp,
# main.c:175: }
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
# main.c:174:     free(C);
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
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx	# tmp257, argv
	subq	$136, %rsp	#,
	.cfi_def_cfa_offset 192
# main.c:177: int main(int argc, char **argv) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp275
	movq	%rax, 120(%rsp)	# tmp275, D.41297
	xorl	%eax, %eax	# tmp275
# main.c:186:     if(argc != 5) {
	cmpl	$5, %edi	#, tmp256
	jne	.L204	#,
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_77(D) + 8B], MEM[(char * *)argv_77(D) + 8B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol@PLT	#
	movq	16(%rbx), %rdi	# MEM[(char * *)argv_77(D) + 16B], MEM[(char * *)argv_77(D) + 16B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %r13	# tmp258, _116
	movq	%rax, 16(%rsp)	# _116, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, 64(%rsp)	# tmp319, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	24(%rbx), %rdi	# MEM[(char * *)argv_77(D) + 24B], MEM[(char * *)argv_77(D) + 24B]
	xorl	%esi, %esi	#
	movl	$10, %edx	#,
	movq	%rax, %r14	# tmp259, _114
	movq	%rax, 32(%rsp)	# _114, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, 68(%rsp)	# tmp320, %sfp
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
	movq	32(%rbx), %rdi	# MEM[(char * *)argv_77(D) + 32B], MEM[(char * *)argv_77(D) + 32B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%rax, 24(%rsp)	# _112, %sfp
	movq	%rax, %r15	# tmp260, _112
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %ebp	# _112, _113
# /usr/include/stdlib.h:483:   return (int) strtol (__nptr, (char **) NULL, 10);
	call	strtol@PLT	#
# main.c:195:     srand(seed);
	movl	%eax, %edi	# tmp261, _111
	call	srand@PLT	#
# main.c:197:     if( !L || !M || !N ) {
	testl	%r13d, %r13d	# _116
	sete	%al	#, tmp190
# main.c:197:     if( !L || !M || !N ) {
	testl	%r14d, %r14d	# _114
	sete	%dl	#, tmp192
# main.c:197:     if( !L || !M || !N ) {
	orb	%dl, %al	# tmp192, tmp276
	jne	.L163	#,
	testl	%r15d, %r15d	# _112
	je	.L163	#,
# main.c:203:     omp_set_num_threads(OMP_THREADS);
	movl	$4, %edi	#,
	call	omp_set_num_threads@PLT	#
# main.c:209:     A = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	16(%rsp), %rbx	# %sfp, _116
	movl	$32, %edi	#,
	movslq	%ebx, %rax	# _116, _117
	salq	$3, %rax	#, _12
	movq	%rax, %rsi	# _12,
	movq	%rax, 48(%rsp)	# _12, %sfp
	call	aligned_alloc@PLT	#
	movq	%rax, %r15	# tmp262, A
# main.c:210:     if(A == NULL) {
	testq	%rax, %rax	# A
	je	.L132	#,
# main.c:223:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	movslq	32(%rsp), %r12	# %sfp, _115
	salq	$3, %r12	#, _191
# main.c:214:     for(int i=0; i<L; i++) {
	testl	%ebx, %ebx	# _116
	jle	.L138	#,
	movq	%rax, %r13	# A, ivtmp.348
	movq	16(%rsp), %rax	# %sfp, _116
	subl	$1, %eax	#, tmp203
	leaq	8(%r15,%rax,8), %rbx	#, _229
	.p2align 4,,10
	.p2align 3
.L137:
# main.c:215:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	movq	%r12, %rsi	# _191,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:215:         A[i] = aligned_alloc(MEM_ALIGN, M * sizeof(double));
	movq	%rax, 0(%r13)	# tmp206, MEM[(double * *)_222]
# main.c:216:         if(A[i] == NULL) {
	testq	%rax, %rax	# tmp206
	je	.L132	#,
# main.c:214:     for(int i=0; i<L; i++) {
	addq	$8, %r13	#, ivtmp.348
	cmpq	%rbx, %r13	# _229, ivtmp.348
	jne	.L137	#,
.L138:
# main.c:223:     B = aligned_alloc(MEM_ALIGN, M * sizeof(double *));
	movq	%r12, %rsi	# _191,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, 40(%rsp)	# B, %sfp
# main.c:224:     if(B == NULL) {
	testq	%rax, %rax	# B
	je	.L134	#,
# main.c:228:     for(int i=0; i<M; i++) {
	movl	32(%rsp), %edi	# %sfp,
	testl	%edi, %edi	#
	jle	.L205	#,
	movq	%rax, %rcx	# B, B
# main.c:229:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movslq	24(%rsp), %rax	# %sfp, _113
	movq	%rcx, %r14	# B, ivtmp.343
	movq	%rax, 56(%rsp)	# _113, %sfp
	leaq	0(,%rax,8), %r12	#, _22
	movl	32(%rsp), %eax	# %sfp, tmp327
	subl	$1, %eax	#,
	movl	%eax, 72(%rsp)	# tmp255, %sfp
	leaq	8(,%rax,8), %r13	#, _186
	leaq	0(%r13,%rcx), %rbx	#, _218
	.p2align 4,,10
	.p2align 3
.L141:
	movq	%r12, %rsi	# _22,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
# main.c:229:         B[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, (%r14)	# tmp212, MEM[(double * *)_211]
# main.c:230:         if(B[i] == NULL) {
	testq	%rax, %rax	# tmp212
	je	.L134	#,
# main.c:228:     for(int i=0; i<M; i++) {
	addq	$8, %r14	#, ivtmp.343
	cmpq	%rbx, %r14	# _218, ivtmp.343
	jne	.L141	#,
	vmovsd	.LC2(%rip), %xmm7	#, tmp254
# main.c:236:     for(int i=0; i<L; i++)
	movl	16(%rsp), %esi	# %sfp,
	xorl	%r14d, %r14d	# ivtmp.336
	vmovsd	%xmm7, 8(%rsp)	# tmp254, %sfp
	testl	%esi, %esi	#
	jle	.L146	#,
	movl	%ebp, 76(%rsp)	# _113, %sfp
	movq	%r14, %rbp	# ivtmp.336, ivtmp.336
	movq	%r13, %r14	# _186, _186
	movl	64(%rsp), %r13d	# %sfp, _117
	.p2align 4,,10
	.p2align 3
.L145:
	movq	(%r15,%rbp,8), %rbx	# MEM[(double * *)A_83 + ivtmp.336_205 * 8], ivtmp.333
	leaq	(%rbx,%r14), %r12	#, _204
	.p2align 4,,10
	.p2align 3
.L147:
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	call	rand@PLT	#
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp331
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp333
# main.c:237:         for(int j=0; j<M; j++)
	addq	$8, %rbx	#, ivtmp.333
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vcvtsi2sdl	%eax, %xmm1, %xmm0	# tmp266, tmp331, tmp273
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vdivsd	8(%rsp), %xmm0, %xmm0	# %sfp, tmp213, random_double
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vaddsd	%xmm3, %xmm0, %xmm0	# tmp333, random_double, random_double
# main.c:238:             A[i][j] = drand(MIN, MAX);
	vmovsd	%xmm0, -8(%rbx)	# random_double, MEM[(double *)_20]
# main.c:237:         for(int j=0; j<M; j++)
	cmpq	%r12, %rbx	# _204, ivtmp.333
	jne	.L147	#,
# main.c:236:     for(int i=0; i<L; i++)
	addq	$1, %rbp	#, ivtmp.336
	cmpl	%ebp, %r13d	# ivtmp.336, _117
	jg	.L145	#,
	movl	76(%rsp), %ebp	# %sfp, _113
.L146:
	movq	24(%rsp), %rdx	# %sfp, _112
	testl	%edx, %edx	# _112
	jle	.L148	#,
	movl	72(%rsp), %eax	# %sfp, tmp218
	movq	40(%rsp), %rcx	# %sfp, B
	movl	%ebp, 72(%rsp)	# _113, %sfp
	vmovsd	.LC2(%rip), %xmm7	#, tmp254
	movq	%rcx, %r13	# B, ivtmp.328
	leaq	8(%rcx,%rax,8), %rcx	#, _14
	leal	-1(%rdx), %eax	#, _48
	leaq	8(,%rax,8), %r12	#, tmp228
	movq	%r13, %rbp	# ivtmp.328, ivtmp.328
	vmovsd	%xmm7, 8(%rsp)	# tmp254, %sfp
	movq	%r12, %r13	# tmp228, tmp228
	movq	%rcx, %r12	# _14, _14
	.p2align 4,,10
	.p2align 3
.L149:
	movq	0(%rbp), %rbx	# MEM[(double * *)_58], ivtmp.323
	leaq	0(%r13,%rbx), %r14	#, _188
	.p2align 4,,10
	.p2align 3
.L150:
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	call	rand@PLT	#
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp339
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp341
# main.c:241:         for(int j=0; j<N; j++)
	addq	$8, %rbx	#, ivtmp.323
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vcvtsi2sdl	%eax, %xmm4, %xmm0	# tmp267, tmp339, tmp274
# main.c:32:     double random_double = (double) rand() / RAND_MAX; 
	vdivsd	8(%rsp), %xmm0, %xmm0	# %sfp, tmp222, random_double
# main.c:33:     random_double = (random_double * (max - min)) + min;
	vaddsd	%xmm6, %xmm0, %xmm0	# tmp341, random_double, random_double
# main.c:242:             B[i][j] = drand(MIN, MAX);
	vmovsd	%xmm0, -8(%rbx)	# random_double, MEM[(double *)_96]
# main.c:241:         for(int j=0; j<N; j++)
	cmpq	%r14, %rbx	# _188, ivtmp.323
	jne	.L150	#,
# main.c:240:     for(int i=0; i<M; i++)
	addq	$8, %rbp	#, ivtmp.328
	cmpq	%rbp, %r12	# ivtmp.328, _14
	jne	.L149	#,
	movl	72(%rsp), %ebp	# %sfp, _113
.L148:
# main.c:245:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, 8(%rsp)	# C, %sfp
# main.c:246:     if(C == NULL) {
	testq	%rax, %rax	# C
	je	.L155	#,
# main.c:250:     for(int i=0; i<L; i++) {
	movl	16(%rsp), %ecx	# %sfp,
	testl	%ecx, %ecx	#
	jle	.L160	#,
.L153:
	movq	16(%rsp), %rax	# %sfp, _116
	movq	8(%rsp), %rcx	# %sfp, C
# main.c:251:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	56(%rsp), %r13	# %sfp, _113
	subl	$1, %eax	#, tmp232
	movq	%rcx, %rbx	# C, ivtmp.318
	leaq	8(%rcx,%rax,8), %r12	#, _148
# main.c:258:             C[i][j] = 0.0;    
	movq	24(%rsp), %rax	# %sfp, _112
# main.c:251:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	salq	$3, %r13	#, _113
# main.c:258:             C[i][j] = 0.0;    
	subl	$1, %eax	#, tmp236
	leaq	8(,%rax,8), %r14	#, _155
	.p2align 4,,10
	.p2align 3
.L157:
# main.c:251:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movl	$32, %edi	#,
	movq	%r13, %rsi	# _42,
	call	aligned_alloc@PLT	#
# main.c:251:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, (%rbx)	# tmp238, MEM[(double * *)_71]
# main.c:251:         C[i] = aligned_alloc(MEM_ALIGN, N * sizeof(double));
	movq	%rax, %rdi	# tmp269, tmp238
# main.c:252:         if(C[i] == NULL) {
	testq	%rax, %rax	# tmp238
	je	.L155	#,
# main.c:257:         for(int j=0; j<N; j++){
	testl	%ebp, %ebp	# _113
	jle	.L158	#,
# main.c:258:             C[i][j] = 0.0;    
	movq	%r14, %rdx	# _155,
	xorl	%esi, %esi	#
	call	memset@PLT	#
.L158:
# main.c:250:     for(int i=0; i<L; i++) {
	addq	$8, %rbx	#, ivtmp.318
	cmpq	%r12, %rbx	# _148, ivtmp.318
	jne	.L157	#,
.L160:
# main.c:276:     gettimeofday(&start, NULL);
	xorl	%esi, %esi	#
	leaq	80(%rsp), %rdi	#, tmp243
	call	gettimeofday@PLT	#
# main.c:279:     matrix_multiply(A, B, C, L, M, N);
	movl	24(%rsp), %r9d	# %sfp,
	movl	32(%rsp), %r8d	# %sfp,
	movq	%r15, %rdi	# A,
	movl	64(%rsp), %ecx	# %sfp,
	movq	8(%rsp), %rdx	# %sfp,
	movq	40(%rsp), %rsi	# %sfp,
	call	matrix_multiply	#
# main.c:285:     gettimeofday(&stop, NULL);
	xorl	%esi, %esi	#
	leaq	96(%rsp), %rdi	#, tmp244
	vzeroupper
	call	gettimeofday@PLT	#
# main.c:286:     timersub(&stop, &start, &total);
	movq	96(%rsp), %r9	# stop.tv_sec, stop.tv_sec
	movq	104(%rsp), %rax	# stop.tv_usec, stop.tv_usec
	subq	80(%rsp), %r9	# start.tv_sec, total$tv_sec
	subq	88(%rsp), %rax	# start.tv_usec, total$tv_usec
	jns	.L159	#,
# main.c:286:     timersub(&stop, &start, &total);
	subq	$1, %r9	#, total$tv_sec
	addq	$1000000, %rax	#, total$tv_usec
.L159:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 200
	leaq	.LC9(%rip), %rsi	#, tmp247
	movl	$2, %edi	#,
	pushq	%rax	# total$tv_usec
	.cfi_def_cfa_offset 208
	movq	40(%rsp), %r14	# %sfp, _112
	xorl	%eax, %eax	#
	movl	80(%rsp), %ebx	# %sfp, _117
	movl	84(%rsp), %ecx	# %sfp,
	movl	%r14d, %r8d	# _112,
	movl	%ebx, %edx	# _117,
	call	__printf_chk@PLT	#
# main.c:313:     free_matrices(A, B, C, L, M, N);
	movl	48(%rsp), %r8d	# %sfp,
	movl	%r14d, %r9d	# _112,
	movl	%ebx, %ecx	# _117,
	movq	24(%rsp), %rdx	# %sfp,
	movq	56(%rsp), %rsi	# %sfp,
	movq	%r15, %rdi	# A,
	call	free_matrices	#
# main.c:315:     return 0;
	popq	%rax	#
	.cfi_def_cfa_offset 200
	popq	%rdx	#
	.cfi_def_cfa_offset 192
.L136:
# main.c:316: }
	movq	120(%rsp), %rax	# D.41297, tmp277
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp277
	jne	.L206	#,
	addq	$136, %rsp	#,
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
.L205:
	.cfi_restore_state
# main.c:236:     for(int i=0; i<L; i++)
	cmpl	$0, 16(%rsp)	#, %sfp
	jle	.L207	#,
# main.c:245:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, 8(%rsp)	# C, %sfp
# main.c:246:     if(C == NULL) {
	testq	%rax, %rax	# C
	je	.L155	#,
	movslq	24(%rsp), %rax	# %sfp, _113
	movq	%rax, 56(%rsp)	# _113, %sfp
	jmp	.L153	#
.L207:
# main.c:245:     C = aligned_alloc(MEM_ALIGN, L * sizeof(double *));
	movq	48(%rsp), %rsi	# %sfp,
	movl	$32, %edi	#,
	call	aligned_alloc@PLT	#
	movq	%rax, 8(%rsp)	# C, %sfp
# main.c:246:     if(C == NULL) {
	testq	%rax, %rax	# C
	jne	.L160	#,
.L155:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC8(%rip), %rdi	#, tmp229
	call	puts@PLT	#
# main.c:248:         return 0;
	jmp	.L136	#
.L206:
# main.c:316: }
	call	__stack_chk_fail@PLT	#
.L134:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC6(%rip), %rdi	#, tmp207
	call	puts@PLT	#
# main.c:226:         return 0;
	jmp	.L136	#
.L132:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC5(%rip), %rdi	#, tmp201
	call	puts@PLT	#
# main.c:212:         return 0;
	jmp	.L136	#
.L163:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC4(%rip), %rdi	#, tmp196
	call	puts@PLT	#
# main.c:199:         print_help_and_exit(argv);
	movq	%rbx, %rdi	# argv,
	call	print_help_and_exit	#
.L204:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:86:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC3(%rip), %rdi	#, tmp183
	call	puts@PLT	#
# main.c:188:         print_help_and_exit(argv);
	movq	%rbx, %rdi	# argv,
	call	print_help_and_exit	#
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
