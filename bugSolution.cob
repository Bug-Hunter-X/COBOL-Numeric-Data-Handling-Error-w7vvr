01  WS-DATA-AREA. 
    05 WS-AMOUNT          PIC 9(5)V99. 
    05 WS-QTY             PIC 9(3). 
    05 WS-TOTAL-AMOUNT   PIC 9(9)V99 VALUE 0. 
    05 WS-AVERAGE-AMOUNT PIC 9(5)V99. 
    05 WS-ZERO-FLAG       PIC X VALUE 'N'.
*...
    IF WS-QTY = 0 THEN 
       MOVE 'Y' TO WS-ZERO-FLAG 
       DISPLAY "Error: Division by zero encountered." 
    ELSE 
       ADD WS-AMOUNT TO WS-TOTAL-AMOUNT 
       COMPUTE WS-AVERAGE-AMOUNT = WS-TOTAL-AMOUNT / WS-QTY 
    END-IF.