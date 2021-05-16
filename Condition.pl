#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

# perl will consider the next value as a False state :
# undef 
# 0
# 0.0
# ""
# "0"

# perform conditionnal logics with :
# == != < > <= and >=
# eq

# boolean operator
# && ! |

my $age = 18;
my $is_not_intoxicated = 0;
my $age_last_exam = 16;

if($age < 18){
    say "You can't drive";
}
elsif(!$is_not_intoxicated){
    say "You can't drive";
}
else{
    say "You can drive";
}

# combine condition using logic operator
if(($age < 18) | (!$is_not_intoxicated)){
    say "You can't drive";
}
else{
    say "You can drive";
}

if("a" eq "b"){
    say "a equal to b";
}
else{
    say "a doesn't equal b";
}

# inverse of if statement
unless(!$is_not_intoxicated){
    say "get sober";
}


# an other synthax similar than what we use in js with react 
say (($age >= 18) ? "can vote" : "can't vote");
