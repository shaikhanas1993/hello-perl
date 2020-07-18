use strict;
use warnings;
use Data::Printer;
use integer;
use feature qw(say switch);
use experimental qw(smartmatch lexical_subs);



my @a = (2,1,3);
my $j = &get_min(@a);
 if(defined $j){
     say $j;
 }else{
     say "array is empty"
 };

sub get_min{
    my $min = shift;
    return undef unless defined $min;
    for(@_){
        $min = $_ if $_ < $min;
    }
    return $min;
}


=begin
#list of empty array
sub do_summation{
    my $sum = 0;
    for(@_){
        $sum += $_;
    }
    return $sum;
    # my @args = @_;;
    
    # my $var1 = shift @args;
    # my $var2 = shift @args;
    # my $var3 = shift @args;
    
    # p @_;
    # p @args;

    # print($var1,$var2,$var3);
}

say &do_summation(1,2,4,5);
=end
=cut

# sub say_something {
#     print "hello world";
# }
# my $subref = \&say_something;
# say ref $subref;