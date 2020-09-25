#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Title', qw(random_title) )
    or BAIL_OUT("Random::Title is not available\n");
}

diag( "Testing Random::Title $Random::Title::VERSION, Perl $], $^X" );

done_testing();
