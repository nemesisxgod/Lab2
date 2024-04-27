section .data
    hello db "101tf11flb10001", 0
    newline db 10

section .text
    global _start

_start:
    mov rdi, hello
    call vivod

    call exit

vivod:
    push rbp
    push rsi        
    push rax        
    mov rax, 0                  
    dec rdi

    .loop:
        call next_symbol
        cmp al, 0                   
        je .loop_end

        cmp al, '1'                 
        jne .loop
        
        mov rsi, rdi                
        jmp .inner_loop
    
    .loop_end:
    pop rax
    pop rsi
    pop rbp
    
    ret

.inner_loop:
    call next_symbol            
    cmp al, '0'                
    je .inner_loop         

    cmp al, 0    
    je .loop_end 
    
    cmp al, '1'
    jne .loop
        
    call print_substring
    jmp .loop

next_symbol:
  inc rdi
  mov al, byte [rdi]
  
  ret

print_substring:
    push rbx
    push rcx
    
    mov rbx, rsi
    mov rcx, rdi
    sub rcx, rbx
    add rcx, 1
    
    cmp rcx, 3
    jb .print_substring_end
    
    call print_string
    call print_endl
    
    .print_substring_end
    pop rcx
    pop rbx
    
    ret

print_string:
    push rax
    push rdi
    push rsi
    push rdx

    mov rax, 1
    mov rdi, 1
    mov rsi, rbx
    mov rdx, rcx
    syscall

    pop rdx
    pop rsi
    pop rdi
    pop rax

    ret
    
print_endl:
    push rbx
    push rcx

    mov rbx, newline
    mov rcx, 1
    call print_string

    pop rcx
    pop rbx
    
    ret
    
exit:
    mov rax, 60
    mov rdi, 0
    syscall