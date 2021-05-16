#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

my $my_string = "Hello my brother! what's up my friend?";
my $my_string1 = "a";

say "Length of my_string = ", length $my_string;
say "Length of my_string1 = ", length $my_string1;

# position of first occuration for "my"
printf("First occuration of my is at %d \n", index $my_string, "my");

# position of last occuration for "my"
printf("Last occuration of my is at %d \n", rindex $my_string, "my");

# concatened string
my $my_new_string = $my_string . " " . $my_string1;
say $my_new_string;

# extract string beetween two index value 9 to 9+7-1 = 15
say "Index 9 through 15 : ", substr $my_new_string, 9, 7;

#print last character and delete this character
my $animal = "animals";
printf("Last character $animal is %s\n",chop $animal);
say $animal;

#lowercase and uppercase :
printf("Uppercase : $animal is %s\n",uc $animal);
printf("Uppercase : $animal is %s\n",lc $animal);
printf("Uppercase for the 1st letter : $animal is %s\n",ucfirst $animal);

# replace 
say$my_new_string;
$my_new_string =~ s/ /, /g;
say $my_new_string;


my $two_times = " what i said is..." x 2;
say $two_times;


my @abc = ("a".."z");
print join(", ", @abc), "\n";

my $letter = 'c';
say "Next letter after $letter is : ", ++$letter;

