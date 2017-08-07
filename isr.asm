

      .ORIG x3500

      LDI R0,KBDR  ;No polling needed, was interrupted
      AND R1, R1, #0
      STI R1, KBSR

      LDI R1, PC
      STR R1, R6, #0

      RTI



PC   .FILL x32FF
KBDR .FILL xFE02
KBSR .FILL xFE00

      .END
