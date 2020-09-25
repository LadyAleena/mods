#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::WorldHooks', qw(world_hook) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::WorldHooks is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::WorldHooks $Random::RPG::World::WorldBuildersGuidebook::WorldHooks::VERSION, Perl $], $^X" );

done_testing();
