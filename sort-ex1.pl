use strict;
use warnings;
use integer;

my @products = (
   {
      name => 'iPhone',
      price => 600,
      discount => 0.5,     
   },
   {
      name => 'Nexus',
      price => 299,
      discount => 0.1,     
   },
   {
      name => 'Samsung Galaxy',
      price => 600,
      discount => 0.8,     
   }
);

@products = sort { 
		  $a->{price} <=> $b->{price} || 
		  $b->{discount} <=> $a->{discount}
		 } @products;

foreach my $p (@products){
   printf "%-15s %2d USD %2.1f\n" => @{$p}{qw(name price discount)};
}


# my @list = (4,3,1,5);
# print reverse sort   @list;

# my @list = sort qw(perl sort function alphabetically);
# print @list;

# my @arr = ("ggg","aaa","bbb");
#print sort {$a cmp $b} @arr;

# my @g = (2,5,2,5,1);
# my @arr =   sort qw/1 11 2 22 10 100/;
# for(@arr){
#     print $_ . "\n";
# }


# my @nums = sort compare qw/1 11 2 22 10 100/;

# for(@nums){
#     print $_ . "\n";
# }

# sub compare{
#     print "a == $a ::: b == $b \n";
#     if($a < $b){
#         return -1;
#     }elsif($a == $b){
#         return 0;
#     }else{
#         return 1;
#     }
# }

