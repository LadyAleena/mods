#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Join::Defined', qw(join_defined) )
    or BAIL_OUT("Fancy::Join::Defined is not available\n");
}

diag( "Testing Fancy::Join::Defined $Fancy::Join::Defined::VERSION, Perl $], $^X" );

done_testing();
