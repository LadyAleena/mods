#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::PlateMovement', qw(random_plate_movement) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::PlateMovement is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::PlateMovement $Random::RPG::World::WorldBuildersGuidebook::PlateMovement::VERSION, Perl $], $^X" );

done_testing();
