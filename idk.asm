.orig x3000

;R1 is the bitmask register
;R2 contains data from x3100
;R3 stores values 1(odd) or 0(even)
;R4 counter register
;R5 copy of R2
;R6 counter for 1s in R5
;R7 stores count of total 1s in x3100

;first lines clear the used registers
ADD R1,R1, x0
ADD R2,R1,R1
ADD R3,R1,R1
ADD R4,R1,R1
ADD R5,R1,R1

LD R2, x0FA; loads contents of x3100 to R2
ADD R1,R1 #1; Sets R1 to 0000 0001 to use for next step
AND R3,R1,R2; checks if value in x3100 is odd or even
ST R3 x0F8; Stores x0001 if odd or x0000 if even in x3101
ADD R4,R4 #15; defaulted at 15 for counting 1s in x3100
ADD R5,R2, x0; copy R2 into R5

ADD R4,R4 #-1; decrements the counter
AND R6,R1,R5; Masks R5
AND R7,R6,R1; Counts everytime 1 is present (doesnt actually work)


AND R0,R7,#-1;

ADD R1,R1 R1; moves 1 to next binary bit place

BRp #-6; continue until counter is 0
ST R7 x0F0; Stores count in x3102


HALT
.END