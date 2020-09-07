#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Fun::SoundofMusicSong' )
    or die "Fun::SoundofMusicSong is not available\n";
}

diag( "Testing Fun::SoundofMusicSong $Fun::SoundofMusicSong::VERSION, Perl $], $^X" );

done_testing();
