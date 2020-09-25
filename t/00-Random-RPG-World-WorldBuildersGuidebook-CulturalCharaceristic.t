#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic', qw(random_cultural_characteristic) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic $Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic::VERSION, Perl $], $^X" );

done_testing();
