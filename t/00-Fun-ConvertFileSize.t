#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'Fun::ConvertFileSize', qw(convert_filesize) )
    or BAIL_OUT("Fun::ConvertFileSize is not available\n");
}

diag( "Testing Fun::ConvertFileSize $Fun::ConvertFileSize::VERSION, Perl $], $^X" );

done_testing();
