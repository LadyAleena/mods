#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Range', qw(random_range_unit random_range random_radius) )
    or BAIL_OUT("Random::Range is not available\n");
}

diag( "Testing Random::Range $Random::Range::VERSION, Perl $], $^X" );

done_testing();
