use strict;
use warnings;

my @products = (

{
    'products' => "samsung",
    "price" => 400,
    "dicount" => 0.10
},
{
    'products' => "apple",
    "price" => 500,
    "dicount" => 0.5
},
{
    'products' => "realme",
    "price" => 500,
    "dicount" => 0.1
}

);

@products = sort  { $a->{price} <=> $b->{price} || $b->{dicount} <=> $a->{dicount}} @products;

foreach my $p (@products){
    printf "%-15s %10d USD %2.1f \n" => @{$p}{qw(products price dicount)};
}
