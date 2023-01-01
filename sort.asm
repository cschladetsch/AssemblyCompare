.code
align 16
extern from_c : proc
bubble_sort proc
    mov eax,42
    call [from_c]
    ret
bubble_sort endp

end
