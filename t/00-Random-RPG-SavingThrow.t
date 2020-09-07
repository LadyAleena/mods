#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::SavingThrow', qw(random_saving_throw) )
    or die "Random::RPG::SavingThrow is not available\n";
}

diag( "Testing Random::RPG::SavingThrow $Random::RPG::SavingThrow::VERSION, Perl $], $^X" );

done_testing();
