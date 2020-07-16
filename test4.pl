use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use Data::Printer;
use integer;


my @haystack = 1..10;
say "enter a number to seach\n";
my $input = <STDIN>;
chomp($input);
$input = int($input);

my $counter = 0;
find_needle_in_haystack: {
do
{
    
        last if $haystack[$counter] ==  $input;
        ++$counter;
}while(scalar @haystack >$counter);
}
say "fount at $counter";
