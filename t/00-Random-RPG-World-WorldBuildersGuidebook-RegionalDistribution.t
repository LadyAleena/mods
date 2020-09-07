#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution' )
    or die "Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution $Random::RPG::World::WorldBuildersGuidebook::RegionalDistribution::VERSION, Perl $], $^X" );

done_testing();
