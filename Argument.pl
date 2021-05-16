#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

# Liste and print every argument :
foreach (@ARGV)
{
    chomp;
    print "$_ \n";
}

# affiche only the first argument 
# if is necessary for avoid error when an user don't use argument
if($ARGV[0]){
my $arg1 = $ARGV[0];
print "arg 1 is : $arg1";
}
