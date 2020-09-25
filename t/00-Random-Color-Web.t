#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Color::Web', qw(random_web_color) )
    or BAIL_OUT("Random::Color::Web is not available\n");
}

diag( "Testing Random::Color::Web $Random::Color::Web::VERSION, Perl $], $^X" );

done_testing();