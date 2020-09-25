#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::PlanetaryTemperature', qw(random_planetary_temperature) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::PlanetaryTemperature is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::PlanetaryTemperature $Random::RPG::World::WorldBuildersGuidebook::PlanetaryTemperature::VERSION, Perl $], $^X" );

done_testing();
