use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);

my $needle = int(rand(10));
my $max = 3;
my $attempt = 0;
my $num = 0 ;

game:{
    do {
        say "Enter a no,-1 to quit";
        $num = <STDIN>;
        chomp($num);
        $num = int($num);    
        last if($num == -1 || $num == $needle);
        ++$attempt;
        


    }until($max == $attempt)
}


if ($num == $needle){say "bingo";} elsif($num == -1){say "all attempts exhausted";}else{ say "try again";}





=begin
my $input ;

do {
    say "Enter a command , enter exit to close the  program";
    $input = <STDIN>;
    chomp($input);
    
    say "> $input";


}until($input eq  'exit');


my $x = 0;
my $target = 10;

do
{
    {
         ++$x;
        next if($x % 2 == 1);
        say $x;
       
    }

}until($x >= $target);

=cut