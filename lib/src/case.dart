import 'person.dart';

/// The main object
///
/// Represents a Human Trafficking Case
///
/// Follows the Human Trafficking Case Data Standard (v0.2)
///
/// See: https://github.com/UNMigration/HTCDS
///
/// The Human Trafficking Case Data Standard (HTCDS) is a global
/// format and common approach to collecting and recording case data
/// related to human trafficking. The standard will enable organizations
/// around the world to collect and potentially share information
/// related to human trafficking cases in a consistent way.
///
/// The HTCDS is intended to be a reference for organizations
/// handling cases related to human trafficking, technology
/// service providers and independent software vendors (ISVs).
class Case {
  /// Case Owner
  String? caseOwner;

  /// Status
  String? status;

  /// Referring Organisation
  String? referringOrganisation;

  /// Incoming Referral Date
  String? incomingReferralDate;

  /// Referring Primary Case Worker
  String? referringPrimaryCaseWorker;

  /// Reason for Incoming Referral
  String? reasonForIncomingReferral;

  /// Incoming Referral Details
  String? incomingReferralDetails;

  /// Referred Organisation
  String? referredOrganisation;

  /// Referred Primary Case Worker
  String? referredPrimaryCaseWorker;

  /// Reason for Outgoing Referral
  String? reasonForOutgoingReferral;

  /// Outgoing Referral Date
  String? outgoingReferralDate;

  /// Outgoing Referral Details
  String? outgoingReferralDetails;

  /// Reason for Case Closure
  String? reasonForCaseClosure;

  /// List of persons associated with this case
  List<Person>? persons;

  /// Constructor
  Case({
    this.caseOwner,
    this.status,
    this.referringOrganisation,
    this.incomingReferralDate,
    this.referringPrimaryCaseWorker,
    this.reasonForIncomingReferral,
    this.incomingReferralDetails,
    this.referredOrganisation,
    this.referredPrimaryCaseWorker,
    this.reasonForOutgoingReferral,
    this.outgoingReferralDate,
    this.outgoingReferralDetails,
    this.reasonForCaseClosure,
    this.persons,
  });

  /// Converts object json format defined by HTCDS (v0.2)
  Map<String, dynamic> toJson() {
    return {
      'cas_CaseOwner': caseOwner,
      'cas_Status': status,
      'cas_ReferringOrganisation': referringOrganisation,
      'cas_IncomingReferralDate': incomingReferralDate,
      'cas_ReferringPrimaryCaseWorker': referringPrimaryCaseWorker,
      'cas_ReasonForIncomingReferral': reasonForIncomingReferral,
      'cas_IncomingReferralDetails': incomingReferralDetails,
      'cas_ReferredOrganisation': referredOrganisation,
      'cas_ReferredPrimaryCaseWorker': referredPrimaryCaseWorker,
      'cas_ReasonForOutgoingReferral': reasonForOutgoingReferral,
      'cas_OutgoingReferralDate': outgoingReferralDate,
      'cas_OutgoingReferralDetails': outgoingReferralDetails,
      'cas_ReasonForCaseClosure': reasonForCaseClosure,

      /// Not in schema, additional property
      'cas_Persons': _toString(persons),
    };
  }
}

/// Helper function to parse list of persons
String _toString(List<Person>? persons) {
  if (persons == null) {
    return [].toString();
  } else {
    List<String> result = [];
    for (final person in persons) {
      result.add(person.toJson().toString());
    }
    return result.toString();
  }
}
