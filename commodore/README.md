# Basic Benchmark for Commodore Computers

## Create `.prg` File From the Basic Source File

For C64 and Vic-20:

    $ petcat -w2 -o bench.prg bench.bas

For Plus/4:

    $ petcat -w35 -o bench.prg bench.bas

For C128:

    $ petcat -w70 -o bench.prg bench.bas
    $ petcat -w70 -o bench_c128.prg bench_c128.bas


## Running Program in Vice

To start vice and autoload `.prg` file use `-autostartprgmode 1` and supply
name of `.prg` file.

For Vic-20:

    $ xvic -autostartprgmode 2 -basicload bench.prg

For C64:

    $ x64 -autostartprgmode 1 bench.prg

For Plus/4:

    $ xplus4 -autostartprgmode 1 bench.prg

For C128 to start in slow mode on 40 column.  If you wish to run it in
80 column fast mode then break out of it once it starts running and
type `graphic 5:fast:run`:

    $ x128 -autostartprgmode 1 bench.prg

or for the C128 windowed version, which runs in 80 columns:

    $ x128 -autostartprgmode 1 bench_c128.prg
