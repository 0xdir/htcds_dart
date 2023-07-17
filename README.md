[![pub package](https://img.shields.io/pub/v/htcds.svg)](https://pub.dev/packages/htcds)
[![package publisher](https://img.shields.io/pub/publisher/htcds.svg)](https://pub.dev/packages/htcds/publisher)

This library comprises Human Trafficking Case Data Standard (HTCDS v0.2) 
objects, for easy creation, storage and transmission of case data
related to human trafficking.

The Human Trafficking Case Data Standard ([HTCDS]) is a global
format and common approach to collecting and recording case data
related to human trafficking. The standard will enable organizations
around the world to collect and potentially share information
related to human trafficking cases in a consistent way.

[HTCDS]: https://hapi.etica.ai/eng-Latn/data-schema/UN/HTCDS/HTCDS.json

The HTCDS is intended to be a reference for organizations
handling cases related to human trafficking, technology
service providers and independent software vendors (ISVs).

This is a community maintained library which has no association 
with the International Organization for Migration (IOM).

## Using

The easiest way to use this library is via the top-level ```Case, Person, and Victim``` classes.

```dart
import 'package:htcds/htcds.dart';

void main() {
  /// Create the Responding Officer's profile
  Person officer1 = Person(
    salutation: 'Mr',
    firstName: 'John',
    secondName: 'Doe',
    title: 'SGT',
  );

  /// Create the Victim's profile
  Victim victim1 = Victim(
      salutation: 'Ms',
      firstName: 'Jane',
      secondName: 'Doe',
      gender: Gender.female,
      /// Use Enums found in /constants
      methodOfRecruitment: MethodOfRecruitment.internet,
      methodsOfControl: [
        MethodOfControl.falsePromises,
        MethodOfControl.physicalAbuse,
      ]);

  /// Create the case
  Case case1 = Case(
    caseOwner: 'John',
    status: 'open',
    persons: [officer1, victim1],
  );

  /// Do stuff with the case
  ///
  /// eg. transmit to another organization expecting the data
  /// in HTCDS schema
  print(case1.toJson());
}
```

## Getting Help

Submit an issue on [github].

[github]: https://github.com/0xdir/htcds_dart


## This work builds upon:
1. [Human Trafficking Case Data Standard (HTCDS)](https://github.com/UNMigration/HTCDS)

Do check out their repo too!

## How to contribute

All feedback and suggestions for improvements are welcome:

1. Open a discussion on [github]
2. Discuss proposed changes
3. Submit a PR (optional)

[github]: https://github.com/0xdir/htcds_dart

## Support my work

This package is possible thanks to the people and companies
who donate money, services or time to keep the project running.

If you're interested in becoming a Sponsor, Backer or Contributor
to expand the project, please visit my [github sponsors page].

[github sponsors page]: https://github.com/sponsors/0xdir

Or buy me coffee at `0xdir.near`.