[ORG 0x7C00]
[BITS 16]

    mov bx, RealModeMessage
    call bios_teletype_print
    jmp $


%include "bios_teletype_print.asm"

RealModeMessage: db "Currently operating in 16-bit real mode", 0

; boot signature
times 510 - ($-$$) db 0
dw 0xAA55