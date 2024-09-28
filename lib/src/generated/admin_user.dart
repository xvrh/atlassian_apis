// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: provide_deprecation_message

class AdminUserApi {
  final ApiClient _client;

  AdminUserApi(this._client);

  /// Api Token APIs
  late final apiTokens = ApiTokensApi(_client);

  /// Email APIs
  late final email = EmailApi(_client);

  /// Lifecycle APIs
  late final lifecycle = LifecycleApi(_client);

  /// Manage APIs
  late final manage = ManageApi(_client);

  /// Profile APIs
  late final profile = ProfileApi(_client);

  void close() => _client.close();
}

class ApiTokensApi {
  final ApiClient _client;

  ApiTokensApi(this._client);

  /// Gets the API tokens owned by the specified user.
  Future<List<ApiTokenModel>> getAPITokens(String accountId) async {
    return (await _client.send(
      'get',
      'users/{account_id}/manage/api-tokens',
      pathParameters: {
        'account_id': accountId,
      },
    ) as List<Object?>)
        .map((i) =>
            ApiTokenModel.fromJson(i as Map<String, Object?>? ?? const {}))
        .toList();
  }

  /// Deletes a specifid API token by ID.
  Future<void> deleteAPIToken(
      {required String accountId, required String tokenId}) async {
    await _client.send(
      'delete',
      'users/{account_id}/manage/api-tokens/{tokenId}',
      pathParameters: {
        'account_id': accountId,
        'tokenId': tokenId,
      },
    );
  }
}

class EmailApi {
  final ApiClient _client;

  EmailApi(this._client);

  /// Sets the specified user's email address. Before using this endpoint, you
  /// must [verify the target domain](https://confluence.atlassian.com/x/gjcWN)
  /// as the new email address will be considered verified.
  /// The permission to make use of this resource is exposed by the `email.set`
  /// privilege.
  /// This call invalidates all active sessions.
  Future<void> setEmail(
      {required String accountId, required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'users/{account_id}/manage/email',
      pathParameters: {
        'account_id': accountId,
      },
      body: body,
    );
  }
}

class LifecycleApi {
  final ApiClient _client;

  LifecycleApi(this._client);

  ///
  /// Deactivate the specified user account. The permission to make use of this
  /// resource is exposed by the `lifecycle.enablement` privilege.
  /// You can optionally set a message associated with the block. If none is
  /// supplied, a default message will be used.
  Future<void> deactivateAUser(
      {required String accountId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'users/{account_id}/manage/lifecycle/disable',
      pathParameters: {
        'account_id': accountId,
      },
      body: body,
    );
  }

  /// Activates the specified user account. The permission to make use of this
  /// resource is exposed by the
  /// `lifecycle.enablement` privilege.
  ///
  /// User accounts that were deactivated due to US export controls cannot be
  /// reactivated using this API. If you believe
  /// the account was incorrectly blocked, please contact
  /// [Atlassian Support](https://support.atlassian.com/contact).
  ///
  /// User accounts that have been deleted need the deletion to be canceled
  /// before reactivating.
  Future<void> activateAUser(String accountId) async {
    await _client.send(
      'post',
      'users/{account_id}/manage/lifecycle/enable',
      pathParameters: {
        'account_id': accountId,
      },
    );
  }

  /// This API will:
  /// - Delete a managed account from Atlassian Administration.
  /// - Withdraw complete access to all products and services listed in
  /// Atlassian Administration.
  /// - Remove reference to the account from all lists under Directory in
  /// Atlassian Administration.
  ///
  /// Specifications:
  /// - Deleting an account is permanent. If you think you’ll need the account
  /// again, we recommend you
  /// [deactivate](https://support.atlassian.com/user-management/docs/deactivate-a-managed-account/)
  /// it instead.
  /// - Before you permanently delete the account, you’ll have a 14-day grace
  /// period, during which the account will appear as temporarily deactivated.
  ///
  /// Learn more about
  /// [deleting a managed account](https://support.atlassian.com/user-management/docs/delete-a-managed-account/).
  ///
  /// Learn the fastest way to get the paramaters and delete account with a
  /// detailed
  /// [tutorial](https://developer.atlassian.com/cloud/admin/user-management/delete-managed-account/#delete-account).
  ///
  ///
  /// The permission to make use of this resource is exposed by the
  /// `lifecycle.delete` privilege. Learn more about
  /// [Get user management permissions API](https://developer.atlassian.com/cloud/admin/user-management/rest/api-group-manage/#api-users-account-id-manage-get)
  /// to manage the specified user.
  Future<void> deleteAccount(String accountId) async {
    await _client.send(
      'post',
      'users/{account_id}/manage/lifecycle/delete',
      pathParameters: {
        'account_id': accountId,
      },
    );
  }

