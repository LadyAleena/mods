#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations' )
    or die "Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations $Random::RPG::World::WorldBuildersGuidebook::SeasonalVariations::VERSION, Perl $], $^X" );

done_testing();
