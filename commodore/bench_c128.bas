10 rem basic benchmark
20 rem inspired by qsbb from qlay sinclair ql emulator
30 rem this requires an 80 column monitor
40 rem
50 rem copyright (c) 2019 lawrence woodman
60 rem licensed under an mit licence

100 rem array used later
110 dim ar(20)

200 graphic 5
210 wn=0: window 0,0,39,24
220 print "basic benchmark"
230 print "7 tests, 20 seconds each"
240 print
250 md$="slow":slow:gosub 1000:sp=p:sf=f:ss=s
260 md$="fast":fast:gosub 1000:fp=p:ff=f:fs=s:slow

300 end

1000 rem calculate benchmarks
1010 print
1020 print md$;" mode, please wait..."
1030 print

1100 gosub 10000
1110 t=ti
1120 p=0
1130 do
1140 for i=1 to 20
1150 print ".";
1160 next i
1170 p=p+1
1180 loop until ti-t>1200
1190 gosub 10000
1200 print "printing:  "; p

1300 t=ti
1310 f=0
1320 do
1330 for i=1 to 20
1340 ra=sin(0.1):rb=log(4):rc=exp(10)
1350 next i
1360 f=f+1
1370 loop until ti-t>1200
1380 print "functions: "; f

1500 t=ti
1510 s=0
1520 do
1530 for i=1 to 20
1540 a$="abcdefghijklmnopqrstuvwxyz"
1550 b$="zyxwvutsrqponmlkjihgfedcba"
1560 c$=a$+b$
1590 next i
1600 s=s+1
1610 loop until ti-t>1200
1620 print "strings:   "; s

1700 t=ti
1710 l=0
1720 do
1730 for i=1 to 20
1740 for j=1 to i: next j
1750 next i
1760 l=l+1
1770 loop until ti-t>1200
1780 print "for loops: "; l

1800 goto 1820
1810 return
1820 t=ti
1830 g=0
1840 do
1850 for i=1 to 20
1860 gosub 1810:gosub 1920
1870 next i
1880 g=g+1
1890 loop until ti-t>1200
1900 print "gosubs:    "; g
1910 goto 1930
1920 return
1930 :

2000 t=ti
2010 a=0
2020 do
2030 for i=1 to 20
2040 ar(i)=i:b=ar(i)
2050 next i
2060 a=a+1
2070 loop until ti-t>1200
2080 print "arrays:    "; a

2200 t=ti
2210 m=0
2220 ka=5
2230 kb=6.2
2240 do
2250 for i=1 to 20
2260 r=ka+kb-ka/kb*ka*kb
2270 r=5+6.2-5/6.2*5*6.2
2290 next i
2300 m=m+1
2310 loop until ti-t>1200
2320 print "maths:     "; m

3000 return: rem end of calculate benchmarks


10000 rem switch window
10010 rem wn stores which window to switch to
10020 if wn = 0 then begin: wl=peek(235)
10030 wn = 1: window 40,0,79,24
10050 bend: else begin
10060 wn = 0
10070 window 0,0,39,24: char 1,0,wl
10080 bend
10090 return