  /// This API will:
  ///  - Cancel the scheduled deletion of the specified managed account.
  ///  - Restore and activate the user’s account.
  ///
  ///  Specifications:
  ///  - You can cancel the deletion within the 14-day grace period of deleting
  /// a managed account. After that the account is permanently deleted.
  ///
  ///  The permission to make use of this resource is exposed by the
  /// `lifecycle.delete` privilege. Learn more about
  /// [Get user management permissions API](https://developer.atlassian.com/cloud/admin/user-management/rest/api-group-manage/#api-users-account-id-manage-get)
  /// to manage the specified user.
  Future<void> cancelDeleteAccount(String accountId) async {
    await _client.send(
      'post',
      'users/{account_id}/manage/lifecycle/cancel-delete',
      pathParameters: {
        'account_id': accountId,
      },
    );
  }
}

class ManageApi {
  final ApiClient _client;

  ManageApi(this._client);

  /// Returns the set of permissions you have for managing the specified
  /// Atlassian account
  Future<Map<String, dynamic>> getUserManagementPermissions(
      {required String accountId, List<String>? privileges}) async {
    return await _client.send(
      'get',
      'users/{account_id}/manage',
      pathParameters: {
        'account_id': accountId,
      },
      queryParameters: {
        if (privileges != null)
          'privileges': privileges.map((e) => e).join(','),
      },
    ) as Map<String, Object?>;
  }
}

class ProfileApi {
  final ApiClient _client;

  ProfileApi(this._client);

  /// Returns information about a single Atlassian account by ID
  Future<Map<String, dynamic>> getProfile(String accountId) async {
    return await _client.send(
      'get',
      'users/{account_id}/manage/profile',
      pathParameters: {
        'account_id': accountId,
      },
    ) as Map<String, Object?>;
  }
}

class AccountStatus {
  static const active = AccountStatus._('active');
  static const inactive = AccountStatus._('inactive');
  static const closed = AccountStatus._('closed');

  static const values = [
    active,
    inactive,
    closed,
  ];
  final String value;

  const AccountStatus._(this.value);

