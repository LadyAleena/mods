#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Month', qw(random_month) )
    or die "Random::Month is not available\n";
}

diag( "Testing Random::Month $Random::Month::VERSION, Perl $], $^X" );

done_testing();
