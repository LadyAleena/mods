#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::MagicItem' )
    or die "Random::RPG::MagicItem is not available\n";
}

diag( "Testing Random::RPG::MagicItem $Random::RPG::MagicItem::VERSION, Perl $], $^X" );

done_testing();
