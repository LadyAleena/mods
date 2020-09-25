#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::EcologicalRating', qw(random_ecological_rating) )
    or BAIL_OUT("Random::RPG::World::HighLevelCampaigns::EcologicalRating is not available\n");
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::EcologicalRating $Random::RPG::World::HighLevelCampaigns::EcologicalRating::VERSION, Perl $], $^X" );

done_testing();
