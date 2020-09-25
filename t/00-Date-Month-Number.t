#!perl
use strict;
use warnings;
use v5.8.8;
use Test::More tests => 18;

BEGIN {
  use_ok( 'Date::Month::Number', qw(month_number) )
    or BAIL_OUT("Date::Month::Number is not available\n");
}

diag( "Testing Date::Month::Number $Date::Month::Number::VERSION, Perl $], $^X" );

# TESTS
my @test_data = <DATA>;
chomp(@test_data);

for my $test (@test_data) {
  my ($month, $number) = split(/, ?/, $test);

  is(
      scalar(Date::Month::Number::month_number($month)),
      $number,
      "testing that $month returns $number",
  );

}

done_testing();

__DATA__
January, 1
Feb, 2
marts, 3
april, 4
toukokuu, 5
juin, 6
Juli, 7
Avghustos, 8
Szeptember, 9
ottobre, 10
november, 11
Grudzien, 12
janeiro, 1
Februarie, 2
Март, 3
abril, 4
maj, 5