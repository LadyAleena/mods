#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Descriptor', qw(random_descriptor) )
    or BAIL_OUT("Random::Descriptor is not available\n");
}

diag( "Testing Random::Descriptor $Random::Descriptor::VERSION, Perl $], $^X" );

done_testing();
