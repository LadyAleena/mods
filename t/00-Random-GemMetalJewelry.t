#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::GemMetalJewelry' )
    or die "Random::GemMetalJewelry is not available\n";
}

diag( "Testing Random::GemMetalJewelry $Random::GemMetalJewelry::VERSION, Perl $], $^X" );

done_testing();
