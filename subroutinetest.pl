#!/usr/bin/perl

use strict;
use warnings; 
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use Data::Printer;
use JSON::PP;
use Data::Dumper;
use integer;

my $msg;

sub ask_user{
    printf "please enter something::";
}

sub show_message {
    printf("you entered :: %s",$msg) ;
}

sub get_input {
   $msg = <STDIN>;
   return $msg;
}

&ask_user;
&get_input;
&show_message;

