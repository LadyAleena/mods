#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::MagicalRating', qw(random_magical_rating) )
    or die "Random::RPG::World::HighLevelCampaigns::MagicalRating is not available\n";
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::MagicalRating $Random::RPG::World::HighLevelCampaigns::MagicalRating::VERSION, Perl $], $^X" );

done_testing();
