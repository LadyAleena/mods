#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Splice' )
    or die "Fancy::Splice is not available\n";
}

diag( "Testing Fancy::Splice $Fancy::Splice::VERSION, Perl $], $^X" );

done_testing();
