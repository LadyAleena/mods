#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::World::HighLevelCampaigns::EcologicalRating' )
    or die "Random::RPG::World::HighLevelCampaigns::EcologicalRating is not available\n";
}

diag( "Testing Random::RPG::World::HighLevelCampaigns::EcologicalRating $Random::RPG::World::HighLevelCampaigns::EcologicalRating::VERSION, Perl $], $^X" );

done_testing();
