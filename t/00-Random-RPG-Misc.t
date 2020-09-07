#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Misc' )
    or die "Random::RPG::Misc is not available\n";
}

diag( "Testing Random::RPG::Misc $Random::RPG::Misc::VERSION, Perl $], $^X" );

done_testing();
