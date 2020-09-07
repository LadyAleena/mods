#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Spell' )
    or die "Random::RPG::Spell is not available\n";
}

diag( "Testing Random::RPG::Spell $Random::RPG::Spell::VERSION, Perl $], $^X" );

done_testing();
