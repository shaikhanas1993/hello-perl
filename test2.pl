use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say  switch);
use Data::Printer;
use integer;

say "Enter something";
chomp(my $input = <>);

print do{
    given($input){
        'all numbers' when /\d/;
        'text' when /[a-zA-z]/;
        default{'defaut value________';}
    }
}