#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::Pantheon', qw(random_pantheon_size random_pantheon_type random_pantheon_organization random_pantheon_involvement) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::Pantheon is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::Pantheon $Random::RPG::World::WorldBuildersGuidebook::Pantheon::VERSION, Perl $], $^X" );

done_testing();
