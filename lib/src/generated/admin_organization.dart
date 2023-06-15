// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class AdminOrganizationApi {
  final ApiClient _client;

  AdminOrganizationApi(this._client);

  /// Org Directory APIs
  late final directory = DirectoryApi(_client);

  /// Domain APIs
  late final domains = DomainsApi(_client);

  /// Events APIs
  late final events = EventsApi(_client);

  /// Orgs APIs
  late final orgs = OrgsApi(_client);

  /// Policies APIs
  late final policies = PoliciesApi(_client);

  /// Orgs Users APIs
  late final users = UsersApi(_client);

  /// Org Workspaces APIs
  late final workspaces = WorkspacesApi(_client);

  void close() => _client.close();
}

class DirectoryApi {
  final ApiClient _client;

  DirectoryApi(this._client);

  /// **Additional response parameters of the API (for e.g., `added_to_org`) are
  /// available only to customers using the new user management experience.**
  /// Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).
  ///
  /// Specifications:
  /// - Return a user’s last active date for each product listed in Atlassian
  /// Administration.
  /// - Active is defined as viewing a product's page for a minimum of 2
  /// seconds.
  /// - The data for the last activity may be delayed by up to 4 hours.
  /// - If the user has not accessed a product, the `product_access` response
  /// field will be empty.
  ///
  /// Learn the fastest way to call the API with a detailed
  /// [tutorial](https://developer.atlassian.com/cloud/admin/organization/user-last-active-dates/).
  Future<UserProductAccessActivityPage> userSLastActiveDates(
      {required String orgId,
      required String accountId,
      String? cursor}) async {
    return UserProductAccessActivityPage.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/directory/users/{accountId}/last-active-dates',
      pathParameters: {
        'orgId': orgId,
        'accountId': accountId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }

  /// **The API is available for customers using the new user management
  /// experience only.** Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).
  ///
  /// Specifications:
  /// - Remove user access to products listed in Atlassian Administration.
  /// - Remove users from **Users** and **Groups** in **Directory**.
  /// - Make product licenses available for active users.
  ///
  /// Users with emails whose domain is claimed can still be found in **Managed
  /// accounts** in **Directory**.
  ///
  /// Learn the fastest way to call the API with a detailed
  /// [tutorial](https://developer.atlassian.com/cloud/admin/organization/remove-user/).
  ///
  Future<void> removeUserAccess(
      {required String orgId, required String accountId}) async {
    await _client.send(
      'delete',
      'v1/orgs/{orgId}/directory/users/{accountId}',
      pathParameters: {
        'orgId': orgId,
        'accountId': accountId,
      },
    );
  }

  /// **The API is available for customers using the new user management
  /// experience only.** Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).
  ///
  /// Specifications:
  /// - Suspend user access to products listed in Atlassian Administration.
  /// - Make product licenses available for active users.
  /// - Maintain respective users in **Groups** for easy restoration.
  ///
  /// Learn the fastest way to call the API with a detailed
  /// [tutorial](https://developer.atlassian.com/cloud/admin/organization/suspend-user/).
  Future<GenericActionSuccessModel> suspendUserAccess(
      {required String orgId, required String accountId}) async {
    return GenericActionSuccessModel.fromJson(await _client.send(
      'post',
      'v1/orgs/{orgId}/directory/users/{accountId}/suspend-access',
      pathParameters: {
        'orgId': orgId,
        'accountId': accountId,
      },
    ));
  }

  /// **The API is available for customers using the new user management
  /// experience only.** Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).
  ///
  /// Specifications:
  /// - Restore access of an existing user to products listed in Atlassian
  /// Administration.
  /// - Retract the suspend user action.
  ///
  /// Learn the fastest way to call the API with a detailed
  /// [tutorial](https://developer.atlassian.com/cloud/admin/organization/restore-user/).
  Future<GenericActionSuccessModel> restoreUserAccess(
      {required String orgId, required String accountId}) async {
    return GenericActionSuccessModel.fromJson(await _client.send(
      'post',
      'v1/orgs/{orgId}/directory/users/{accountId}/restore-access',
      pathParameters: {
        'orgId': orgId,
        'accountId': accountId,
      },
    ));
  }

  /// **The API is available for customers using the new user management
  /// experience only. Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).**
  ///
  /// This API will:
  /// - Add user to a group.
  /// - Assign multiple permissions to user at once.
  /// - Easily manage permissions, content access, notification schemes, and
  /// roles.
  ///
  /// This API will not:
  /// - Make modifications to group memberships that are synchronized through
  /// SCIM. To make changes to these memberships, you will need to modify them
  /// within your external identity provider. Learn more about
  /// [configuring user provisioning with an identity provider](https://support.atlassian.com/provisioning-users/docs/configure-user-provisioning-with-an-identity-provider/).
  Future<GenericActionSuccessModel> addUserToGroup(
      {required String orgId,
      required String groupId,
      required AddGroupMembershipInput body}) async {
    return GenericActionSuccessModel.fromJson(await _client.send(
      'post',
      'v1/orgs/{orgId}/directory/groups/{groupId}/memberships',
      pathParameters: {
        'orgId': orgId,
        'groupId': groupId,
      },
      body: body.toJson(),
    ));
  }

  /// **The API is available for customers using the new user management
  /// experience only. Learn more about the
  /// [new user management experience](https://community.atlassian.com/t5/Atlassian-Access-articles/User-management-for-cloud-admins-just-got-easier/ba-p/1576592).**
  ///
  /// This API will:
  /// - Remove user from a group.
  /// - Remove multiple permissions for user at once.
  /// - Easily manage permissions, content access, notification schemes, and
  /// roles.
  ///
  /// This API will not:
  /// - Make modifications to group memberships that are synchronized through
  /// SCIM. To make changes to these memberships, you will need to modify them
  /// within your external identity provider. Learn more about
  /// [configuring user provisioning with an identity provider](https://support.atlassian.com/provisioning-users/docs/configure-user-provisioning-with-an-identity-provider/).
  /// - Modify `site-admin` group and therefore revoke org-admin role from a
  /// user.
  Future<GenericActionSuccessModel> removeUserFromGroup(
      {required String orgId,
      required String groupId,
      required String accountId}) async {
    return GenericActionSuccessModel.fromJson(await _client.send(
      'delete',
      'v1/orgs/{orgId}/directory/groups/{groupId}/memberships/{accountId}',
      pathParameters: {
        'orgId': orgId,
        'groupId': groupId,
        'accountId': accountId,
      },
    ));
  }
}

class DomainsApi {
  final ApiClient _client;

  DomainsApi(this._client);

  /// Returns a list of domains in an organization one page at a time.
  Future<DomainPage> getDomains({required String orgId, String? cursor}) async {
    return DomainPage.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/domains',
      pathParameters: {
        'orgId': orgId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }

  /// Returns information about a single verified domain by ID.
  Future<Domain> getDomainById(
      {required String orgId, required String domainId}) async {
    return Domain.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/domains/{domainId}',
      pathParameters: {
        'orgId': orgId,
        'domainId': domainId,
      },
    ));
  }
}

class EventsApi {
  final ApiClient _client;

  EventsApi(this._client);

  /// Returns an audit log of events from an organization one page at a time.
  Future<EventPage> getEvents(
      {required String orgId,
      String? cursor,
      String? q,
      String? from,
      String? to,
      String? action}) async {
    return EventPage.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/events',
      pathParameters: {
        'orgId': orgId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
        if (q != null) 'q': q,
        if (from != null) 'from': from,
        if (to != null) 'to': to,
        if (action != null) 'action': action,
      },
    ));
  }

  /// Returns information about a single event by ID.
  Future<Event> getEventById(
      {required String orgId, required String eventId}) async {
    return Event.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/events/{eventId}',
      pathParameters: {
        'orgId': orgId,
        'eventId': eventId,
      },
    ));
  }

  /// Returns information localized event actions
  Future<EventActions> getEventActions(String orgId) async {
    return EventActions.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/event-actions',
      pathParameters: {
        'orgId': orgId,
      },
    ));
  }
}

class OrgsApi {
  final ApiClient _client;

  OrgsApi(this._client);

  /// Returns a list of your organizations (based on your API key).
  Future<OrgPage> getOrgs({String? cursor}) async {
    return OrgPage.fromJson(await _client.send(
      'get',
      'v1/orgs',
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }

  /// Returns information about a single organization by ID
  Future<Org> getOrgById(String orgId) async {
    return Org.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}',
      pathParameters: {
        'orgId': orgId,
      },
    ));
  }
}

class PoliciesApi {
  final ApiClient _client;

  PoliciesApi(this._client);

  /// Returns information about org policies
  Future<PolicyPage> getPolicies(
      {required String orgId, String? cursor, String? type}) async {
    return PolicyPage.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/policies',
      pathParameters: {
        'orgId': orgId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
        if (type != null) 'type': type,
      },
    ));
  }

  /// Create a policy for an org
  Future<Policy> createPolicy(
      {required String orgId, required PolicyCreateInput body}) async {
    return Policy.fromJson(await _client.send(
      'post',
      'v1/orgs/{orgId}/policies',
      pathParameters: {
        'orgId': orgId,
      },
      body: body.toJson(),
    ));
  }

  /// Returns information about a single policy by ID
  Future<Policy> getPolicyById(
      {required String orgId, required String policyId}) async {
    return Policy.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/policies/{policyId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
      },
    ));
  }

  /// Update a policy for an org
  Future<Policy> updatePolicy(
      {required String orgId,
      required String policyId,
      required PolicyUpdateInput body}) async {
    return Policy.fromJson(await _client.send(
      'put',
      'v1/orgs/{orgId}/policies/{policyId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
      },
      body: body.toJson(),
    ));
  }

  /// Delete a policy for an org
  Future<void> deletePolicy(
      {required String orgId, required String policyId}) async {
    await _client.send(
      'delete',
      'v1/orgs/{orgId}/policies/{policyId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
      },
    );
  }

  /// Adds a resource to an existing Policy
  Future<Policy> addResourceToPolicy(
      {required String orgId,
      required String policyId,
      required ResourceInput body}) async {
    return Policy.fromJson(await _client.send(
      'post',
      'v1/orgs/{orgId}/policies/{policyId}/resources',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
      },
      body: body.toJson(),
    ));
  }

  /// Update an existing Policy Resource
  Future<Policy> updatePolicyResource(
      {required String orgId,
      required String policyId,
      required String resourceId,
      required ResourceUpdateInput body}) async {
    return Policy.fromJson(await _client.send(
      'put',
      'v1/orgs/{orgId}/policies/{policyId}/resources/{resourceId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
        'resourceId': resourceId,
      },
      body: body.toJson(),
    ));
  }

  /// Delete an existing Policy Resource
  Future<Policy> deletePolicyResource(
      {required String orgId,
      required String policyId,
      required String resourceId}) async {
    return Policy.fromJson(await _client.send(
      'delete',
      'v1/orgs/{orgId}/policies/{policyId}/resources/{resourceId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
        'resourceId': resourceId,
      },
    ));
  }

  /// Validate a policy based on specific requirements. For example, Trigger
  /// CDEN validation by pushing a task into the SQS dns-validation queue
  Future<void> validatePolicy(
      {required String orgId, required String policyId}) async {
    await _client.send(
      'get',
      'v1/orgs/{orgId}/policies/{policyId}/validate',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
      },
    );
  }
}

class UsersApi {
  final ApiClient _client;

  UsersApi(this._client);

