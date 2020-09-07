#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Government' )
    or die "Random::Government is not available\n";
}

diag( "Testing Random::Government $Random::Government::VERSION, Perl $], $^X" );

done_testing();
