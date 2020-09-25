#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Military', qw(random_military random_military_by_location) )
    or BAIL_OUT("Random::Military is not available\n");
}

diag( "Testing Random::Military $Random::Military::VERSION, Perl $], $^X" );

done_testing();
