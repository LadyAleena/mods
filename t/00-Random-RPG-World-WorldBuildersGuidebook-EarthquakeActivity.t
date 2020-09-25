#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::EarthquakeActivity', qw(random_earthquake_activity) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::EarthquakeActivity is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::EarthquakeActivity $Random::RPG::World::WorldBuildersGuidebook::EarthquakeActivity::VERSION, Perl $], $^X" );

done_testing();
