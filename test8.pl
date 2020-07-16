use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use  feature qw(say switch);
use integer;
use Data::Printer;

use constant MAX_STRING => "STRUBG";
use constant MAX => 5;
say "print ".MAX." elemetnts";

my @arr = ();
my $i = 1;
while($i <= MAX){
    $i++;
    say "Enter a no";
    my $input = <STDIN>;
    chomp($input);
    $input = int($input);
    next if($input<0);
    push(@arr,$input);
}

for(@arr){
    say $_;
}