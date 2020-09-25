#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fun::AstroBody', qw(astro_body) )
    or BAIL_OUT("Fun::AstroBody is not available\n");
}

diag( "Testing Fun::AstroBody $Fun::AstroBody::VERSION, Perl $], $^X" );

done_testing();
