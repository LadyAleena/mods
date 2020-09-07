#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Alignment' )
    or die "Random::RPG::Alignment is not available\n";
}

diag( "Testing Random::RPG::Alignment $Random::RPG::Alignment::VERSION, Perl $], $^X" );

done_testing();
