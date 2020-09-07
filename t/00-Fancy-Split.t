#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Split', qw(fancy_split) )
    or die "Fancy::Split is not available\n";
}

diag( "Testing Fancy::Split $Fancy::Split::VERSION, Perl $], $^X" );

done_testing();
