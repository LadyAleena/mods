#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Time', qw(random_time_unit random_day_part random_time random_frequency) )
    or BAIL_OUT("Random::Time is not available\n");
}

diag( "Testing Random::Time $Random::Time::VERSION, Perl $], $^X" );

done_testing();
