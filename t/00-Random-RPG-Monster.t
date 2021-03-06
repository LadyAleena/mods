#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Monster', qw(random_monster random_monster_list random_RPG_dragon) )
    or BAIL_OUT("Random::RPG::Monster is not available\n");
}

diag( "Testing Random::RPG::Monster $Random::RPG::Monster::VERSION, Perl $], $^X" );

done_testing();
