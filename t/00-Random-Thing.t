#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Thing', qw(random_thing random_animal random_armor random_clothing random_musical_instrument random_plant random_utensil) )
    or die "Random::Thing is not available\n";
}

diag( "Testing Random::Thing $Random::Thing::VERSION, Perl $], $^X" );

done_testing();
