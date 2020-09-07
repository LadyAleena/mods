#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Alpha' )
    or die "Random::Alpha is not available\n";
}

diag( "Testing Random::Alpha $Random::Alpha::VERSION, Perl $], $^X" );

done_testing();
