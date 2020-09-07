#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Range' )
    or die "Random::Range is not available\n";
}

diag( "Testing Random::Range $Random::Range::VERSION, Perl $], $^X" );

done_testing();
