#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::Government', qw(random_government) )
    or BAIL_OUT("Random::Government is not available\n");
}

diag( "Testing Random::Government $Random::Government::VERSION, Perl $], $^X" );

done_testing();
