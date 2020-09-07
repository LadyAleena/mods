#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::WorldBuildersGuidebook::SocialAlignment', qw(random_social_alignment) )
    or die "Random::RPG::World::WorldBuildersGuidebook::SocialAlignment is not available\n";
}

diag( "Testing Random::RPG::World::WorldBuildersGuidebook::SocialAlignment $Random::RPG::World::WorldBuildersGuidebook::SocialAlignment::VERSION, Perl $], $^X" );

done_testing();
