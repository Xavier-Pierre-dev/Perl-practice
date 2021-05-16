#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;



say "5 + 12 = ", 5 + 12;
say "5 - 12 = ", 5 - 12;
say "5 * 12 = ", 5 * 12;
say "5 / 12 = ", 5 / 12;
say "5 % 12 = ", 5 % 12;
say "5 ** 12 = ", 5 ** 12;

say "EXP 1 = ", exp 1;
say "HEX 10 = ", hex 10;
say "OCT 10 = ", oct 10;
say "INT 6.45 = ", int(6.45);
say "log 2 = ", log 2;
say "random beetween 0 and 100 : ", int(rand 101);
say "SQRT 9 = ", sqrt 9;

# shortcut operator
# += -= *= /= 

my $my_number = 10;
say $my_number;

# the update of my number will happen after the say so first time that will print 10
# after that will print 11
say "my_number++ = ", $my_number++;
say $my_number;

# the update of my number will happen before the say so first time that will print 12
say "my_number++ = ", ++$my_number;

