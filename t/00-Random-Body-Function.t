#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Body::Function' )
    or die "Random::Body::Function is not available\n";
}

diag( "Testing Random::Body::Function $Random::Body::Function::VERSION, Perl $], $^X" );

done_testing();
