# Basic Benchmark for Sinclair Computers

## For Spectrum

### Create a `.tap` File From the Basic Source File

To create a `.tap` file from the basic source file use:
  [bas2tap](https://github.com/andybalaam/bas2tap)

This is used as follows:

    $ bas2tap bench_spectrum.bas bench_spectrum.tap

## Create `.dsk` File With the Basic Source File

To create the `.dsk` file and put `bench_spectrum_mbasic.bas` onto it.  I used [P3Explorer](http://www.worldofspectrum.org/pub/sinclair/tools/pc/P3Explorer.zip).  Because CP/M expects the filename to be in capitals, I first renamed the file to `BENCH.BAS`.  This benchmark works with CP/M Plus but doesn't seem to work with CP/M 2.2 for the Spectrum.
