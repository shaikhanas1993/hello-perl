#!/usr/bin/perl
use strict;
use warnings;


my @words = (
	   'Perl',
	   'regular expression',
	   'is',
	   'a very powerul',
	   'feature'
	);

#matches a regular  expression
for(@words){
    print $_ . "\n"  if($_ =~ /er/);
}

#does not matches a regular  expression
for(@words){
    print $_ . "\n"  if($_ !~ /er/);
}


# my $string = "Perl regular expression is powerful";
# if($string =~ /ul/)
# {
#     print "match found";
# }else{
#     print "match not found";
# }
