/// Options for method of recruitment
enum MethodOfRecruitment {
  internet('Internet (social media, online advertisement)'),
  educationalFacility('Educational Facility'),
  publicArea('Public Area'),
  shelter('Shelter'),
  work('Work'),
  unknown('Unknown');

  const MethodOfRecruitment(this.text);

  final String text;
}
