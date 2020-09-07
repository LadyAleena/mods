#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Name::Triador' )
    or die "Random::Name::Triador is not available\n";
}

diag( "Testing Random::Name::Triador $Random::Name::Triador::VERSION, Perl $], $^X" );

done_testing();
