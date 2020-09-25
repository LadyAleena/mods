#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::TechnologicalRating', qw(random_technological_rating) )
    or BAIL_OUT("Random::RPG::World::HighLevelCampaigns::TechnologicalRating is not available\n");
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::TechnologicalRating $Random::RPG::World::HighLevelCampaigns::TechnologicalRating::VERSION, Perl $], $^X" );

done_testing();
