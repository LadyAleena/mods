#!perl
use strict;
use warnings;
use v5.10.0;
use Test::More tests => "5";
use FindBin qw($Bin);

BEGIN {
  use_ok( 'Fancy::Open', qw(fancy_open) )
    or die "Fancy::Open is not available\n";
}

diag( "Testing Fancy::Open $Fancy::Open::VERSION, Perl $], $^X" );

my $file = "$Bin/test-open.txt";

my @plain_array_wanted = qw(red orange yellow spring green teal cyan azure blue violet magenta pink white black gray);
my @plain_array_run    = Fancy::Open::fancy_open($file);

is_deeply(
  \@plain_array_run,
  \@plain_array_wanted,
  "testing a plain array"
);

my @before_array_wanted = (
  "solid red",
  "solid orange",
  "solid yellow",
  "solid spring",
  "solid green",
  "solid teal",
  "solid cyan",
  "solid azure",
  "solid blue",
  "solid violet",
  "solid magenta",
  "solid pink",
  "solid white",
  "solid black",
  "solid gray"
);

my @before_array_run = Fancy::Open::fancy_open($file, { 'before' => 'solid ' });

is_deeply(
  \@before_array_wanted,
  \@before_array_run,
  "testing an array with before option"
);

my @after_array_wanted = (
"red bead",
"orange bead",
"yellow bead",
"spring bead",
"green bead",
"teal bead",
"cyan bead",
"azure bead",
"blue bead",
"violet bead",
"magenta bead",
"pink bead",
"white bead",
"black bead",
"gray bead"
);

my @after_array_run = Fancy::Open::fancy_open($file, { 'after' => ' bead' });

is_deeply(
  \@after_array_wanted,
  \@after_array_run,
  "testing an array with after option"
);

my @both_array_wanted = (
"solid red bead",
"solid orange bead",
"solid yellow bead",
"solid spring bead",
"solid green bead",
"solid teal bead",
"solid cyan bead",
"solid azure bead",
"solid blue bead",
"solid violet bead",
"solid magenta bead",
"solid pink bead",
"solid white bead",
"solid black bead",
"solid gray bead"
);

my @both_array_run = Fancy::Open::fancy_open($file, { 'before' => 'solid ', 'after' => ' bead' });

is_deeply(
  \@both_array_wanted,
  \@both_array_run,
  "testing an array with before and after options"
);

done_testing();
