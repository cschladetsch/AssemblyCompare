.code
align 16
extern from_c : proc
bubble_sort proc
    sub rsp, 28h
    mov [rsp], rcx

    mov rcx,42
    call [from_c]

    add rsp, 28h
    ret
bubble_sort endp

end
