#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::TechnologicalRating' )
    or die "Random::RPG::World::HighLevelCampaigns::TechnologicalRating is not available\n";
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::TechnologicalRating $Random::RPG::World::HighLevelCampaigns::TechnologicalRating::VERSION, Perl $], $^X" );

done_testing();
