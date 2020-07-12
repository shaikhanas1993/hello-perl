#!/usr/bin/perl

use strict;
use warnings; 
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use Data::Printer;
use integer;

my @friends = (1,2,3,4);
foreach my $item(@friends){
    say $item;
}