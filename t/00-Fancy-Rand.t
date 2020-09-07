#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Rand' )
    or die "Fancy::Rand is not available\n";
}

diag( "Testing Fancy::Rand $Fancy::Rand::VERSION, Perl $], $^X" );

done_testing();
