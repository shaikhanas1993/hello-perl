use strict;
use warnings;

open(SRC,'<','dummy.txt') or die $!;
open(DST,'>>','dummy2.txt') or die $!;

while(<SRC>){
    print DST $_ ;
}
close(SRC);
close(DST);
print "close all files successfully";