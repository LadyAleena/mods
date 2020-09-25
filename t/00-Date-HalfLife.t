#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Date::HalfLife', qw(half_life_date) )
    or BAIL_OUT("Date::HalfLife is not available\n");
}

diag( "Testing Date::HalfLife $Date::HalfLife::VERSION, Perl $], $^X" );

done_testing();
