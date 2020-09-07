#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds' )
    or die "Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds $Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds::VERSION, Perl $], $^X" );

done_testing();
