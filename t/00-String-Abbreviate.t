#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More;

BEGIN {
  use_ok( 'String::Abbreviate', qw(abbr initials) )
    or die "String::Abbreviate is not available\n";
}

diag( "Testing String::Abbreviate $String::Abbreviate::VERSION, Perl $], $^X" );

done_testing();
