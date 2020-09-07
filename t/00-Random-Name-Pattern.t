#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Name::Pattern' )
    or die "Random::Name::Pattern is not available\n";
}

diag( "Testing Random::Name::Pattern $Random::Name::Pattern::VERSION, Perl $], $^X" );

done_testing();
