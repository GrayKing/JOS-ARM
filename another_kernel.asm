
initsys.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <initsys>:
   0:	e92d0007 	push	{r0, r1, r2}
   4:	e59f30f0 	ldr	r3, [pc, #240]	; fc <initsys+0xfc>
   8:	e59f00f0 	ldr	r0, [pc, #240]	; 100 <initsys+0x100>
   c:	e3a02901 	mov	r2, #16384	; 0x4000
  10:	e3a01000 	mov	r1, #0
  14:	e1530000 	cmp	r3, r0
  18:	91a0ca03 	lslls	ip, r3, #20
  1c:	938cce41 	orrls	ip, ip, #1040	; 0x410
  20:	938cc002 	orrls	ip, ip, #2
  24:	e2833001 	add	r3, r3, #1
  28:	9582c000 	strls	ip, [r2]
  2c:	85821000 	strhi	r1, [r2]
  30:	e3530b02 	cmp	r3, #2048	; 0x800
  34:	e2822004 	add	r2, r2, #4
  38:	1afffff5 	bne	14 <initsys+0x14>
  3c:	e59fc0c0 	ldr	ip, [pc, #192]	; 104 <initsys+0x104>
  40:	e59f70c0 	ldr	r7, [pc, #192]	; 108 <initsys+0x108>
  44:	e59f60c0 	ldr	r6, [pc, #192]	; 10c <initsys+0x10c>
  48:	e59f50c0 	ldr	r5, [pc, #192]	; 110 <initsys+0x110>
  4c:	e3a01901 	mov	r1, #16384	; 0x4000
  50:	e3a02b0f 	mov	r2, #15360	; 0x3c00
  54:	e3a00a03 	mov	r0, #12288	; 0x3000
  58:	e3a03000 	mov	r3, #0
  5c:	e59f40b0 	ldr	r4, [pc, #176]	; 114 <initsys+0x114>
  60:	e5817000 	str	r7, [r1]
  64:	e7816002 	str	r6, [r1, r2]
  68:	e781c000 	str	ip, [r1, r0]
  6c:	e1a01625 	lsr	r1, r5, #12
  70:	e1a0c003 	mov	ip, r3
  74:	e1530001 	cmp	r3, r1
  78:	90840603 	addls	r0, r4, r3, lsl #12
  7c:	93800012 	orrls	r0, r0, #18
  80:	e2833001 	add	r3, r3, #1
  84:	95820000 	strls	r0, [r2]
  88:	8582c000 	strhi	ip, [r2]
  8c:	e3530c01 	cmp	r3, #256	; 0x100
  90:	e2822004 	add	r2, r2, #4
  94:	1afffff6 	bne	74 <initsys+0x74>
  98:	e59f0078 	ldr	r0, [pc, #120]	; 118 <initsys+0x118>
  9c:	e1500005 	cmp	r0, r5
  a0:	2a000006 	bcs	c0 <initsys+0xc0>
  a4:	e59f2070 	ldr	r2, [pc, #112]	; 11c <initsys+0x11c>
  a8:	e2803004 	add	r3, r0, #4
  ac:	e0632002 	rsb	r2, r3, r2
  b0:	e3c22003 	bic	r2, r2, #3
  b4:	e2822004 	add	r2, r2, #4
  b8:	e3a01000 	mov	r1, #0
  bc:	ebfffffe 	bl	0 <memset>
  c0:	e3a03901 	mov	r3, #16384	; 0x4000
  c4:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
  c8:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
  cc:	e3a03000 	mov	r3, #0
  d0:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
  d4:	e3a03001 	mov	r3, #1
  d8:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
  dc:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
  e0:	e3833502 	orr	r3, r3, #8388608	; 0x800000
  e4:	e3833001 	orr	r3, r3, #1
  e8:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
  ec:	e59f302c 	ldr	r3, [pc, #44]	; 120 <initsys+0x120>
  f0:	e1a0e003 	mov	lr, r3
  f4:	e8bd0007 	pop	{r0, r1, r2}
  f8:	e12fff1e 	bx	lr
  fc:	fffff800 	.word	0xfffff800
 100:	0000020f 	.word	0x0000020f
 104:	00003c01 	.word	0x00003c01
 108:	00000402 	.word	0x00000402
 10c:	00008402 	.word	0x00008402
	...
 11c:	00000003 	.word	0x00000003
 120:	00000000 	.word	0x00000000
