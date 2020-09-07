#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fun::Numbers', qw(primes fraction_value fractions_values list_Roman_numerals_values list_values_Roman_numerals Roman_overline) )
    or die "Fun::Numbers is not available\n";
}

diag( "Testing Fun::Numbers $Fun::Numbers::VERSION, Perl $], $^X" );

done_testing();
