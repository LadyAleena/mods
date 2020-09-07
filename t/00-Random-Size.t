#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Size' )
    or die "Random::Size is not available\n";
}

diag( "Testing Random::Size $Random::Size::VERSION, Perl $], $^X" );

done_testing();
