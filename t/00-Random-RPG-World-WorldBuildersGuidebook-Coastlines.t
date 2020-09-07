#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Coastlines' )
    or die "Random::RPG::World::WorldBuildersGuidebook::Coastlines is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Coastlines $Random::RPG::World::WorldBuildersGuidebook::Coastlines::VERSION, Perl $], $^X" );

done_testing();
