#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Weapon', qw(random_weapon random_magic_weapon random_weapon_damage) )
    or BAIL_OUT("Random::RPG::Weapon is not available\n");
}

diag( "Testing Random::RPG::Weapon $Random::RPG::Weapon::VERSION, Perl $], $^X" );

done_testing();
