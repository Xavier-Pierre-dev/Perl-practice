#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

# scalars 
# one of the 3 main variable in perl with array and hashes 
my $name = 'John';
my ($age, $street) = (17, 'my street 55');


my $my_info = qq{$name live on $street at $age years old \n};
print $my_info;

my $bunch_info = <<"END";
This is a 
bunch of information
on multiple lines
END

# will add \n at the end of the print
say $bunch_info;


# bigger number that wa can store in perl
my $big_int = 18446744073709551615;
say $big_int;


# %c : Character
# %s : string
# %d : Decimal
# %u : Unsigned integer
# %f : floating point (decimal notation)
# %e : floating point (scientific notation)

printf("%u \n", $big_int + 1);

my $my_float = 0.100000000000001;

# %.16f => 16digits of precision for the float
printf("%.16f \n", $my_float + 0.1);


# switch value similaire method than python
my $first = 1;
my $second = 2;

($first, $second)= ($second, $first);
print("first $first \n");
