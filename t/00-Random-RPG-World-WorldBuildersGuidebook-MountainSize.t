#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::MountainSize' )
    or die "Random::RPG::World::WorldBuildersGuidebook::MountainSize is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::MountainSize $Random::RPG::World::WorldBuildersGuidebook::MountainSize::VERSION, Perl $], $^X" );

done_testing();
