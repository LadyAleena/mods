#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::MountainSize', qw(mountain_size_adjustment) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::MountainSize is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::MountainSize $Random::RPG::World::WorldBuildersGuidebook::MountainSize::VERSION, Perl $], $^X" );

done_testing();
