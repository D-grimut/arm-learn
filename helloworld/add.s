.global _main
.align 2

_main:
    b _addprintf
    b _terminate

_addprintf:
    mov X0, #1  // stdout 1 (end normalt)
    mov X1, #5
    add X1, X1, #5
    add X1, X1, #10  // Adding to the same register - and 
    mov X2, #6  // lenght of string we want to priint - in our case its max 300 000
    mov X16, #4 // 4 is the code to tell the OS to print
    SVC 0

_terminate:
    mov X0, #0
    mov X16, #1
    SVC 0