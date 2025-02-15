; Corrected assembly code with bounds checking
section .data
array dw 10, 20, 30, 40 ; Example array
arrayLength equ ($ - array) / 2 ; Calculate array length in words

section .text
global _start
_start:
    ; ... (rest of the code)
    mov ecx, someIndex ; Get the index from somewhere
    cmp ecx, arrayLength ; Check index against the array's bounds
    jge outOfBounds ; Jump to error handling if out of bounds
    mov eax, [array + ecx*2] ; Access memory only if within bounds
    ; ... (rest of the code)

outOfBounds:
    ; Handle out-of-bounds error, e.g., exit gracefully
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80