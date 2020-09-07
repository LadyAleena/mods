#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Time' )
    or die "Random::Time is not available\n";
}

diag( "Testing Random::Time $Random::Time::VERSION, Perl $], $^X" );

done_testing();
