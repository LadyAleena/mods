#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::SciFi', qw(random_HHGTTG_sector random_MIB_agent random_Borg) )
    or die "Random::SciFi is not available\n";
}

diag( "Testing Random::SciFi $Random::SciFi::VERSION, Perl $], $^X" );

done_testing();
