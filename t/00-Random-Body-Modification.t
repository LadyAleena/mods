#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More;

BEGIN {
  use_ok( 'Random::Body::Modification', qw(random_body_modification random_body_color_change random_aura) )
    or die "Random::Body::Modification is not available\n";
}

diag( "Testing Random::Body::Modification $Random::Body::Modification::VERSION, Perl $], $^X" );

done_testing();
