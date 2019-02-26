10 rem basic benchmark
20 rem inspired by qsbb from qlay sinclair ql emulator
30 rem
40 rem copyright (c) 2019 lawrence woodman
50 rem licensed under an mit licence

100 rem array used later
110 dim ar(20)

150 rem set up timer
160 DEF SEG=0:DEFDBL c: c=&h4BC

200 print "basic benchmark"
210 print "7 tests, 20 seconds each"
220 print

300 print "calibrating...";
310 ta=peek(c)
320 for i=1 to 1000
330 next i
340 tb=peek(c):ca=abs(tb-ta)

350 ta=peek(c)
360 for i=1 TO 1000
370 y=abs(peek(c))
380 next i
390 tb=peek(c):cb=abs(tb-ta)

400 ct=(cb-ca)/1000
410 print "ok"

1000 rem calculate benchmarks
1010 print
1020 print "please wait..."
1030 print

1100 ta=peek(c)
1110 p=0
1120 for i=1 to 20
1130 print ".";
1140 next i
1150 p=p+1
1160 tb=peek(c)
1170 if abs(tb-ta)<=260000000 then goto 1120
1180 p=int(p/(260000000-(ct*p))*260000000)

1300 ta=peek(c)
1310 f=0
1320 for i=1 to 20
1330 ra=sin(0.1):rb=log(4):rc=exp(10)
1340 next i
1350 f=f+1
1360 tb=peek(c)
1370 if abs(tb-ta)<=260000000 then goto 1320
1380 f=int(f/(260000000-(ct*f))*260000000)

1500 ta=peek(c)
1510 s=0
1520 for i=1 to 20
1530 a$="abcdefghijklmnopqrstuvwxyz"
1540 b$="zyxwvutsrqponmlkjihgfedcba"
1550 c$=a$+b$
1560 next i
1570 s=s+1
1580 tb=peek(c)
1590 if abs(tb-ta)<=260000000 then goto 1520
1600 s=int(s/(260000000-(ct*s))*260000000)

1700 ta=peek(c)
1710 l=0
1720 for i=1 to 20
1730 for j=1 to 20: next j
1740 next i
1750 l=l+1
1760 tb=peek(c)
1770 if abs(tb-ta)<=260000000 then goto 1720
1780 l=int(l/(260000000-(ct*l))*260000000)

1800 goto 1820
1810 return
1820 ta=peek(c)
1830 g=0
1840 for i=1 to 20
1850 gosub 1810:gosub 1920
1860 next i
1870 g=g+1
1880 tb=peek(c)
1890 if abs(tb-ta)<=260000000 then goto 1840
1900 g=int(g/(260000000-(ct*g))*260000000)
1910 goto 1930
1920 return
1930 rem

2000 ta=peek(c)
2010 a=0
2020 for i=1 to 20
2030 ar(i)=i:b=ar(i)
2040 next i
2050 a=a+1
2060 tb=peek(c)
2070 if abs(tb-ta)<=260000000 then goto 2020
2080 a=int(a/(260000000-(ct*a))*260000000)


2200 ta=peek(c)
2210 m=0
2220 ka=5
2230 kb=6.2
2240 for i=1 to 20
2250 r=ka+kb-ka/kb*ka*kb
2260 r=5+6.2-5/6.2*5*6.2
2270 next i
2280 m=m+1
2290 tb=peek(c)
2300 if abs(tb-ta)<=260000000 then goto 2240
2310 m=int(m/(260000000-(ct*m))*260000000)

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
