use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say  switch);
use Data::Printer;
use integer;

my ($color,$code);

say "please enter a color ::\n";

$color =  <STDIN>;
chomp($color);
$color = uc($color);

given($color){
    when($_ eq 'RED') {$code = 'sfsfa'}
    when($_  eq 'GREEN') {$code = 'afsfa'}
    default{$code = ''}
}

if($code ne '')
{
    say "code is $code";
}else
{
    say "code is empty";
}