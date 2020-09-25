#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Class', qw(random_class random_class_special) )
    or BAIL_OUT("Random::RPG::Class is not available\n");
}

diag( "Testing Random::RPG::Class $Random::RPG::Class::VERSION, Perl $], $^X" );

done_testing();
