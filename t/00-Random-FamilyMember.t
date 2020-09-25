#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::FamilyMember', qw(random_family_member) )
    or BAIL_OUT("Random::FamilyMember is not available\n");
}

diag( "Testing Random::FamilyMember $Random::FamilyMember::VERSION, Perl $], $^X" );

done_testing();
