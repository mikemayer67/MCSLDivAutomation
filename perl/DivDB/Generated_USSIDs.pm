package DivDB::Generated_USSID;
use strict;
use warnings;

our @Columns = qw(ussid team name birthdate);

sub new
{
  my($proto,@values) = @_;
  my %this = map { $Columns[$_] => $values[$_] } (0..$#Columns);
  bless \%this, (ref($proto)||$proto);
}

sub sql
{
  my $columns = join ',', @Columns;
  return "select $columns from generated_ussids";
}

package DivDB::Generated_USSIDs;
use strict;
use warnings;
use Carp;

use Data::Dumper;
use Scalar::Util qw(blessed);

use DivDB;

our $Instance;

sub new
{
  my($proto) = @_;

  unless( defined $Instance )
  {
    my %this;

    my $dbh = DivDB::getConnection;
    my $sql = DivDB::Generated_USSID->sql;
    my $q = $dbh->selectall_arrayref($sql);
    foreach my $x (@$q)
    {
      my $rec = new DivDB::Generated_USSID(@$x);
      my $key = join '@', ($rec->{ussid},$rec->{team});
      $this{$key} = $rec;
    }

    $Instance = bless \%this, (ref($proto)||$proto);
  }

  return $Instance;
}

sub ussid_for_swimmer
{
  my($this,$rec) = @_;

  my $team = $rec->{team};
  my $name = keyify_name($rec->{name});
  my $dob  = $rec->{birthdate};

  croak("Cannot create USSID (no name)\n" . Dumper($rec) . "\n") unless defined $name;

  my @name = split /,/, $name;

  croak("Cannot create USSID (no team)\n" . Dumper($rec) . "\n") unless $team=~/\S/;
  croak("Cannot create USSID (invalid team)\n" . Dumper($rec) . "\n") unless $team=~/^PV\w{1,3}$/;
  croak("Cannot create USSID (invalid name)\n" . Dumper($rec) . "\n") unless @name > 1;
  croak("Cannot create USSID (no date of birth)\n" . Dumper($rec) . "\n") unless $dob=~/\S/;
  croak("Cannot create USSID (invalid date of birth)\n" . Dumper($rec) . "\n") unless $dob=~/^\d{8}$/;

  foreach my $key (keys %$this)
  {
    next unless $key =~ /^(\S+)\@$team$/;
    my $ussid = $1;

    my $cur = $this->{$key};
    next unless $name eq $cur->{name};
    next unless $dob  eq $cur->{birthdate};

    return $ussid;
  }

  # create new USSID

  my($lastname,$firstname) = @name;
  my $mi = '';
  ($firstname,$mi) = split ' ', $firstname;

  $mi = '*' unless defined $mi;
  $firstname = uc(substr("$firstname***",0,3));
  $lastname  = uc(substr("$lastname**",0,2));

  my $ussid = join '', (substr($dob,0,4),substr($dob,6,2),$firstname,$mi,$lastname);

  # validate new USSID

  my $key = join '@', ($ussid,$team);

  if( exists $this->{$key} )
  {
    my $cur_name = $this->{$key}{name};
    my $cur_dob = $this->{$key}{birthdate};
    croak("Cannot create USSID for $name ($team) DOB:$dob ($ussid already exists for $cur_name with DOB:$cur_dob)\n");
  }

  $this->{$key} = new DivDB::Generated_USSID($ussid,$team,$name,$dob);

  my $dbh = DivDB::getConnection;
  $dbh->do("insert into generated_ussids values ('$ussid','$team','$name','$dob')");

  warn "Created USSID ('$ussid') for $name with DOB $dob\n";

  return $ussid;
}

sub keyif_name
{
  my($name) = @_;

  $name=~s/\s\s+/ /g;
  $name=~s/^\s+//g;
  $name=~s/\s+$//g;
  $name=~s/\s+,/,/g;
  $name=~s/,\s+/,/g;

  return undef unless length($name)>0;
}


1
