# Basic Benchmark for CP/M

<dl>
  <dt>mbasic.bas</dt>
  <dd>Benchmark for Basic-80 (MBasic).  For each test enter how many
      times you would like to run the test and then time until
      STOP is output.  Enter the time and the program will work
      out what the result would have been if it had taken 20 seconds.</dd>
</dl>


## Creating .d64 Files for C128

To create .d64 files that are compatible with CP/M use [ctools](https://github.com/mist64/ctools).  To create a new .d64 file, `bench.d64`, and put `mbasic.bas` in it:

    ./cformat -0 bench.d64
    ./ctools bench.d64 p mbasic.bas
