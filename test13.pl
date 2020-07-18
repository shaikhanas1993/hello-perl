use strict;
use warnings;
use Data::Printer;
use integer;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);


my ($a,$b) = (5,10);
&do_something($a,$b);

sub do_something{
    $_[0] = 1;
    $_[1] = 2;
    
}
say $a;
say $b;



=begin
my ($a,$b) = (10,20);
&do_something($a,$b);

sub do_something{
    my $a = $_[0];
    my $b = $_[1];
    $a = 1;
    $b = 2;
}
say "value of a is $a and b is $b";
=end
=cut

