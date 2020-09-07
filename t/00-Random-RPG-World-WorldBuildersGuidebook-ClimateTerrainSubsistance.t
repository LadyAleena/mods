#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance' )
    or die "Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance $Random::RPG::World::WorldBuildersGuidebook::ClimateTerrainSubsistance::VERSION, Perl $], $^X" );

done_testing();
