#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Race' )
    or die "Random::RPG::World::WorldBuildersGuidebook::Race is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Race $Random::RPG::World::WorldBuildersGuidebook::Race::VERSION, Perl $], $^X" );

done_testing();
