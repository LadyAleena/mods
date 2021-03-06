#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::MagicItem', qw(random_magic_item random_magic_item_action magic_item_enhancement magic_item_quirk) )
    or BAIL_OUT("Random::RPG::MagicItem is not available\n");
}

diag( "Testing Random::RPG::MagicItem $Random::RPG::MagicItem::VERSION, Perl $], $^X" );

done_testing();
