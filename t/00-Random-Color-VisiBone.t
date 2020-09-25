#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Color::VisiBone', qw(random_VisiBone_color) )
    or BAIL_OUT("Random::Color::VisiBone is not available\n");
}

diag( "Testing Random::Color::VisiBone $Random::Color::VisiBone::VERSION, Perl $], $^X" );

done_testing();
