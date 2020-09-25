#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::TechnologyLevel', qw(random_technology_level) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::TechnologyLevel is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::TechnologyLevel $Random::RPG::World::WorldBuildersGuidebook::TechnologyLevel::VERSION, Perl $], $^X" );

done_testing();
