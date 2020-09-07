#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic', qw(random_cultural_characteristic) )
    or die "Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic $Random::RPG::World::WorldBuildersGuidebook::CulturalCharaceristic::VERSION, Perl $], $^X" );

done_testing();
