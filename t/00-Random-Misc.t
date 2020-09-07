#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Misc' )
    or die "Random::Misc is not available\n";
}

diag( "Testing Random::Misc $Random::Misc::VERSION, Perl $], $^X" );

done_testing();
