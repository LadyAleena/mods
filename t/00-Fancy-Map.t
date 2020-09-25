#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Map', qw(fancy_map) )
    or BAIL_OUT("Fancy::Map is not available\n");
}

diag( "Testing Fancy::Map $Fancy::Map::VERSION, Perl $], $^X" );

done_testing();
