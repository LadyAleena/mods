#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More tests => "9";
use File::Temp qw(tempfile);

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or die "Fancy::Open is not available\n";
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

my @wanted = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);

my ($n_fh, $n_file) = tempfile();
$n_fh->print(join("\n", @wanted)."\n");
$n_fh->close();

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

my ($no_n_fh, $no_n_file) = tempfile();
$no_n_fh->print(join("\n", @wanted));
$no_n_fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file) ],
  [ @wanted ],
  "testing a plain array with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ' }) ],
  [ map "solid $_", @wanted ],
  "testing an array with before option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'after' => ' bead' }) ],
  [ map "$_ bead", @wanted ],
  "testing an array with after option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ', 'after' => ' bead' }) ],
  [ map "solid $_ bead", @wanted ],
  "testing an array with before and after options with file that does not end with a newline"
);

done_testing();
