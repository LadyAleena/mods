#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Color::Hex' )
    or die "Random::Color::Hex is not available\n";
}

diag( "Testing Random::Color::Hex $Random::Color::Hex::VERSION, Perl $], $^X" );

done_testing();
