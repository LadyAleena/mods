#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Pantheon' )
    or die "Random::RPG::World::WorldBuildersGuidebook::Pantheon is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Pantheon $Random::RPG::World::WorldBuildersGuidebook::Pantheon::VERSION, Perl $], $^X" );

done_testing();
