#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Size', qw(random_size) )
    or BAIL_OUT("Random::Size is not available\n");
}

diag( "Testing Random::Size $Random::Size::VERSION, Perl $], $^X" );

done_testing();
