#!/usr/bin/perl
package Animal::Cat;


use strict;
use warnings;
use diagnostics;
use v5.32.1;

sub new {
    my $class = shift;
    my $self = {
        name => shift,
        owner => shift
    };

    bless $self, $class;
    return $self
}

sub getName {
    my ($self) = @_;
    return $self->{name};
}

sub setName {
    my ($self, $name) = @_;
    $self->{name} = $name if defined($name);
    return $self->{name};
}

sub getSound {
    my ($self) = @_;
    return $self->{name}, " say meow";
}

# necessary in perl
1;