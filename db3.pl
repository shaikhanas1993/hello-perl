#!/usr/bin/perl
use strict;
use warnings;
use DBI;
use feature qw(say switch);

my $dhb = DBI->connect("DBI:mysql:classicmodels","root","root");
die "couldnt connect DBI->errstr()" unless($dhb);

my $query = <<EOF;
 SELECT lastname, firstname, extension 
 FROM employees 
 WHERE lastname = ? OR firstname = ?
EOF

my $sth = $dhb->prepare($query) or die "$dhb->errstr()";

my($lname,$fname,$ext);
my($name, $answer);

print "\nPlease enter the employee firstname or lastname:";

while(<STDIN>){
   $name =  $_;
   chomp($name);

    $sth->execute($name,$name)  or die "execution failed: $dhb->errstr()"; 
    while(($lname,$fname,$ext) = $sth->fetchrow()){
        print("$lname, $fname\t$ext\n");             
    }

    print("\nDo you want to continue? (Y/N)");
    $answer = <STDIN>;
    chomp($answer);
    last if $answer eq 'N';
    print("\nPlease enter the employee firstname or lastname:");
}

$sth->finish();
$dhb->disconnect();
