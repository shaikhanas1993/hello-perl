use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use integer;
use Data::Printer;
# my @b = (1..5);

# print("Before the loop: @b \n");

# for(@b){
# 	$_ = $_ * 2; 
# }



my @arr  = 1..10;
# p @arr;

say $#arr;
for(my $i= 0 ; $i<= $#arr; $i++){
    say $arr[$i];
}

# $_ holder vairable
# @_ holder array
# $#  : retreive last list index 