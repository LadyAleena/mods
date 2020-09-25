#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::SpecialDice', qw(random_die percentile permille permyriad d16) )
    or BAIL_OUT("Random::SpecialDice is not available\n");
}

diag( "Testing Random::SpecialDice $Random::SpecialDice::VERSION, Perl $], $^X" );

done_testing();
