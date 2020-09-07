#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::PlateMovement' )
    or die "Random::RPG::World::WorldBuildersGuidebook::PlateMovement is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::PlateMovement $Random::RPG::World::WorldBuildersGuidebook::PlateMovement::VERSION, Perl $], $^X" );

done_testing();
