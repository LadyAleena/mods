package Date::Verify;
use v5.10.0;
use strict;
use warnings;
use Exporter qw(import);

use Data::Validate qw(is_integer is_between);
use Date::Calc qw(:all);

our $VERSION   = '1.0';
our @EXPORT_OK = qw(four_digit_year month_name month_number day_number);

sub four_digit_year {
 my $year = shift;

  if ($year !~ /\d{4}/) {
    die "Sorry, please use the four digit year. Stopped";
  }

  return $year;
}

sub month_name {
  my ($month) = @_;

  if (is_integer($month)) {
    if (is_between($month, 1, 12)) {
      $month = Month_to_Text($month);
    }
    else {
      die "Sorry, the month number you entered is invalid. Stopped";
    }
  }
  else {
    my $decoded_month = Decode_Month($month);

    if ( $decoded_month ) {
      $month = Month_to_Text($decoded_month);
    }
    else {
      die "Sorry, your month name is a little short. Stopped";
    }
  }

  return $month;
}

sub month_number {
  my ($month) = @_;

  if (is_integer($month)) {
    if (is_between($month, 1, 12)) {
      $month = $month;
    }
    else {
      die "Sorry, the month number you entered is invalid. Stopped";
    }
  }
  else {
    my $decoded_month = Decode_Month($month);

    if ( $decoded_month ) {
      $month = $decoded_month;
    }
    else {
      die "Sorry, your month name is a little short. Stopped";
    }
  }

  return $month;
}

sub day_number {
  my ($year, $month, $day) = @_;

  my $days = Days_in_Month($year, month_number($month));

  if ($day > $days) {
    die "Sorry, there are only $days days in $month $year. Stopped";
  }

  return $day;
}

=pod

=encoding utf8

=NAME

B<Date::Verify> makes sure the input matches the date criteria.

=head1 VERSION

This document describes Date::Verify version 1.0.

=head1 DEPENDENCIES

Date::Verify depends on L<Exporter>, L<Date::Calc>, and L<Date::Validate>.

=head1 AUTHOR

Lady Aleena

=head1 LICENSE AND COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See L<perlartistic>.

Copyright © 2020, Lady Aleena C<(aleena@cpan.org)>. All rights reserved.

=cut

1;