#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance', qw(random_climate random_terrain random_subsistance climate_chart) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance $Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance::VERSION, Perl $], $^X" );

done_testing();
