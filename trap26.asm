
      .ORIG x3300 
      STI R7, UP1
      LD R1, BIT14            ;Turn on interrupt enable bit in KBSR
      STI R1, KBSR
      
      LD R1, UP2
      JMP R1 ;JMP to UP2




BIT14 .FILL x4000
UP1   .FILL x32FF
UP2   .FILL x3400
KBSR  .FILL xFE00


      .END
