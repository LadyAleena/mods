#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Food', qw(random_food random_drink) )
    or BAIL_OUT("Random::Food is not available\n");
}

diag( "Testing Random::Food $Random::Food::VERSION, Perl $], $^X" );

done_testing();
