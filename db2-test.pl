use strict;
use warnings;
use DBI;
my $db =  DBI->connect("DBI:mysql:classicmodels",'root','root');
die "error connecting to the database DBI->errstr()" unless($db);


#prepare statement
my $sth = $db->prepare("SELECT lastname, firstname, extension FROM employees") or die "$db->errstr()";
$sth->execute() or die "$db->errstr()";
my($lname,$fname,$ext);

while(($lname,$fname,$ext) = $sth->fetchrow()){
    print("$lname, $fname\t$ext\n");       
}

$sth->finish();
$db->disconnect();