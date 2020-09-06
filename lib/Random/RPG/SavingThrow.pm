package Random::RPG::SavingThrow;
use v5.10.0;
use strict;
use warnings;
use Exporter qw(import);

use Fancy::Rand qw(fancy_rand);

our $VERSION   = '1.000';
our @EXPORT_OK = qw(random_saving_throw);

my %saving_throws = (
  'paralyzation/poison/death magic' => [qw(paralyzation poison), 'death magic'],
  'rods/staves/wands' => [qw(rods staves wands)],
  'petrifaction/polymorph' => [qw(petrifaction polymorph)],
  'breath weapon' => ['breath weapon'],
  'spells' => ['spells']
);

sub random_saving_throw {
  my ($user_saving_throw, $user_additions) = @_;
  my $saving_throw = fancy_rand(\%saving_throws, $user_saving_throw, { caller => 'random_saving_throw', additions => $user_additions ? $user_additions : undef });
  return $saving_throw;
}

=pod

=encoding utf8

=head1 NAME

B<Random::RPG::SavingThrow> selects random saving throws from I<Advanced Dungeons & Dragons>, Second Edition.

=head1 VERSION

This document describes Random::RPG::SavingThrow version 1.000.

=head1 SYNOPSIS

  use Random::RPG::SavingThrow qw(random_saving_throw);

=head1 DEPENDENCIES

Random::RPG::SavingThrow depends on L<Fancy::Rand> and L<Exporter>.

=head1 AUTHOR

Lady Aleena

=head1 LICENSE AND COPYRIGHT

This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See L<perlartistic>.

Copyright © 2020, Lady Aleena C<<aleena@cpan.org>>. All rights reserved.

=cut

1;