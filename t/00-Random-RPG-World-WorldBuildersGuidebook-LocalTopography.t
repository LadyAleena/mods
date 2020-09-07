#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::LocalTopography' )
    or die "Random::RPG::World::WorldBuildersGuidebook::LocalTopography is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::LocalTopography $Random::RPG::World::WorldBuildersGuidebook::LocalTopography::VERSION, Perl $], $^X" );

done_testing();
