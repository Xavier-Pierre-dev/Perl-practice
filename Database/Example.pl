#! /usr/bin/perl
 
use strict;
use warnings;
use utf8;
 
use DBI;
use DBD::mysql;
use Try::Tiny;

# Source
# https://www.tutorialspoint.com/perl/perl_database_access.htm
# https://pastebin.com/HjeDLdta
 
# $dsn    Database source name
# $dbh    Database handle object
# $sth    Statement handle object
# $h      Any of the handle types above ($dbh, $sth, or $drh)
# $rc     General Return Code  (boolean: true=ok, false=error)
# $rv     General Return Value (typically an integer)
# @ary    List of values returned from the database.
# $rows   Number of rows processed (if available, else -1)
# $fh     A filehandle
# undef   NULL values are represented by undefined values in Perl
# \%attr  Reference to a hash of attribute values passed to methods


my $db='perl';
my $dbhost='localhost';
my $dbport='3306';
my $dbuser='perluser';
my $dbpasswd='viveperl';
 
my $db_handle;
my $sql;
my $statement;
my $result;
my $row;
my $txt;
 
# On se connecte
$db_handle = DBI->connect("dbi:mysql:database=$db;host=$dbhost:$dbport;user=$dbuser;password=$dbpasswd");
 
# On passe le jeu de caractères en UTF-8
$statement = $db_handle->prepare("SET NAMES utf8;");
$statement->execute();
 
 
# On fait un INSERT
print "On fait un INSERT\n";
$sql = "INSERT INTO messages(txt) VALUES (?);";
$statement = $db_handle->prepare($sql);
$txt = "Bonjour";
$statement->execute($txt);
 
 
# On fait un SELECT
print "On fait un SELECT\n";
$sql = "SELECT * FROM messages";
$statement = $db_handle->prepare($sql);
$statement->execute();
 
while ( $row = $statement->fetchrow_hashref() ) 
{
    $result = "Le message $row->{id} vaut $row->{txt}";
    print "$result\n";
}
 
# On fait un UPDATE
print "On fait un UPDATE\n";
$sql = "UPDATE messages SET txt='Salut !' WHERE txt='Bonjour';";
$statement = $db_handle->prepare($sql);
$statement->execute();
 
 
# On fait un 2ème SELECT
print "On fait un 2eme SELECT\n";
$sql = "SELECT * FROM messages";
$statement = $db_handle->prepare($sql);
$statement->execute();
 
while ( $row = $statement->fetchrow_hashref() ) 
{
    $result = "Le message $row->{id} vaut $row->{txt}";
    print "$result\n";
}
 
# On fait un DELETE
print "On fait un DELETE de tout ce qui est plus grand que 2 !\n";
$sql = "DELETE FROM messages WHERE id>2;";
$statement = $db_handle->prepare($sql);
$statement->execute();
 
 
# On fait un 3ème SELECT
print "On fait un 3eme SELECT\n";
$sql = "SELECT * FROM messages";
$statement = $db_handle->prepare($sql);
$statement->execute();
 
while ( $row = $statement->fetchrow_hashref() ) 
{
    $result = "Le message $row->{id} vaut $row->{txt}";
    print "$result\n";
}
 
 
$statement->finish;
$db_handle->disconnect();