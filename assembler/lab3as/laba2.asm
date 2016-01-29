.model small
.stack 256
.data
a	dw	2
c	dw	28
d	dw	1
per1	dw	?
per2	dw	?
per3	dw	?
per4	dw	?
.code
main:
	mov	ax,@data
	mov	ds,ax
	xor	ax,ax
	xor dx,dx
	
	mov	ax,c
	mov	per1,2
	mul	per1
	add	ax,d
	mov per1,52
	sub	ax,per1
	mov	per1,ax
	xor	ax,ax
	
	mov	per2,4
	mov	ax,a
	idiv	per2
	inc	ax
	mov	per2, ax
	xor	ax,ax
	
	mov	ax,per1
	mov	bx,per2
	xor dx,dx
	idiv	bx	
exit:
	mov	ax,4c00h
	int	21h
	end main