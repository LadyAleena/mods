#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Xanth::Dragon' )
    or die "Random::Xanth::Dragon is not available\n";
}

diag( "Testing Random::Xanth::Dragon $Random::Xanth::Dragon::VERSION, Perl $], $^X" );

done_testing();
