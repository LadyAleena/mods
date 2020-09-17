# Random generators

These modules are my random generators. They can generate random letters of the alphabet to random bodies of water, depending on the module being used.

* [**Modules**](#modules)
  * [General randomness](#general-randomness)
  * [Random::Body](#randombody)
  * [Random::Color](#randomcolor)
  * [Random::Name](#randomname)
  * [Random::Xanth](#randomxanth)
  * [Random::RPG](#randomrpg)
    * [Random::RPG::MagicItem](#randomrpgmagicitem)
* [**Versioning**](#versioning)

## Modules

All of these modules depend on [Exporter](https://metacpan.org/pod/Exporter). The modules that depend on [Fancy::Rand](../Fancy/Rand.pm) and use `fancy_rand` will be in **bold**. The modules that do not depend on Fancy::Rand will be in *italics*. The others depend on other functions of Fancy::Rand.

### General randomness

* [**Random::Alpha**](Alpha.pm) returns random letters of the English alphabet. It also depends on [Fancy::Open](../Fancy/Open.pm) and [File::ShareDir](https://metacpan.org/pod/File::ShareDir). The data for this module is in [auto/Random/Alpha](../auto/Random/Alpha).
* [**Random::Color**](Color.pm) returns random colors. It also depends on [Fancy::Open](../Fancy/Open.pm) and [File::ShareDir](https://metacpan.org/pod/File::ShareDir). The data for this module is in [auto/Random/Color](../auto/Random/Color).
* [**Random::Descriptor**](Descriptor.pm) returns a random descriptor.
* [**Random::Dragon**](Dragon.pm) returns random dragons from the DreamWorks Dragons, *Harry Potter*, *Pern*, and *Xanth* series and dragons from *Advanced Dungeons & Dragons*, 2nd Edition. It also depends on Fancy::Open, Random::Color, Random::Xanth::Dragon, Random::RPG::Monster, and [File::ShareDir](https://metacpan.org/pod/File::ShareDir). The data for this module is in [auto/Random/Dragon](../auto/Random/Dragon).
* [**Random::FamilyMember**](FamilyMember.pm) returns random family members. It also depends on [List::Util](https://metacpan.org/pod/List::Util).  It is used in the [character mutation generator](../RPG/CharacterMutation.pm).
* [**Random::Food**](Food.pm) returns either a random food or drink. It also depends on Fancy::Open, [Fancy::Map](../Fancy/Map.pm), and [File::ShareDir](https://metacpan.org/pod/File::ShareDir). The data for this module is in [auto/Random/Food](../auto/Random/Food).
* [**Random::GemMetalJewelry**](GemMetalJewelry.pm) returns random gems, metals, and jewelry. It also depends on [Fancy::Join::Grammatical](../Fancy/Join/Grammatical.pm) and [Lingua::EN::Inflect](https://metacpan.org/pod/Lingua::EN::Inflect).
* [*Random::Government*](Government.pm) returns a random government type.
* [*Random::Insanity*](Insanity.pm) returns a random mental disorder. It is used in the character mutation generator.
* [*Random::Military*](Military.pm) returns a random fictional and fantasy military unit. It depends on [Games::Dice](https://metacpan.org/pod/Games::Dice).
* [**Random::Misc**](Misc.pm) returns random miscellaneous things. It is used in the character mutation generator.
* [**Random::Month**](Month.pm) returns a random month by language. It also depends on [Date::Calc](https://metacpan.org/pod/Date::Calc).
* [**Random::Range**](Range.pm) returns random ranges or radiuses. It is used in the character mutation generator.
* [Random::SciFi](SciFi.pm) returns a random *Hitchhikers' Guide to the Galaxy* sector or a random *Men in Black* agent id. It also depends on Random::Alpha.
* [**Random::Size**](Size.pm) returns random relative sizes.
* [Random::SpecialDice](SpecialDice.pm) rolls for a random die, d16, percentile, permille, and permyriad. It also depends on Games::Dice. It is used in the character mutation generator.
* [**Random::Thing**](Thing.pm) returns random things. It is used in the character mutation generator.
* [**Random::Time**](Time.pm) returns a random time unit, random day part, random time, or random frequency. It also depends on Random::SpecialDice and Lingua::EN::Inflect. It is used in the character mutation generator.
* [**Random::Title**](Title.pm) returns random titles given to people.
* [**Random::Water**](Water.pm) returns random running or standing waters and precipitation.

### Random::Body

* [**Random::Body::Function**](Body/Function.pm) returns random body functions. It also depends on [Fancy::Join::Grammatical](../Fancy/Join/Grammatical.pm). It is used in the [character mutation generator](../RPG/CharacterMutation.pm).
* [**Random::Body::Modification**](Body/Modification.pm) returns random body modifications. It also depends on Random::Color, Random::GemMetalJewelry, Random::Size, Random::Misc, Random::RPG::Alignment, [Games::Dice](https://metacpan.org/pod/Games::Dice), and [Lingua::EN::Inflect](https://metacpan.org/pod/Lingua::EN::Inflect). It is used in the character mutation generator.

### Random::Color

While these modules generate random colors, they are not dependent on [Random::Color](Color.pm).

* [*Random::Color::Hex*](Color/Hex.pm) returns random colors. It depends on [Fancy::Split](../Fancy/Split.pm).
* [**Random::Color::VisiBone**](Color/VisiBone.pm) returns random colors based on the Web Designer's Color Reference Poster by [VisiBone](http://www.visibone.com/color/poster4x.html).
* [**Random::Color::Web**](Color/Web.pm) returns random named web colors. It also depends on [Fancy::Open](../Fancy/Open.pm) and [File::ShareDir](https://metacpan.org/pod/File::ShareDir).

### Random::Name

* [*Random::Name::Pattern*](Name/Pattern.pm) returns random names by a specified pattern, based on Random Name by Jason Seeley.
* [*Random::Name::Triador*](Name/Triador.pm) is a name generator for the world of Triador that I am slowly building. It depends on Random::Name::Pattern and [Games::Dice](https://metacpan.org/pod/Games::Dice).

### Random::Xanth

* [**Random::Xanth::Dragon**](Xanth/Dragon.pm) returns random dragons from the *Xanth* series by Piers Anthony.

### Random::RPG

All of Random::RPG modules are based on and are for *Advanced Dungeons & Dragons*, Second Edition. All of the modules listed below are used in the [character mutation generator](../RPG/CharacterMutation.pm) except the specific magic item generators. Please see the [Random::RPG::World readme](RPG/World/readme.md) for more on those modules.

* [**Random::RPG::AbilityScores**](RPG/AbilityScores.pm) returns random ability scores and their game effects.
* [**Random::RPG::Alignment**](RPG/Alignment.pm) returns random alignments.
* [**Random::RPG::Class**](RPG/Class.pm) returns random adventurer classes.
* [Random::RPG::Event](RPG/Event.pm) returns random game events. It also depends on Random::RPG::AbilityScores and Random::RPG::SavingThrow.
* [**Random::RPG::MagicItem**](RPG/MagicItem.pm) returns random magic items. It also depends on Random::Range, Random::SpecialDice, and [Lingua::EN::Inflect](https://metacpan.org/pod/Lingua::EN::Inflect).
* [**Random::RPG::Misc**](RPG/Misc.pm) returns random miscellaneous things related to AD&D role-playing games.
* [**Random::RPG::Monster**](RPG/Monster.pm) returns random monsters from the I<Monstrous Manual> and its compendiums. It also depends on Fancy::Map and [List::Util](https://metacpan.org/pod/List::Util).
* [**Random::RPG::SavingThrow**](RPG/SavingThrow.pm) returns random saving throws.
* [**Random::RPG::SpecialAttack**](RPG/SpecialAttack.pm) returns random special attacks. It also depends on [Fancy::Join::Defined](../Fancy/Join/Defined.pm), Random::SpecialDice, and Random::Time.
* [Random::RPG::Spell](RPG/Spell.pm) returns random spells and spell actions. It also depends on Random::SpecialDice and [Lingua::EN::Inflect](https://metacpan.org/pod/Lingua::EN::Inflect).
* [**Random::RPG::Weapon**](RPG/Weapon.pm) returns random weapons. It also depends on [File::ShareDir](https://metacpan.org/pod/File::ShareDir), [Games::Dice](https://metacpan.org/pod/Games::Dice), [String::Util](https://metacpan.org/pod/String::Util), and [Text::CSV](https://metacpan.org/pod/Text::CSV).
* [Random::RPG::WildPsionics](RPG/WildPsionics.pm) returns random wild psionic talents. It also depends on File::ShareDir, Games::Dice, Lingua::EN::Inflect, [List::Util](https://metacpan.org/pod/List::Util), and Text::CSV.

#### Random::RPG::MagicItem

* [Random::RPG::MagicItem::Giant](RPG/MagicItem/Giant.pm) returns random magic items based on giants. It also depends on Random::RPG::MagicItem.
* [Random::RPG::MagicItem::Ring::SpellDoubling](RPG/MagicItem/Ring/SpellDoubling.pm) makes or randomly returns a Ring of Spell Doubling.

## Versioning

I came up with a version scheme for the modules using `fancy_rand` from Fancy::Rand.

* The version will increment by 0.001 if I add an item to a list in the hash.
* The version will increment by 0.010 if I add a list to the hash. This could lead to a new sub function.
* The version will increment by 0.100 if I add a hash to the module. This would lead to a new function and maybe sub-functions of it.
* The version will increment by 1.000 if the interface changes.

All the incrementation above is cumulative. I could get really creative one day and add items to lists, more lists to the hash, and a new hash all at the same time. So, the version could go from 1.000 to 1.124. That could mean I added 124 items to the various lists or added 4 items to lists, 2 new lists, and 1 new hash.

I have not come up with a solid versioning system for the rest of the modules.
