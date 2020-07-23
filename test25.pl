#!/usr/bin/perl
use warnings;
use strict;

my $filename = 'dummy.txt';




# if(-e $filename){
#    print("File $filename exists\n");
# }else{
#    print("File $filename does not exists\n");
# }

if(-e $filename && -f _ && -r _ ){
   print("File $filename exists and readable\n");	
}