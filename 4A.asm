.orig x3000	
AND R1,R1 #0
AND R2,R2 #0
AND R3,R3 #0
LD R1 X0FC
LD R2 X0FC
NOT R1,R1
NOT R2,R2
AND R3,R1,R2
ST R3 X0F9
HALT
.END