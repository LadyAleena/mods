#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses', qw(masses) )
    or die "Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses $Random::RPG::World::WorldBuildersGuidebook::LandWaterMasses::VERSION, Perl $], $^X" );

done_testing();
