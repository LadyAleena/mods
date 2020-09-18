#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More tests => 18;

BEGIN {
  use_ok( 'Date::Month::Number', qw(month_number) )
    or die "Date::Month::Number is not available\n";
}

diag( "Testing Date::Month::Number $Date::Month::Number::VERSION, Perl $], $^X" );

# TESTS
is(
    scalar(Date::Month::Number::month_number('January')),
    1,
    "testing that January is the 1st month",
);

is(
    scalar(Date::Month::Number::month_number('Feb')),
    2,
    "testing that Feb is the 2nd month",
);

is(
    scalar(Date::Month::Number::month_number('marts')),
    3,
    "testing that marts is the 3rd month",
);

is(
    scalar(Date::Month::Number::month_number('april')),
    4,
    "testing that april is the 4th month",
);

is(
    scalar(Date::Month::Number::month_number('toukokuu')),
    5,
    "testing that toukokuu is the 5th month",
);

is(
    scalar(Date::Month::Number::month_number('juin')),
    6,
    "testing that juin is the 6th month",
);

is(
    scalar(Date::Month::Number::month_number('Juli')),
    7,
    "testing that Juli is the 7th month",
);

is(
    scalar(Date::Month::Number::month_number('Avghustos')),
    8,
    "testing that Avghustos is the 8th month",
);

is(
    scalar(Date::Month::Number::month_number('Szeptember')),
    9,
    "testing that Szeptember is the 9th month",
);

is(
    scalar(Date::Month::Number::month_number('ottobre')),
    10,
    "testing that ottobre is the 10th month",
);

is(
    scalar(Date::Month::Number::month_number('november')),
    11,
    "testing that november is the 11th month",
);

is(
    scalar(Date::Month::Number::month_number('Grudzien')),
    12,
    "testing that Grudzien is the 12th month",
);

is(
    scalar(Date::Month::Number::month_number('janeiro')),
    1,
    "testing that janeiro is the 1st month",
);

is(
    scalar(Date::Month::Number::month_number('Februarie')),
    2,
    "testing that Februarie is the 2nd month",
);

is(
    scalar(Date::Month::Number::month_number('Март')),
    3,
    "testing that Март is the 3rd month",
);

is(
    scalar(Date::Month::Number::month_number('abril')),
    4,
    "testing that abril is the 4th month",
);

is(
    scalar(Date::Month::Number::month_number('maj')),
    5,
    "testing that maj is the 5th month",
);

done_testing();
