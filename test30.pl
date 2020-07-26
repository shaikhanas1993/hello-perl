#!/usr/bin/perl
use strict;
use warnings;


my $string = "Perl regular expression is powerful";
if($string =~ /ul/)
{
    print "match found";
}else{
    print "match not found";
}
