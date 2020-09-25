#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Date::Birth::Stone', qw(birth_stone) )
    or BAIL_OUT("Date::Birth::Stone is not available\n");
}

diag( "Testing Date::Birth::Stone $Date::Birth::Stone::VERSION, Perl $], $^X" );

done_testing();
