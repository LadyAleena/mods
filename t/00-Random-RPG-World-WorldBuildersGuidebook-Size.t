#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Size' )
    or die "Random::RPG::World::WorldBuildersGuidebook::Size is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Size $Random::RPG::World::WorldBuildersGuidebook::Size::VERSION, Perl $], $^X" );

done_testing();
