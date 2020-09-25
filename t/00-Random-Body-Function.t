#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Body::Function', qw(random_body_function random_body_functions) )
    or BAIL_OUT("Random::Body::Function is not available\n");
}

diag( "Testing Random::Body::Function $Random::Body::Function::VERSION, Perl $], $^X" );

done_testing();
