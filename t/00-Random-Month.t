#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Month', qw(random_month) )
    or BAIL_OUT("Random::Month is not available\n");
}

diag( "Testing Random::Month $Random::Month::VERSION, Perl $], $^X" );

done_testing();
