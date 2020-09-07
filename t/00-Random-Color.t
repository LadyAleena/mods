#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Color', qw(random_color) )
    or die "Random::Color is not available\n";
}

diag( "Testing Random::Color $Random::Color::VERSION, Perl $], $^X" );

done_testing();
