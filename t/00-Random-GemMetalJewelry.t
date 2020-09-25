#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::GemMetalJewelry', qw(random_gem random_gem_variety random_gem_color random_gem_cut random_metal random_jewelry random_gem_expanded) )
    or BAIL_OUT("Random::GemMetalJewelry is not available\n");
}

diag( "Testing Random::GemMetalJewelry $Random::GemMetalJewelry::VERSION, Perl $], $^X" );

done_testing();
