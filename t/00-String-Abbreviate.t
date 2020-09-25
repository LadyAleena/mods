#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'String::Abbreviate', qw(abbr initials) )
    or BAIL_OUT("String::Abbreviate is not available\n");
}

diag( "Testing String::Abbreviate $String::Abbreviate::VERSION, Perl $], $^X" );

done_testing();
