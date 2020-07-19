use strict;
use warnings;
use Data::Printer;

my @arr = (1,2,3,4,5);

my @arr2 = (10..15);

&do_sum(\@arr2);

sub do_sum{
    my $refvar =  $_[0];    
    my $min = $refvar->[0];
    for(@$refvar){
        $min = $_ if $_ < $min;
    }

    print $min;
}

