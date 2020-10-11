package List::Value::Length;
use 5.006;
use strict;
use warnings;
use Exporter qw(import);

our $VERSION   = '1.0';
our @EXPORT_OK = qw(
  longest_length shortest_length
  longest_value shortest_value
  longest_values shortest_values
);

sub longest_length {
  my $longest_length = 0;
  for my $item (@_) {
    $longest_length = length($item) if ( !$longest_length || length($item) > $longest_length );
  }
  return $longest_length;
}

sub shortest_length {
  my $shortest_length = 0;
  for my $item (@_) {
    $shortest_length = length($item) if ( !$shortest_length || length($item) < $shortest_length );
  }
  return $shortest_length;
}

sub longest_value {
  my $longest_length = longest_length(@_);
  my @long_list;
  for my $item (@_) {
    push @long_list, $item if length($item) == $longest_length;
  }
  return @long_list;
}

sub shortest_value {
  my $shortest_length = shortest_length(@_);
  my @short_list;
  for my $item (@_) {
    push @short_list, $item if length($item) == $shortest_length;
  }
  return @short_list;
}

sub longest_values {
  longest_value(@_);
}

sub shortest_values {
  shortest_value(@_);
}

=pod

=encoding utf8

=head1 NAME

B<List::Value::Length> returns the length of the longest or shortest value or the longest or shortest value(s) on the list.

=head1 VERSION

This document describes List::Value::Length version 1.0.

=head1 SYNOPSIS

  use List::Value::Length qw(longest_value shortest_value longest_length shortest_length);

  my @colors = ('red', 'orange', 'yellow', 'spring', 'green', 'teal', 'cyan', 'azure',
                'blue', 'violet', 'magenta', 'pink', 'white', 'black', 'gray');

  my $longest_length  = longest_length(@colors);

  my $shortest_length = shortest_length(@colors);

  my @longest_values  = longest_value(@colors);

  my @shortest_values = shortest_value(@colors);

=head1 DESCRIPTION

=head2 longest_length

  my $longest_length = longest_length(@colors);

C<longest_length> returns the longest integer length of the values of an array.
It will return C<7> for the above example.

=head2 shortest_length

  my $shortest_length = shortest_length(@colors);

C<shortest_length> returns the shortest integer length of the values of an array.
It will return C<3> for the above example.

=head2 longest_value

  my @longest_values = longest_value(@colors);

C<longest_value> returns an array with all the values that are the longest length.
It will return the following for the preceding example.

  ( 'magenta' )

C<longest_values>, the plural form, also works.

=head2 shortest_value

  my @shortest_values = shortest_value(@colors);

C<shortest_value> returns an array with all the values that are the shortest length.
It will return the following for the preceding example.

  ( 'red' )

C<shortest_values>, the plural form, also works.

=head1 DEPENDENCY

List::Value::Length depends on L<Exporter>.

=head1 AUTHOR

Lady Aleena

=head1 LICENSE AND COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See L<perlartistic>.

Copyright © 2020, Lady Aleena C<(aleena@cpan.org)>. All rights reserved.

=cut

1;