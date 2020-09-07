#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::SettlementPattern' )
    or die "Random::RPG::World::WorldBuildersGuidebook::SettlementPattern is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::SettlementPattern $Random::RPG::World::WorldBuildersGuidebook::SettlementPattern::VERSION, Perl $], $^X" );

done_testing();
