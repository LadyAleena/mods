#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Splice', qw(fancy_splice) )
    or BAIL_OUT("Fancy::Splice is not available\n");
}

diag( "Testing Fancy::Splice $Fancy::Splice::VERSION, Perl $], $^X" );

done_testing();
