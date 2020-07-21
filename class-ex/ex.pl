#!/usr/bin/perl
use strict;
use warnings;
# Modify @INC prior to module loading.
BEGIN { unshift @INC, '.'; }
use Product;    
use Data::Printer;





my $iphone = Product->new({
                          serial =>"100",
                          name => "iPhone", 
		          price => 650.00});
my $nexus = Product->new({ serial =>"101",
			   name => "Nexus",
                           price => 299.00});

print $iphone->to_string();
print $nexus->to_string();

my @arr = (1,2,3,4);
p @arr;