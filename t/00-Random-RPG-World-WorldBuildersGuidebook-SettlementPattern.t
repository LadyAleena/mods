#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::SettlementPattern', qw(random_settlement_pattern) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::SettlementPattern is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::SettlementPattern $Random::RPG::World::WorldBuildersGuidebook::SettlementPattern::VERSION, Perl $], $^X" );

done_testing();
