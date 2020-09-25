#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::AbilityScores', qw(random_ability random_game_effect_expanded) )
    or BAIL_OUT("Random::RPG::AbilityScores is not available\n");
}

diag( "Testing Random::RPG::AbilityScores $Random::RPG::AbilityScores::VERSION, Perl $], $^X" );

done_testing();
