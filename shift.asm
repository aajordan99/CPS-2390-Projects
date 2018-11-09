.orig x3000

AND R1, R1 #0
AND R2, R2 #0
LD R1, x0FD
LD R2 x0FD
ADD R1,R1,R1
ADD R2,R2 #-1
BRP #-3
ST R1, X0FC
;end of shift code




HALT
.END