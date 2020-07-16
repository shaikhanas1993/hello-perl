use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use integer;
use feature qw(say switch);
use Data::Printer;


my @arr = qw(until do loop);
until(!scalar @arr)
{
    say "hi";
    shift @arr;
}