.section ".text.boot"
#include <inc/mmu.h>
#include <inc/memlayout.h>

#define RELOC(x) ( (x) - KERNBASE ) 
 
.globl _start
.global entry
_start:
entry:
	mov r4, #0x8000

	/* SVC stack (for SWIs) at 0x2000 */
	/* The processor appears to start in this mode, but change to it
	 * anyway
	 */
	cps #0x13		/* Change to supervisor (SVC) mode */
	mov sp, r4

	/* ABORT stack at 0x2400 */
	cps #0x17		/* Change to Abort mode */
	add sp, r4, #0x2800

	/* IRQ stack at 0x2800 */
	cps #0x12		/* Change to IRQ mode */
	add sp, r4, #0x2c00

	/* System stack at 0x2c00 */
	cps #0x1f		/* Change to system mode */
	add sp, r4, #0x3c00

	/* Turn on unaligned memory access */
	mrc p15, #0, r4, c1, c0, #0
	orr r4, #0x400000	/* 1<22 */
	mcr p15, #0, r4, c1, c0, #0 

	/* Jump to memory map initialisation code */
	push {r0, r1, r2}
	ldr r0, =0xFFFFFFFF // 0x11 for every domain represents the MANAGER
	mcr p15, 0, r0, c3, c0, 0 //Set domain access permission

	ldr r3, = RELOC(entry_pgdir)   
	mcr p15, 0, r3, c2, c0, 0
        mcr p15, 0, r3, c2, c0, 1
        mov r3,  #0 
        mcr p15, 0, r3, c2, c0, 2 
	#mov r3,  #1
	#mcr p15, 0, r3, c3, c0, 0
	mcr p15, 0, r3, c1, c0, 0
#	orr r3,  r3, #0x800000
	orr r3,  r3, #1
	mcr p15, 0, r3, c1, c0, 0
	ldr lr,=arm_init
	pop {r0,r1,r2}
	blx  lr

		
