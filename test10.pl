use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use integer;
use Data::Printer;
use feature qw(say switch);

=begin
my $x = 10;
my $xr = \$x;
$$xr = $$xr * 10;
say ref $$xr;
=end
=cut

# my @a = 1..9;0

=begin
my $arr = [1..9];
say ref $arr;

my $i = 0;
for(@$arr){
    say $arr->[$i++]
    
}
=end
=cut

my %hash = ("anas" => 1,"jarrar" => 2, "kevein" => 3);
my $r = \%hash;
say ref $r;

# foreach(keys %$r){
    
#     say $r->{$_};   
# }

while(my($key,$value) = each(%$r)){
    say "$key :: $value";
}

