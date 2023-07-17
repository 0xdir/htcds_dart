import 'package:htcds/htcds.dart';

/// This example illustrates how to use the Case, Person and Victim
/// objects that follow the Human Trafficking Case Data Schema (v0.2).
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
