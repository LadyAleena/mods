#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::MagicItem::Giant' )
    or die "Random::RPG::MagicItem::Giant is not available\n";
}

diag( "Testing Random::RPG::MagicItem::Giant $Random::RPG::MagicItem::Giant::VERSION, Perl $], $^X" );

done_testing();
