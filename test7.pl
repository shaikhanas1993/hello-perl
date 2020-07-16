use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);


my @haystack = 1..9;
my $needle = 0;

do{
    say "Enter a no between 1 and 9";
    $needle  = int(<STDIN>);

}until($needle >= 1 && $needle <=9);

my  $pos;
for(@haystack){
    $pos++;
    next if($_ != $needle);
    say "found at pos $pos";
}