#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Military', qw(random_military random_military_by_location) )
    or die "Random::Military is not available\n";
}

diag( "Testing Random::Military $Random::Military::VERSION, Perl $], $^X" );

done_testing();
