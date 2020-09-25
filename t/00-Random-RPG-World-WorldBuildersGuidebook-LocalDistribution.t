#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LocalDistribution', qw(local_distribution) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::LocalDistribution is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LocalDistribution $Random::RPG::World::WorldBuildersGuidebook::LocalDistribution::VERSION, Perl $], $^X" );

done_testing();
