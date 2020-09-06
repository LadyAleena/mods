package Random::RPG::World::WorldBuildersGuidebook::MountainPlacement;
use v5.10.0;
use strict;
use warnings;
use Exporter qw(import);

use Random::SpecialDice qw(percentile);

our $VERSION   = '1.0';
our @EXPORT_OK = qw(random_mountain_placement);

# From the World Builder's Guidebook by Richard Baker (c) TSR
# Optional Regional Mountain Placement (Table 10)

my %regional_mountains;
$regional_mountains{$_} = 'no moutains'         for 1..24;
$regional_mountains{$_} = 'foothills'           for 25..38;
$regional_mountains{$_} = 'low mountains'       for 39..65;
$regional_mountains{$_} = 'medium mountains'    for 66..84;
$regional_mountains{$_} = 'high mountains'      for 85..94;
$regional_mountains{$_} = 'very high mountains' for 95..99;
$regional_mountains{100} = 'extreme mountains';

# Fantastic Mountain Properties (Table 11)

my %fantastic_mountain_properties;
$fantastic_mountain_properties{$_} = 'mountains'                               for 1..60;
$fantastic_mountain_properties{$_} = 'volcanic mountains'                      for 61..74;
$fantastic_mountain_properties{$_} = 'icebound or glaciated mountains'         for 75..90;
$fantastic_mountain_properties{$_} = 'mountains sink or rise'                  for 91..92;
$fantastic_mountain_properties{$_} = 'mountains are gates to elemental planes' for 93..97;
$fantastic_mountain_properties{$_} = 'mountains are sleeping titans or giants' for 98..99;
$fantastic_mountain_properties{100} = 'mountains are home of gods and goddesses';

sub random_mountain_placement {
  my $rm_percent = percentile;
  my $fan_percent = percentile;

  my $regional_mountain = $regional_mountains{$rm_percent};
  my $fantastic_mountain = $fantastic_mountain_properties{$fan_percent};
     $fantastic_mountain =~ s/mountains/$regional_mountain/;
  my $mountains = $rm_percent < 25 ? $regional_mountain : $fantastic_mountain;

  return $mountains;
}

=pod

=encoding utf8

=head1 NAME

B<Random::RPG::World::WorldBuildersGuidebook::MountainPlacement> randomly selects the regional mountains and if they have fantasical qualities.

=head1 VERSION

This document describes Random::RPG::World::WorldBuildersGuidebook::MountainPlacement version 1.0.

=head1 SYNOPSIS

  use Random::RPG::World::WorldBuildersGuidebook::MountainPlacement qw(random_mountain_placement);

=head1 DEPENDENCIES

Random::RPG::World::WorldBuildersGuidebook::MountainPlacement depends on L<Random::SpecialDice> and L<Exporter>.

Random::SpecialDice depends on L<Games::Dice>.

=head1 AUTHOR

Lady Aleena

=head1 LICENSE AND COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See L<perlartistic>.

Copyright © 2020, Lady Aleena C<<aleena@cpan.org>>. All rights reserved.

=cut

1;