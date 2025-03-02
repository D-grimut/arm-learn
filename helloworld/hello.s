.global _main
.align 2

_main:
    b _printf
    b _terminate

_printf:
    mov X0, #1
    adr X1, helloworld 
    mov x2, #111
    mov X3, #12
    mov X16, #4
    SVC 0

_reboot:
    mov X0, #1
    mov X16, #55
    SVC 0

_terminate:
    mov X0, #0
    mov X16, #1
    SVC 0

helloworld: 
    .ascii "The number is: %d\n"