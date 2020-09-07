#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Map' )
    or die "Fancy::Map is not available\n";
}

diag( "Testing Fancy::Map $Fancy::Map::VERSION, Perl $], $^X" );

done_testing();
