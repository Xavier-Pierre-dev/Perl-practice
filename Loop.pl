#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

# loop
for(my $i=0; $i<10; $i++){
    say $i;
}

# while loop
my $number = 1;
while($number < 10){
    if($number % 3== 0){
        $number++;
        # next for continue
        next;
    }
    if($number == 7){
        # last correspond to break
        last;
    }
    say $number;
    $number++;
}

# do while loop
# do this until the end of the loop 
my $my_researched_number = 5;
my $my_guess;
do {
    say "Guess a number beetween 1 and 10";

    # will update guess with the value write by the user inside command line
    $my_guess = <STDIN> ;
} while $my_guess != $my_researched_number;

say "Succed : you guess the good number $my_researched_number";

my $age_old = 19;
given($age_old){
    when($_ > 16){
        say "Ok $_ is > to 16";
        continue
    }
    when($_ > 17){
        say "Ok $_ is > to 17";
    }
    #like before we don't put continue then this one will not happen
    when($_ > 18){
        say "Ok $_ is > to 18";
    }
    default{
        say "nothing true";
    }
}