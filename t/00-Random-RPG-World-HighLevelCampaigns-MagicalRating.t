#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::MagicalRating', qw(random_magical_rating) )
    or BAIL_OUT("Random::RPG::World::HighLevelCampaigns::MagicalRating is not available\n");
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::MagicalRating $Random::RPG::World::HighLevelCampaigns::MagicalRating::VERSION, Perl $], $^X" );

done_testing();
