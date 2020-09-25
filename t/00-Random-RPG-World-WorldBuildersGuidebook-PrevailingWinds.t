#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds', qw(random_prevailing_winds) )
    or BAIL_OUT("Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds is not available\n");
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds $Random::RPG::World::WorldBuildersGuidebook::PrevailingWinds::VERSION, Perl $], $^X" );

done_testing();
