#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::AbilityScores' )
    or die "Random::RPG::AbilityScores is not available\n";
}

diag( "Testing Random::RPG::AbilityScores $Random::RPG::AbilityScores::VERSION, Perl $], $^X" );

done_testing();
