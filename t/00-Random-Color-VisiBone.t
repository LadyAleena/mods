#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Color::VisiBone', qw(random_VisiBone_color) )
    or die "Random::Color::VisiBone is not available\n";
}

diag( "Testing Random::Color::VisiBone $Random::Color::VisiBone::VERSION, Perl $], $^X" );

done_testing();
