#!/usr/bin/perl

use strict;
use warnings; 
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use Data::Printer;
use JSON::PP;
use Data::Dumper;
use integer;

my %hash = ("anas" => 1, "jarrar" => 2);

=begin comment
for(keys %hash){
    say $hash{$_};
}
=end comment
=cut



delete $hash{"anas"};
p %hash;
