#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Alpha', qw(random_alpha) )
    or BAIL_OUT("Random::Alpha is not available\n");
}

diag( "Testing Random::Alpha $Random::Alpha::VERSION, Perl $], $^X" );

done_testing();
