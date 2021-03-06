#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution', qw(regional_distribution) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution $Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution::VERSION, Perl $], $^X" );

done_testing();
