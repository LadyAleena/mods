#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Xanth::Dragon', qw(random_Xanth_dragon random_old_Xanth_dragon) )
    or die "Random::Xanth::Dragon is not available\n";
}

diag( "Testing Random::Xanth::Dragon $Random::Xanth::Dragon::VERSION, Perl $], $^X" );

done_testing();
