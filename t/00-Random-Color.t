#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Color', qw(random_color) )
    or BAIL_OUT("Random::Color is not available\n");
}

diag( "Testing Random::Color $Random::Color::VERSION, Perl $], $^X" );

done_testing();
