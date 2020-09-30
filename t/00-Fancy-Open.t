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

my @wanted_array = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);

my @solid_array             = map( "solid$_",       @wanted_array );
my @bead_array              = map( "${_}bead",      @wanted_array );
my @solid_bead_array        = map( "solid${_}bead", @wanted_array );
my @solid_array_joiner      = map( "solid $_",      @wanted_array );
my @bead_array_joiner       = map( "$_ bead",       @wanted_array );
my @solid_bead_array_joiner = map( "solid $_ bead", @wanted_array );

my $file_string = join( "\n", @wanted_array );

# Testing encoding

my ($fh, $fn) = tempfile();
$fh->print($file_string);
$fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($fn) ],
  [ map encode('utf8', $_), @wanted_array ],
  "testing an array opened with no options"
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

# Testing prefix and suffix options

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid' }) ],
  [ @solid_array ],
  "testing an array with prefix option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'suffix' => 'bead' }) ],
  [ @bead_array ],
  "testing an array with suffix option with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid', 'suffix' => 'bead' }) ],
  [ @solid_bead_array ],
  "testing an array with prefix and suffix options with file that does not end with a newline"
);

# Testing joiner option

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid', 'joiner' => ' ' }) ],
  [ @solid_array_joiner ],
  "testing an array with prefix and joiner options with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'suffix' => 'bead', 'joiner' => ' ' }) ],
  [ @bead_array_joiner ],
  "testing an array with suffix and joiner options with file that does not end with a newline"
);

is_deeply(
  [ Fancy::Open::fancy_open($fn, { 'prefix' => 'solid', 'suffix' => 'bead', 'joiner' => ' ' }) ],
  [ @solid_bead_array_joiner ],
  "testing an array with prefix, suffix, and joiner options with file that does not end with a newline"
);

# Testing with file that has a blank line in it

my @empty_line_array = @wanted_array;
splice( @empty_line_array, 8, 0, '' );
my $file_with_empty_line_string = join( "\n", @empty_line_array);

my ($fh_with_empty_line, $file_with_empty_line) = tempfile();
$fh_with_empty_line->print($file_with_empty_line_string);
$fh_with_empty_line->close();

is_deeply(
  [ Fancy::Open::fancy_open($file_with_empty_line, { 'prefix' => 'solid', 'suffix' => 'bead' }) ],
  [ @solid_bead_array ],
  "testing a plain array with file with an empty line that does not end with a newline with no empty option"
);

my @empty_line_array_filled = map( "solid${_}bead", @empty_line_array );
splice( @empty_line_array_filled, 8, 1, "solidbead");

is_deeply(
  [ Fancy::Open::fancy_open($file_with_empty_line, { 'prefix' => 'solid', 'suffix' => 'bead', 'empty' => 'fill' }) ],
  [ @empty_line_array_filled ],
  "testing a plain array with file with an empty line that does not end with a newline with 'fill' empty option"
);

my @empty_line_array_empty = map( "solid${_}bead", @empty_line_array );
splice(@empty_line_array_empty, 8, 1, '');

is_deeply(
  [ Fancy::Open::fancy_open($file_with_empty_line, { 'prefix' => 'solid', 'suffix' => 'bead', 'empty' => 'blank' }) ],
  [ @empty_line_array_empty ],
  "testing a plain array with file with an empty line that does not end with a newline with 'blank' empty option"
);

my @empty_line_array_undef = map( "solid${_}bead", @empty_line_array );
splice(@empty_line_array_undef, 8, 1, undef);

is_deeply(
  [ Fancy::Open::fancy_open($file_with_empty_line, { 'prefix' => 'solid', 'suffix' => 'bead', 'empty' => 'undefined' }) ],
  [ @empty_line_array_undef ],
  "testing a plain array with file with an empty line that does not end with a newline with 'undefined' empty option"
);

# Testing with file that ends with a newline

my ($newline_fh, $newline_file) = tempfile();
$newline_fh->print("$file_string\n");
$newline_fh->close();

is_deeply(
  [ Fancy::Open::fancy_open($newline_file) ],
  [ @wanted_array ],
  "testing an array opened with no options with file that ends with a newline"
);

done_testing();

# Written with the help of tobyink, davido, chromatic, and perlfan on PerlMonks.
# https://www.perlmonks.org/?node_id=11121949