# Lady Aleena's modules

When I wrote these modules long ago, I was not planning on releasing them on CPAN, but with some judicious rewrites to make these more generic, I think they might be worth sharing. These are the modules I will give a little more attention, like writing plain old documentation (POD) for them. I still need to figure out tests, and thankfully some sample tests were written for me to study. I will probably need more help in the future with these modules.

I need help getting these organized and ready for packaging. Each module needs its own package, and I am getting lost in the packaging documentation.

I am quite unsure of myself when it comes to formal writing in Perl and a more formal usage of git, so I have so much to learn.

## Modules

### Module groups

While I say these are groups, the modules in them are mostly independent of each other with the exception of the Random modules, which depend on [Fancy::Rand](lib/Fancy/Rand.pm).

[Date](lib/Date): These modules were written for fun. You can [readme](lib/Date/readme.md) for more information.

[Fancy](lib/Fancy): These modules were written to allow for more fancy usage of some functions and are the ones I would like to upload to CPAN first. You can [readme](lib/Fancy/readme.md) for more information.

[Fun](lib/Fun): These modules were written for fun. You can [readme](lib/Fun/readme.md) for more information.

[Random](lib/Random): These modules started out as helpers to my [character mutations generator](https://github.com/LadyAleena/Lady_Aleena/blob/master/files/lib/Page/RolePlaying/Character/Mutation.pm), but they have since grown to include generators for many many more things. The data for these modules are in [lib/auto/Random](lib/auto/Random). You can  [readme](lib/Random/readme.md) for more information.

### Individual modules

- [List::Value::Length](lib/List/Value/Length.pm): The List::Value::Length module was written for some reason, which I can not remember. *I have offered this code to List::SomeUtils.*
- [Name::Transform](lib/Name/Transform.pm): The Name::Transform module parses names into an arrayref.
- [String::Abbreviate](lib/String/Abbreviate.pm): The String::Abbreviate module was written for fun.
- [Time::Duration::AddTimes](lib/Time/Duration/AddTimes.pm): The Time::Duration::AddTimes module was written so I could calculate the total duration from smaller time values. *This module needs to be renamed. One already exists on CPAN with [the same name](https://metacpan.org/pod/Time::Duration). I am offering it to the currently existing module.*

## Tests

I have not started writing tests for the inner workings of the modules yet, but will sometime soon.

## Notes

I have made decisions that I will stick with unless given a good reason to change my mind.

All of these modules will remain at version 1 until they are released on CPAN. I never understood why any software would be released as version 0.

The [license](LICENSE.md) is [The "Artistic License"](https://dev.perl.org/licenses/artistic.html) from perl.org. I know it should be written out, but I have no clue about licenses. The sheer guesswork is maddening.

## Thanks!

Thank you for dropping by and looking around at the modules.