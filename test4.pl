use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use Data::Printer;
use integer;


my $counter = 10;
while($counter > 0){
    $counter--;
    say $counter;
    sleep(1);

    say "happy new year" if($counter == 0 );
}

