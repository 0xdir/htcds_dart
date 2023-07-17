/// Options for gender
enum Gender {
  male('Male'),
  female('Female'),
  transgenderOrNonconforming('Transgender/NonConforming'),
  unknown('Unknown');

  const Gender(this.text);

  final String text;
}
