#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::RegionalClimate', qw(random_regional_climate) )
    or die "Random::RPG::World::WorldBuildersGuidebook::RegionalClimate is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::RegionalClimate $Random::RPG::World::WorldBuildersGuidebook::RegionalClimate::VERSION, Perl $], $^X" );

done_testing();
