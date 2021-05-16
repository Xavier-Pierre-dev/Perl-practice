#!/usr/bin/perl

use strict;
use warnings;
use diagnostics;
use v5.32.1;

my $emp_file = "employees.txt";

# open file read only with the operator : '<'
open my $fh, '<', $emp_file
    #error message if we can't open the file
    or die "can't open file : $_";

while(my $info = <$fh>){
    chomp($info);

    my ($emp_name, $job, $id) = split /:/, $info;
    print "$emp_name is a $job and has the id $id \n";
}

# close file
close $fh or die "couldn't close file : $_";



# _____________________
# _____________________
# _____________________
# open file for appending data at the end of the file using operator : '>>'
open $fh, '>>', $emp_file
    #error message if we can't open the file
    or die "can't open file : $_";

print $fh "\nJulien:Salesman:125";

while(my $info = <$fh>){
    chomp($info);

    my ($emp_name, $job, $id) = split /:/, $info;
    print "$emp_name is a $job and has the id $id \n";
}

close $fh or die "couldn't close file : $_";

# _____________________
# _____________________
# _____________________
# read and write file for appending data at the end of the file using operator : '+<'
open $fh, '+<', $emp_file
    #error message if we can't open the file
    or die "can't open file : $_";

# seek position inside the file here position 0, 0
seek $fh, 0, 0;
print $fh "Julien:Salesman:125\n";

while(my $info = <$fh>){
    chomp($info);

    my ($emp_name, $job, $id) = split /:/, $info;
    print "$emp_name is a $job and has the id $id \n";
}

close $fh or die "couldn't close file : $_";
