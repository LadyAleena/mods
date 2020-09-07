#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More;

BEGIN {
  use_ok( 'Date::Month::Number' )
    or die "Date::Month::Number is not available\n";
}

diag( "Testing Date::Month::Number $Date::Month::Number::VERSION, Perl $], $^X" );

done_testing();
