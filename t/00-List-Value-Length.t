#!perl
use strict;
use warnings;
use Test::More;

BEGIN {
  use_ok( 'List::Value::Length', qw(longest_value shortest_value longest_length shortest_length) )
    or BAIL_OUT("List::Value::Length is not available\n");
}

diag( "Testing List::Value::Length $List::Value::Length::VERSION, Perl $], $^X" );

my @colors = ('red', 'orange', 'yellow', 'spring', 'green', 'teal', 'cyan', 'azure',
              'blue', 'violet', 'magenta', 'pink', 'white', 'black', 'gray');

is(
  List::Value::Length::longest_length(@colors),
  '7',
  "testing longest_length for array @colors is 7"
);

is(
  List::Value::Length::shortest_length(@colors),
  '3',
  "testing shortest_length for array @colors is 3"
);

is_deeply(
  List::Value::Length::longest_value(@colors),
  [ 'magenta' ],
  "testing longest_value is magenta only"
);

is_deeply(
  List::Value::Length::shortest_value(@colors),
  [ 'red' ],
  "testing shortest_value is red only"
);

done_testing();
