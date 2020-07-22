use strict;
use warnings;

open(FH,'<','dummy.txt') or die $!;

while(<FH>){
   print $_;
}
close(FH);