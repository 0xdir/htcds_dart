import 'package:htcds/htcds.dart';
import 'package:test/test.dart';

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

  test('Should return case owner', () {
    expect(case1.toJson()['cas_CaseOwner'], 'John');
  });

  test('Should return gender text', () {
    expect(victim1.toJson()['prs_Gender'], 'Female');
  });

  test('Should return method of recruitment text', () {
    expect(victim1.toJson()['vic_MethodOfRecruitment'],
        'Internet (social media, online advertisement)');
  });
}
