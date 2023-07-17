import 'constants/forced_labour_industry.dart';
import 'constants/method_of_control.dart';
import 'constants/gender.dart';
import 'constants/method_of_recruitment.dart';
import 'constants/type_of_exploitation.dart';
import 'person.dart';

/// Victim subclass inherits properties from Person class
class Victim extends Person {
  /// Method of Recruitment
  MethodOfRecruitment? methodOfRecruitment;

  /// Location of Recruitment
  String? locationOfRecruitment;

  /// Methods of Control
  List<MethodOfControl>? methodsOfControl;

  /// Type of Exploitation
  TypeOfExploitation? typeOfExploitation;

  /// Forced Labour Industry
  ForcedLabourIndustry? forcedLabourIndustry;

  /// Type of Sex Exploitation
  String? typeOfSexExploitation;

  /// Location of Exploitation
  String? locationOfExploitation;

  /// Vulnerabilities
  String? vulnerabilities;

  /// Details Of Vulnerabilities
  String? detailsOfVulnerabilities;

  /// Constructor initializes Person properties also
  Victim({
    String? salutation,
    String? firstName,
    String? secondName,
    String? birthdate,
    Gender? gender,
    String? nationality,
    String? title,
    String? email,
    String? homePhone,
    String? mobilePhone,
    String? mailingCity,
    String? mailingCountry,
    String? mailingState,
    String? mailingStreet,
    String? mailingPostalCode,
    this.methodOfRecruitment,
    this.locationOfRecruitment,
    this.methodsOfControl,
    this.typeOfExploitation,
    this.forcedLabourIndustry,
    this.typeOfSexExploitation,
    this.locationOfExploitation,
    this.vulnerabilities,
    this.detailsOfVulnerabilities,
  }) : super(
          salutation: salutation,
          firstName: firstName,
          secondName: secondName,
          birthdate: birthdate,
          gender: gender,
          nationality: nationality,
          title: title,
          email: email,
          homePhone: homePhone,
          mobilePhone: mobilePhone,
          mailingCity: mailingCity,
          mailingCountry: mailingCountry,
          mailingState: mailingState,
          mailingStreet: mailingStreet,
          mailingPostalCode: mailingPostalCode,
        );

  /// Converts object json format defined by HTCDS (v0.2)
  @override
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
      'vic_MethodOfRecruitment': methodOfRecruitment?.text,
      'vic_LocationOfRecruitment': locationOfRecruitment,
      'vic_MethodsOfControl': _methodsToString(methodsOfControl),
      'vic_TypeOfExploitation': typeOfExploitation?.text,
      'vic_ForcedLabourIndustry': forcedLabourIndustry?.text,
      'vic_TypeOfSexExploitation': typeOfSexExploitation,
      'vic_LocationOfExploitation': locationOfExploitation,
      'vic_Vulnerabilities': vulnerabilities,
      'vic_DetailsOfVulnerabilities': detailsOfVulnerabilities,
    };
  }
}

/// Helper function to parse methods of control
String _methodsToString(List<MethodOfControl>? methods) {
  if (methods == null) {
    return '';
  } else {
    List<String> result = [];
    for (final method in methods) {
      result.add(method.text);
    }
    return result.toString();
  }
}
