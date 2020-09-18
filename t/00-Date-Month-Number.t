#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More;

BEGIN {
  use_ok( 'Date::Month::Number', qw(month_number) )
    or die "Date::Month::Number is not available\n";
}

diag( "Testing Date::Month::Number $Date::Month::Number::VERSION, Perl $], $^X" );

# TEST
is(
    scalar(Date::Month::Number::month_number('January')),
    1,
    "testing that January is the 1st month",
);

done_testing();
