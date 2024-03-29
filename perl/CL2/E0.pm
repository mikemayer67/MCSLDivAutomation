package CL2::E0;
use strict;
use warnings;
use Carp;

use base qw/CL2::Record/;

our $Template = [ code         => 2,
                  org          => 1,
                  reserved1    => 8,
                  relay_team   => 1,
                  team_code    => 6,
                  num_F0       => 2,
                  evt_gender   => 1,
                  evt_dist     => 4,
                  evt_stroke   => 1,
                  evt_number   => 4,
                  evt_age      => 4,
                  sum_age      => 3,
                  evt_date     => 8,
                  seed_time    => 8,
                  seed_code    => 1,
                  prelim_time  => 8,
                  prelim_code  => 1,
                  swimoff_time => 8,
                  swimoff_code => 1,
                  finals_time  => 8,
                  finals_code  => 1,
                  prelim_heat  => 2,
                  prelim_lane  => 2,
                  finals_heat  => 2,
                  finals_lane  => 2,
                  prelim_rank  => 3,
                  finals_rank  => 3,
                  points       => 4,
                  event_time_class => 2,
                ];

                  
sub new
{
  my($proto,$line) = @_;

  my $this = $proto->SUPER::new($line,$Template);
  if(0 && $this) # remove "0 &&" to reactivate
  {
    $this->decode(org=>1);
    $this->decode(evt_gender=>11);
    $this->decode(evt_stroke=>12);
    $this->decode(seed_code=>13);
    $this->decode(prelim_code=>13);
    $this->decode(swimoff_code=>13);
    $this->decode(finals_code=>13);
    $this->decode(event_time_class=>14);

    if($this->{evt_age}=~/^(\d\d|UN)(\d\d|OV)$/)
    {
      my $min=$1;
      my $max=$2;

      $this->{evt_age} = ( $min eq 'UN' ? 
                           ( $max eq 'OV'         ? 
                               'All Ages'         : 
                               1*$max . ' and Under' 
                           ) :
                           ( $max eq 'OV'         ? 
                             1*$max . ' and Over' : 
                             1*$min . '-' . 1*$max 
                           )
                         );
    }

    my $tc = $this->{team_code};
    unless ( $tc =~ /^PV/ )
    {
      $this->{team_code} = "PV$tc";
    }
  }
  return $this;
}

1
