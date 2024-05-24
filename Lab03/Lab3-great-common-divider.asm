org 100h

mov ax, Num1
mov bx, Num2

cmp ax, bx
jle counter_setter

mov cx, bx
jmp gcd_loop

counter_setter:
mov cx, ax

gcd_loop:
xor dx, dx
mov ax, Num1
div cx
cmp dx, 0
jne not_equal
mov ax, Num2
div cx
cmp dx, 0
jne not_equal
mov gcd, cx

jmp end

not_equal:
dec cx
jmp gcd_loop

end:
ret

Num1 dw 20
Num2 dw 30
gcd dw 0




