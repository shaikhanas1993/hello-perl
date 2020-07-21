#!/usr/bin/perl
use strict;
use warnings;
use FindBin qw( $RealBin );
use lib $RealBin;
# BEGIN {unshift @INC, '.'};
use Product;

my $ob1 = Product->new({
                          serial =>"100",
                          name => "iPhone", 
		          price => 650.00});

$ob1->to_string();
