#!perl
use strict;
use warnings;
use v5.16.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Sort::Short', qw(short_sort) )
    or BAIL_OUT("Fancy::Sort::Short is not available\n");
}

diag( "Testing Fancy::Sort::Short $Fancy::Sort::Short::VERSION, Perl $], $^X" );

done_testing();
