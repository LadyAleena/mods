#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::SavingThrow', qw(random_saving_throw) )
    or BAIL_OUT("Random::RPG::SavingThrow is not available\n");
}

diag( "Testing Random::RPG::SavingThrow $Random::RPG::SavingThrow::VERSION, Perl $], $^X" );

done_testing();
