.486
.model flat
.code
align 16

_bubble_sort proc
    push ebp
    mov ebp, esp
    push edi
    push esi
    push ebx

    mov eax, [ebp + 8]   ; load array base address
    mov ecx, [ebp + 12]  ; load array size

next_iter:
    cmp ecx, 1
    jle done

    mov edx, 0

inner_loop:
    mov esi, [eax + edx*4]
    mov edi, [eax + edx*4 + 4]
    cmp esi, edi
    jg swap
    add edx, 1
    cmp edx, ecx
    jl inner_loop

    dec ecx
    jmp next_iter

swap:
    mov [eax + edx*4], edi
    mov [eax + edx*4 + 4], esi
    jmp inner_loop

done:
    pop ebx
    pop esi
    pop edi
    pop ebp
    ret
_bubble_sort endp



end
