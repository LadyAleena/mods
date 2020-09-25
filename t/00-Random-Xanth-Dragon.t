#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Xanth::Dragon', qw(random_Xanth_dragon random_old_Xanth_dragon) )
    or BAIL_OUT("Random::Xanth::Dragon is not available\n");
}

diag( "Testing Random::Xanth::Dragon $Random::Xanth::Dragon::VERSION, Perl $], $^X" );

done_testing();
