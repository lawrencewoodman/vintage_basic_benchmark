10 rem basic benchmark
20 rem inspired by qsbb from qlay sinclair ql emulator
30 rem
40 rem copyright (c) 2019 lawrence woodman
50 rem licensed under an mit licence

100 rem array used later
110 dim ar(20)

200 print "basic benchmark"
210 print "7 tests, 20 seconds each"
220 print

1000 rem calculate benchmarks
1010 print
1020 print "please wait..."
1030 print

1100 gosub 10000
1110 for x=1 to y
1120 for i=1 to 20
1130 print ".";
1140 next i
1150 next x
1160 gosub 20000:p=w

1300 gosub 10000
1310 for x=1 to y
1320 for i=1 to 20
1330 ra=sin(0.1):rb=log(4):rc=exp(10)
1340 next i
1350 next x
1360 gosub 20000:f=w

1500 gosub 10000
1510 for x=1 to y
1520 for i=1 to 20
1530 a$="abcdefghijklmnopqrstuvwxyz"
1540 b$="zyxwvutsrqponmlkjihgfedcba"
1550 c$=a$+b$
1560 next i
1570 next x
1580 gosub 20000:s=w

1700 gosub 10000
1710 for x=1 to y
1720 for i=1 to 20
1730 for j=1 to 20: next j
1740 next i
1750 next x
1760 gosub 20000:l=w

1800 goto 1820
1810 return
1820 gosub 10000
1830 for x=1 to y
1840 for i=1 to 20
1850 gosub 1810:gosub 1900
1860 next i
1870 next x
1880 gosub 20000:g=w
1890 goto 1910
1900 return
1910 :

2000 gosub 10000
2010 for x=1 to y
2020 for i=1 to 20
2030 ar(i)=i:b=ar(i)
2040 next i
2050 next x
2060 gosub 20000:a=w


2200 gosub 10000
2210 ka=5
2220 kb=6.2
2230 for x=1 to y
2240 for i=1 to 20
2250 r=ka+kb-ka/kb*ka*kb
2260 r=5+6.2-5/6.2*5*6.2
2270 next i
2280 next x
2290 gosub 20000:m=w

3010 print:print
3020 print "results"
3030 print "======="
3040 print "printing:  "; p
3050 print "functions: "; f
3060 print "strings:   "; s
3070 print "for loops: "; l
3080 print "gosubs:    "; g
3090 print "arrays:    "; a
3100 print "maths:     "; m
3110 end

10000 rem get number of times to run test
10010 input "Enter number of test runs";y
10020 print "START"
10030 return

20000 rem value for 20 seconds
20010 print "STOP"
20020 input "Enter time in seconds to complete";t
20030 w=int(y*20/t)
20040 return
