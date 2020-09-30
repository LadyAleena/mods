package Fancy::Open;
use 5.006;
use strict;
use warnings;
use Exporter qw(import);

our $VERSION   = '1.0';
our @EXPORT_OK = qw(fancy_open);

sub fancy_open {
  my ($filename, $opt) = @_;

  my $joiner = $opt->{'joiner'} ? $opt->{'joiner'} : '';
  my $prefix = $opt->{'prefix'} ? $opt->{'prefix'} . $joiner : '';
  my $suffix = $opt->{'suffix'} ? $joiner . $opt->{'suffix'} : '';

  my $encoding = $opt->{'encoding'} ? $opt->{'encoding'} : 'utf-8';
  open(my $fh, "<:encoding($encoding)", $filename) or die "Can't open $filename. $!";

  my @array;
  while ( my $line = <$fh> ) {
    chomp $line;
    my $final_line;
    if ( length($line) > 0 || $opt->{'empty'} && $opt->{'empty'} eq 'fill' ) {
      $final_line = $prefix . $line . $suffix;
    }
    elsif ( $opt->{'empty'} && $opt->{'empty'} eq 'blank' ) {
      $final_line = '';
    }
    elsif ( $opt->{'empty'} && $opt->{'empty'} eq 'undefined' ) {
      $final_line = undef;
    }
    else {
      next;
    }
    push @array, $final_line;
  }

  close($fh);

  return @array;
}

# This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See https://dev.perl.org/licenses/artistic.html.
# Copyright © 2020, Lady Aleena (aleena@cpan.org). All rights reserved.

1;