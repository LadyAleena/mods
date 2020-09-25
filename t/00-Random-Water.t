#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Water', qw(random_water) )
    or BAIL_OUT("Random::Water is not available\n");
}

diag( "Testing Random::Water $Random::Water::VERSION, Perl $], $^X" );

done_testing();
