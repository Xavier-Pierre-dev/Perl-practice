#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;


my %employees = (
    "Thomas"=>35,
    "Paul"=>19,
    "Sam"=>42,
);

printf("Thomas is %d \n", $employees{Thomas});

$employees{"Frank"} = 44;

say "__Separator__";

# iteration with key, value 
while(my ($k, $v)=each %employees){
    print "$k $v \n";
}


my @ages = @employees{"Thomas", "Paul"};
say @ages;

#delete an element :
delete $employees{"Frank"};
while(my ($k, $v)=each %employees){
    print "$k $v \n";
};

#exist :
say ((exists $employees{"Thomas"}) ? "Thomas is here" : "Thomas was not her (NOT FOUND)");
say ((exists $employees{"Julie"}) ? "Julie is here" : "Julie was not her (NOT FOUND)");