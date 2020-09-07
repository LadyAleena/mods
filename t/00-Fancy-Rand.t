#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Rand', qw(fancy_rand fancy_rand_from_array tiny_rand instant_rand) )
    or die "Fancy::Rand is not available\n";
}

diag( "Testing Fancy::Rand $Fancy::Rand::VERSION, Perl $], $^X" );

done_testing();
