#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::SciFi' )
    or die "Random::SciFi is not available\n";
}

diag( "Testing Random::SciFi $Random::SciFi::VERSION, Perl $], $^X" );

done_testing();
