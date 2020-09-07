#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Date::Birth::Flower' )
    or die "Date::Birth::Flower is not available\n";
}

diag( "Testing Date::Birth::Flower $Date::Birth::Flower::VERSION, Perl $], $^X" );

done_testing();
