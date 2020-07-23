use strict;
use warnings;

# my $str = <<END;
# just my test string
# END

# my $filename = 'dummy2.txt';
# open(FH, '>>', $filename) or die $!;
# print FH $str;

# close(FH);

# print "Writing to file successfully!\n";

my $str = <<END;
this is variable dummy testing functionality
END
my $filename = 'dummy2.txt';
open(FH,'>>',$filename) or die $!;
print FH $str;
close(FH); 

