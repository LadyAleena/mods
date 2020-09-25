#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fun::Refreshment', qw(refreshment) )
    or BAIL_OUT("Fun::Refreshment is not available\n");
}

diag( "Testing Fun::Refreshment $Fun::Refreshment::VERSION, Perl $], $^X" );

done_testing();
