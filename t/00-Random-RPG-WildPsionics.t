#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::WildPsionics' )
    or die "Random::RPG::WildPsionics is not available\n";
}

diag( "Testing Random::RPG::WildPsionics $Random::RPG::WildPsionics::VERSION, Perl $], $^X" );

done_testing();
