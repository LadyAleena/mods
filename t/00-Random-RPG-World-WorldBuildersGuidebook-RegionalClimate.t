#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::RegionalClimate', qw(random_regional_climate) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::RegionalClimate is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::RegionalClimate $Random::RPG::World::WorldBuildersGuidebook::RegionalClimate::VERSION, Perl $], $^X" );

done_testing();
