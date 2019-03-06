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

1100 rem benchmark printing
1110 t=ti
1120 p=0
1130 for i=1 to 20
1140 print ".";
1150 next i
1160 p=p+1
1170 if ti-t<=1200 then goto 1130

1300 rem benchmark functions
1310 t=ti
1320 f=0
1330 for i=1 to 20
1340 ra=sin(0.1):rb=log(4):rc=exp(10)
1350 next i
1360 f=f+1
1370 if ti-t<=1200 then goto 1330

1500 rem benchmark strings
1510 t=ti
1520 s=0
1530 for i=1 to 20
1540 a$="abcdefghijklmnopqrstuvwxyz"
1550 b$="zyxwvutsrqponmlkjihgfedcba"
1560 c$=a$+b$
1570 next i
1580 s=s+1
1590 if ti-t<=1200 then goto 1530

1700 rem benchmark for loops
1710 t=ti
1720 l=0
1730 for i=1 to 20
1740 for j=1 to 20: next j
1750 next i
1760 l=l+1
1770 if ti-t<=1200 then goto 1730

1800 rem benchmark gosubs
1810 goto 1830
1820 return
1830 t=ti
1840 g=0
1850 for i=1 to 20
1860 gosub 1820:gosub 1910
1870 next i
1880 g=g+1
1890 if ti-t<=1200 then goto 1850
1900 goto 1920
1910 return
1920 :

2000 rem benchmark arrays
2010 t=ti
2020 a=0
2030 for i=1 to 20
2040 ar(i)=i:b=ar(i)
2050 next i
2060 a=a+1
2070 if ti-t<=1200 then goto 2030


2200 rem benchmark maths
2210 t=ti
2220 m=0
2230 ka=5
2240 kb=6.2
2250 for i=1 to 20
2260 r=ka+kb-ka/kb*ka*kb
2270 r=5+6.2-5/6.2*5*6.2
2280 next i
2290 m=m+1
2300 if ti-t<=1200 then goto 2250

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
