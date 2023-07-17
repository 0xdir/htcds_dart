/// Options for method of control
///
/// Refer to field definitions:
/// https://github.com/UNMigration/HTCDS/blob/master/Field%20Definitions.md
enum MethodOfControl {
  physicalThreats('Physical threats'),
  threatsOfLawEnforcement('Threats of law enforcement'),
  threatensChildrenOrFamily('Threatens children/family'),
  debtBondage('Debt bondage'),
  falsePromises('False promises'),
  physicalAbuse('Physical abuse'),
  sexualAbuse('Sexual abuse'),
  takesEarnings('Takes earnings'),
  restrictsFinancialAccess('Restricts financial access'),
  restrictsMedicalCare('Restricts medical care'),
  withholdsNecessities('Withholds necessities'),
  psychologicalAbuse('Psychological abuse'),
  psychoactiveSubstance('Psychoactive substance'),
  excessiveWorkingHours('Excessive working hours'),
  withholdsDocuments('Withholds documents'),
  other('Other');

  const MethodOfControl(this.text);

  final String text;
}
