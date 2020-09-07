#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More;

BEGIN {
  use_ok( 'Name::Transform' )
    or die "Name::Transform is not available\n";
}

diag( "Testing Name::Transform $Name::Transform::VERSION, Perl $], $^X" );

done_testing();
