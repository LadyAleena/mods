#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Date::Verify', qw(four_digit_year month_name month_number day_number) )
    or die "Date::Verify is not available\n";
}

diag( "Testing Date::Verify $Date::Verify::VERSION, Perl $], $^X" );

done_testing();
