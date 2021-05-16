#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;

print "Hello world\n";

# scalaires 
# one of the 3 main variable in perl with array and hashes 
my $name = 'John';
my ($age, $street) = (17, 'my street 55');

my $my_info = qq{$name live on $street at $age years old \n};
print $my_info;

