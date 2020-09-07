#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Dragon' )
    or die "Random::Dragon is not available\n";
}

diag( "Testing Random::Dragon $Random::Dragon::VERSION, Perl $], $^X" );

done_testing();
