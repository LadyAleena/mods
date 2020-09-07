#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::MountainPlacement', qw(random_mountain_placement) )
    or die "Random::RPG::World::WorldBuildersGuidebook::MountainPlacement is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::MountainPlacement $Random::RPG::World::WorldBuildersGuidebook::MountainPlacement::VERSION, Perl $], $^X" );

done_testing();
