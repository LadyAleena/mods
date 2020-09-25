#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Date::Birth::DayStone', qw(day_stone) )
    or BAIL_OUT("Date::Birth::DayStone is not available\n");
}

diag( "Testing Date::Birth::DayStone $Date::Birth::DayStone::VERSION, Perl $], $^X" );

done_testing();
