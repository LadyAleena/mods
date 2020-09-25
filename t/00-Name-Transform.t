#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Name::Transform', qw(name_transform) )
    or BAIL_OUT("Name::Transform is not available\n");
}

diag( "Testing Name::Transform $Name::Transform::VERSION, Perl $], $^X" );

done_testing();
