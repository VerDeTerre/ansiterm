Ansiterm
========

A library of functions to facilitate the use of ANSI escape sequences in
terminal programs. A subset of codes is implemented.

Utility functions are available in optional files. For example, ansiterm/color
includes shortcuts like "red", "green", "yellow", etc., whose effects could
otherwise be achieved by calling sgr with the appropriate numeric codes (31,
32, and 33, respectively).

Two modes are available: "immediate" (default), which outputs as methods
called, and "string", which allows ouptut to be built up through concatenation.

The following will produce identical results:

Example 1

    require 'ansiterm/color' # automatically requires ansiterm

    include Ansiterm # the module can be mixed in or used stand-alone

    immediate_mode! # unnecessary unless mode has previously been switched
    green.sgr(1).writeln("This is a test").reset

Example 2

    require 'ansiterm/color'

    include Ansiterm

    string_mode!
    puts green + sgr(1) + writeln("This is a test") + reset