  /// Returns a list of users in an organization.
  Future<UserPage> getUsers({required String orgId, String? cursor}) async {
    return UserPage.fromJson(await _client.send(
      'get',
      'v1/orgs/{orgId}/users',
      pathParameters: {
        'orgId': orgId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }
}

class WorkspacesApi {
  final ApiClient _client;

  WorkspacesApi(this._client);

  /// A workspace refers to a specific instance of an Atlassian product that is
  /// accessed through a unique URL. Whenever a user initiates or adds a new
  /// product instance, it results in the creation of a distinct workspace.
  ///
  /// This API will:
  /// - Return a paginated list of workspaces in a given org
  /// - Return more details about an organization's products (including product
  /// URL).
  Future<PageDataResponseV2> queryWorkspacesV2(
      {required String orgId, required SearchWorkspacesRequestV2 body}) async {
    return PageDataResponseV2.fromJson(await _client.send(
      'post',
      'v2/orgs/{orgId}/workspaces',
      pathParameters: {
        'orgId': orgId,
      },
      body: body.toJson(),
    ));
  }
}

class AddGroupMembershipInput {
  /// Unique ID of the user's account that you are adding to the group.
  /// Use the
  /// [Jira User Search API](https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-users/#api-rest-api-3-users-search-get)
  /// to get the accountId (if Jira is available for your Organization). **Jira
  /// APIs use a different
  /// [authentication method ](https://developer.atlassian.com/cloud/jira/platform/basic-auth-for-rest-apis/).**
  /// If you don’t have Jira, export a .csv of the user list. Learn how to
  /// [export users from a site](https://support.atlassian.com/organization-administration/docs/export-users-from-a-site/).
  final String accountId;

  AddGroupMembershipInput({required this.accountId});

  factory AddGroupMembershipInput.fromJson(Map<String, Object?> json) {
    return AddGroupMembershipInput(
      accountId: json[r'account_id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;

    final json = <String, Object?>{};
    json[r'account_id'] = accountId;
    return json;
  }

  AddGroupMembershipInput copyWith({String? accountId}) {
    return AddGroupMembershipInput(
      accountId: accountId ?? this.accountId,
    );
  }
}

/// Applicable when policy type is `ip-allowlist` or `data-residency`
class AllowIfContainedRule {
  final List<String> in$;

  AllowIfContainedRule({required this.in$});

  factory AllowIfContainedRule.fromJson(Map<String, Object?> json) {
    return AllowIfContainedRule(
      in$: (json[r'in'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var in$ = this.in$;

    final json = <String, Object?>{};
    json[r'in'] = in$;
    return json;
  }

  AllowIfContainedRule copyWith({List<String>? in$}) {
    return AllowIfContainedRule(
      in$: in$ ?? this.in$,
    );
  }
}

/// Returns workspaces matching all of the nested query variants. Absence of
/// nested variants makes this operator no-op.
class AndOperator {
  final List<QueryVariants> and;

  AndOperator({List<QueryVariants>? and}) : and = and ?? [];

  factory AndOperator.fromJson(Map<String, Object?> json) {
    return AndOperator(
      and: (json[r'and'] as List<Object?>?)
              ?.map((i) => QueryVariants.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var and = this.and;

    final json = <String, Object?>{};
    json[r'and'] = and.map((i) => i.toJson()).toList();
    return json;
  }

  AndOperator copyWith({List<QueryVariants>? and}) {
    return AndOperator(
      and: and ?? this.and,
    );
  }
}

class ApplicationError {
  /// A unique identifier for this particular occurrence of the error.
  final String? id;

  /// The HTTP status code applicable to this error.
  final String? status;

  /// An application-specific error code:
  ///   - `ADMIN-400-1`  - Invalid page cursor
  ///   - `ADMIN-400-2`  - Invalid domain identifier
  ///   - `ADMIN-400-3`  - Invalid time date
  ///   - `ADMIN-400-4`  - Invalid resource
  ///   - `ADMIN-400-24` - Invalid request body
  ///   - `ADMIN-403-3`  - Not allowed to manage the org
  ///   - `ADMIN-403-5`  - Not allowed to manage the group
  ///   - `ADMIN-404-1`  - Unknown resource
  ///   - `ADMIN-404-2`  - Organization not found
  ///   - `ADMIN-404-3`  - Domain not found
  ///   - `ADMIN-404-4`  - Event not found
  ///   - `ADMIN-404-5`  - Policy not found
  ///   - `ADMIN-404-8`  - User not found
  ///   - `ADMIN-404-10` - Group not found
  ///   - `ADMIN-405-1`  - Method not supported
  ///   - `ADMIN-429-1`  - Limit exceeded
  ///   - `ADMIN-500-1`  - Internal error
  final String? code;

  /// Human-readable summary of the error.
  final String? title;

  /// Human-readable explanation specific to this occurrence of the error, and a
  /// suggested action to resolve it.
  final String? detail;

  ApplicationError({this.id, this.status, this.code, this.title, this.detail});

  factory ApplicationError.fromJson(Map<String, Object?> json) {
    return ApplicationError(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      code: json[r'code'] as String?,
      title: json[r'title'] as String?,
      detail: json[r'detail'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var code = this.code;
    var title = this.title;
    var detail = this.detail;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (code != null) {
      json[r'code'] = code;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (detail != null) {
      json[r'detail'] = detail;
    }
    return json;
  }

  ApplicationError copyWith(
      {String? id,
      String? status,
      String? code,
      String? title,
      String? detail}) {
    return ApplicationError(
      id: id ?? this.id,
      status: status ?? this.status,
      code: code ?? this.code,
      title: title ?? this.title,
      detail: detail ?? this.detail,
    );
  }
}

/// Cursors for REST API pagination
class CursorNextPageModel {
  /// Cursor to fetch next page
  final String? next;

  CursorNextPageModel({this.next});

  factory CursorNextPageModel.fromJson(Map<String, Object?> json) {
    return CursorNextPageModel(
      next: json[r'next'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var next = this.next;

    final json = <String, Object?>{};
    if (next != null) {
      json[r'next'] = next;
    }
    return json;
  }

  CursorNextPageModel copyWith({String? next}) {
    return CursorNextPageModel(
      next: next ?? this.next,
    );
  }
}

class Domain {
  final DomainModel? data;

  Domain({this.data});

  factory Domain.fromJson(Map<String, Object?> json) {
    return Domain(
      data: json[r'data'] != null
          ? DomainModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  Domain copyWith({DomainModel? data}) {
    return Domain(
      data: data ?? this.data,
    );
  }
}

class DomainModel {
  /// Unique identifier of the Domain
  final String id;

  /// Type name of this object
  final DomainModelType type;

  /// Attributes of this object
  final DomainModelAttributes attributes;

  /// Link to this Domain
  final LinkSelfModel links;

  DomainModel(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.links});

  factory DomainModel.fromJson(Map<String, Object?> json) {
    return DomainModel(
      id: json[r'id'] as String? ?? '',
      type: DomainModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: DomainModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
      links: LinkSelfModel.fromJson(
          json[r'links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    json[r'links'] = links.toJson();
    return json;
  }

  DomainModel copyWith(
      {String? id,
      DomainModelType? type,
      DomainModelAttributes? attributes,
      LinkSelfModel? links}) {
    return DomainModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
      links: links ?? this.links,
    );
  }
}

class DomainModelType {
  static const domains = DomainModelType._('domains');

  static const values = [
    domains,
  ];
  final String value;

  const DomainModelType._(this.value);

  static DomainModelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => DomainModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class DomainModelAttributes {
  /// Domain Name
  final String? name;

  /// Claim for the domain
  final DomainModelAttributesClaim? claim;

  DomainModelAttributes({this.name, this.claim});

  factory DomainModelAttributes.fromJson(Map<String, Object?> json) {
    return DomainModelAttributes(
      name: json[r'name'] as String?,
      claim: json[r'claim'] != null
          ? DomainModelAttributesClaim.fromJson(
              json[r'claim']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var claim = this.claim;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (claim != null) {
      json[r'claim'] = claim.toJson();
    }
    return json;
  }

  DomainModelAttributes copyWith(
      {String? name, DomainModelAttributesClaim? claim}) {
    return DomainModelAttributes(
      name: name ?? this.name,
      claim: claim ?? this.claim,
    );
  }
}

/// Claim for the domain
class DomainModelAttributesClaim {
  final DomainModelAttributesClaimType? type;

  /// Verification Status of the Domain Claim
  final DomainModelAttributesClaimStatus? status;

  DomainModelAttributesClaim({this.type, this.status});

  factory DomainModelAttributesClaim.fromJson(Map<String, Object?> json) {
    return DomainModelAttributesClaim(
      type: json[r'type'] != null
          ? DomainModelAttributesClaimType.fromValue(json[r'type']! as String)
          : null,
      status: json[r'status'] != null
          ? DomainModelAttributesClaimStatus.fromValue(
              json[r'status']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var status = this.status;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    return json;
  }

  DomainModelAttributesClaim copyWith(
      {DomainModelAttributesClaimType? type,
      DomainModelAttributesClaimStatus? status}) {
    return DomainModelAttributesClaim(
      type: type ?? this.type,
      status: status ?? this.status,
    );
  }
}

class DomainModelAttributesClaimType {
  static const http = DomainModelAttributesClaimType._('http');
  static const dns = DomainModelAttributesClaimType._('dns');

  static const values = [
    http,
    dns,
  ];
  final String value;

  const DomainModelAttributesClaimType._(this.value);

  static DomainModelAttributesClaimType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => DomainModelAttributesClaimType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class DomainModelAttributesClaimStatus {
  static const verified = DomainModelAttributesClaimStatus._('verified');
  static const deleted = DomainModelAttributesClaimStatus._('deleted');
  static const unverified = DomainModelAttributesClaimStatus._('unverified');
  static const superseded = DomainModelAttributesClaimStatus._('superseded');
  static const missingToken =
      DomainModelAttributesClaimStatus._('missing_token');

  static const values = [
    verified,
    deleted,
    unverified,
    superseded,
    missingToken,
  ];
  final String value;

  const DomainModelAttributesClaimStatus._(this.value);

  static DomainModelAttributesClaimStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => DomainModelAttributesClaimStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class DomainPage {
  /// 0 or more values of Domain are returned
  final List<DomainModel> data;

  /// Links for Pagination.
  final LinkPageModel? links;

  DomainPage({List<DomainModel>? data, this.links}) : data = data ?? [];

  factory DomainPage.fromJson(Map<String, Object?> json) {
    return DomainPage(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) =>
                  DomainModel.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  DomainPage copyWith({List<DomainModel>? data, LinkPageModel? links}) {
    return DomainPage(
      data: data ?? this.data,
      links: links ?? this.links,
    );
  }
}

class EntitlementModelV2 {
  final String? id;
  final String? type;
  final EntitlementModelV2Attributes? attributes;

  EntitlementModelV2({this.id, this.type, this.attributes});

  factory EntitlementModelV2.fromJson(Map<String, Object?> json) {
    return EntitlementModelV2(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      attributes: json[r'attributes'] != null
          ? EntitlementModelV2Attributes.fromJson(
              json[r'attributes']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (attributes != null) {
      json[r'attributes'] = attributes.toJson();
    }
    return json;
  }

  EntitlementModelV2 copyWith(
      {String? id, String? type, EntitlementModelV2Attributes? attributes}) {
    return EntitlementModelV2(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class EntitlementModelV2Attributes {
  final String? key;
  final String? planKey;
  final String? plan;

  EntitlementModelV2Attributes({this.key, this.planKey, this.plan});

  factory EntitlementModelV2Attributes.fromJson(Map<String, Object?> json) {
    return EntitlementModelV2Attributes(
      key: json[r'key'] as String?,
      planKey: json[r'planKey'] as String?,
      plan: json[r'plan'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var planKey = this.planKey;
    var plan = this.plan;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (planKey != null) {
      json[r'planKey'] = planKey;
    }
    if (plan != null) {
      json[r'plan'] = plan;
    }
    return json;
  }

  EntitlementModelV2Attributes copyWith(
      {String? key, String? planKey, String? plan}) {
    return EntitlementModelV2Attributes(
      key: key ?? this.key,
      planKey: planKey ?? this.planKey,
      plan: plan ?? this.plan,
    );
  }
}

/// CDEN policy validation failed
class ErrorCdenPolicyValidationFailedModel {
  final List<ApplicationError> errors;

  ErrorCdenPolicyValidationFailedModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorCdenPolicyValidationFailedModel.fromJson(
      Map<String, Object?> json) {
    return ErrorCdenPolicyValidationFailedModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorCdenPolicyValidationFailedModel copyWith(
      {List<ApplicationError>? errors}) {
    return ErrorCdenPolicyValidationFailedModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Domain not found
class ErrorDomainNotFoundModel {
  final List<ApplicationError> errors;

  ErrorDomainNotFoundModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorDomainNotFoundModel.fromJson(Map<String, Object?> json) {
    return ErrorDomainNotFoundModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorDomainNotFoundModel copyWith({List<ApplicationError>? errors}) {
    return ErrorDomainNotFoundModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Event not found
class ErrorEventNotFoundModel {
  final List<ApplicationError> errors;

  ErrorEventNotFoundModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorEventNotFoundModel.fromJson(Map<String, Object?> json) {
    return ErrorEventNotFoundModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorEventNotFoundModel copyWith({List<ApplicationError>? errors}) {
    return ErrorEventNotFoundModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Internal error
class ErrorInternalErrorModel {
  final List<ApplicationError> errors;

  ErrorInternalErrorModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorInternalErrorModel.fromJson(Map<String, Object?> json) {
    return ErrorInternalErrorModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorInternalErrorModel copyWith({List<ApplicationError>? errors}) {
    return ErrorInternalErrorModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Invalid page cursor
class ErrorInvalidPageCursorModel {
  final List<ApplicationError> errors;

  ErrorInvalidPageCursorModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorInvalidPageCursorModel.fromJson(Map<String, Object?> json) {
    return ErrorInvalidPageCursorModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorInvalidPageCursorModel copyWith({List<ApplicationError>? errors}) {
    return ErrorInvalidPageCursorModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Resource is not valid
class ErrorInvalidResourceModel {
  final List<ApplicationError> errors;

  ErrorInvalidResourceModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorInvalidResourceModel.fromJson(Map<String, Object?> json) {
    return ErrorInvalidResourceModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorInvalidResourceModel copyWith({List<ApplicationError>? errors}) {
    return ErrorInvalidResourceModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Invalid time date
class ErrorInvalidSearchTimeDateModel {
  final List<ApplicationError> errors;

  ErrorInvalidSearchTimeDateModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorInvalidSearchTimeDateModel.fromJson(Map<String, Object?> json) {
    return ErrorInvalidSearchTimeDateModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorInvalidSearchTimeDateModel copyWith({List<ApplicationError>? errors}) {
    return ErrorInvalidSearchTimeDateModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Forbidden
class ErrorNoPermsModel {
  ErrorNoPermsModel();

  factory ErrorNoPermsModel.fromJson(Map<String, Object?> json) {
    return ErrorNoPermsModel();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// Organization not found
class ErrorOrgNotFoundModel {
  final List<ApplicationError> errors;

  ErrorOrgNotFoundModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorOrgNotFoundModel.fromJson(Map<String, Object?> json) {
    return ErrorOrgNotFoundModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorOrgNotFoundModel copyWith({List<ApplicationError>? errors}) {
    return ErrorOrgNotFoundModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Policy not found
class ErrorPolicyNotFoundModel {
  final List<ApplicationError> errors;

  ErrorPolicyNotFoundModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorPolicyNotFoundModel.fromJson(Map<String, Object?> json) {
    return ErrorPolicyNotFoundModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorPolicyNotFoundModel copyWith({List<ApplicationError>? errors}) {
    return ErrorPolicyNotFoundModel(
      errors: errors ?? this.errors,
    );
  }
}

/// Policy Resource not found
class ErrorPolicyResourceNotFoundModel {
  final List<ApplicationError> errors;

  ErrorPolicyResourceNotFoundModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorPolicyResourceNotFoundModel.fromJson(Map<String, Object?> json) {
    return ErrorPolicyResourceNotFoundModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorPolicyResourceNotFoundModel copyWith({List<ApplicationError>? errors}) {
    return ErrorPolicyResourceNotFoundModel(
      errors: errors ?? this.errors,
    );
  }
}

/// A list of application errors
class ErrorsApplicationErrorsModel {
  final List<ApplicationError> errors;

  ErrorsApplicationErrorsModel({List<ApplicationError>? errors})
      : errors = errors ?? [];

  factory ErrorsApplicationErrorsModel.fromJson(Map<String, Object?> json) {
    return ErrorsApplicationErrorsModel(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => ApplicationError.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  ErrorsApplicationErrorsModel copyWith({List<ApplicationError>? errors}) {
    return ErrorsApplicationErrorsModel(
      errors: errors ?? this.errors,
    );
  }
}

class Event {
  final EventModel? data;

  Event({this.data});

  factory Event.fromJson(Map<String, Object?> json) {
    return Event(
      data: json[r'data'] != null
          ? EventModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  Event copyWith({EventModel? data}) {
    return Event(
      data: data ?? this.data,
    );
  }
}

class EventActionModel {
  /// Unique identifier of the event action object
  final String id;

  /// Type name of this object
  final String type;

  /// Attributes of this object
  final EventActionModelAttributes attributes;

  EventActionModel(
      {required this.id, required this.type, required this.attributes});

  factory EventActionModel.fromJson(Map<String, Object?> json) {
    return EventActionModel(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String? ?? '',
      attributes: EventActionModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type;
    json[r'attributes'] = attributes.toJson();
    return json;
  }

  EventActionModel copyWith(
      {String? id, String? type, EventActionModelAttributes? attributes}) {
    return EventActionModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

/// Attributes of this object
class EventActionModelAttributes {
  /// Display name of the event action
  final String displayName;

  /// Display name of the event action group
  final String groupDisplayName;

  EventActionModelAttributes(
      {required this.displayName, required this.groupDisplayName});

  factory EventActionModelAttributes.fromJson(Map<String, Object?> json) {
    return EventActionModelAttributes(
      displayName: json[r'displayName'] as String? ?? '',
      groupDisplayName: json[r'groupDisplayName'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var groupDisplayName = this.groupDisplayName;

    final json = <String, Object?>{};
    json[r'displayName'] = displayName;
    json[r'groupDisplayName'] = groupDisplayName;
    return json;
  }

  EventActionModelAttributes copyWith(
      {String? displayName, String? groupDisplayName}) {
    return EventActionModelAttributes(
      displayName: displayName ?? this.displayName,
      groupDisplayName: groupDisplayName ?? this.groupDisplayName,
    );
  }
}

class EventActions {
  /// 0 or more values of event actions are returned
  final List<EventActionModel> data;

  EventActions({List<EventActionModel>? data}) : data = data ?? [];

  factory EventActions.fromJson(Map<String, Object?> json) {
    return EventActions(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) => EventActionModel.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    return json;
  }

  EventActions copyWith({List<EventActionModel>? data}) {
    return EventActions(
      data: data ?? this.data,
    );
  }
}

class EventActorModel {
  /// Id of the Actor
  final String id;

  /// The display name of the Actor.
  final String? name;

  /// The email of the Actor.
  final String? email;

  /// Link to this Actor
  final LinkSelfModel? links;

  EventActorModel({required this.id, this.name, this.email, this.links});

  factory EventActorModel.fromJson(Map<String, Object?> json) {
    return EventActorModel(
      id: json[r'id'] as String? ?? '',
      name: json[r'name'] as String?,
      email: json[r'email'] as String?,
      links: json[r'links'] != null
          ? LinkSelfModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var email = this.email;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  EventActorModel copyWith(
      {String? id, String? name, String? email, LinkSelfModel? links}) {
    return EventActorModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      links: links ?? this.links,
    );
  }
}

class EventLocationModel {
  /// IP address
  final String? ip;

  /// Geo location of the IP address
  final String? geo;

  /// Country location according to the IP address
  final String? countryName;

  /// Region location according to the IP address
  final String? regionName;

  /// City location according to the IP address
  final String? city;

  EventLocationModel(
      {this.ip, this.geo, this.countryName, this.regionName, this.city});

  factory EventLocationModel.fromJson(Map<String, Object?> json) {
    return EventLocationModel(
      ip: json[r'ip'] as String?,
      geo: json[r'geo'] as String?,
      countryName: json[r'countryName'] as String?,
      regionName: json[r'regionName'] as String?,
      city: json[r'city'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var ip = this.ip;
    var geo = this.geo;
    var countryName = this.countryName;
    var regionName = this.regionName;
    var city = this.city;

    final json = <String, Object?>{};
    if (ip != null) {
      json[r'ip'] = ip;
    }
    if (geo != null) {
      json[r'geo'] = geo;
    }
    if (countryName != null) {
      json[r'countryName'] = countryName;
    }
    if (regionName != null) {
      json[r'regionName'] = regionName;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    return json;
  }

  EventLocationModel copyWith(
      {String? ip,
      String? geo,
      String? countryName,
      String? regionName,
      String? city}) {
    return EventLocationModel(
      ip: ip ?? this.ip,
      geo: geo ?? this.geo,
      countryName: countryName ?? this.countryName,
      regionName: regionName ?? this.regionName,
      city: city ?? this.city,
    );
  }
}

class EventModel {
  /// Unique identifier of the Event
  final String id;

  /// Type name of this object
  final EventModelType type;

  /// Attributes of this object
  final EventModelAttributes attributes;

  /// Link to this Event
  final LinkSelfModel links;

  EventModel(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.links});

  factory EventModel.fromJson(Map<String, Object?> json) {
    return EventModel(
      id: json[r'id'] as String? ?? '',
      type: EventModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: EventModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
      links: LinkSelfModel.fromJson(
          json[r'links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    json[r'links'] = links.toJson();
    return json;
  }

  EventModel copyWith(
      {String? id,
      EventModelType? type,
      EventModelAttributes? attributes,
      LinkSelfModel? links}) {
    return EventModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
      links: links ?? this.links,
    );
  }
}

class EventModelType {
  static const events = EventModelType._('events');

  static const values = [
    events,
  ];
  final String value;

  const EventModelType._(this.value);

  static EventModelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => EventModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class EventModelAttributes {
  /// The date and time of the event
  final DateTime time;

  /// Kind of Event. Complete list see `event-actions` API.
  final String action;

  /// Actor is the User who performed this Event
  final EventActorModel actor;

  /// Describes one or more entities that the action was performed against. This
  /// field describes the "what" of the event.
  final List<EventObjectModel> context;

  /// Describes the location where the action was performed. This field
  /// describes the "where" of the event.
  final List<EventObjectModel> container;

  /// Location from where the Actor performed the Event
  final EventLocationModel? location;

  EventModelAttributes(
      {required this.time,
      required this.action,
      required this.actor,
      required this.context,
      List<EventObjectModel>? container,
      this.location})
      : container = container ?? [];

  factory EventModelAttributes.fromJson(Map<String, Object?> json) {
    return EventModelAttributes(
      time: DateTime.tryParse(json[r'time'] as String? ?? '') ?? DateTime(0),
      action: json[r'action'] as String? ?? '',
      actor: EventActorModel.fromJson(
          json[r'actor'] as Map<String, Object?>? ?? const {}),
      context: (json[r'context'] as List<Object?>?)
              ?.map((i) => EventObjectModel.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      container: (json[r'container'] as List<Object?>?)
              ?.map((i) => EventObjectModel.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      location: json[r'location'] != null
          ? EventLocationModel.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var time = this.time;
    var action = this.action;
    var actor = this.actor;
    var context = this.context;
    var container = this.container;
    var location = this.location;

    final json = <String, Object?>{};
    json[r'time'] = time.toIso8601String();
    json[r'action'] = action;
    json[r'actor'] = actor.toJson();
    json[r'context'] = context.map((i) => i.toJson()).toList();
    json[r'container'] = container.map((i) => i.toJson()).toList();
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    return json;
  }

  EventModelAttributes copyWith(
      {DateTime? time,
      String? action,
      EventActorModel? actor,
      List<EventObjectModel>? context,
      List<EventObjectModel>? container,
      EventLocationModel? location}) {
    return EventModelAttributes(
      time: time ?? this.time,
      action: action ?? this.action,
      actor: actor ?? this.actor,
      context: context ?? this.context,
      container: container ?? this.container,
      location: location ?? this.location,
    );
  }
}

class EventObjectModel {
  /// Unique identifier of the event object
  final String id;

  /// Type name of this object
  final String? type;

  /// Attributes of this object
  final Map<String, dynamic>? attributes;

  /// Links to this event object
  final dynamic links;

  EventObjectModel({required this.id, this.type, this.attributes, this.links});

  factory EventObjectModel.fromJson(Map<String, Object?> json) {
    return EventObjectModel(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String?,
      attributes: json[r'attributes'] as Map<String, Object?>?,
      links: json[r'links'],
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    if (type != null) {
      json[r'type'] = type;
    }
    if (attributes != null) {
      json[r'attributes'] = attributes;
    }
    if (links != null) {
      json[r'links'] = links;
    }
    return json;
  }

  EventObjectModel copyWith(
      {String? id,
      String? type,
      Map<String, dynamic>? attributes,
      dynamic links}) {
    return EventObjectModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
      links: links ?? this.links,
    );
  }
}

class EventPage {
  /// 0 or more values of Event are returned
  final List<EventModel> data;
  final EventPageMeta? meta;

  /// Links for Pagination.
  final LinkPageModel? links;

  EventPage({List<EventModel>? data, this.meta, this.links})
      : data = data ?? [];

  factory EventPage.fromJson(Map<String, Object?> json) {
    return EventPage(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) =>
                  EventModel.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? EventPageMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  EventPage copyWith(
      {List<EventModel>? data, EventPageMeta? meta, LinkPageModel? links}) {
    return EventPage(
      data: data ?? this.data,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class EventPageMeta {
  /// Value for the next cursor
  final String? next;

  /// Number of items in a page
  final int? pageSize;

  EventPageMeta({this.next, this.pageSize});

  factory EventPageMeta.fromJson(Map<String, Object?> json) {
    return EventPageMeta(
      next: json[r'next'] as String?,
      pageSize: (json[r'page_size'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var next = this.next;
    var pageSize = this.pageSize;

    final json = <String, Object?>{};
    if (next != null) {
      json[r'next'] = next;
    }
    if (pageSize != null) {
      json[r'page_size'] = pageSize;
    }
    return json;
  }

  EventPageMeta copyWith({String? next, int? pageSize}) {
    return EventPageMeta(
      next: next ?? this.next,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}

/// Returns workspaces, which contains listed features.
class FeatureFilter {
  final List<String> value;

  FeatureFilter({List<String>? value}) : value = value ?? [];

  factory FeatureFilter.fromJson(Map<String, Object?> json) {
    return FeatureFilter(
      value: (json[r'value'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    json[r'value'] = value;
    return json;
  }

  FeatureFilter copyWith({List<String>? value}) {
    return FeatureFilter(
      value: value ?? this.value,
    );
  }
}

class FeatureModelV2 {
  final String? id;
  final String? type;
  final FeatureModelV2Attributes? attributes;

  FeatureModelV2({this.id, this.type, this.attributes});

  factory FeatureModelV2.fromJson(Map<String, Object?> json) {
    return FeatureModelV2(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      attributes: json[r'attributes'] != null
          ? FeatureModelV2Attributes.fromJson(
              json[r'attributes']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (attributes != null) {
      json[r'attributes'] = attributes.toJson();
    }
    return json;
  }

  FeatureModelV2 copyWith(
      {String? id, String? type, FeatureModelV2Attributes? attributes}) {
    return FeatureModelV2(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class FeatureModelV2Attributes {
  final Map<String, dynamic>? fields;

  FeatureModelV2Attributes({this.fields});

  factory FeatureModelV2Attributes.fromJson(Map<String, Object?> json) {
    return FeatureModelV2Attributes(
      fields: json[r'fields'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var fields = this.fields;

    final json = <String, Object?>{};
    if (fields != null) {
      json[r'fields'] = fields;
    }
    return json;
  }

  FeatureModelV2Attributes copyWith({Map<String, dynamic>? fields}) {
    return FeatureModelV2Attributes(
      fields: fields ?? this.fields,
    );
  }
}

/// Returns workspaces where a specified event field has one of the specified
/// values. Absent of values makes this operator no-op.
class FieldOperand {
  final String? name;
  final FieldOperandField? field;

  FieldOperand({this.name, this.field});

  factory FieldOperand.fromJson(Map<String, Object?> json) {
    return FieldOperand(
      name: json[r'name'] as String?,
      field: json[r'field'] != null
          ? FieldOperandField.fromJson(json[r'field']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var field = this.field;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (field != null) {
      json[r'field'] = field.toJson();
    }
    return json;
  }

  FieldOperand copyWith({String? name, FieldOperandField? field}) {
    return FieldOperand(
      name: name ?? this.name,
      field: field ?? this.field,
    );
  }
}

class FieldOperandField {
  final String? name;
  final List<String> values;

  FieldOperandField({this.name, List<String>? values}) : values = values ?? [];

  factory FieldOperandField.fromJson(Map<String, Object?> json) {
    return FieldOperandField(
      name: json[r'name'] as String?,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var values = this.values;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'values'] = values;
    return json;
  }

  FieldOperandField copyWith({String? name, List<String>? values}) {
    return FieldOperandField(
      name: name ?? this.name,
      values: values ?? this.values,
    );
  }
}

class GenericActionSuccessModel {
  /// A description of the entities affected, and changes made as a result of
  /// calling this API.
  final String? message;

  GenericActionSuccessModel({this.message});

  factory GenericActionSuccessModel.fromJson(Map<String, Object?> json) {
    return GenericActionSuccessModel(
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var message = this.message;

    final json = <String, Object?>{};
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  GenericActionSuccessModel copyWith({String? message}) {
    return GenericActionSuccessModel(
      message: message ?? this.message,
    );
  }
}

class LinkAltModel {
  /// Alternate URL to fetch this resource
  final String alt;

  LinkAltModel({required this.alt});

  factory LinkAltModel.fromJson(Map<String, Object?> json) {
    return LinkAltModel(
      alt: json[r'alt'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var alt = this.alt;

    final json = <String, Object?>{};
    json[r'alt'] = alt;
    return json;
  }

  LinkAltModel copyWith({String? alt}) {
    return LinkAltModel(
      alt: alt ?? this.alt,
    );
  }
}

/// Links for a Paginated response
class LinkPageModel {
  /// URL to fetch this Page
  final String? self;

  /// URL to fetch the Previous Page
  final String? prev;

  /// URL to fetch the Next Page
  final String? next;

  LinkPageModel({this.self, this.prev, this.next});

  factory LinkPageModel.fromJson(Map<String, Object?> json) {
    return LinkPageModel(
      self: json[r'self'] as String?,
      prev: json[r'prev'] as String?,
      next: json[r'next'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var prev = this.prev;
    var next = this.next;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (prev != null) {
      json[r'prev'] = prev;
    }
    if (next != null) {
      json[r'next'] = next;
    }
    return json;
  }

  LinkPageModel copyWith({String? self, String? prev, String? next}) {
    return LinkPageModel(
      self: self ?? this.self,
      prev: prev ?? this.prev,
      next: next ?? this.next,
    );
  }
}

class LinkRelatedModel {
  /// URL to fetch this resource
  final String related;

  LinkRelatedModel({required this.related});

  factory LinkRelatedModel.fromJson(Map<String, Object?> json) {
    return LinkRelatedModel(
      related: json[r'related'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var related = this.related;

    final json = <String, Object?>{};
    json[r'related'] = related;
    return json;
  }

  LinkRelatedModel copyWith({String? related}) {
    return LinkRelatedModel(
      related: related ?? this.related,
    );
  }
}

/// Links for a resources with self and alternate links
class LinkSelfAltModel {
  /// URL to fetch this resource
  final String? self;

  /// Alternate URL to fetch this resource
  final String? alt;

  LinkSelfAltModel({this.self, this.alt});

  factory LinkSelfAltModel.fromJson(Map<String, Object?> json) {
    return LinkSelfAltModel(
      self: json[r'self'] as String?,
      alt: json[r'alt'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var alt = this.alt;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (alt != null) {
      json[r'alt'] = alt;
    }
    return json;
  }

  LinkSelfAltModel copyWith({String? self, String? alt}) {
    return LinkSelfAltModel(
      self: self ?? this.self,
      alt: alt ?? this.alt,
    );
  }
}

class LinkSelfModel {
  /// URL to fetch this resource
  final String self;

  LinkSelfModel({required this.self});

  factory LinkSelfModel.fromJson(Map<String, Object?> json) {
    return LinkSelfModel(
      self: json[r'self'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;

    final json = <String, Object?>{};
    json[r'self'] = self;
    return json;
  }

  LinkSelfModel copyWith({String? self}) {
    return LinkSelfModel(
      self: self ?? this.self,
    );
  }
}

class Links {
  final String? ticket;

  Links({this.ticket});

  factory Links.fromJson(Map<String, Object?> json) {
    return Links(
      ticket: json[r'ticket'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var ticket = this.ticket;

    final json = <String, Object?>{};
    if (ticket != null) {
      json[r'ticket'] = ticket;
    }
    return json;
  }

  Links copyWith({String? ticket}) {
    return Links(
      ticket: ticket ?? this.ticket,
    );
  }
}

class Meta {
  final String? scheduledDate;
  final String? migrationStartDateTime;
  final String? migrationEndDataTime;
  final String? atlassianAccountId;

  Meta(
      {this.scheduledDate,
      this.migrationStartDateTime,
      this.migrationEndDataTime,
      this.atlassianAccountId});

  factory Meta.fromJson(Map<String, Object?> json) {
    return Meta(
      scheduledDate: json[r'scheduledDate'] as String?,
      migrationStartDateTime: json[r'migrationStartDateTime'] as String?,
      migrationEndDataTime: json[r'migrationEndDataTime'] as String?,
      atlassianAccountId: json[r'atlassianAccountId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var scheduledDate = this.scheduledDate;
    var migrationStartDateTime = this.migrationStartDateTime;
    var migrationEndDataTime = this.migrationEndDataTime;
    var atlassianAccountId = this.atlassianAccountId;

    final json = <String, Object?>{};
    if (scheduledDate != null) {
      json[r'scheduledDate'] = scheduledDate;
    }
    if (migrationStartDateTime != null) {
      json[r'migrationStartDateTime'] = migrationStartDateTime;
    }
    if (migrationEndDataTime != null) {
      json[r'migrationEndDataTime'] = migrationEndDataTime;
    }
    if (atlassianAccountId != null) {
      json[r'atlassianAccountId'] = atlassianAccountId;
    }
    return json;
  }

  Meta copyWith(
      {String? scheduledDate,
      String? migrationStartDateTime,
      String? migrationEndDataTime,
      String? atlassianAccountId}) {
    return Meta(
      scheduledDate: scheduledDate ?? this.scheduledDate,
      migrationStartDateTime:
          migrationStartDateTime ?? this.migrationStartDateTime,
      migrationEndDataTime: migrationEndDataTime ?? this.migrationEndDataTime,
      atlassianAccountId: atlassianAccountId ?? this.atlassianAccountId,
    );
  }
}

class MetaV2 {
  final int? pageSize;
  final int? startIndex;
  final int? endIndex;
  final int? total;

  MetaV2({this.pageSize, this.startIndex, this.endIndex, this.total});

  factory MetaV2.fromJson(Map<String, Object?> json) {
    return MetaV2(
      pageSize: (json[r'pageSize'] as num?)?.toInt(),
      startIndex: (json[r'startIndex'] as num?)?.toInt(),
      endIndex: (json[r'endIndex'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var pageSize = this.pageSize;
    var startIndex = this.startIndex;
    var endIndex = this.endIndex;
    var total = this.total;

    final json = <String, Object?>{};
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    if (startIndex != null) {
      json[r'startIndex'] = startIndex;
    }
    if (endIndex != null) {
      json[r'endIndex'] = endIndex;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  MetaV2 copyWith({int? pageSize, int? startIndex, int? endIndex, int? total}) {
    return MetaV2(
      pageSize: pageSize ?? this.pageSize,
      startIndex: startIndex ?? this.startIndex,
      endIndex: endIndex ?? this.endIndex,
      total: total ?? this.total,
    );
  }
}

class NoPermsError {
  /// Timestamp of the request.
  final String? timestamp;

  /// Path of the request.
  final String? path;

  /// The HTTP status code applicable to this error.
  final NoPermsErrorStatus? status;

  /// The HTTP status text applicable to this error.
  final String? error;

  /// Human-readable explanation of the error.
  final String? message;

  /// Id of the request.
  final String? requestId;

  NoPermsError(
      {this.timestamp,
      this.path,
      this.status,
      this.error,
      this.message,
      this.requestId});

  factory NoPermsError.fromJson(Map<String, Object?> json) {
    return NoPermsError(
      timestamp: json[r'timestamp'] as String?,
      path: json[r'path'] as String?,
      status: json[r'status'] != null
          ? NoPermsErrorStatus.fromValue(json[r'status']! as String)
          : null,
      error: json[r'error'] as String?,
      message: json[r'message'] as String?,
      requestId: json[r'requestId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var timestamp = this.timestamp;
    var path = this.path;
    var status = this.status;
    var error = this.error;
    var message = this.message;
    var requestId = this.requestId;

    final json = <String, Object?>{};
    if (timestamp != null) {
      json[r'timestamp'] = timestamp;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (error != null) {
      json[r'error'] = error;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (requestId != null) {
      json[r'requestId'] = requestId;
    }
    return json;
  }

  NoPermsError copyWith(
      {String? timestamp,
      String? path,
      NoPermsErrorStatus? status,
      String? error,
      String? message,
      String? requestId}) {
    return NoPermsError(
      timestamp: timestamp ?? this.timestamp,
      path: path ?? this.path,
      status: status ?? this.status,
      error: error ?? this.error,
      message: message ?? this.message,
      requestId: requestId ?? this.requestId,
    );
  }
}

class NoPermsErrorStatus {
  static const $403 = NoPermsErrorStatus._('403');

  static const values = [
    $403,
  ];
  final String value;

  const NoPermsErrorStatus._(this.value);

  static NoPermsErrorStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => NoPermsErrorStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class Org {
  final OrgModel? data;

  Org({this.data});

  factory Org.fromJson(Map<String, Object?> json) {
    return Org(
      data: json[r'data'] != null
          ? OrgModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  Org copyWith({OrgModel? data}) {
    return Org(
      data: data ?? this.data,
    );
  }
}

class OrgModel {
  /// Unique identifier of the Org
  final String id;

  /// Type name of this object
  final OrgModelType type;

  /// Attributes of this object
  final OrgModelAttributes attributes;

  /// Relationships of this object
  final OrgModelRelationships relationships;

  /// Link to this Org
  final LinkSelfModel links;

  OrgModel(
      {required this.id,
      required this.type,
      required this.attributes,
      required this.relationships,
      required this.links});

  factory OrgModel.fromJson(Map<String, Object?> json) {
    return OrgModel(
      id: json[r'id'] as String? ?? '',
      type: OrgModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: OrgModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
      relationships: OrgModelRelationships.fromJson(
          json[r'relationships'] as Map<String, Object?>? ?? const {}),
      links: LinkSelfModel.fromJson(
          json[r'links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;
    var relationships = this.relationships;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    json[r'relationships'] = relationships.toJson();
    json[r'links'] = links.toJson();
    return json;
  }

  OrgModel copyWith(
      {String? id,
      OrgModelType? type,
      OrgModelAttributes? attributes,
      OrgModelRelationships? relationships,
      LinkSelfModel? links}) {
    return OrgModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
      relationships: relationships ?? this.relationships,
      links: links ?? this.links,
    );
  }
}

class OrgModelType {
  static const orgs = OrgModelType._('orgs');

  static const values = [
    orgs,
  ];
  final String value;

  const OrgModelType._(this.value);

  static OrgModelType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => OrgModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class OrgModelAttributes {
  /// Name of this Org
  final String? name;

  OrgModelAttributes({this.name});

  factory OrgModelAttributes.fromJson(Map<String, Object?> json) {
    return OrgModelAttributes(
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  OrgModelAttributes copyWith({String? name}) {
    return OrgModelAttributes(
      name: name ?? this.name,
    );
  }
}

/// Relationships of this object
class OrgModelRelationships {
  /// Link to the related Domains of the Org
  final OrgModelRelationshipsDomains? domains;

  /// Link to the related Users of the Org
  final OrgModelRelationshipsUsers? users;

  OrgModelRelationships({this.domains, this.users});

  factory OrgModelRelationships.fromJson(Map<String, Object?> json) {
    return OrgModelRelationships(
      domains: json[r'domains'] != null
          ? OrgModelRelationshipsDomains.fromJson(
              json[r'domains']! as Map<String, Object?>)
          : null,
      users: json[r'users'] != null
          ? OrgModelRelationshipsUsers.fromJson(
              json[r'users']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var domains = this.domains;
    var users = this.users;

    final json = <String, Object?>{};
    if (domains != null) {
      json[r'domains'] = domains.toJson();
    }
    if (users != null) {
      json[r'users'] = users.toJson();
    }
    return json;
  }

  OrgModelRelationships copyWith(
      {OrgModelRelationshipsDomains? domains,
      OrgModelRelationshipsUsers? users}) {
    return OrgModelRelationships(
      domains: domains ?? this.domains,
      users: users ?? this.users,
    );
  }
}

/// Link to the related Domains of the Org
class OrgModelRelationshipsDomains {
  final LinkRelatedModel? links;

  OrgModelRelationshipsDomains({this.links});

  factory OrgModelRelationshipsDomains.fromJson(Map<String, Object?> json) {
    return OrgModelRelationshipsDomains(
      links: json[r'links'] != null
          ? LinkRelatedModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  OrgModelRelationshipsDomains copyWith({LinkRelatedModel? links}) {
    return OrgModelRelationshipsDomains(
      links: links ?? this.links,
    );
  }
}

/// Link to the related Users of the Org
class OrgModelRelationshipsUsers {
  final LinkRelatedModel? links;

  OrgModelRelationshipsUsers({this.links});

  factory OrgModelRelationshipsUsers.fromJson(Map<String, Object?> json) {
    return OrgModelRelationshipsUsers(
      links: json[r'links'] != null
          ? LinkRelatedModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  OrgModelRelationshipsUsers copyWith({LinkRelatedModel? links}) {
    return OrgModelRelationshipsUsers(
      links: links ?? this.links,
    );
  }
}

class OrgPage {
  /// 0 or more values of `Org` are returned
  final List<OrgModel> data;

  /// Links for Pagination.
  final LinkPageModel? links;

  OrgPage({List<OrgModel>? data, this.links}) : data = data ?? [];

  factory OrgPage.fromJson(Map<String, Object?> json) {
    return OrgPage(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) =>
                  OrgModel.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  OrgPage copyWith({List<OrgModel>? data, LinkPageModel? links}) {
    return OrgPage(
      data: data ?? this.data,
      links: links ?? this.links,
    );
  }
}

class PageDataResponseV2 {
  final List<WorkspaceModel> data;
  final LinkPageModel? links;
  final MetaV2? meta;

  PageDataResponseV2({List<WorkspaceModel>? data, this.links, this.meta})
      : data = data ?? [];

  factory PageDataResponseV2.fromJson(Map<String, Object?> json) {
    return PageDataResponseV2(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) => WorkspaceModel.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
      meta: json[r'meta'] != null
          ? MetaV2.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var links = this.links;
    var meta = this.meta;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    return json;
  }

  PageDataResponseV2 copyWith(
      {List<WorkspaceModel>? data, LinkPageModel? links, MetaV2? meta}) {
    return PageDataResponseV2(
      data: data ?? this.data,
      links: links ?? this.links,
      meta: meta ?? this.meta,
    );
  }
}

class Policy {
  final PolicyModel? data;

  Policy({this.data});

  factory Policy.fromJson(Map<String, Object?> json) {
    return Policy(
      data: json[r'data'] != null
          ? PolicyModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  Policy copyWith({PolicyModel? data}) {
    return Policy(
      data: data ?? this.data,
    );
  }
}

class PolicyCreateInput {
  final PolicyCreateModel? data;

  PolicyCreateInput({this.data});

  factory PolicyCreateInput.fromJson(Map<String, Object?> json) {
    return PolicyCreateInput(
      data: json[r'data'] != null
          ? PolicyCreateModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  PolicyCreateInput copyWith({PolicyCreateModel? data}) {
    return PolicyCreateInput(
      data: data ?? this.data,
    );
  }
}

class PolicyCreateModel {
  /// Type of this object
  final PolicyCreateModelType type;

  /// Attributes of this object
  final PolicyCreateModelAttributes attributes;

  PolicyCreateModel({required this.type, required this.attributes});

  factory PolicyCreateModel.fromJson(Map<String, Object?> json) {
    return PolicyCreateModel(
      type: PolicyCreateModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: PolicyCreateModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    return json;
  }

  PolicyCreateModel copyWith(
      {PolicyCreateModelType? type, PolicyCreateModelAttributes? attributes}) {
    return PolicyCreateModel(
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class PolicyCreateModelType {
  static const policy = PolicyCreateModelType._('policy');

  static const values = [
    policy,
  ];
  final String value;

  const PolicyCreateModelType._(this.value);

  static PolicyCreateModelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyCreateModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class PolicyCreateModelAttributes {
  /// Type of this Policy
  final PolicyCreateModelAttributesType type;

  /// Name of this Policy
  final String? name;

  /// Status of this Policy
  final PolicyCreateModelAttributesStatus? status;

  /// Rule of the Policy
  final Map<String, dynamic>? rule;

  /// list of resources Policy is associated with
  final List<ResourceInput> resources;

  PolicyCreateModelAttributes(
      {required this.type,
      this.name,
      this.status,
      this.rule,
      List<ResourceInput>? resources})
      : resources = resources ?? [];

  factory PolicyCreateModelAttributes.fromJson(Map<String, Object?> json) {
    return PolicyCreateModelAttributes(
      type: PolicyCreateModelAttributesType.fromValue(
          json[r'type'] as String? ?? ''),
      name: json[r'name'] as String?,
      status: json[r'status'] != null
          ? PolicyCreateModelAttributesStatus.fromValue(
              json[r'status']! as String)
          : null,
      rule: json[r'rule'] as Map<String, Object?>?,
      resources: (json[r'resources'] as List<Object?>?)
              ?.map((i) => ResourceInput.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;
    var status = this.status;
    var rule = this.rule;
    var resources = this.resources;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (name != null) {
      json[r'name'] = name;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (rule != null) {
      json[r'rule'] = rule;
    }
    json[r'resources'] = resources.map((i) => i.toJson()).toList();
    return json;
  }

  PolicyCreateModelAttributes copyWith(
      {PolicyCreateModelAttributesType? type,
      String? name,
      PolicyCreateModelAttributesStatus? status,
      Map<String, dynamic>? rule,
      List<ResourceInput>? resources}) {
    return PolicyCreateModelAttributes(
      type: type ?? this.type,
      name: name ?? this.name,
      status: status ?? this.status,
      rule: rule ?? this.rule,
      resources: resources ?? this.resources,
    );
  }
}

class PolicyCreateModelAttributesType {
  static const ipAllowlist = PolicyCreateModelAttributesType._('ip-allowlist');
  static const dataResidency =
      PolicyCreateModelAttributesType._('data-residency');

  static const values = [
    ipAllowlist,
    dataResidency,
  ];
  final String value;

  const PolicyCreateModelAttributesType._(this.value);

  static PolicyCreateModelAttributesType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyCreateModelAttributesType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PolicyCreateModelAttributesStatus {
  static const enabled = PolicyCreateModelAttributesStatus._('enabled');
  static const disabled = PolicyCreateModelAttributesStatus._('disabled');

  static const values = [
    enabled,
    disabled,
  ];
  final String value;

  const PolicyCreateModelAttributesStatus._(this.value);

  static PolicyCreateModelAttributesStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyCreateModelAttributesStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Returns workspaces, which contains listed policies.
class PolicyFilter {
  final List<String> value;

  PolicyFilter({List<String>? value}) : value = value ?? [];

  factory PolicyFilter.fromJson(Map<String, Object?> json) {
    return PolicyFilter(
      value: (json[r'value'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    json[r'value'] = value;
    return json;
  }

  PolicyFilter copyWith({List<String>? value}) {
    return PolicyFilter(
      value: value ?? this.value,
    );
  }
}

class PolicyModel {
  /// Unique identifier of the Policy
  final String id;

  /// Type of this object
  final PolicyModelType type;

  /// Attributes of this object
  final PolicyModelAttributes attributes;

  PolicyModel({required this.id, required this.type, required this.attributes});

  factory PolicyModel.fromJson(Map<String, Object?> json) {
    return PolicyModel(
      id: json[r'id'] as String? ?? '',
      type: PolicyModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: PolicyModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    return json;
  }

  PolicyModel copyWith(
      {String? id, PolicyModelType? type, PolicyModelAttributes? attributes}) {
    return PolicyModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class PolicyModelType {
  static const policy = PolicyModelType._('policy');

  static const values = [
    policy,
  ];
  final String value;

  const PolicyModelType._(this.value);

  static PolicyModelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class PolicyModelAttributes {
  /// Type of this Policy
  final PolicyModelAttributesType type;

  /// Name of this Policy
  final String? name;

  /// Status of this Policy
  final PolicyModelAttributesStatus? status;

  /// Rule of the Policy
  final Map<String, dynamic>? rule;

  /// list of resources Policy is associated with
  final List<Resource> resources;

  PolicyModelAttributes(
      {required this.type,
      this.name,
      this.status,
      this.rule,
      List<Resource>? resources})
      : resources = resources ?? [];

  factory PolicyModelAttributes.fromJson(Map<String, Object?> json) {
    return PolicyModelAttributes(
      type: PolicyModelAttributesType.fromValue(json[r'type'] as String? ?? ''),
      name: json[r'name'] as String?,
      status: json[r'status'] != null
          ? PolicyModelAttributesStatus.fromValue(json[r'status']! as String)
          : null,
      rule: json[r'rule'] as Map<String, Object?>?,
      resources: (json[r'resources'] as List<Object?>?)
              ?.map((i) =>
                  Resource.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;
    var status = this.status;
    var rule = this.rule;
    var resources = this.resources;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (name != null) {
      json[r'name'] = name;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (rule != null) {
      json[r'rule'] = rule;
    }
    json[r'resources'] = resources.map((i) => i.toJson()).toList();
    return json;
  }

  PolicyModelAttributes copyWith(
      {PolicyModelAttributesType? type,
      String? name,
      PolicyModelAttributesStatus? status,
      Map<String, dynamic>? rule,
      List<Resource>? resources}) {
    return PolicyModelAttributes(
      type: type ?? this.type,
      name: name ?? this.name,
      status: status ?? this.status,
      rule: rule ?? this.rule,
      resources: resources ?? this.resources,
    );
  }
}

class PolicyModelAttributesType {
  static const ipAllowlist = PolicyModelAttributesType._('ip-allowlist');
  static const dataResidency = PolicyModelAttributesType._('data-residency');

  static const values = [
    ipAllowlist,
    dataResidency,
  ];
  final String value;

  const PolicyModelAttributesType._(this.value);

  static PolicyModelAttributesType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyModelAttributesType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PolicyModelAttributesStatus {
  static const enabled = PolicyModelAttributesStatus._('enabled');
  static const disabled = PolicyModelAttributesStatus._('disabled');

  static const values = [
    enabled,
    disabled,
  ];
  final String value;

  const PolicyModelAttributesStatus._(this.value);

  static PolicyModelAttributesStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyModelAttributesStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PolicyModelV2 {
  final String? id;
  final String? type;
  final PolicyModelV2Attributes? attributes;

  PolicyModelV2({this.id, this.type, this.attributes});

  factory PolicyModelV2.fromJson(Map<String, Object?> json) {
    return PolicyModelV2(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      attributes: json[r'attributes'] != null
          ? PolicyModelV2Attributes.fromJson(
              json[r'attributes']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (attributes != null) {
      json[r'attributes'] = attributes.toJson();
    }
    return json;
  }

  PolicyModelV2 copyWith(
      {String? id, String? type, PolicyModelV2Attributes? attributes}) {
    return PolicyModelV2(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class PolicyModelV2Attributes {
  final Map<String, dynamic>? fields;

  PolicyModelV2Attributes({this.fields});

  factory PolicyModelV2Attributes.fromJson(Map<String, Object?> json) {
    return PolicyModelV2Attributes(
      fields: json[r'fields'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var fields = this.fields;

    final json = <String, Object?>{};
    if (fields != null) {
      json[r'fields'] = fields;
    }
    return json;
  }

  PolicyModelV2Attributes copyWith({Map<String, dynamic>? fields}) {
    return PolicyModelV2Attributes(
      fields: fields ?? this.fields,
    );
  }
}

class PolicyPage {
  /// 0 or more values of Policy are returned
  final List<PolicyModel> data;
  final PolicyPageMeta? meta;

  /// Links for Pagination.
  final LinkPageModel? links;

  PolicyPage({List<PolicyModel>? data, this.meta, this.links})
      : data = data ?? [];

  factory PolicyPage.fromJson(Map<String, Object?> json) {
    return PolicyPage(
      data: (json[r'data'] as List<Object?>?)
              ?.map((i) =>
                  PolicyModel.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? PolicyPageMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  PolicyPage copyWith(
      {List<PolicyModel>? data, PolicyPageMeta? meta, LinkPageModel? links}) {
    return PolicyPage(
      data: data ?? this.data,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PolicyPageMeta {
  /// Value for the next cursor
  final String? next;

  /// Number of items in a page
  final int? pageSize;

  PolicyPageMeta({this.next, this.pageSize});

  factory PolicyPageMeta.fromJson(Map<String, Object?> json) {
    return PolicyPageMeta(
      next: json[r'next'] as String?,
      pageSize: (json[r'page_size'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var next = this.next;
    var pageSize = this.pageSize;

    final json = <String, Object?>{};
    if (next != null) {
      json[r'next'] = next;
    }
    if (pageSize != null) {
      json[r'page_size'] = pageSize;
    }
    return json;
  }

  PolicyPageMeta copyWith({String? next, int? pageSize}) {
    return PolicyPageMeta(
      next: next ?? this.next,
      pageSize: pageSize ?? this.pageSize,
    );
  }
}

class PolicyUpdateInput {
  final PolicyUpdateModel? data;

  PolicyUpdateInput({this.data});

  factory PolicyUpdateInput.fromJson(Map<String, Object?> json) {
    return PolicyUpdateInput(
      data: json[r'data'] != null
          ? PolicyUpdateModel.fromJson(json[r'data']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    return json;
  }

  PolicyUpdateInput copyWith({PolicyUpdateModel? data}) {
    return PolicyUpdateInput(
      data: data ?? this.data,
    );
  }
}

class PolicyUpdateModel {
  /// Unique identifier of the Policy
  final String? id;

  /// Type of this object
  final PolicyUpdateModelType type;

  /// Attributes of this object
  final PolicyUpdateModelAttributes attributes;

  PolicyUpdateModel({this.id, required this.type, required this.attributes});

  factory PolicyUpdateModel.fromJson(Map<String, Object?> json) {
    return PolicyUpdateModel(
      id: json[r'id'] as String?,
      type: PolicyUpdateModelType.fromValue(json[r'type'] as String? ?? ''),
      attributes: PolicyUpdateModelAttributes.fromJson(
          json[r'attributes'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'type'] = type.value;
    json[r'attributes'] = attributes.toJson();
    return json;
  }

  PolicyUpdateModel copyWith(
      {String? id,
      PolicyUpdateModelType? type,
      PolicyUpdateModelAttributes? attributes}) {
    return PolicyUpdateModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
    );
  }
}

class PolicyUpdateModelType {
  static const policy = PolicyUpdateModelType._('policy');

  static const values = [
    policy,
  ];
  final String value;

  const PolicyUpdateModelType._(this.value);

  static PolicyUpdateModelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyUpdateModelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Attributes of this object
class PolicyUpdateModelAttributes {
  /// Type of this Policy
  final PolicyUpdateModelAttributesType type;

  /// Name of this Policy
  final String? name;

  /// Status of this Policy
  final PolicyUpdateModelAttributesStatus? status;

  /// Rule of the Policy
  final Map<String, dynamic>? rule;

  /// list of resources Policy is associated with
  final List<ResourceInput> resources;

  PolicyUpdateModelAttributes(
      {required this.type,
      this.name,
      this.status,
      this.rule,
      List<ResourceInput>? resources})
      : resources = resources ?? [];

  factory PolicyUpdateModelAttributes.fromJson(Map<String, Object?> json) {
    return PolicyUpdateModelAttributes(
      type: PolicyUpdateModelAttributesType.fromValue(
          json[r'type'] as String? ?? ''),
      name: json[r'name'] as String?,
      status: json[r'status'] != null
          ? PolicyUpdateModelAttributesStatus.fromValue(
              json[r'status']! as String)
          : null,
      rule: json[r'rule'] as Map<String, Object?>?,
      resources: (json[r'resources'] as List<Object?>?)
              ?.map((i) => ResourceInput.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;
    var status = this.status;
    var rule = this.rule;
    var resources = this.resources;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (name != null) {
      json[r'name'] = name;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (rule != null) {
      json[r'rule'] = rule;
    }
    json[r'resources'] = resources.map((i) => i.toJson()).toList();
    return json;
  }

  PolicyUpdateModelAttributes copyWith(
      {PolicyUpdateModelAttributesType? type,
      String? name,
      PolicyUpdateModelAttributesStatus? status,
      Map<String, dynamic>? rule,
      List<ResourceInput>? resources}) {
    return PolicyUpdateModelAttributes(
      type: type ?? this.type,
      name: name ?? this.name,
      status: status ?? this.status,
      rule: rule ?? this.rule,
      resources: resources ?? this.resources,
    );
  }
}

class PolicyUpdateModelAttributesType {
  static const ipAllowlist = PolicyUpdateModelAttributesType._('ip-allowlist');
  static const dataResidency =
      PolicyUpdateModelAttributesType._('data-residency');

  static const values = [
    ipAllowlist,
    dataResidency,
  ];
  final String value;

  const PolicyUpdateModelAttributesType._(this.value);

  static PolicyUpdateModelAttributesType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyUpdateModelAttributesType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PolicyUpdateModelAttributesStatus {
  static const enabled = PolicyUpdateModelAttributesStatus._('enabled');
  static const disabled = PolicyUpdateModelAttributesStatus._('disabled');

  static const values = [
    enabled,
    disabled,
  ];
  final String value;

  const PolicyUpdateModelAttributesStatus._(this.value);

  static PolicyUpdateModelAttributesStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PolicyUpdateModelAttributesStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class Product {
  /// Unique key of the Product
  final ProductKey key;

  /// Name of the Product
  final String name;

  /// URL of the Product
  final String? url;

  /// Last active date for a product
  final DateTime? lastActive;

  Product({required this.key, required this.name, this.url, this.lastActive});

  factory Product.fromJson(Map<String, Object?> json) {
    return Product(
      key: ProductKey.fromValue(json[r'key'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
      url: json[r'url'] as String?,
      lastActive: DateTime.tryParse(json[r'last_active'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var name = this.name;
    var url = this.url;
    var lastActive = this.lastActive;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    json[r'name'] = name;
    if (url != null) {
      json[r'url'] = url;
    }
    if (lastActive != null) {
      json[r'last_active'] = lastActive.toIso8601String();
    }
    return json;
  }

  Product copyWith(
      {ProductKey? key, String? name, String? url, DateTime? lastActive}) {
    return Product(
      key: key ?? this.key,
      name: name ?? this.name,
      url: url ?? this.url,
      lastActive: lastActive ?? this.lastActive,
    );
  }
}

class ProductKey {
  static const jiraSoftware = ProductKey._('jira-software');
  static const jiraServiceDesk = ProductKey._('jira-service-desk');
  static const jiraCore = ProductKey._('jira-core');
  static const jiraOps = ProductKey._('jira-ops');
  static const stride = ProductKey._('stride');
  static const hipchat = ProductKey._('hipchat');
  static const confluence = ProductKey._('confluence');
  static const bitbucket = ProductKey._('bitbucket');
  static const trello = ProductKey._('trello');
  static const opsgenie = ProductKey._('opsgenie');
  static const statuspage = ProductKey._('statuspage');

  static const values = [
    jiraSoftware,
    jiraServiceDesk,
    jiraCore,
    jiraOps,
    stride,
    hipchat,
    confluence,
    bitbucket,
    trello,
    opsgenie,
    statuspage,
  ];
  final String value;

  const ProductKey._(this.value);

  static ProductKey fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => ProductKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ProxyError {
  /// The HTTP status code applicable to this error.
  final num? code;

  /// Human-readable explanation of the error.
  final String? message;

  ProxyError({this.code, this.message});

  factory ProxyError.fromJson(Map<String, Object?> json) {
    return ProxyError(
      code: json[r'code'] as num?,
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var code = this.code;
    var message = this.message;

    final json = <String, Object?>{};
    if (code != null) {
      json[r'code'] = code;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  ProxyError copyWith({num? code, String? message}) {
    return ProxyError(
      code: code ?? this.code,
      message: message ?? this.message,
    );
  }
}

/// Possible operators/operand in the event query.
class QueryVariants {
  QueryVariants();

  factory QueryVariants.fromJson(Map<String, Object?> json) {
    return QueryVariants();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class Resource {
  final String id;

  /// Status of policy application on resource
  final ResourceApplicationStatus applicationStatus;
  final Meta? meta;
  final Links? links;

  Resource(
      {required this.id,
      required this.applicationStatus,
      this.meta,
      this.links});

  factory Resource.fromJson(Map<String, Object?> json) {
    return Resource(
      id: json[r'id'] as String? ?? '',
      applicationStatus: ResourceApplicationStatus.fromValue(
          json[r'applicationStatus'] as String? ?? ''),
      meta: json[r'meta'] != null
          ? Meta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? Links.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var applicationStatus = this.applicationStatus;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'applicationStatus'] = applicationStatus.value;
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  Resource copyWith(
      {String? id,
      ResourceApplicationStatus? applicationStatus,
      Meta? meta,
      Links? links}) {
    return Resource(
      id: id ?? this.id,
      applicationStatus: applicationStatus ?? this.applicationStatus,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class ResourceApplicationStatus {
  static const applying = ResourceApplicationStatus._('applying');
  static const removing = ResourceApplicationStatus._('removing');
  static const applied = ResourceApplicationStatus._('applied');
  static const failed = ResourceApplicationStatus._('failed');
  static const scheduled = ResourceApplicationStatus._('scheduled');

  static const values = [
    applying,
    removing,
    applied,
    failed,
    scheduled,
  ];
  final String value;

  const ResourceApplicationStatus._(this.value);

  static ResourceApplicationStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ResourceApplicationStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ResourceInput {
  final String id;
  final Meta? meta;
  final Links? links;

  ResourceInput({required this.id, this.meta, this.links});

  factory ResourceInput.fromJson(Map<String, Object?> json) {
    return ResourceInput(
      id: json[r'id'] as String? ?? '',
      meta: json[r'meta'] != null
          ? Meta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? Links.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  ResourceInput copyWith({String? id, Meta? meta, Links? links}) {
    return ResourceInput(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class ResourceUpdateInput {
  final Meta? meta;
  final Links? links;

  ResourceUpdateInput({this.meta, this.links});

  factory ResourceUpdateInput.fromJson(Map<String, Object?> json) {
    return ResourceUpdateInput(
      meta: json[r'meta'] != null
          ? Meta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? Links.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  ResourceUpdateInput copyWith({Meta? meta, Links? links}) {
    return ResourceUpdateInput(
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class Sandbox {
  final SandboxType? type;

  Sandbox({this.type});

  factory Sandbox.fromJson(Map<String, Object?> json) {
    return Sandbox(
      type: json[r'type'] != null
          ? SandboxType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  Sandbox copyWith({SandboxType? type}) {
    return Sandbox(
      type: type ?? this.type,
    );
  }
}

class SandboxType {
  static const child = SandboxType._('CHILD');
  static const none = SandboxType._('NONE');

  static const values = [
    child,
    none,
  ];
  final String value;

  const SandboxType._(this.value);

  static SandboxType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => SandboxType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Returns workspaces, which partially contain the specified text in workspace
/// name or url.
class SearchWorkspacesOperand {
  final String? value;

  SearchWorkspacesOperand({this.value});

  factory SearchWorkspacesOperand.fromJson(Map<String, Object?> json) {
    return SearchWorkspacesOperand(
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  SearchWorkspacesOperand copyWith({String? value}) {
    return SearchWorkspacesOperand(
      value: value ?? this.value,
    );
  }
}

/// Workspaces request supporting enhanced Workspace searching.
class SearchWorkspacesRequestV2 {
  final QueryVariants? query;

  /// Specifies the maximum page size.
  final int? limit;
  final List<SortField> sort;

  /// A base-64 encoded continuation token used for pagination. When a cursor is
  /// provided in the request body, no other properties may be present.
  final String? cursor;

  SearchWorkspacesRequestV2(
      {this.query, this.limit, List<SortField>? sort, this.cursor})
      : sort = sort ?? [];

  factory SearchWorkspacesRequestV2.fromJson(Map<String, Object?> json) {
    return SearchWorkspacesRequestV2(
      query: json[r'query'] != null
          ? QueryVariants.fromJson(json[r'query']! as Map<String, Object?>)
          : null,
      limit: (json[r'limit'] as num?)?.toInt(),
      sort: (json[r'sort'] as List<Object?>?)
              ?.map((i) =>
                  SortField.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      cursor: json[r'cursor'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var query = this.query;
    var limit = this.limit;
    var sort = this.sort;
    var cursor = this.cursor;

    final json = <String, Object?>{};
    if (query != null) {
      json[r'query'] = query.toJson();
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'sort'] = sort.map((i) => i.toJson()).toList();
    if (cursor != null) {
      json[r'cursor'] = cursor;
    }
    return json;
  }

  SearchWorkspacesRequestV2 copyWith(
      {QueryVariants? query,
      int? limit,
      List<SortField>? sort,
      String? cursor}) {
    return SearchWorkspacesRequestV2(
      query: query ?? this.query,
      limit: limit ?? this.limit,
      sort: sort ?? this.sort,
      cursor: cursor ?? this.cursor,
    );
  }
}

class SortField {
  final String? field;
  final SortFieldOrder? order;

  SortField({this.field, this.order});

  factory SortField.fromJson(Map<String, Object?> json) {
    return SortField(
      field: json[r'field'] as String?,
      order: json[r'order'] != null
          ? SortFieldOrder.fromValue(json[r'order']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var order = this.order;

    final json = <String, Object?>{};
    if (field != null) {
      json[r'field'] = field;
    }
    if (order != null) {
      json[r'order'] = order.value;
    }
    return json;
  }

  SortField copyWith({String? field, SortFieldOrder? order}) {
    return SortField(
      field: field ?? this.field,
      order: order ?? this.order,
    );
  }
}

class SortFieldOrder {
  static const asc = SortFieldOrder._('asc');
  static const desc = SortFieldOrder._('desc');

  static const values = [
    asc,
    desc,
  ];
  final String value;

  const SortFieldOrder._(this.value);

  static SortFieldOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SortFieldOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class User {
  /// The account ID for the user. The format is [a-zA-Z0-9_|-:]{1,128}
  final String accountId;

  /// The type of account
  final UserAccountType accountType;

  /// The lifecycle status of the account
  final UserAccountStatus accountStatus;

  /// The display name of the user. Should be used for contextual rendering of
  /// the authorship in content. If the user has restricted visibility of their
  /// name, their nickname will be displayed as a substitute value
  final String name;

  /// The absolute URI (RFC3986) to the avatar name of the user. Should be used
  /// for contextual rendering of the authorship in content. If the user has
  /// restricted visibility of their avatar, an alternative URI will be provided
  /// as a substitute value
  final String picture;

  /// The email address of the user. If the user has restricted visibility of
  /// the email address, the property will be absent
  final String? email;

  /// Billable status of User in Atlassian Access
  final bool accessBillable;

  /// Last active date for a user
  final DateTime? lastActive;

  /// Products which the User is using
  final List<Product> productAccess;

  /// Link to this User for mutation
  final LinkSelfModel? links;

  User(
      {required this.accountId,
      required this.accountType,
      required this.accountStatus,
      required this.name,
      required this.picture,
      this.email,
      bool? accessBillable,
      this.lastActive,
      List<Product>? productAccess,
      this.links})
      : accessBillable = accessBillable ?? false,
        productAccess = productAccess ?? [];

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      accountId: json[r'account_id'] as String? ?? '',
      accountType:
          UserAccountType.fromValue(json[r'account_type'] as String? ?? ''),
      accountStatus:
          UserAccountStatus.fromValue(json[r'account_status'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
      picture: json[r'picture'] as String? ?? '',
      email: json[r'email'] as String?,
      accessBillable: json[r'access_billable'] as bool? ?? false,
      lastActive: DateTime.tryParse(json[r'last_active'] as String? ?? ''),
      productAccess: (json[r'product_access'] as List<Object?>?)
              ?.map((i) =>
                  Product.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      links: json[r'links'] != null
          ? LinkSelfModel.fromJson(json[r'links']! as Map<String, Object?>)
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
    var accessBillable = this.accessBillable;
    var lastActive = this.lastActive;
    var productAccess = this.productAccess;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'account_id'] = accountId;
    json[r'account_type'] = accountType.value;
    json[r'account_status'] = accountStatus.value;
    json[r'name'] = name;
    json[r'picture'] = picture;
    if (email != null) {
      json[r'email'] = email;
    }
    json[r'access_billable'] = accessBillable;
    if (lastActive != null) {
      json[r'last_active'] = lastActive.toIso8601String();
    }
    json[r'product_access'] = productAccess.map((i) => i.toJson()).toList();
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  User copyWith(
      {String? accountId,
      UserAccountType? accountType,
      UserAccountStatus? accountStatus,
      String? name,
      String? picture,
      String? email,
      bool? accessBillable,
      DateTime? lastActive,
      List<Product>? productAccess,
      LinkSelfModel? links}) {
    return User(
      accountId: accountId ?? this.accountId,
      accountType: accountType ?? this.accountType,
      accountStatus: accountStatus ?? this.accountStatus,
      name: name ?? this.name,
      picture: picture ?? this.picture,
      email: email ?? this.email,
      accessBillable: accessBillable ?? this.accessBillable,
      lastActive: lastActive ?? this.lastActive,
      productAccess: productAccess ?? this.productAccess,
      links: links ?? this.links,
    );
  }
}

class UserAccountType {
  static const atlassian = UserAccountType._('atlassian');
  static const customer = UserAccountType._('customer');
  static const app = UserAccountType._('app');

  static const values = [
    atlassian,
    customer,
    app,
  ];
  final String value;

  const UserAccountType._(this.value);

  static UserAccountType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => UserAccountType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class UserAccountStatus {
  static const active = UserAccountStatus._('active');
  static const inactive = UserAccountStatus._('inactive');
  static const closed = UserAccountStatus._('closed');

  static const values = [
    active,
    inactive,
    closed,
  ];
  final String value;

  const UserAccountStatus._(this.value);

  static UserAccountStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => UserAccountStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class UserPage {
  /// 0 or more values of Users are returned
  final List<User> data;
  final UserPageMeta? meta;

  /// Links for Pagination.
  final LinkPageModel? links;

  UserPage({List<User>? data, this.meta, this.links}) : data = data ?? [];

  factory UserPage.fromJson(Map<String, Object?> json) {
    return UserPage(
      data: (json[r'data'] as List<Object?>?)
              ?.map(
                  (i) => User.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? UserPageMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? LinkPageModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'data'] = data.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  UserPage copyWith(
      {List<User>? data, UserPageMeta? meta, LinkPageModel? links}) {
    return UserPage(
      data: data ?? this.data,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class UserPageMeta {
  /// Total number of users in this Query
  final int? total;

  UserPageMeta({this.total});

  factory UserPageMeta.fromJson(Map<String, Object?> json) {
    return UserPageMeta(
      total: (json[r'total'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var total = this.total;

    final json = <String, Object?>{};
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  UserPageMeta copyWith({int? total}) {
    return UserPageMeta(
      total: total ?? this.total,
    );
  }
}

class UserProductAccessActivityPage {
  final UserProductAccessModel? data;
  final CursorNextPageModel? links;

  UserProductAccessActivityPage({this.data, this.links});

  factory UserProductAccessActivityPage.fromJson(Map<String, Object?> json) {
    return UserProductAccessActivityPage(
      data: json[r'data'] != null
          ? UserProductAccessModel.fromJson(
              json[r'data']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? CursorNextPageModel.fromJson(
              json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var data = this.data;
    var links = this.links;

    final json = <String, Object?>{};
    if (data != null) {
      json[r'data'] = data.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  UserProductAccessActivityPage copyWith(
      {UserProductAccessModel? data, CursorNextPageModel? links}) {
    return UserProductAccessActivityPage(
      data: data ?? this.data,
      links: links ?? this.links,
    );
  }
}

class UserProductAccessModel {
  /// Products accessed by the user
  final List<UserProductLastActive> productAccess;

  /// Date the user was added to the organization in ISO 8601 format.
  final String? addedToOrg;

  UserProductAccessModel({required this.productAccess, this.addedToOrg});

  factory UserProductAccessModel.fromJson(Map<String, Object?> json) {
    return UserProductAccessModel(
      productAccess: (json[r'product_access'] as List<Object?>?)
              ?.map((i) => UserProductLastActive.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      addedToOrg: json[r'added_to_org'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var productAccess = this.productAccess;
    var addedToOrg = this.addedToOrg;

    final json = <String, Object?>{};
    json[r'product_access'] = productAccess.map((i) => i.toJson()).toList();
    if (addedToOrg != null) {
      json[r'added_to_org'] = addedToOrg;
    }
    return json;
  }

  UserProductAccessModel copyWith(
      {List<UserProductLastActive>? productAccess, String? addedToOrg}) {
    return UserProductAccessModel(
      productAccess: productAccess ?? this.productAccess,
      addedToOrg: addedToOrg ?? this.addedToOrg,
    );
  }
}

class UserProductLastActive {
  /// Unique ID of the Product instance
  final String id;

  /// Unique key of the Product
  final UserProductLastActiveKey key;

  /// Last active date for a product
  final String? lastActive;

  UserProductLastActive({required this.id, required this.key, this.lastActive});

  factory UserProductLastActive.fromJson(Map<String, Object?> json) {
    return UserProductLastActive(
      id: json[r'id'] as String? ?? '',
      key: UserProductLastActiveKey.fromValue(json[r'key'] as String? ?? ''),
      lastActive: json[r'last_active'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var lastActive = this.lastActive;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'key'] = key.value;
    if (lastActive != null) {
      json[r'last_active'] = lastActive;
    }
    return json;
  }

  UserProductLastActive copyWith(
      {String? id, UserProductLastActiveKey? key, String? lastActive}) {
    return UserProductLastActive(
      id: id ?? this.id,
      key: key ?? this.key,
      lastActive: lastActive ?? this.lastActive,
    );
  }
}

class UserProductLastActiveKey {
  static const jiraSoftware = UserProductLastActiveKey._('jira-software');
  static const jiraServiceDesk =
      UserProductLastActiveKey._('jira-service-desk');
  static const jiraCore = UserProductLastActiveKey._('jira-core');
  static const jiraOps = UserProductLastActiveKey._('jira-ops');
  static const stride = UserProductLastActiveKey._('stride');
  static const hipchat = UserProductLastActiveKey._('hipchat');
  static const confluence = UserProductLastActiveKey._('confluence');
  static const bitbucket = UserProductLastActiveKey._('bitbucket');
  static const trello = UserProductLastActiveKey._('trello');
  static const opsgenie = UserProductLastActiveKey._('opsgenie');
  static const statuspage = UserProductLastActiveKey._('statuspage');

  static const values = [
    jiraSoftware,
    jiraServiceDesk,
    jiraCore,
    jiraOps,
    stride,
    hipchat,
    confluence,
    bitbucket,
    trello,
    opsgenie,
    statuspage,
  ];
  final String value;

  const UserProductLastActiveKey._(this.value);

  static UserProductLastActiveKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => UserProductLastActiveKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class WorkspaceModel {
  final String? id;
  final String? type;
  final WorkspaceModelAttributes? attributes;
  final LinkSelfModel? links;
  final Map<String, dynamic>? relationships;

  WorkspaceModel(
      {this.id, this.type, this.attributes, this.links, this.relationships});

  factory WorkspaceModel.fromJson(Map<String, Object?> json) {
    return WorkspaceModel(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      attributes: json[r'attributes'] != null
          ? WorkspaceModelAttributes.fromJson(
              json[r'attributes']! as Map<String, Object?>)
          : null,
      links: json[r'links'] != null
          ? LinkSelfModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
      relationships: json[r'relationships'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var attributes = this.attributes;
    var links = this.links;
    var relationships = this.relationships;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (attributes != null) {
      json[r'attributes'] = attributes.toJson();
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    if (relationships != null) {
      json[r'relationships'] = relationships;
    }
    return json;
  }

  WorkspaceModel copyWith(
      {String? id,
      String? type,
      WorkspaceModelAttributes? attributes,
      LinkSelfModel? links,
      Map<String, dynamic>? relationships}) {
    return WorkspaceModel(
      id: id ?? this.id,
      type: type ?? this.type,
      attributes: attributes ?? this.attributes,
      links: links ?? this.links,
      relationships: relationships ?? this.relationships,
    );
  }
}

class WorkspaceModelAttributes {
  final String? name;
  final String? typeKey;
  final String? type;
  final String? owner;
  final WorkspaceModelAttributesStatus? status;
  final List<String> statusDetails;
  final Map<String, dynamic>? icons;
  final Map<String, dynamic>? avatars;
  final List<String> labels;
  final Sandbox? sandbox;
  final int? usage;
  final int? capacity;
  final String? createdAt;
  final String? createdBy;
  final String? updatedAt;
  final String? hostUrl;
  final String? realm;
  final List<String> regions;

  WorkspaceModelAttributes(
      {this.name,
      this.typeKey,
      this.type,
      this.owner,
      this.status,
      List<String>? statusDetails,
      this.icons,
      this.avatars,
      List<String>? labels,
      this.sandbox,
      this.usage,
      this.capacity,
      this.createdAt,
      this.createdBy,
      this.updatedAt,
      this.hostUrl,
      this.realm,
      List<String>? regions})
      : statusDetails = statusDetails ?? [],
        labels = labels ?? [],
        regions = regions ?? [];

  factory WorkspaceModelAttributes.fromJson(Map<String, Object?> json) {
    return WorkspaceModelAttributes(
      name: json[r'name'] as String?,
      typeKey: json[r'typeKey'] as String?,
      type: json[r'type'] as String?,
      owner: json[r'owner'] as String?,
      status: json[r'status'] != null
          ? WorkspaceModelAttributesStatus.fromValue(json[r'status']! as String)
          : null,
      statusDetails: (json[r'statusDetails'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      icons: json[r'icons'] as Map<String, Object?>?,
      avatars: json[r'avatars'] as Map<String, Object?>?,
      labels: (json[r'labels'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      sandbox: json[r'sandbox'] != null
          ? Sandbox.fromJson(json[r'sandbox']! as Map<String, Object?>)
          : null,
      usage: (json[r'usage'] as num?)?.toInt(),
      capacity: (json[r'capacity'] as num?)?.toInt(),
      createdAt: json[r'createdAt'] as String?,
      createdBy: json[r'createdBy'] as String?,
      updatedAt: json[r'updatedAt'] as String?,
      hostUrl: json[r'hostUrl'] as String?,
      realm: json[r'realm'] as String?,
      regions: (json[r'regions'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var typeKey = this.typeKey;
    var type = this.type;
    var owner = this.owner;
    var status = this.status;
    var statusDetails = this.statusDetails;
    var icons = this.icons;
    var avatars = this.avatars;
    var labels = this.labels;
    var sandbox = this.sandbox;
    var usage = this.usage;
    var capacity = this.capacity;
    var createdAt = this.createdAt;
    var createdBy = this.createdBy;
    var updatedAt = this.updatedAt;
    var hostUrl = this.hostUrl;
    var realm = this.realm;
    var regions = this.regions;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (typeKey != null) {
      json[r'typeKey'] = typeKey;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (owner != null) {
      json[r'owner'] = owner;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    json[r'statusDetails'] = statusDetails;
    if (icons != null) {
      json[r'icons'] = icons;
    }
    if (avatars != null) {
      json[r'avatars'] = avatars;
    }
    json[r'labels'] = labels;
    if (sandbox != null) {
      json[r'sandbox'] = sandbox.toJson();
    }
    if (usage != null) {
      json[r'usage'] = usage;
    }
    if (capacity != null) {
      json[r'capacity'] = capacity;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt;
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt;
    }
    if (hostUrl != null) {
      json[r'hostUrl'] = hostUrl;
    }
    if (realm != null) {
      json[r'realm'] = realm;
    }
    json[r'regions'] = regions;
    return json;
  }

  WorkspaceModelAttributes copyWith(
      {String? name,
      String? typeKey,
      String? type,
      String? owner,
      WorkspaceModelAttributesStatus? status,
      List<String>? statusDetails,
      Map<String, dynamic>? icons,
      Map<String, dynamic>? avatars,
      List<String>? labels,
      Sandbox? sandbox,
      int? usage,
      int? capacity,
      String? createdAt,
      String? createdBy,
      String? updatedAt,
      String? hostUrl,
      String? realm,
      List<String>? regions}) {
    return WorkspaceModelAttributes(
      name: name ?? this.name,
      typeKey: typeKey ?? this.typeKey,
      type: type ?? this.type,
      owner: owner ?? this.owner,
      status: status ?? this.status,
      statusDetails: statusDetails ?? this.statusDetails,
      icons: icons ?? this.icons,
      avatars: avatars ?? this.avatars,
      labels: labels ?? this.labels,
      sandbox: sandbox ?? this.sandbox,
      usage: usage ?? this.usage,
      capacity: capacity ?? this.capacity,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      updatedAt: updatedAt ?? this.updatedAt,
      hostUrl: hostUrl ?? this.hostUrl,
      realm: realm ?? this.realm,
      regions: regions ?? this.regions,
    );
  }
}

class WorkspaceModelAttributesStatus {
  static const online = WorkspaceModelAttributesStatus._('online');
  static const offline = WorkspaceModelAttributesStatus._('offline');
  static const deprecated = WorkspaceModelAttributesStatus._('deprecated');

  static const values = [
    online,
    offline,
    deprecated,
  ];
  final String value;

  const WorkspaceModelAttributesStatus._(this.value);

  static WorkspaceModelAttributesStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => WorkspaceModelAttributesStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}
