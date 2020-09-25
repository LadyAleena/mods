#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Descriptor', qw(random_descriptor) )
    or BAIL_OUT("Random::Descriptor is not available\n");
}

diag( "Testing Random::Descriptor $Random::Descriptor::VERSION, Perl $], $^X" );

done_testing();
