#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations', qw(random_seasonal_variations) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations $Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations::VERSION, Perl $], $^X" );

done_testing();
