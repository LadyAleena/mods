#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or die "Fancy::Open is not available\n";
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

done_testing();
