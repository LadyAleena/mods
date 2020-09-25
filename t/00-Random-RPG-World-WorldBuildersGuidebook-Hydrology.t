#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Hydrology', qw(random_hydrology) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::Hydrology is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Hydrology $Random::RPG::World::WorldBuildersGuidebook::Hydrology::VERSION, Perl $], $^X" );

done_testing();
