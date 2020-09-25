#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::WorldShape', qw(random_world_shape) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::WorldShape is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::WorldShape $Random::RPG::World::WorldBuildersGuidebook::WorldShape::VERSION, Perl $], $^X" );

done_testing();
