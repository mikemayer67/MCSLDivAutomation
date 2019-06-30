package DivDB;

use strict;
use warnings;
use DBI;

our $Division  = 'M';
our $Year      = 2019;
die("Fill out the following and then delete this line");
our $userid    = ''; # <--- Add this;
our $password  = ''; # <--- Add this;

our $Instance;

sub getConnection
{
  unless(defined $Instance)
  {
    my $schema = 'div' . lc($Division) . '_' . $Year;
    $Instance  = DBI->connect("DBI:mysql:database=$schema",$userid,$password);
  }
  return $Instance;
}

1
