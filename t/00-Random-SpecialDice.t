#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::SpecialDice' )
    or die "Random::SpecialDice is not available\n";
}

diag( "Testing Random::SpecialDice $Random::SpecialDice::VERSION, Perl $], $^X" );

done_testing();
