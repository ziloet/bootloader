[BITS 16]

bios_teletype_print:
    pusha
    mov ah, 0x0E  ; bios teletype output routine

  .teletype_print_string_loop:
    mov al, [bx]  ; bx: pointer to char string
    cmp al, 0
    je .teletype_print_string_done
    int 0x10      ; print character
    inc bx
    jmp .teletype_print_string_loop

  .teletype_print_string_done:
    popa
    ret