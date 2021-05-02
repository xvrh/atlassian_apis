// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class AdminOrganizationApi {
  final ApiClient _client;

  AdminOrganizationApi(this._client);

  /// Returns a list of your organizations (based on your API key).
  Future<OrgPage> getOrgs({String? cursor}) async {
    return OrgPage.fromJson(await _client.send(
      'get',
      'orgs',
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }

  /// Returns information about a single organization by ID
  Future<Org> getOrgById(String orgId) async {
    return Org.fromJson(await _client.send(
      'get',
      'orgs/{orgId}',
      pathParameters: {
        'orgId': orgId,
      },
    ));
  }

  /// Returns a list of users in an organization.
  Future<UserPage> getUsers({required String orgId, String? cursor}) async {
    return UserPage.fromJson(await _client.send(
      'get',
      'orgs/{orgId}/users',
      pathParameters: {
        'orgId': orgId,
      },
      queryParameters: {
        if (cursor != null) 'cursor': cursor,
      },
    ));
  }

  /// Returns a list of domains in an organization one page at a time.
  Future<DomainPage> getDomains({required String orgId, String? cursor}) async {
    return DomainPage.fromJson(await _client.send(
      'get',
      'orgs/{orgId}/domains',
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
      'orgs/{orgId}/domains/{domainId}',
      pathParameters: {
        'orgId': orgId,
        'domainId': domainId,
      },
    ));
  }

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
      'orgs/{orgId}/events',
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
      'orgs/{orgId}/events/{eventId}',
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
      'orgs/{orgId}/event-actions',
      pathParameters: {
        'orgId': orgId,
      },
    ));
  }

  /// Returns information about org policies
  Future<PolicyPage> getPolicies(
      {required String orgId, String? cursor, String? type}) async {
    return PolicyPage.fromJson(await _client.send(
      'get',
      'orgs/{orgId}/policies',
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
      'orgs/{orgId}/policies',
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
      'orgs/{orgId}/policies/{policyId}',
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
      'orgs/{orgId}/policies/{policyId}',
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
      'orgs/{orgId}/policies/{policyId}',
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
      'orgs/{orgId}/policies/{policyId}/resources',
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
      'orgs/{orgId}/policies/{policyId}/resources/{resourceId}',
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
      'orgs/{orgId}/policies/{policyId}/resources/{resourceId}',
      pathParameters: {
        'orgId': orgId,
        'policyId': policyId,
        'resourceId': resourceId,
      },
    ));
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

class ApplicationError {
  /// A unique identifier for this particular occurrence of the error.
  final String? id;

  /// The HTTP status code applicable to this error.
  final String? status;

  /// An application-specific error code:
  ///   - `ADMIN-400-1` - Invalid page cursor
  ///   - `ADMIN-400-2` - Invalid domain identifier
  ///   - `ADMIN-400-3` - Invalid time date
  ///   - `ADMIN-400-4` - Invalid resource
  ///   - `ADMIN-404-1` - Unknown resource
  ///   - `ADMIN-404-2` - Organization not found
  ///   - `ADMIN-404-3` - Domain not found
  ///   - `ADMIN-404-4` - Event not found
  ///   - `ADMIN-404-5` - Policy not found
  ///   - `ADMIN-405-1` - Method not supported
  ///   - `ADMIN-429-1` - Limit exceeded
  ///   - `ADMIN-500-1` - Internal error
  final String? code;

  /// Human-readable summary of the error
  final String? title;

  /// Human-readable explanation specific to this occurrence of the error.
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

  /// Link to this Actor
  final LinkSelfModel? links;

  EventActorModel({required this.id, this.name, this.links});

  factory EventActorModel.fromJson(Map<String, Object?> json) {
    return EventActorModel(
      id: json[r'id'] as String? ?? '',
      name: json[r'name'] as String?,
      links: json[r'links'] != null
          ? LinkSelfModel.fromJson(json[r'links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
    if (links != null) {
      json[r'links'] = links.toJson();
    }
    return json;
  }

  EventActorModel copyWith({String? id, String? name, LinkSelfModel? links}) {
    return EventActorModel(
      id: id ?? this.id,
      name: name ?? this.name,
      links: links ?? this.links,
    );
  }
}

class EventLocationModel {
  /// IP address
  final String? ip;

  /// Geo location of the IP address
  final String? geo;

  EventLocationModel({this.ip, this.geo});

  factory EventLocationModel.fromJson(Map<String, Object?> json) {
    return EventLocationModel(
      ip: json[r'ip'] as String?,
      geo: json[r'geo'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var ip = this.ip;
    var geo = this.geo;

    final json = <String, Object?>{};
    if (ip != null) {
      json[r'ip'] = ip;
    }
    if (geo != null) {
      json[r'geo'] = geo;
    }
    return json;
  }

  EventLocationModel copyWith({String? ip, String? geo}) {
    return EventLocationModel(
      ip: ip ?? this.ip,
      geo: geo ?? this.geo,
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

  Meta({this.scheduledDate});

  factory Meta.fromJson(Map<String, Object?> json) {
    return Meta(
      scheduledDate: json[r'scheduledDate'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var scheduledDate = this.scheduledDate;

    final json = <String, Object?>{};
    if (scheduledDate != null) {
      json[r'scheduledDate'] = scheduledDate;
    }
    return json;
  }

  Meta copyWith({String? scheduledDate}) {
    return Meta(
      scheduledDate: scheduledDate ?? this.scheduledDate,
    );
  }
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
