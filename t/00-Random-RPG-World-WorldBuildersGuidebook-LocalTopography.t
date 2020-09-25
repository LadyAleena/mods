#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LocalTopography', qw(local_topography) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::LocalTopography is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LocalTopography $Random::RPG::World::WorldBuildersGuidebook::LocalTopography::VERSION, Perl $], $^X" );

done_testing();
