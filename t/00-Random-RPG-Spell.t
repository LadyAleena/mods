#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Spell', qw(random_spell_casting random_spell_group random_spell_resistance random_spell_level random_spell_frequency) )
    or BAIL_OUT("Random::RPG::Spell is not available\n");
}

diag( "Testing Random::RPG::Spell $Random::RPG::Spell::VERSION, Perl $], $^X" );

done_testing();
