#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

my @array_of_int = (2,3,4,55,77);

my @my_info = ("John", "Doe", 123, "main street", 40);
say @my_info;

$my_info[4]="Test";

for my $info (@my_info){
    say $info;
}

foreach my $info (@my_info){
    say $info;
}

# when no variable are defined $_ represent the default value
for (@my_info){
    say $_;
}

my @my_name = @my_info[0,4];
say "@my_name ";
say @my_name;


# pop push shift 
say "Popped value ", pop @array_of_int;
say "Pushed value ", push @array_of_int, 1;
say "First item ", shift @array_of_int;
say "unshifted item", unshift @array_of_int,2;

print join(", ", @array_of_int), "\n";

say "Remove index 0 to 2 : ", splice @array_of_int, 0, 3;
print join(", ", @array_of_int),"\n";


my $customers = "John Doe";
my @cust_array = split / /, $customers;
say $customers;
say @cust_array;
print join(", ", @cust_array), "\n";

# reverse an array
@cust_array = reverse @cust_array;
say @cust_array;


# sort :
my @number_array = (1,2,3,55,44,89,899,7,5);
my @sort_number_array = sort(@number_array);
print join(", ", @sort_number_array), "\n";

my @sort_number_array = reverse sort(@number_array);
print join(", ", @sort_number_array), "\n";


my @odds_array = grep {$_ % 2} @sort_number_array;
print("odds_array : ");
print join(", ", @odds_array), "\n";

my @dbl_array = map {$_ * 2} @sort_number_array;
print("dbl_array : ");
print join(", ", @dbl_array), "\n";
