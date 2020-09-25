#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Size', qw(random_size) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::Size is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Size $Random::RPG::World::WorldBuildersGuidebook::Size::VERSION, Perl $], $^X" );

done_testing();
