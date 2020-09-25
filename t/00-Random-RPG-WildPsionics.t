#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::WildPsionics', qw(random_wild_psionic_talent) )
    or BAIL_OUT("Random::RPG::WildPsionics is not available\n");
}

diag( "Testing Random::RPG::WildPsionics $Random::RPG::WildPsionics::VERSION, Perl $], $^X" );

done_testing();
