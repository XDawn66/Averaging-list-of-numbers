section .text

global reverse

reverse:
xor r9d, r9d ;hold the first
xor r10d, r10d ; hold the last
xor r11,r11 ;hold the location of the first
xor r13,r13 ;hold the location of the last
mov r13,rsi
add r13,rsi ; the three adding line is equal to r13 = rsi*4
add r13,rsi
add r13,rsi
sub r13,4 ;prevent it going out of the array range

mov rcx, rsi ;loop range
shr rcx, 1  ;cut into half because we only need to loop half of the loop

start:

mov r9d, [rdi+r11];puting the first value from array
mov r10d, [rdi+r13] ;puting the last value from array
mov [rdi+r11], r10d
mov [rdi+r13],r9d
add r11,4
sub r13,4


loop start
jmp end
end:
ret




