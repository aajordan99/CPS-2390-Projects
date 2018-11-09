;R1 contains x3100 to be rotated
;R2 contains x3101 rotation amt
;R3 contains x3102 (x8000 loaded)
;R4 is used if MSB is 1
0011000000000000; start at x3000
0101001001100000; clear r1
0101010010100000; clear r2
0101011011100000; clear r3
0010001011111100; load x3100 into r1
0010010011111100; load x3101 into r2
0010011011111100; load x3102 into r3
0101100001000011;ands r1 and r3 and stores value in r4
0000010000000001;branches if And operation is 0
0001100001100001; adds 1 to r4 if AND operation is 1
0001001001000001; shifts r1 left 
0001001001000100; adds 1 or 0 accordingly
0001010010111111;decrements counter
0000001111111001;branches back while counter/rotate amt is positive
0011001011110100;stores r1 into x3102
1111000000100101;end
