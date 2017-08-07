      .ORIG x3000

      LD R6, STACK
      LD R0, TRAP26
      LD R1, LOC
      STR R1, R0, #0
      LD R0, ISR
      LD R1, LOC2
      STR R1, R0, #0

      

LOOP  TRAP   x26   ; get char
      TRAP   x21   ; print char to screen
      TRAP   x26   ; get char
      TRAP   x21   ; print char to screen
      TRAP   x26   ; get char
      TRAP   x21   ; print char to screen
      TRAP   x26   ; get char
      TRAP   x21   ; print char to screen
      TRAP   x26   ; get char
      TRAP   x21   ; print char to screen
      LEA    R0, END_MSG
      PUTS
      BRnzp LOOP

END_MSG .STRINGZ "\nSuccess! Running again...\n"

STACK  .FILL x3000
LOC    .FILL x3300
LOC2   .FILL x3500
TRAP26 .FILL x0026
ISR    .FILL x0180


      .END
