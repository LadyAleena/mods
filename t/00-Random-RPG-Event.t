#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Event', qw(random_event) )
    or BAIL_OUT("Random::RPG::Event is not available\n");
}

diag( "Testing Random::RPG::Event $Random::RPG::Event::VERSION, Perl $], $^X" );

done_testing();
