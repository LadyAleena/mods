#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Name::Triador', qw(Yrethi_place_name Zilarban_place_name additions) )
    or BAIL_OUT("Random::Name::Triador is not available\n");
}

diag( "Testing Random::Name::Triador $Random::Name::Triador::VERSION, Perl $], $^X" );

done_testing();
