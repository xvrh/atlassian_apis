// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class AtlassianAccountUser {
  AtlassianAccountUser();

  factory AtlassianAccountUser.fromJson(Map<String, Object?> json) {
    return AtlassianAccountUser();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ExtendedProfile {
  final JobTitle? jobTitle;
  final Organization? organization;
  final Department? department;
  final Location? location;

  ExtendedProfile(
      {this.jobTitle, this.organization, this.department, this.location});

  factory ExtendedProfile.fromJson(Map<String, Object?> json) {
    return ExtendedProfile(
      jobTitle: json[r'job_title'] != null
          ? JobTitle.fromJson(json[r'job_title']! as Map<String, Object?>)
          : null,
      organization: json[r'organization'] != null
          ? Organization.fromJson(
              json[r'organization']! as Map<String, Object?>)
          : null,
      department: json[r'department'] != null
          ? Department.fromJson(json[r'department']! as Map<String, Object?>)
          : null,
      location: json[r'location'] != null
          ? Location.fromJson(json[r'location']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var jobTitle = this.jobTitle;
    var organization = this.organization;
    var department = this.department;
    var location = this.location;

    final json = <String, Object?>{};
    if (jobTitle != null) {
      json[r'job_title'] = jobTitle.toJson();
    }
    if (organization != null) {
      json[r'organization'] = organization.toJson();
    }
    if (department != null) {
      json[r'department'] = department.toJson();
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    return json;
  }

  ExtendedProfile copyWith(
      {JobTitle? jobTitle,
      Organization? organization,
      Department? department,
      Location? location}) {
    return ExtendedProfile(
      jobTitle: jobTitle ?? this.jobTitle,
      organization: organization ?? this.organization,
      department: department ?? this.department,
      location: location ?? this.location,
    );
  }
}

/// A unique account identifier
class AccountId {
  AccountId();

  factory AccountId.fromJson(Map<String, Object?> json) {
    return AccountId();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// A nickname for the user in content references to the user.
///
/// _Constraints_
/// - `maxLength`: The maximum nickname length is 30 characters
/// - `validCharacters`: Control and null characters are not allowed
class Nickname {
  Nickname();

  factory Nickname.fromJson(Map<String, Object?> json) {
    return Nickname();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The display name of the user. Should be used for contextual rendering of
/// content authorship.
///
/// _Constraints_
/// - `maxLength`: The maximum display name length is 100 characters
/// - `validCharacters`: Control and null characters are not allowed
class Name {
  Name();

  factory Name.fromJson(Map<String, Object?> json) {
    return Name();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// An IETF BCP 47 locale string
class Locale {
  Locale();

  factory Locale.fromJson(Map<String, Object?> json) {
    return Locale();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// A unix zoneinfo string describing the local timezone of the user
class ZoneInfo {
  ZoneInfo();

  factory ZoneInfo.fromJson(Map<String, Object?> json) {
    return ZoneInfo();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The email address of the user.
///
/// _Constraints_
/// - `partMaxLength`: The maximum length of the user part and of any
///   subdomain is 255 characters.
/// - `validCharacters`: Control and null characters are not allowed
class Email {
  Email();

  factory Email.fromJson(Map<String, Object?> json) {
    return Email();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The job title of the user
class JobTitle {
  JobTitle();

  factory JobTitle.fromJson(Map<String, Object?> json) {
    return JobTitle();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The organisation to which the user belongs
class Organization {
  Organization();

  factory Organization.fromJson(Map<String, Object?> json) {
    return Organization();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The department in which the user works
class Department {
  Department();

  factory Department.fromJson(Map<String, Object?> json) {
    return Department();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The physical location of the user
class Location {
  Location();

  factory Location.fromJson(Map<String, Object?> json) {
    return Location();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// A secret for use by the user in basic authentication flows
class Password {
  Password();

  factory Password.fromJson(Map<String, Object?> json) {
    return Password();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class AccountCharacteristics {
  final bool notMentionable;

  AccountCharacteristics({bool? notMentionable})
      : notMentionable = notMentionable ?? false;

  factory AccountCharacteristics.fromJson(Map<String, Object?> json) {
    return AccountCharacteristics(
      notMentionable: json[r'not_mentionable'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var notMentionable = this.notMentionable;

    final json = <String, Object?>{};
    json[r'not_mentionable'] = notMentionable;
    return json;
  }

  AccountCharacteristics copyWith({bool? notMentionable}) {
    return AccountCharacteristics(
      notMentionable: notMentionable ?? this.notMentionable,
    );
  }
}

/// The absolute URI (RFC3986) to the avatar name of the user.
class Avatar {
  Avatar();

  factory Avatar.fromJson(Map<String, Object?> json) {
    return Avatar();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The type of account
class AccountType {
  AccountType();

  factory AccountType.fromJson(Map<String, Object?> json) {
    return AccountType();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The lifecycle status of the account
class AccountStatus {
  AccountStatus();

  factory AccountStatus.fromJson(Map<String, Object?> json) {
    return AccountStatus();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class User {
  final AccountId accountId;
  final AccountType accountType;
  final AccountStatus accountStatus;
  final Name name;
  final Avatar picture;
  final Email email;
  final AccountCharacteristics? characteristics;

  User(
      {required this.accountId,
      required this.accountType,
      required this.accountStatus,
      required this.name,
      required this.picture,
      required this.email,
      this.characteristics});

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      accountId: AccountId.fromJson(
          json[r'account_id'] as Map<String, Object?>? ?? const {}),
      accountType: AccountType.fromJson(
          json[r'account_type'] as Map<String, Object?>? ?? const {}),
      accountStatus: AccountStatus.fromJson(
          json[r'account_status'] as Map<String, Object?>? ?? const {}),
      name: Name.fromJson(json[r'name'] as Map<String, Object?>? ?? const {}),
      picture: Avatar.fromJson(
          json[r'picture'] as Map<String, Object?>? ?? const {}),
      email:
          Email.fromJson(json[r'email'] as Map<String, Object?>? ?? const {}),
      characteristics: json[r'characteristics'] != null
          ? AccountCharacteristics.fromJson(
              json[r'characteristics']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var accountType = this.accountType;
    var accountStatus = this.accountStatus;
    var name = this.name;
    var picture = this.picture;
    var email = this.email;
    var characteristics = this.characteristics;

    final json = <String, Object?>{};
    json[r'account_id'] = accountId.toJson();
    json[r'account_type'] = accountType.toJson();
    json[r'account_status'] = accountStatus.toJson();
    json[r'name'] = name.toJson();
    json[r'picture'] = picture.toJson();
    json[r'email'] = email.toJson();
    if (characteristics != null) {
      json[r'characteristics'] = characteristics.toJson();
    }
    return json;
  }

  User copyWith(
      {AccountId? accountId,
      AccountType? accountType,
      AccountStatus? accountStatus,
      Name? name,
      Avatar? picture,
      Email? email,
      AccountCharacteristics? characteristics}) {
    return User(
      accountId: accountId ?? this.accountId,
      accountType: accountType ?? this.accountType,
      accountStatus: accountStatus ?? this.accountStatus,
      name: name ?? this.name,
      picture: picture ?? this.picture,
      email: email ?? this.email,
      characteristics: characteristics ?? this.characteristics,
    );
  }
}

class ManageabilityRestrictionReason {
  /// The property or action is restricted because:
  ///
  /// - _administrative_: The property or action is restricted
  ///   because it is intended exclusively for administrative use
  /// - _administrative.notMyself_: The property or action
  ///   is restricted because it is intended for administrative use and
  ///   is forbidden for self-use.
  /// - _myselfOnly_: The property or action is restricted because it is
  ///   available only to the user which the account belongs too
  /// - _managedAccount_: The property or action is restricted because it is
  ///   available only to the user's organisation administrator
  /// - _externalDirectory.scim_: The property/action is restricted because
  ///   the user is managed by an external SCIM directory
  /// - _externalDirectory.google_: The property/action is restricted because
  ///   the user is managed by an external Google directory
  /// - _blocked.exportControl_: The property/action is restricted because
  ///   the user is blocked by US export control
  final ManageabilityRestrictionReasonKey key;

  ManageabilityRestrictionReason({required this.key});

  factory ManageabilityRestrictionReason.fromJson(Map<String, Object?> json) {
    return ManageabilityRestrictionReason(
      key: ManageabilityRestrictionReasonKey.fromValue(
          json[r'key'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    return json;
  }

  ManageabilityRestrictionReason copyWith(
      {ManageabilityRestrictionReasonKey? key}) {
    return ManageabilityRestrictionReason(
      key: key ?? this.key,
    );
  }
}

class ManageabilityRestrictionReasonKey {
  static const administrative =
      ManageabilityRestrictionReasonKey._('administrative');
  static const administrativeNotMyself =
      ManageabilityRestrictionReasonKey._('administrative.notMyself');
  static const myselfOnly = ManageabilityRestrictionReasonKey._('myselfOnly');
  static const managedAccount =
      ManageabilityRestrictionReasonKey._('managedAccount');
  static const externalDirectoryScim =
      ManageabilityRestrictionReasonKey._('externalDirectory.scim');
  static const externalDirectoryGoogle =
      ManageabilityRestrictionReasonKey._('externalDirectory.google');
  static const blockedExportControl =
      ManageabilityRestrictionReasonKey._('blocked.exportControl');

  static const values = [
    administrative,
    administrativeNotMyself,
    myselfOnly,
    managedAccount,
    externalDirectoryScim,
    externalDirectoryGoogle,
    blockedExportControl,
  ];
  final String value;

  const ManageabilityRestrictionReasonKey._(this.value);

  static ManageabilityRestrictionReasonKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ManageabilityRestrictionReasonKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// You are allowed to take or write the action/property
class ManageabilityAllowed {
  final bool allowed;

  ManageabilityAllowed({required this.allowed});

  factory ManageabilityAllowed.fromJson(Map<String, Object?> json) {
    return ManageabilityAllowed(
      allowed: json[r'allowed'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var allowed = this.allowed;

    final json = <String, Object?>{};
    json[r'allowed'] = allowed;
    return json;
  }

  ManageabilityAllowed copyWith({bool? allowed}) {
    return ManageabilityAllowed(
      allowed: allowed ?? this.allowed,
    );
  }
}

/// You are not allowed to take or write the action/property
class ManageabilityUnallowed {
  final bool allowed;
  final ManageabilityRestrictionReason reason;

  ManageabilityUnallowed({required this.allowed, required this.reason});

  factory ManageabilityUnallowed.fromJson(Map<String, Object?> json) {
    return ManageabilityUnallowed(
      allowed: json[r'allowed'] as bool? ?? false,
      reason: ManageabilityRestrictionReason.fromJson(
          json[r'reason'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var allowed = this.allowed;
    var reason = this.reason;

    final json = <String, Object?>{};
    json[r'allowed'] = allowed;
    json[r'reason'] = reason.toJson();
    return json;
  }

  ManageabilityUnallowed copyWith(
      {bool? allowed, ManageabilityRestrictionReason? reason}) {
    return ManageabilityUnallowed(
      allowed: allowed ?? this.allowed,
      reason: reason ?? this.reason,
    );
  }
}

class ManageabilityRuleSimple {
  ManageabilityRuleSimple();

  factory ManageabilityRuleSimple.fromJson(Map<String, Object?> json) {
    return ManageabilityRuleSimple();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// Describes your permissions to change the object. Each key should be a valid
/// JSON path of the target object.
class ManageabilityRuleObjectMutability {
  ManageabilityRuleObjectMutability();

  factory ManageabilityRuleObjectMutability.fromJson(
      Map<String, Object?> json) {
    return ManageabilityRuleObjectMutability();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The body was not parsed successfully.
class ResponseBadRequestBodyParseFailure {
  final String key;

  ResponseBadRequestBodyParseFailure({required this.key});

  factory ResponseBadRequestBodyParseFailure.fromJson(
      Map<String, Object?> json) {
    return ResponseBadRequestBodyParseFailure(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ResponseBadRequestBodyParseFailure copyWith({String? key}) {
    return ResponseBadRequestBodyParseFailure(
      key: key ?? this.key,
    );
  }
}

class ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem {
  /// The key for a constraint that the submitted value has violated.
  /// See documentation for any submittable model for a set of constraint keys
  /// and definitions.
  final String key;

  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem(
      {required this.key});

  factory ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem.fromJson(
      Map<String, Object?> json) {
    return ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem
      copyWith({String? key}) {
    return ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem(
      key: key ?? this.key,
    );
  }
}

class ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem {
  /// The JSON path to the field with an invalid value
  final String field;
  final List<
          ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem>
      violations;

  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem(
      {required this.field, required this.violations});

  factory ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem.fromJson(
      Map<String, Object?> json) {
    return ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem(
      field: json[r'field'] as String? ?? '',
      violations: (json[r'violations'] as List<Object?>?)
              ?.map((i) =>
                  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem
                      .fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var violations = this.violations;

    final json = <String, Object?>{};
    json[r'field'] = field;
    json[r'violations'] = violations.map((i) => i.toJson()).toList();
    return json;
  }

  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem copyWith(
      {String? field,
      List<ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItemViolationsItem>?
          violations}) {
    return ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem(
      field: field ?? this.field,
      violations: violations ?? this.violations,
    );
  }
}

class ResponseBadRequestFieldConstraintsViolatedContext {
  final List<
          ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem>
      fieldViolations;

  ResponseBadRequestFieldConstraintsViolatedContext(
      {required this.fieldViolations});

  factory ResponseBadRequestFieldConstraintsViolatedContext.fromJson(
      Map<String, Object?> json) {
    return ResponseBadRequestFieldConstraintsViolatedContext(
      fieldViolations: (json[r'fieldViolations'] as List<Object?>?)
              ?.map((i) =>
                  ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem
                      .fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var fieldViolations = this.fieldViolations;

    final json = <String, Object?>{};
    json[r'fieldViolations'] = fieldViolations.map((i) => i.toJson()).toList();
    return json;
  }

  ResponseBadRequestFieldConstraintsViolatedContext copyWith(
      {List<ResponseBadRequestFieldConstraintsViolatedContextFieldViolationsItem>?
          fieldViolations}) {
    return ResponseBadRequestFieldConstraintsViolatedContext(
      fieldViolations: fieldViolations ?? this.fieldViolations,
    );
  }
}

/// The submitted JSON entity had one or more invalid properties.
/// For each invalid field, a set of violated constraint keys are returned.
class ResponseBadRequestFieldConstraintsViolated {
  final String key;
  final ResponseBadRequestFieldConstraintsViolatedContext context;

  ResponseBadRequestFieldConstraintsViolated(
      {required this.key, required this.context});

  factory ResponseBadRequestFieldConstraintsViolated.fromJson(
      Map<String, Object?> json) {
    return ResponseBadRequestFieldConstraintsViolated(
      key: json[r'key'] as String? ?? '',
      context: ResponseBadRequestFieldConstraintsViolatedContext.fromJson(
          json[r'context'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var context = this.context;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'context'] = context.toJson();
    return json;
  }

  ResponseBadRequestFieldConstraintsViolated copyWith(
      {String? key,
      ResponseBadRequestFieldConstraintsViolatedContext? context}) {
    return ResponseBadRequestFieldConstraintsViolated(
      key: key ?? this.key,
      context: context ?? this.context,
    );
  }
}

/// You are not authorized to access this resource
class ResponseForbiddenBasic {
  final ResponseForbiddenBasicKey key;

  ResponseForbiddenBasic({required this.key});

  factory ResponseForbiddenBasic.fromJson(Map<String, Object?> json) {
    return ResponseForbiddenBasic(
      key: ResponseForbiddenBasicKey.fromValue(json[r'key'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    return json;
  }

  ResponseForbiddenBasic copyWith({ResponseForbiddenBasicKey? key}) {
    return ResponseForbiddenBasic(
      key: key ?? this.key,
    );
  }
}

class ResponseForbiddenBasicKey {
  static const forbidden = ResponseForbiddenBasicKey._('forbidden');

  static const values = [
    forbidden,
  ];
  final String value;

  const ResponseForbiddenBasicKey._(this.value);

  static ResponseForbiddenBasicKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResponseForbiddenBasicKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ResponseForbiddenAction {
  final ResponseForbiddenActionKey key;
  final ManageabilityUnallowed context;

  ResponseForbiddenAction({required this.key, required this.context});

  factory ResponseForbiddenAction.fromJson(Map<String, Object?> json) {
    return ResponseForbiddenAction(
      key: ResponseForbiddenActionKey.fromValue(json[r'key'] as String? ?? ''),
      context: ManageabilityUnallowed.fromJson(
          json[r'context'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var context = this.context;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    json[r'context'] = context.toJson();
    return json;
  }

  ResponseForbiddenAction copyWith(
      {ResponseForbiddenActionKey? key, ManageabilityUnallowed? context}) {
    return ResponseForbiddenAction(
      key: key ?? this.key,
      context: context ?? this.context,
    );
  }
}

class ResponseForbiddenActionKey {
  static const forbiddenAction =
      ResponseForbiddenActionKey._('forbidden.action');

  static const values = [
    forbiddenAction,
  ];
  final String value;

  const ResponseForbiddenActionKey._(this.value);

  static ResponseForbiddenActionKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResponseForbiddenActionKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ResponseForbiddenUnclaimedDomainContext {
  final String domain;

  ResponseForbiddenUnclaimedDomainContext({required this.domain});

  factory ResponseForbiddenUnclaimedDomainContext.fromJson(
      Map<String, Object?> json) {
    return ResponseForbiddenUnclaimedDomainContext(
      domain: json[r'domain'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var domain = this.domain;

    final json = <String, Object?>{};
    json[r'domain'] = domain;
    return json;
  }

  ResponseForbiddenUnclaimedDomainContext copyWith({String? domain}) {
    return ResponseForbiddenUnclaimedDomainContext(
      domain: domain ?? this.domain,
    );
  }
}

class ResponseForbiddenUnclaimedDomain {
  final ResponseForbiddenUnclaimedDomainKey key;
  final ResponseForbiddenUnclaimedDomainContext? context;

  ResponseForbiddenUnclaimedDomain({required this.key, this.context});

  factory ResponseForbiddenUnclaimedDomain.fromJson(Map<String, Object?> json) {
    return ResponseForbiddenUnclaimedDomain(
      key: ResponseForbiddenUnclaimedDomainKey.fromValue(
          json[r'key'] as String? ?? ''),
      context: json[r'context'] != null
          ? ResponseForbiddenUnclaimedDomainContext.fromJson(
              json[r'context']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var context = this.context;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    if (context != null) {
      json[r'context'] = context.toJson();
    }
    return json;
  }

  ResponseForbiddenUnclaimedDomain copyWith(
      {ResponseForbiddenUnclaimedDomainKey? key,
      ResponseForbiddenUnclaimedDomainContext? context}) {
    return ResponseForbiddenUnclaimedDomain(
      key: key ?? this.key,
      context: context ?? this.context,
    );
  }
}

class ResponseForbiddenUnclaimedDomainKey {
  static const forbiddenUnclaimedDomain =
      ResponseForbiddenUnclaimedDomainKey._('forbidden.unclaimedDomain');

  static const values = [
    forbiddenUnclaimedDomain,
  ];
  final String value;

  const ResponseForbiddenUnclaimedDomainKey._(this.value);

  static ResponseForbiddenUnclaimedDomainKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResponseForbiddenUnclaimedDomainKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ResponseForbiddenObjectMutability {
  final ResponseForbiddenObjectMutabilityKey key;
  final ManageabilityRuleObjectMutability context;

  ResponseForbiddenObjectMutability({required this.key, required this.context});

  factory ResponseForbiddenObjectMutability.fromJson(
      Map<String, Object?> json) {
    return ResponseForbiddenObjectMutability(
      key: ResponseForbiddenObjectMutabilityKey.fromValue(
          json[r'key'] as String? ?? ''),
      context: ManageabilityRuleObjectMutability.fromJson(
          json[r'context'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var context = this.context;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    json[r'context'] = context.toJson();
    return json;
  }

  ResponseForbiddenObjectMutability copyWith(
      {ResponseForbiddenObjectMutabilityKey? key,
      ManageabilityRuleObjectMutability? context}) {
    return ResponseForbiddenObjectMutability(
      key: key ?? this.key,
      context: context ?? this.context,
    );
  }
}

class ResponseForbiddenObjectMutabilityKey {
  static const forbiddenFieldMutation =
      ResponseForbiddenObjectMutabilityKey._('forbidden.fieldMutation');

  static const values = [
    forbiddenFieldMutation,
  ];
  final String value;

  const ResponseForbiddenObjectMutabilityKey._(this.value);

  static ResponseForbiddenObjectMutabilityKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResponseForbiddenObjectMutabilityKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}
