

      .ORIG x3400

      LD R0, ASTRK

LOOP  ADD R1, R1, #1
      BRzp LOOP
      OUT
      AND R1, R1, #0
      BRnzp LOOP



ASTRK .FILL x002A
  

      .END
