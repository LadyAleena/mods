#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LocalPopulation', qw(local_population) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::LocalPopulation is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LocalPopulation $Random::RPG::World::WorldBuildersGuidebook::LocalPopulation::VERSION, Perl $], $^X" );

done_testing();
