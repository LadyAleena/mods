#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Time::Duration::AddTimes', qw(total_duration) )
    or BAIL_OUT("Time::Duration::AddTimes is not available\n");
}

diag( "Testing Time::Duration::AddTimes $Time::Duration::AddTimes::VERSION, Perl $], $^X" );

done_testing();
