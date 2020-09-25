#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::ChronologicalRating', qw(random_chronological_rating) )
    or BAIL_OUT("Random::RPG::World::HighLevelCampaigns::ChronologicalRating is not available\n");
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::ChronologicalRating $Random::RPG::World::HighLevelCampaigns::ChronologicalRating::VERSION, Perl $], $^X" );

done_testing();
