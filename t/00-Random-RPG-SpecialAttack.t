#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::SpecialAttack' )
    or die "Random::RPG::SpecialAttack is not available\n";
}

diag( "Testing Random::RPG::SpecialAttack $Random::RPG::SpecialAttack::VERSION, Perl $], $^X" );

done_testing();
