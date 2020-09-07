#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Monster' )
    or die "Random::RPG::Monster is not available\n";
}

diag( "Testing Random::RPG::Monster $Random::RPG::Monster::VERSION, Perl $], $^X" );

done_testing();
