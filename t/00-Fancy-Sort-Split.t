#!perl
use strict;
use warnings;
use v5.16.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Sort::Split', qw(split_sort) )
    or die "Fancy::Sort::Split is not available\n";
}

diag( "Testing Fancy::Sort::Split $Fancy::Sort::Split::VERSION, Perl $], $^X" );

done_testing();