  static AccountStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AccountStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class AccountType {
  static const atlassian = AccountType._('atlassian');
  static const customer = AccountType._('customer');
  static const app = AccountType._('app');

  static const values = [
    atlassian,
    customer,
    app,
  ];
  final String value;

  const AccountType._(this.value);

  static AccountType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => AccountType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

/// API Token information
class ApiTokenModel {
  /// Human readable description for the token.
  final String label;

  /// Timestamp last time the token was used to Authenticate as a UTC-ISO8601
  /// string
  final String? lastAccess;

  /// Timestamp of when the token was generated as a UTC-ISO8601 string
  final String createdAt;

  /// Container token id. This is the identifier of the system user associated
  /// with the container token.
  final String id;

  ApiTokenModel(
      {required this.label,
      this.lastAccess,
      required this.createdAt,
      required this.id});

  factory ApiTokenModel.fromJson(Map<String, Object?> json) {
    return ApiTokenModel(
      label: json[r'label'] as String? ?? '',
      lastAccess: json[r'lastAccess'] as String?,
      createdAt: json[r'createdAt'] as String? ?? '',
      id: json[r'id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var label = this.label;
    var lastAccess = this.lastAccess;
    var createdAt = this.createdAt;
    var id = this.id;

    final json = <String, Object?>{};
    json[r'label'] = label;
    if (lastAccess != null) {
      json[r'lastAccess'] = lastAccess;
    }
    json[r'createdAt'] = createdAt;
    json[r'id'] = id;
    return json;
  }

  ApiTokenModel copyWith(
      {String? label, String? lastAccess, String? createdAt, String? id}) {
    return ApiTokenModel(
      label: label ?? this.label,
      lastAccess: lastAccess ?? this.lastAccess,
      createdAt: createdAt ?? this.createdAt,
      id: id ?? this.id,
    );
  }
}

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
  final String? jobTitle;
  final String? organization;
  final String? department;
  final String? location;

  ExtendedProfile(
      {this.jobTitle, this.organization, this.department, this.location});

  factory ExtendedProfile.fromJson(Map<String, Object?> json) {
    return ExtendedProfile(
      jobTitle: json[r'job_title'] as String?,
      organization: json[r'organization'] as String?,
      department: json[r'department'] as String?,
      location: json[r'location'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var jobTitle = this.jobTitle;
    var organization = this.organization;
    var department = this.department;
    var location = this.location;

    final json = <String, Object?>{};
    if (jobTitle != null) {
      json[r'job_title'] = jobTitle;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (department != null) {
      json[r'department'] = department;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    return json;
  }

  ExtendedProfile copyWith(
      {String? jobTitle,
      String? organization,
      String? department,
      String? location}) {
    return ExtendedProfile(
      jobTitle: jobTitle ?? this.jobTitle,
      organization: organization ?? this.organization,
      department: department ?? this.department,
      location: location ?? this.location,
    );
  }
}

class LifecycleErrors {
  LifecycleErrors();

  factory LifecycleErrors.fromJson(Map<String, Object?> json) {
    return LifecycleErrors();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// You are allowed to take or write the action/property
class ManageabilityAllowed {
  final ManageabilityAllowedAllowed allowed;

  ManageabilityAllowed({required this.allowed});

  factory ManageabilityAllowed.fromJson(Map<String, Object?> json) {
    return ManageabilityAllowed(
      allowed: ManageabilityAllowedAllowed.fromValue(
          json[r'allowed'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var allowed = this.allowed;

    final json = <String, Object?>{};
    json[r'allowed'] = allowed.value;
    return json;
  }

  ManageabilityAllowed copyWith({ManageabilityAllowedAllowed? allowed}) {
    return ManageabilityAllowed(
      allowed: allowed ?? this.allowed,
    );
  }
}

class ManageabilityAllowedAllowed {
  static const true$ = ManageabilityAllowedAllowed._('true');

  static const values = [
    true$,
  ];
  final String value;

  const ManageabilityAllowedAllowed._(this.value);

  static ManageabilityAllowedAllowed fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ManageabilityAllowedAllowed._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ManageabilityRestrictionReason {
  /// The property or action is restricted because:
  ///
  /// - _administrative_: The property or action is restricted
  ///   because it is intended exclusively for administrative use
  /// - _administrative.notMyself_: The property or action
  ///   is restricted because it is intended for administrative use and
  ///   is forbidden for self-use.
  /// - _authPolicy.saml_: The property is restricted as it is set on login by
  /// SAML
  /// - _blocked.exportControl_: The property/action is restricted because
  ///   the user is blocked by US export control
  /// - _externalDirectory.scim_: The property/action is restricted because
  ///   the user is managed by an external SCIM directory
  /// - _externalDirectory.google_: The property/action is restricted because
  ///   the user is managed by an external Google directory
  /// - _myselfOnly_: The property or action is restricted because it is
  ///   available only to the user which the account belongs to
  /// - _managedAccount_: The property or action is restricted because it is
  ///   available only to the user's organisation administrator
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
  static const authPolicySaml =
      ManageabilityRestrictionReasonKey._('authPolicy.saml');
  static const blockedExportControl =
      ManageabilityRestrictionReasonKey._('blocked.exportControl');
  static const externalDirectoryScim =
      ManageabilityRestrictionReasonKey._('externalDirectory.scim');
  static const externalDirectoryGoogle =
      ManageabilityRestrictionReasonKey._('externalDirectory.google');
  static const myselfOnly = ManageabilityRestrictionReasonKey._('myselfOnly');
  static const managedAccount =
      ManageabilityRestrictionReasonKey._('managedAccount');

  static const values = [
    administrative,
    administrativeNotMyself,
    authPolicySaml,
    blockedExportControl,
    externalDirectoryScim,
    externalDirectoryGoogle,
    myselfOnly,
    managedAccount,
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

/// You are not allowed to take or write the action/property
class ManageabilityUnallowed {
  final ManageabilityUnallowedAllowed allowed;
  final ManageabilityRestrictionReason reason;

  ManageabilityUnallowed({required this.allowed, required this.reason});

  factory ManageabilityUnallowed.fromJson(Map<String, Object?> json) {
    return ManageabilityUnallowed(
      allowed: ManageabilityUnallowedAllowed.fromValue(
          json[r'allowed'] as String? ?? ''),
      reason: ManageabilityRestrictionReason.fromJson(
          json[r'reason'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var allowed = this.allowed;
    var reason = this.reason;

    final json = <String, Object?>{};
    json[r'allowed'] = allowed.value;
    json[r'reason'] = reason.toJson();
    return json;
  }

  ManageabilityUnallowed copyWith(
      {ManageabilityUnallowedAllowed? allowed,
      ManageabilityRestrictionReason? reason}) {
    return ManageabilityUnallowed(
      allowed: allowed ?? this.allowed,
      reason: reason ?? this.reason,
    );
  }
}

class ManageabilityUnallowedAllowed {
  static const false$ = ManageabilityUnallowedAllowed._('false');

  static const values = [
    false$,
  ];
  final String value;

  const ManageabilityUnallowedAllowed._(this.value);

  static ManageabilityUnallowedAllowed fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ManageabilityUnallowedAllowed._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

/// Cannot manage an unverified target account
class ResponseForbiddenTargetUnverified {
  final ResponseForbiddenTargetUnverifiedKey key;

  ResponseForbiddenTargetUnverified({required this.key});

  factory ResponseForbiddenTargetUnverified.fromJson(
      Map<String, Object?> json) {
    return ResponseForbiddenTargetUnverified(
      key: ResponseForbiddenTargetUnverifiedKey.fromValue(
          json[r'key'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    return json;
  }

  ResponseForbiddenTargetUnverified copyWith(
      {ResponseForbiddenTargetUnverifiedKey? key}) {
    return ResponseForbiddenTargetUnverified(
      key: key ?? this.key,
    );
  }
}

class ResponseForbiddenTargetUnverifiedKey {
  static const forbiddenTargetUnverified =
      ResponseForbiddenTargetUnverifiedKey._('forbidden.targetUnverified');

  static const values = [
    forbiddenTargetUnverified,
  ];
  final String value;

  const ResponseForbiddenTargetUnverifiedKey._(this.value);

  static ResponseForbiddenTargetUnverifiedKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResponseForbiddenTargetUnverifiedKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

class User {
  final String accountId;
  final String accountType;
  final String accountStatus;
  final String name;
  final String picture;
  final String email;
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
      accountId: json[r'account_id'] as String? ?? '',
      accountType: json[r'account_type'] as String? ?? '',
      accountStatus: json[r'account_status'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      picture: json[r'picture'] as String? ?? '',
      email: json[r'email'] as String? ?? '',
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
    json[r'account_id'] = accountId;
    json[r'account_type'] = accountType;
    json[r'account_status'] = accountStatus;
    json[r'name'] = name;
    json[r'picture'] = picture;
    json[r'email'] = email;
    if (characteristics != null) {
      json[r'characteristics'] = characteristics.toJson();
    }
    return json;
  }

  User copyWith(
      {String? accountId,
      String? accountType,
      String? accountStatus,
      String? name,
      String? picture,
      String? email,
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
