#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Random::RPG::Misc', qw(random_RPG_misc random_divinity random_henchmen random_language_common random_proficiency_type) )
    or BAIL_OUT("Random::RPG::Misc is not available\n");
}

diag( "Testing Random::RPG::Misc $Random::RPG::Misc::VERSION, Perl $], $^X" );

done_testing();
