#!perl
use strict;
use warnings;
use Test::More;
use File::Temp qw(tempfile);
use Encode qw(encode);

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or BAIL_OUT("Fancy::Open is not available\n");
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

my @wanted_array     = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);
my @solid_array      = map( "solid $_", @wanted_array );
my @bead_array       = map( "$_ bead", @wanted_array );
my @solid_bead_array = map( "solid $_ bead", @wanted_array );
my $file_string      = join( "\n", @wanted_array );

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

# Testing with file that does not end with a newline
# Uses same file used to test encoding

is_deeply(
  [ Fancy::Open::fancy_open($fn) ],
  [ @wanted_array ],
  "testing a plain array with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid ' }) ],
  [ @solid_array ],
  "testing an array with prefix option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'suffix' => ' bead' }) ],
  [ @bead_array ],
  "testing an array with suffix option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid ', 'suffix' => ' bead' }) ],
  [ @solid_bead_array ],
  "testing an array with prefix and suffix options with file that does not end with a newline"
);

# Testing with file that ends with a newline

my ($newline_fh, $newline_file) = tempfile();
$newline_fh->print("$file_string\n");
$newline_fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($newline_file) ],
  [ @wanted_array ],
  "testing a plain array with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($newline_file, { 'prefix' => 'solid ' }) ],
  [ @solid_array ],
  "testing an array with prefix option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($newline_file, { 'suffix' => ' bead' }) ],
  [ @bead_array ],
  "testing an array with suffix option with file that ends with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($newline_file, { 'prefix' => 'solid ', 'suffix' => ' bead' }) ],
  [ @solid_bead_array ],
  "testing an array with prefix and suffix options with file that ends with a newline"
);

done_testing();

# Written with the help of tobyink, davido, chromatic, and perlfan on PerlMonks.
# https://www.perlmonks.org/?node_id=11121949