package Random::Color::Web;
use v5.10.0;
use strict;
use warnings;
use Exporter qw(import);
use File::ShareDir qw(module_dir);

use Fancy::Rand qw(fancy_rand);
use File::Slurp::Affix qw(slurp_affix);

our $VERSION   = '1.000';
our @EXPORT_OK = qw(random_web_color);

my $directory = module_dir('Random::Color::Web');
my @css_3     = slurp_affix("$directory/css_3.txt");

my %html_colors = (
  'pink'   => [qw(mediumvioletred deeppink palevioletred hotpink lightpink pink)],
  'red'    => [qw(darkred red firebrick crimson indianred lightcoral salmon darksalmon lightsalmon)],
  'orange' => [qw(orangered tomato darkorange coral orange)],
  'yellow' => [qw(darkkhaki gold khaki peachpuff yellow palegoldenrod moccasin papayawhip lightgoldenrodyellow lemonchiffon lightyellow)],
  'brown'  => [qw(maroon brown saddlebrown sienna chocolate darkgoldenrod peru rosybrown goldenrod sandybrown tan burlywood wheat navajowhite bisque blanchedalmond cornsilk)],
  'green'  => [qw(darkgreen green darkolivegreen forestgreen seagreen olive olivedrab mediumseagreen limegreen lime springgreen mediumspringgreen darkseagreen mediumaquamarine yellowgreen lawngreen chartreuse lightgreen greenyellow palegreen)],
  'cyan'   => [qw(teal darkcyan lightseagreen cadetblue darkturquoise mediumturquoise turquoise aqua cyan aquamarine paleturquoise lightcyan)],
  'blue'   => [qw(navy darkblue mediumblue blue midnightblue royalblue steelblue dodgerblue deepskyblue cornflowerblue skyblue lightskyblue lightsteelblue lightblue powderblue)],
  'purple' => [qw(indigo purple darkmagenta darkviolet darkslateblue blueviolet darkorchid fuchsia magenta slateblue mediumslateblue mediumorchid mediumpurple orchid violet plum thistle lavender rebeccapurple)],
  'white'  => [qw(mistyrose antiquewhite linen beige whitesmoke lavenderblush oldlace aliceblue seashell ghostwhite honeydew floralwhite azure mintcream snow ivory white)],
  'gray'   => [qw(black darkslategray dimgray slategray gray lightslategray darkgray silver lightgray gainsboro)],
  'css 1'  => [qw(black silver gray white maroon red purple fuchsia green lime olive yellow navy blue teal aqua)]
);
$html_colors{'css 2'} = [@{$html_colors{'css 1'}}, 'orange'];
$html_colors{'css 3'} = [@{$html_colors{'css 2'}}, @css_3];
$html_colors{'css 4'} = [@{$html_colors{'css 3'}}, 'rebeccapurple'];

sub random_web_color {
  my ($user_color, $user_additions) = @_;
  my $color = fancy_rand(\%html_colors, $user_color, { caller => 'random_color', additions => $user_additions ? $user_additions : undef });
  return $color;
}

# This module is free software; you can redistribute it and/or modify it under the same terms as Perl itself. See https://dev.perl.org/licenses/artistic.html.
# Copyright © 2020, Lady Aleena (aleena@cpan.org). All rights reserved.

1;
