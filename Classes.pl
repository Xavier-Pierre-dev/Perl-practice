#!/usr/bin/perl


use strict;
use warnings;
use diagnostics;
use v5.32.1;

use lib 'lib';
use Animal::Cat ;



my $whiskers = new Animal::Cat("whiskers","Derek");

say $whiskers->getName();
say $whiskers->getSound();

$whiskers->setName("Lola");
say $whiskers->getName();
say $whiskers->getSound();

# Lion use Cat object with an overided subroutine for getSound()
use Animal::Lion;

my $king = new Animal::Lion("King", "No owner");
say $king->getSound();