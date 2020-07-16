use strict;
use warnings;
use experimental qw(smartmatch lexical_subs);
use feature qw(say switch);
use integer;
use Data::Printer;

my($key,$value);

my %dic = ("apple" => 1, "orange" => 2, "banana" => 3);

say "please enter a key to search";
$key = <STDIN>;
chomp($key);
$key = lc($key);
foreach(keys %dic){
    if($dic{$key})
    {
        $value = $dic{$key};
        last;
    }
}

if(defined  $value && $value ne ''){
    say "the value is $value";    
}else{
    say "value not found";    
}