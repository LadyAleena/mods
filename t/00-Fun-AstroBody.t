#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fun::AstroBody' )
    or die "Fun::AstroBody is not available\n";
}

diag( "Testing Fun::AstroBody $Fun::AstroBody::VERSION, Perl $], $^X" );

done_testing();
