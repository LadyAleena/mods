#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Alignment', qw(random_alignment) )
    or BAIL_OUT("Random::RPG::Alignment is not available\n");
}

diag( "Testing Random::RPG::Alignment $Random::RPG::Alignment::VERSION, Perl $], $^X" );

done_testing();
