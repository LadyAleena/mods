#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Date::Birth::ZodiacStone', qw(zodiac_sign zodiac_stone) )
    or BAIL_OUT("Date::Birth::ZodiacStone is not available\n");
}

diag( "Testing Date::Birth::ZodiacStone $Date::Birth::ZodiacStone::VERSION, Perl $], $^X" );

done_testing();
