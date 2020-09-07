#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More;

BEGIN {
  use_ok( 'Fun::Refreshment', qw(refreshment) )
    or die "Fun::Refreshment is not available\n";
}

diag( "Testing Fun::Refreshment $Fun::Refreshment::VERSION, Perl $], $^X" );

done_testing();
