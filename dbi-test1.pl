use strict;
use warnings;
use DBI;
my $dsn = "DBI:mysql:database=classicmodels;host=localhost;port=3306";
my $dbh = DBI->connect($dsn,'root','root');
die "failed to connect to MySQL database:DBI->errstr()" unless($dbh);

# prepare SQL statement
my $sth = $dbh->prepare("SELECT lastname, firstname, extension FROM employees")
                   or die "prepare statement failed: $dbh->errstr()";

$sth->execute() or die "execution failed: $dbh->errstr()"; 
my($lname,$fname,$ext);

#loop through each row of the result set, and print it
while(($lname,$fname,$ext) = $sth->fetchrow()){
   print("$lname, $fname\t$ext\n");                   
}

$sth->finish();
$dbh->disconnect();

