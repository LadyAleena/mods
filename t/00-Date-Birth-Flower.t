#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Date::Birth::Flower', qw(birth_flower) )
    or BAIL_OUT("Date::Birth::Flower is not available\n");
}

diag( "Testing Date::Birth::Flower $Date::Birth::Flower::VERSION, Perl $], $^X" );

done_testing();
