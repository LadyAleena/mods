#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Time::Duration', qw(duration) )
    or BAIL_OUT("Time::Duration is not available\n");
}

diag( "Testing Time::Duration $Time::Duration::VERSION, Perl $], $^X" );

done_testing();
