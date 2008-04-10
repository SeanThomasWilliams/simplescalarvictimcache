gcc2_compiled.:
___gnu_compiled_c:
.text
	.align 4
	.proc	0110
_label_rtx:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	ldub [%i0+12],%o0
	cmp %o0,40
	be,a L2
	ld [%i0+64],%o0
	call _abort,0
	nop
L2:
	cmp %o0,0
	bne,a L4
	ld [%i0+64],%i0
	call _gen_label_rtx,0
	nop
	st %o0,[%i0+64]
	mov %o0,%i0
L4:
	ret
	restore
	.align 4
	.global _emit_jump
	.proc	020
_emit_jump:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call _do_pending_stack_adjust,0
	nop
	call _gen_jump,0
	mov %i0,%o0
	call _emit_jump_insn,0
	nop
	call _emit_barrier,0
	nop
	ret
	restore
	.align 4
	.global _expand_label
	.proc	020
_expand_label:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call _do_pending_stack_adjust,0
	sethi %hi(_stack_block_stack),%l0
	call _label_rtx,0
	mov %i0,%o0
	call _emit_label,0
	nop
	ld [%l0+%lo(_stack_block_stack)],%o0
	cmp %o0,0
	be L7
	nop
	call _oballoc,0
	mov 8,%o0
	ld [%l0+%lo(_stack_block_stack)],%o2
	ld [%o2+36],%o1
	st %o1,[%o0]
	st %o0,[%o2+36]
	st %i0,[%o0+4]
L7:
	ret
	restore
	.align 4
	.global _expand_goto
	.proc	020
_expand_goto:
	!#PROLOGUE# 0
	save %sp,-112,%sp
	!#PROLOGUE# 1
	call _label_rtx,0
	mov %i0,%o0
	mov %o0,%o1
	mov %i0,%o0
	call _expand_goto_internal,0
	mov 0,%o2
	ret
	restore
