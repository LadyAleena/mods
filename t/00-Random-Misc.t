#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Misc', qw(random_misc random_emotion random_filesize_unit random_game random_group random_mental_condition random_non random_relationship random_sexual_orientation random_shadow random_sign random_zstuff) )
    or BAIL_OUT("Random::Misc is not available\n");
}

diag( "Testing Random::Misc $Random::Misc::VERSION, Perl $], $^X" );

done_testing();
