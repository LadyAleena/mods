#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::MagicItem::Ring::SpellDoubling', qw(make_ring random_ring) )
    or die "Random::RPG::MagicItem::Ring::SpellDoubling is not available\n";
}

diag( "Testing Random::RPG::MagicItem::Ring::SpellDoubling $Random::RPG::MagicItem::Ring::SpellDoubling::VERSION, Perl $], $^X" );

done_testing();
