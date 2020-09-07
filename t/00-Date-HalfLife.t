#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Date::HalfLife' )
    or die "Date::HalfLife is not available\n";
}

diag( "Testing Date::HalfLife $Date::HalfLife::VERSION, Perl $], $^X" );

done_testing();
