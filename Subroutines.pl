#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

sub get_ramdom {
    return int(rand 11);
}

sub get_ramdom_min_max {
    my ($min_num, $max_num) = @_;

    $max_num ||= 11;
    $min_num ||= 0;
    printf("$max_num and $min_num : ");
    return int($min_num + rand($max_num - $min_num));

}

say get_ramdom();
say get_ramdom_min_max(50,100);
say get_ramdom_min_max();

sub sum_many {
    my $sum = 0;
    foreach my $val (@_){
        $sum += $val;
    }
    return $sum
}

say "5+5+6+1+2 = ", sum_many(5,5,6,1,2);

# state inside subroutine
sub increment {
    state $execute_total = 0;
    $execute_total++;
    say "Executed $execute_total times";
}
increment();
increment();
# say $execute_total; will not work because this variable are available only
# insine the subroutines increment() where this state are define
# the advantage is face the state are save so first time 1 and second 2 etc ...

