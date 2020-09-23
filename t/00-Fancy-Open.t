#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More tests => "14";
use File::Temp qw(tempfile);
use Encode qw(encode);

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or die "Fancy::Open is not available\n";
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

my @wanted_array     = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);
my @solid_array      = map( "solid $_", @wanted_array );
my @bead_array       = map( "$_ bead", @wanted_array );
my @solid_bead_array = map( "solid $_ bead", @wanted_array );
my $file_string      = join( "\n", @wanted_array );

# Testing with file that ends with a newline

my ($n_fh, $n_file) = tempfile();
$n_fh->print("$file_string\n");
$n_fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($n_file) ],
  [ @wanted_array ],
  "testing a plain array with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'before' => 'solid ' }) ],
  [ @solid_array ],
  "testing an array with before option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'after' => ' bead' }) ],
  [ @bead_array ],
  "testing an array with after option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($n_file, { 'before' => 'solid ', 'after' => ' bead' }) ],
  [ @solid_bead_array ],
  "testing an array with before and after options with file that ends with a newline"
);

# Testing with file that does not end with a newline

my ($no_n_fh, $no_n_file) = tempfile();
$no_n_fh->print($file_string);
$no_n_fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file) ],
  [ @wanted_array ],
  "testing a plain array with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ' }) ],
  [ @solid_array ],
  "testing an array with before option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'after' => ' bead' }) ],
  [ @bead_array ],
  "testing an array with after option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($no_n_file, { 'before' => 'solid ', 'after' => ' bead' }) ],
  [ @solid_bead_array ],
  "testing an array with before and after options with file that does not end with a newline"
);

# Testing encoding

my ($fh, $fn) = tempfile();
$fh->print($file_string);
$fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($fn) ],
  [ map encode('utf8', $_), @wanted_array ],
  "testing an array opened with no encoding"
);

my @encodings = qw(UTF-8 ascii cp1252 iso-8859-1);

for my $encoding (@encodings) {

  is_deeply(
    [ Fancy::Open::fancy_open($fn, { 'encoding' => $encoding }) ],
    [ map encode($encoding, $_), @wanted_array ],
    "testing an array opened with $encoding encoding"
  );

}

done_testing();

# Written with the help of tobyink, davido, chromatic, and perlfan on PerlMonks.
# https://www.perlmonks.org/?node_id=11121949