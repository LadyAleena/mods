#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More tests => "9";
use FindBin qw($Bin);

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or die "Fancy::Open is not available\n";
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

my @wanted = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);

my $n_file = "$Bin/test-open-n.txt";

is_deeply(
  [ Fancy::Open::fancy_open($n_file) ],
  [ @wanted ],
  "testing a plain array with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'before' => 'solid ' }) ],
  [ map "solid $_", @wanted ],
  "testing an array with before option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'after' => ' bead' }) ],
  [ map "$_ bead", @wanted ],
  "testing an array with after option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'before' => 'solid ', 'after' => ' bead' }) ],
  [ map "solid $_ bead", @wanted ],
  "testing an array with before and after options with file that ends with a newline"
);

my $no_n_file = "$Bin/test-open-no-n.txt";

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file) ],
  [ @wanted ],
  "testing a plain array with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ' }) ],
  [ map "solid $_", @wanted ],
  "testing an array with before option that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'after' => ' bead' }) ],
  [ map "$_ bead", @wanted ],
  "testing an array with after option that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ', 'after' => ' bead' }) ],
  [ map "solid $_ bead", @wanted ],
  "testing an array with before and after options that does not end with a newline"
);

done_testing();
