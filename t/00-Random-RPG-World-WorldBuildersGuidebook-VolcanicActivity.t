#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::VolcanicActivity', qw(random_volcanic_activity) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::VolcanicActivity is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::VolcanicActivity $Random::RPG::World::WorldBuildersGuidebook::VolcanicActivity::VERSION, Perl $], $^X" );

done_testing();
