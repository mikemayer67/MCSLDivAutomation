package DivDB::Eligible;
use strict;
use warnings;
use Carp;

use DivDB;
use DivDB::Schedule;
use POSIX qw(floor);

my %gender = ( M=>'Boys', F=>'Girls' );
my $schedule = new DivDB::Schedule;
my $relay_meet = $schedule->relay_carnival_meet;

sub new
{
  my($proto) = @_;
  bless{}, (ref($proto)||$proto);
}

sub gen_html
{
  my($this) = @_;

  my $dbh = &DivDB::getConnection;

  my $rval = "<h1 class=reporthead>Divisional Eligibility</h1>\n";

  my $sql = 'select code, team_name from teams order by code';

  my $q = $dbh->selectall_arrayref($sql);
  $rval .= add_team(@$_) foreach @$q;

  return $rval;
}

sub add_team
{
  my($code,$name) = @_;

  my $dbh = &DivDB::getConnection;

  my $rval = "<h2 class=xyz>$name</h2>"; 

  my $sql = <<"ELIGIBLE_SQL";
select distinct 
       x.ussid,
       s.name, 
       s.gender, 
       s.age,
       ac.text
  from 
       (select a.swimmer1 ussid from relay_results a where meet < $relay_meet
        union
        select b.swimmer2 ussid from relay_results b where meet < $relay_meet
        union
        select c.swimmer3 ussid from relay_results c where meet < $relay_meet
        union
        select d.swimmer4 ussid from relay_results d where meet < $relay_meet
        union
        select r.swimmer from individual_results r
       ) x,
       swimmers s,
       age_groups ag,
       age_codes ac
 where x.ussid is not null
   and x.ussid = s.ussid
   and s.team = '$code'
   and ag.age = s.age
   and ac.code=ag.code
 order by s.gender, ac.order, s.name;
ELIGIBLE_SQL

  my $q = $dbh->selectall_arrayref($sql);
  my $last_group = '';
  my $last_gender = '';
  foreach my $x (@$q)
  {
    my($ussid,$name,$gender,$age,$age_group) = @$x;
    $gender = $gender{$gender};
    my $group = "$age_group $gender";
    if($gender ne $last_gender)
    {
      $rval .= "</table>\n" if length($last_gender)>0;
      $rval .= "<table class=eligible>\n";
      $last_gender = $gender;
    }
 
    if($group ne $last_group)
    {
      $rval .= "<tr>\n";
      $rval .= "<td class=eventhead colspan=3>$group</td>\n";
      $rval .= "</tr>\n";
      $last_group = $group;
    }

    $sql = <<"SEED_TIMES";
select e.distance,
       e.stroke,
       c.value,
       min(r.time)
  from individual_results r,
       events e,
       sdif_codes c
 where r.event=e.number
   and r.swimmer='$ussid'
   and e.meet_type='dual'
   and c.block = 12
   and c.code=e.stroke
 group by e.stroke,e.distance
 order by stroke,distance;
SEED_TIMES

    my $qs = $dbh->selectall_arrayref($sql);

    $rval .= "<tr>\n";
    $rval .= "<td class=blankcol />\n";
    $rval .= "<td class=st-name>$name</td>\n";

    $rval .= "<td class=reportbody>";
    foreach my $st (@$qs)
    {
      my($distance,$stroke_code,$stroke,$seed_time) = @$st;
      next unless defined $seed_time;

      $seed_time = format_seed_time($seed_time);

      $rval .= "<div class=st-data>";
      $rval .= "<span class=seed-time>$seed_time</span>";
      $rval .= "<span class=seed-time-stroke>${distance}m $stroke</span>";
      $rval .= "</div>";
    }
    $rval .= "</td></tr>\n";
  }
  $rval .= "</table>\n" if length($last_gender)>0;

  return $rval;
}

sub format_seed_time
{
  my($time) = @_;

  my $rval;

  if($time >= 60)
  {
    my $min = floor($time/60);
    my $sec = $time - 60*$min;
    $rval = sprintf('%d:%05.2f', $min, $sec);
  }
  else
  {
    $rval = sprintf('%05.2f', $time);
  }

  return $rval;
}


1
