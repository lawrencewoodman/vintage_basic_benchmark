10 rem basic benchmark
20 rem inspired by qsbb from qlay sinclair ql emulator
30 rem
40 rem copyright (c) 2019 lawrence woodman
50 rem licensed under an mit licence.

100 rem array used later
110 dim ar(20)

200 print "basic benchmark"
210 print "7 tests, 20 seconds each"
220 print

1000 rem calculate benchmarks
1010 print
1020 print "please wait..."
1030 print

1100 t=ti
1110 p=0
1120 for i=1 to 20
1130 print ".";
1140 next i
1150 p=p+1
1160 if ti-t<=1200 then goto 1120

1300 t=ti
1310 f=0
1320 for i=1 to 20
1330 ra=sin(0.1):rb=log(4):rc=exp(10)
1340 next i
1350 f=f+1
1360 if ti-t<=1200 then goto 1320

1500 t=ti
1510 s=0
1520 for i=1 to 20
1530 a$="abcdefghijklmnopqrstuvwxyz"
1540 b$="zyxwvutsrqponmlkjihgfedcba"
1550 c$=a$+b$
1560 next i
1570 s=s+1
1580 if ti-t<=1200 then goto 1520

1700 t=ti
1710 l=0
1720 for i=1 to 20
1730 for j=1 to i: next j
1740 next i
1750 l=l+1
1760 if ti-t<=1200 then goto 1720

1800 goto 1820
1810 return
1820 t=ti
1830 g=0
1840 for i=1 to 20
1850 gosub 1810:gosub 1900
1860 next i
1870 g=g+1
1880 if ti-t<=1200 then goto 1840
1890 goto 1910
1900 return
1910 :

2000 t=ti
2010 a=0
2020 for i=1 to 20
2030 ar(i)=i:b=ar(i)
2040 next i
2050 a=a+1
2060 if ti-t<=1200 then goto 2020


2200 t=ti
2210 m=0
2220 ka=5
2230 kb=6.2
2240 for i=1 to 20
2250 r=ka+kb-ka/kb*ka*kb
2260 r=5+6.2-5/6.2*5*6.2
2270 next i
2280 m=m+1
2290 if ti-t<=1200 then goto 2240

3010 print:print
3020 print "results"
3030 print "======="
3040 print "printing:  "; p
3050 print "functions: "; f
3060 print "strings:   "; s
3070 print "for loops: "; l
3080 print "gosubs:    "; g
3090 print "arrays:    "; a
3090 print "maths:     "; m
