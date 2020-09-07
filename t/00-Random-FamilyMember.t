#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::FamilyMember' )
    or die "Random::FamilyMember is not available\n";
}

diag( "Testing Random::FamilyMember $Random::FamilyMember::VERSION, Perl $], $^X" );

done_testing();
