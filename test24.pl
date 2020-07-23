use strict;
use warnings;

my $var1 = shift @ARGV;
my $var2 = shift @ARGV;

# print $var1."\n" if defined $var1;
# print $var2 ."\n"if defined $var2;
die "enter two arguments" if(!defined($var1) or !defined($var2) ) ;

#@ARGV

open(SRC,'<',$var1) or die $!;
open(DT,'>',$var2) or die $!;

while(<SRC>){
    print DT  $_;
}

close(SRC);
close(DT);