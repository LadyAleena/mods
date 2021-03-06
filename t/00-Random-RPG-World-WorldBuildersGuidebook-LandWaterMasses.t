#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses', qw(masses) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses $Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses::VERSION, Perl $], $^X" );

done_testing();
