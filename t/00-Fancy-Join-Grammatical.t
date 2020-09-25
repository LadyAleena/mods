#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fancy::Join::Grammatical', qw(grammatical_join) )
    or BAIL_OUT("Fancy::Join::Grammatical is not available\n");
}

diag( "Testing Fancy::Join::Grammatical $Fancy::Join::Grammatical::VERSION, Perl $], $^X" );

done_testing();
