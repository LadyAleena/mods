#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Dragon', qw(random_DreamWorks_dragon random_Harry_Potter_dragon random_Pern_dragon random_Xanth_dragon random_old_Xanth_dragon random_RPG_dragon random_dragon) )
    or BAIL_OUT("Random::Dragon is not available\n");
}

diag( "Testing Random::Dragon $Random::Dragon::VERSION, Perl $], $^X" );

done_testing();
