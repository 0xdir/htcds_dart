import 'constants/gender.dart';

/// A person class, to be associated with a case.
class Person {
  /// Salutation
  String? salutation;

  /// First Name
  String? firstName;

  /// Second Name
  String? secondName;

  /// Birthdate
  String? birthdate;

  /// Gender
  Gender? gender;

  /// Nationality
  String? nationality;

  /// Title
  String? title;

  /// Email
  String? email;

  /// Home Phone
  String? homePhone;

  /// Mobile Phone
  String? mobilePhone;

  /// Mailing City
  String? mailingCity;

  /// Mailing Country
  String? mailingCountry;

  /// Mailing State/Province
  String? mailingState;

  /// Mailing Street
  String? mailingStreet;

  /// Mailing Zip/Postal Code
  String? mailingPostalCode;

  /// Constructor
  Person({
    this.salutation,
    this.firstName,
    this.secondName,
    this.birthdate,
    this.gender,
    this.nationality,
    this.title,
    this.email,
    this.homePhone,
    this.mobilePhone,
    this.mailingCity,
    this.mailingCountry,
    this.mailingState,
    this.mailingStreet,
    this.mailingPostalCode,
  });

  /// Converts object json format defined by HTCDS (v0.2)
  Map<String, dynamic> toJson() {
    return {
      'prs_Salutation': salutation,
      'prs_FirstName': firstName,
      'prs_SecondName': secondName,
      'prs_Birthdate': birthdate,
      'prs_Gender': gender?.text,
      'prs_Nationality': nationality,
      'prs_Title': title,
      'prs_Email': email,
      'prs_HomePhone': homePhone,
      'prs_MobilePhone': mobilePhone,
      'prs_MailingCity': mailingCity,
      'prs_MailingCountry': mailingCountry,
      'prs_MailingState': mailingState,
      'prs_MailingStreet': mailingStreet,
      'prs_MailingPostalCode': mailingPostalCode,
    };
  }
}
