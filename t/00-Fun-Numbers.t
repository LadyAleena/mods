#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fun::Numbers' )
    or die "Fun::Numbers is not available\n";
}

diag( "Testing Fun::Numbers $Fun::Numbers::VERSION, Perl $], $^X" );

done_testing();
