.global _main ;defining the entry point for our ARM program
.balign 4   ; alignment is about making sure that the pieces of data or instructions are placed at the correct places in memeory (evenly spaced)
            ; here we are aligning the _main method to 4 bytes so that the instructions in _main starts at an address that is divisible by 4.
_main:
                ; on apple silicone the first 7 'x' registers are for params (variables)
    mov X0, #5  ;imidiat addressing
    mov x1,x0   ;register direct adressing

    mov x16, #1     ;x16 is a special register - its the one the OS uses to interface with our program
    svc 0           ;svc calls an interupt - saying to the OS "hey go to r7 there is something for you to see"
