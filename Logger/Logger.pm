package Logger;

use strict;
use warnings;

my $LEVEL = 1;



sub open{
    my $logfile = shift;
    open(LFH,'>>',$logfile) or die "could not open file";
    print LFH "Time ::",scalar(localtime),"\n";
}

sub log{
    my ($log_level,$log_msg) = @_;
    if($log_level <= $LEVEL){
        print LFH "$log_msg\n";
    }
}

sub close{
    close LFH;
}

sub set_level{
   my $log_level = shift;

   if($log_level =~ /^\d+$/){
      $LEVEL = $log_level;
   }
}

1;