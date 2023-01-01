.code
align 16
extern from_c : proc

retcon proc
    sub rsp, 28h
    mov [rsp], rcx

    mov rcx,42
    call [from_c]

    add rsp, 28h
    ret
retcon  endp

; input:
;   stack -1: count
;   stack -0: address
bubble_sort proc
    mov rax, 0
    mov rbx, qword ptr[rsp + 8]   ; load array base address
    mov rcx, qword ptr[rsp + 16]  ; load array size

next_iter:
    cmp rcx, 1
    jle done

    mov rdx, 0

inner_loop:
    mov r8, qword ptr[rbx + rdx*8]
    mov r9, qword ptr[rbx + rdx*8 + 8]
    cmp r8, r9
    jg swap
    add rdx, 1
    cmp rdx, rcx
    jl inner_loop

    dec rcx
    jmp next_iter

swap:
    mov qword ptr[rbx + rdx*8], r9
    mov qword ptr[rbx + rdx*8 + 8], r8
    jmp inner_loop

done:
    ret
bubble_sort endp



end
