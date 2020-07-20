use strict;
use warnings;
use integer;
use Data::Printer;


my $mapper = {"anas" =>1 , "jarrar" => 2};

my %mapper2 = ("anas" => 1, "jarrar" => 2);

&get_hash(%mapper2);

sub get_hash{
    print shift;
    print shift;
    print shift;
    print shift;
    print shift unless not  defined $_;
    # my $var1 =  $_[0];
    # p $var1;
}



=begin
my $a = [1..9];
my $b = [10..20];

my @c = &get_merge($a,$b);
print(@c);

sub get_merge{
    my @final_arr = ();
    my $a = shift;
    my $b = shift;

    for(@$a){
        push(@final_arr,$_);
    }

    for(@$b){
        push(@final_arr,$_);
    }

    return @final_arr;
}
=end
=cut


=begin
my @arr = (1,3,2,6,8,4,9);
my $m = &get_max(\@arr);

print("max elemen between @arr is max::: $m");

sub get_max{
    my $a =  $_[0];
    my $k = $a->[0];

    for(@$a){
        $k = $_ if  $_ > $k
    }

    return $k;
    
}
=end
=cut