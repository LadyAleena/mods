#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::GovernmentForm', qw(random_government_form) )
    or die "Random::RPG::World::WorldBuildersGuidebook::GovernmentForm is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::GovernmentForm $Random::RPG::World::WorldBuildersGuidebook::GovernmentForm::VERSION, Perl $], $^X" );

done_testing();
