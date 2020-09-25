#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Split', qw(fancy_split) )
    or BAIL_OUT("Fancy::Split is not available\n");
}

diag( "Testing Fancy::Split $Fancy::Split::VERSION, Perl $], $^X" );

done_testing();
