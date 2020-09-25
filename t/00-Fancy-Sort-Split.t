#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Sort::Split', qw(split_sort) )
    or BAIL_OUT("Fancy::Sort::Split is not available\n");
}

diag( "Testing Fancy::Sort::Split $Fancy::Sort::Split::VERSION, Perl $], $^X" );

done_testing();
