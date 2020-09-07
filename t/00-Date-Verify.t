#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Date::Verify' )
    or die "Date::Verify is not available\n";
}

diag( "Testing Date::Verify $Date::Verify::VERSION, Perl $], $^X" );

done_testing();
