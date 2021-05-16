#!/usr/bin/perl -s

use strict;
use warnings;
use diagnostics;
use v5.32.1;

# commande line => result
# perl .\Argument_with_s_option.pl -a=bonjour -b=2 => a = bonjour and b = 2
# perl .\Argument_with_s_option.pl => nothing
# perl .\Argument_with_s_option.pl -a=bonjour => a = bonjour
# perl .\Argument_with_s_option.pl -b=bonjour => b = bonjour
# perl .\Argument_with_s_option.pl -a=1 => a = 1
our $a;
our $b;

sub affiche(){
    if (defined($a)){
    print "a = $a";
    if(defined($b)){
        print(" and ")
    }
}
    if (defined($b)){
    print "b = $b";
}
if(defined($a) | defined($b)){
    print("\n");
}
}

# other way for the same result 
sub affiche_2(){
    my ($value_a, $value_b) = @_;
    if (defined($value_a)){
    print "a = $value_a";
    if(defined($value_b)){
        print(" and ")
    }
}
    if (defined($value_b)){
    print "b = $value_b";
}
if(defined($value_a) | defined($value_b)){
    print("\n");
}
}

affiche();
&affiche_2($a, $b);

