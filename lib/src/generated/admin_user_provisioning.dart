// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class AdminUserProvisioningApi {
  final ApiClient _client;

  AdminUserProvisioningApi(this._client);

  late final groups = GroupsApi(_client);

  late final schemas = SchemasApi(_client);

  late final serviceProviderConfiguration =
      ServiceProviderConfigurationApi(_client);

  /// The following user attributes can be updated through the user provisioning
  /// API.
  ///
  /// | User profile field | SCIM field        | Attribute type | Required |
  /// |--------------------|-------------------|----------------|----------|
  /// | Display name       | displayName       | Singular       | false    |
  /// | Email address      | emails            | Multi-Valued   | true     |
  /// | Organization       | organization      | Singular       | false    |
  /// | Job title          | title             | Singular       | false    |
  /// | Timezone           | timezone          | Singular       | false    |
  /// | Department         | department        | Singular       | false    |
  /// | Preferred language | preferredLanguage | Singular       | false    |
  late final users = UsersApi(_client);

  void close() => _client.close();
}

/// Rest APIs

class GroupsApi {
  final ApiClient _client;

  GroupsApi(this._client);

  /// Get a group from a directory by group ID.
  Future<ScimGroup> get(
      {required String directoryId, required String id}) async {
    return ScimGroup.fromJson(await _client.send(
      'get',
      'scim/directory/{directoryId}/Groups/{id}',
      pathParameters: {
        'directoryId': directoryId,
        'id': id,
      },
    ));
  }

  /// Update a group in a directory by group ID.
  Future<ScimGroup> put(
      {required String directoryId, required String id}) async {
    return ScimGroup.fromJson(await _client.send(
      'put',
      'scim/directory/{directoryId}/Groups/{id}',
      pathParameters: {
        'directoryId': directoryId,
        'id': id,
      },
    ));
  }

  /// Delete a group from a directory. An attempt to delete a non-existent
  /// group fails with a 404 (Resource Not found) error.
  ///
  /// **Note**: Deleting a synced group from your identity provider will delete
  /// the group from your organization's directory and associated sites.
  /// 1. If this group is used for allocating product license (granting role in
  /// a product), then members of this group may lose access to corresponding
  /// product after group deletion.
  /// 2. If this group is used to grant permissions in product, then members of
  /// this group may lose their permissions in the corresponding product.
  Future<void> deleteaGroup(
      {required String directoryId, required String id}) async {
    await _client.send(
      'delete',
      'scim/directory/{directoryId}/Groups/{id}',
      pathParameters: {
        'directoryId': directoryId,
        'id': id,
      },
    );
  }

  /// Get groups from a directory. Filtering is supported with a single exact
  /// match (`eq`) against  the `displayName` attribute. Pagination is
  /// supported. Sorting is not supported.
  Future<ScimGroupListResponse> getAllGroupsFromAnActiveDirectory(
      {required String directoryId,
      String? filter,
      int? startIndex,
      int? count}) async {
    return ScimGroupListResponse.fromJson(await _client.send(
      'get',
      'scim/directory/{directoryId}/Groups',
      pathParameters: {
        'directoryId': directoryId,
      },
      queryParameters: {
        if (filter != null) 'filter': filter,
        if (startIndex != null) 'startIndex': '$startIndex',
        if (count != null) 'count': '$count',
      },
    ));
  }

  /// Create a group in a directory. An attempt to create a group with an
  /// existing  name fails with a 409 (Conflict) error.
  Future<ScimGroup> createaGroupInActiveDirectory(String directoryId) async {
    return ScimGroup.fromJson(await _client.send(
      'post',
      'scim/directory/{directoryId}/Groups',
      pathParameters: {
        'directoryId': directoryId,
      },
    ));
  }
}

/// Rest APIs

class SchemasApi {
  final ApiClient _client;

  SchemasApi(this._client);

  /// Get all SCIM features metadata. Filtering, pagination and sorting are  not
  /// supported.
  Future<String> getSchemas(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/Schemas',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Get the user schemas from the SCIM provider. Filtering, pagination and
  /// sorting  are not supported.
  Future<String> getUserSchemas(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/Schemas/urn:ietf:params:scim:schemas:core:2.0:User',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Get the group schemas from the SCIM provider. Filtering, pagination and
  /// sorting are not  supported.
  Future<String> getGroupSchemas(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/Schemas/urn:ietf:params:scim:schemas:core:2.0:Group',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Get the user enterprise extension schemas from the SCIM provider.
  /// Filtering, pagination and  sorting are not supported.
  Future<String> getExtensionUserSchemas(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/Schemas/urn:ietf:params:scim:schemas:extension:enterprise:2.0:User',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Get metadata about the supported SCIM features. This is a service provider
  /// configuration  endpoint providing supported SCIM features. Filtering,
  /// pagination and sorting are not  supported.
  Future<String> getConfig(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/ServiceProviderConfig',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }
}

/// Rest APIs

class ServiceProviderConfigurationApi {
  final ApiClient _client;

  ServiceProviderConfigurationApi(this._client);

  /// Get types of resources available on a SCIM service provider (e.g., Users
  /// and Groups). This  is used to get all resources of the SCIM provider.
  /// Filtering, pagination and sorting are  not supported.
  Future<String> getResourceTypes(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/ResourceTypes',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Retrieve user resource types from the SCIM service provider. Filtering,
  /// pagination and  sorting are not supported.
  Future<String> getUserResourceType(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/ResourceTypes/User',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }

  /// Retrieve group resource type of this SCIM service provider. Filtering,
  /// pagination and sorting  are not supported.
  Future<String> getGroupResourceType(String directoryId) async {
    return await _client.send(
      'get',
      'scim/directory/{directoryId}/ResourceTypes/Group',
      pathParameters: {
        'directoryId': directoryId,
      },
    ) as String;
  }
}

/// Rest APIs

class UsersApi {
  final ApiClient _client;

  UsersApi(this._client);

  /// Get a user from a directory by `userId`.
  Future<ScimUser> getaUserFromActiveDirectory(
      {required String directoryId,
      required String userId,
      String? attributes,
      String? excludedAttributes}) async {
    return ScimUser.fromJson(await _client.send(
      'get',
      'scim/directory/{directoryId}/Users/{userId}',
      pathParameters: {
        'directoryId': directoryId,
        'userId': userId,
      },
      queryParameters: {
        if (attributes != null) 'attributes': attributes,
        if (excludedAttributes != null)
          'excludedAttributes': excludedAttributes,
      },
    ));
  }

  /// Updates a user's information in a directory by `userId` via user
  /// attributes. User information  is replaced attribute-by-attribute, with the
  /// exception of immutable and read-only  attributes. Existing values of
  /// unspecified attributes are cleaned.
  Future<ScimUser> updateUserInformationInAnActiveDirectory(
      {required String directoryId,
      required String userId,
      String? attributes,
      String? excludedAttributes,
      required ScimUser body}) async {
    return ScimUser.fromJson(await _client.send(
      'put',
      'scim/directory/{directoryId}/Users/{userId}',
      pathParameters: {
        'directoryId': directoryId,
        'userId': userId,
      },
      queryParameters: {
        if (attributes != null) 'attributes': attributes,
        if (excludedAttributes != null)
          'excludedAttributes': excludedAttributes,
      },
      body: body.toJson(),
    ));
  }

  /// Deactivate a user by `userId`. The user is not available for future
  /// requests until  activated again. Any future operation for the deactivated
  /// user returns the 404  (resource not found) error.
  Future<void> deleteaUserFromAnActiveDirectory(
      {required String directoryId, required String userId}) async {
    await _client.send(
      'delete',
      'scim/directory/{directoryId}/Users/{userId}',
      pathParameters: {
        'directoryId': directoryId,
        'userId': userId,
      },
    );
  }

  /// Get users from the specified directory. Filtering is supported with a
  /// single exact match  (`eq`) against the `userName` and `externalId`
  /// attributes. Pagination is supported. Sorting  is not supported.
  Future<ScimUserListResponse> getUsersFromAnActiveDirectory(
      {required String directoryId,
      String? attributes,
      String? excludedAttributes,
      String? filter,
      int? startIndex,
      int? count}) async {
    return ScimUserListResponse.fromJson(await _client.send(
      'get',
      'scim/directory/{directoryId}/Users',
      pathParameters: {
        'directoryId': directoryId,
      },
      queryParameters: {
        if (attributes != null) 'attributes': attributes,
        if (excludedAttributes != null)
          'excludedAttributes': excludedAttributes,
        if (filter != null) 'filter': filter,
        if (startIndex != null) 'startIndex': '$startIndex',
        if (count != null) 'count': '$count',
      },
    ));
  }

  /// Create a user in a directory. An attempt to create an existing user fails
  /// with a 409 (Conflict) error. A user account can only be created if it has
  /// an email address on a verified domain. If a managed Atlassian account
  /// already exists on the Atlassian platform for the specified email address,
  /// the user in your identity provider is linked to the user in your Atlassian
  /// organization.
  Future<ScimUser> createaUserInAnActiveDirectory(
      {required String directoryId,
      String? attributes,
      String? excludedAttributes,
      required ScimUser body}) async {
    return ScimUser.fromJson(await _client.send(
      'post',
      'scim/directory/{directoryId}/Users',
      pathParameters: {
        'directoryId': directoryId,
      },
      queryParameters: {
        if (attributes != null) 'attributes': attributes,
        if (excludedAttributes != null)
          'excludedAttributes': excludedAttributes,
      },
      body: body.toJson(),
    ));
  }
}

class BadRequestException {
  final Throwable? cause;
  final List<StackTraceElement> stackTrace;
  final BadRequestExceptionResponseStatus? responseStatus;
  final BadRequestExceptionScimErrorType? scimErrorType;
  final String? message;
  final String? localizedMessage;
  final List<Throwable> suppressed;

  BadRequestException(
      {this.cause,
      List<StackTraceElement>? stackTrace,
      this.responseStatus,
      this.scimErrorType,
      this.message,
      this.localizedMessage,
      List<Throwable>? suppressed})
      : stackTrace = stackTrace ?? [],
        suppressed = suppressed ?? [];

  factory BadRequestException.fromJson(Map<String, Object?> json) {
    return BadRequestException(
      cause: json[r'cause'] != null
          ? Throwable.fromJson(json[r'cause']! as Map<String, Object?>)
          : null,
      stackTrace: (json[r'stackTrace'] as List<Object?>?)
              ?.map((i) => StackTraceElement.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      responseStatus: json[r'responseStatus'] != null
          ? BadRequestExceptionResponseStatus.fromValue(
              json[r'responseStatus']! as String)
          : null,
      scimErrorType: json[r'scimErrorType'] != null
          ? BadRequestExceptionScimErrorType.fromValue(
              json[r'scimErrorType']! as String)
          : null,
      message: json[r'message'] as String?,
      localizedMessage: json[r'localizedMessage'] as String?,
      suppressed: (json[r'suppressed'] as List<Object?>?)
              ?.map((i) =>
                  Throwable.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var cause = this.cause;
    var stackTrace = this.stackTrace;
    var responseStatus = this.responseStatus;
    var scimErrorType = this.scimErrorType;
    var message = this.message;
    var localizedMessage = this.localizedMessage;
    var suppressed = this.suppressed;

    final json = <String, Object?>{};
    if (cause != null) {
      json[r'cause'] = cause.toJson();
    }
    json[r'stackTrace'] = stackTrace.map((i) => i.toJson()).toList();
    if (responseStatus != null) {
      json[r'responseStatus'] = responseStatus.value;
    }
    if (scimErrorType != null) {
      json[r'scimErrorType'] = scimErrorType.value;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (localizedMessage != null) {
      json[r'localizedMessage'] = localizedMessage;
    }
    json[r'suppressed'] = suppressed.map((i) => i.toJson()).toList();
    return json;
  }

  BadRequestException copyWith(
      {Throwable? cause,
      List<StackTraceElement>? stackTrace,
      BadRequestExceptionResponseStatus? responseStatus,
      BadRequestExceptionScimErrorType? scimErrorType,
      String? message,
      String? localizedMessage,
      List<Throwable>? suppressed}) {
    return BadRequestException(
      cause: cause ?? this.cause,
      stackTrace: stackTrace ?? this.stackTrace,
      responseStatus: responseStatus ?? this.responseStatus,
      scimErrorType: scimErrorType ?? this.scimErrorType,
      message: message ?? this.message,
      localizedMessage: localizedMessage ?? this.localizedMessage,
      suppressed: suppressed ?? this.suppressed,
    );
  }
}

class BadRequestExceptionResponseStatus {
  static const ok = BadRequestExceptionResponseStatus._('OK');
  static const created = BadRequestExceptionResponseStatus._('CREATED');
  static const accepted = BadRequestExceptionResponseStatus._('ACCEPTED');
  static const noContent = BadRequestExceptionResponseStatus._('NO_CONTENT');
  static const resetContent =
      BadRequestExceptionResponseStatus._('RESET_CONTENT');
  static const partialContent =
      BadRequestExceptionResponseStatus._('PARTIAL_CONTENT');
  static const movedPermanently =
      BadRequestExceptionResponseStatus._('MOVED_PERMANENTLY');
  static const found = BadRequestExceptionResponseStatus._('FOUND');
  static const seeOther = BadRequestExceptionResponseStatus._('SEE_OTHER');
  static const notModified =
      BadRequestExceptionResponseStatus._('NOT_MODIFIED');
  static const useProxy = BadRequestExceptionResponseStatus._('USE_PROXY');
  static const temporaryRedirect =
      BadRequestExceptionResponseStatus._('TEMPORARY_REDIRECT');
  static const badRequest = BadRequestExceptionResponseStatus._('BAD_REQUEST');
  static const unauthorized =
      BadRequestExceptionResponseStatus._('UNAUTHORIZED');
  static const paymentRequired =
      BadRequestExceptionResponseStatus._('PAYMENT_REQUIRED');
  static const forbidden = BadRequestExceptionResponseStatus._('FORBIDDEN');
  static const notFound = BadRequestExceptionResponseStatus._('NOT_FOUND');
  static const methodNotAllowed =
      BadRequestExceptionResponseStatus._('METHOD_NOT_ALLOWED');
  static const notAcceptable =
      BadRequestExceptionResponseStatus._('NOT_ACCEPTABLE');
  static const proxyAuthenticationRequired =
      BadRequestExceptionResponseStatus._('PROXY_AUTHENTICATION_REQUIRED');
  static const requestTimeout =
      BadRequestExceptionResponseStatus._('REQUEST_TIMEOUT');
  static const conflict = BadRequestExceptionResponseStatus._('CONFLICT');
  static const gone = BadRequestExceptionResponseStatus._('GONE');
  static const lengthRequired =
      BadRequestExceptionResponseStatus._('LENGTH_REQUIRED');
  static const preconditionFailed =
      BadRequestExceptionResponseStatus._('PRECONDITION_FAILED');
  static const requestEntityTooLarge =
      BadRequestExceptionResponseStatus._('REQUEST_ENTITY_TOO_LARGE');
  static const requestUriTooLong =
      BadRequestExceptionResponseStatus._('REQUEST_URI_TOO_LONG');
  static const unsupportedMediaType =
      BadRequestExceptionResponseStatus._('UNSUPPORTED_MEDIA_TYPE');
  static const requestedRangeNotSatisfiable =
      BadRequestExceptionResponseStatus._('REQUESTED_RANGE_NOT_SATISFIABLE');
  static const expectationFailed =
      BadRequestExceptionResponseStatus._('EXPECTATION_FAILED');
  static const internalServerError =
      BadRequestExceptionResponseStatus._('INTERNAL_SERVER_ERROR');
  static const notImplemented =
      BadRequestExceptionResponseStatus._('NOT_IMPLEMENTED');
  static const badGateway = BadRequestExceptionResponseStatus._('BAD_GATEWAY');
  static const serviceUnavailable =
      BadRequestExceptionResponseStatus._('SERVICE_UNAVAILABLE');
  static const gatewayTimeout =
      BadRequestExceptionResponseStatus._('GATEWAY_TIMEOUT');
  static const httpVersionNotSupported =
      BadRequestExceptionResponseStatus._('HTTP_VERSION_NOT_SUPPORTED');

  static const values = [
    ok,
    created,
    accepted,
    noContent,
    resetContent,
    partialContent,
    movedPermanently,
    found,
    seeOther,
    notModified,
    useProxy,
    temporaryRedirect,
    badRequest,
    unauthorized,
    paymentRequired,
    forbidden,
    notFound,
    methodNotAllowed,
    notAcceptable,
    proxyAuthenticationRequired,
    requestTimeout,
    conflict,
    gone,
    lengthRequired,
    preconditionFailed,
    requestEntityTooLarge,
    requestUriTooLong,
    unsupportedMediaType,
    requestedRangeNotSatisfiable,
    expectationFailed,
    internalServerError,
    notImplemented,
    badGateway,
    serviceUnavailable,
    gatewayTimeout,
    httpVersionNotSupported,
  ];
  final String value;

  const BadRequestExceptionResponseStatus._(this.value);

  static BadRequestExceptionResponseStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BadRequestExceptionResponseStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BadRequestExceptionScimErrorType {
  static const invalidFilter =
      BadRequestExceptionScimErrorType._('invalidFilter');
  static const tooMany = BadRequestExceptionScimErrorType._('tooMany');
  static const uniqueness = BadRequestExceptionScimErrorType._('uniqueness');
  static const mutability = BadRequestExceptionScimErrorType._('mutability');
  static const invalidSyntax =
      BadRequestExceptionScimErrorType._('invalidSyntax');
  static const invalidPath = BadRequestExceptionScimErrorType._('invalidPath');
  static const noTarget = BadRequestExceptionScimErrorType._('noTarget');
  static const invalidValue =
      BadRequestExceptionScimErrorType._('invalidValue');
  static const invalidVers = BadRequestExceptionScimErrorType._('invalidVers');
  static const sensitive = BadRequestExceptionScimErrorType._('sensitive');

  static const values = [
    invalidFilter,
    tooMany,
    uniqueness,
    mutability,
    invalidSyntax,
    invalidPath,
    noTarget,
    invalidValue,
    invalidVers,
    sensitive,
  ];
  final String value;

  const BadRequestExceptionScimErrorType._(this.value);

  static BadRequestExceptionScimErrorType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BadRequestExceptionScimErrorType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// SCIM enterprise user extension
class EnterpriseUserExtension {
  /// Organization the user belongs to.
  final String? organization;

  /// Department the user belongs to.
  final String? department;

  EnterpriseUserExtension({this.organization, this.department});

  factory EnterpriseUserExtension.fromJson(Map<String, Object?> json) {
    return EnterpriseUserExtension(
      organization: json[r'organization'] as String?,
      department: json[r'department'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var organization = this.organization;
    var department = this.department;

    final json = <String, Object?>{};
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (department != null) {
      json[r'department'] = department;
    }
    return json;
  }

  EnterpriseUserExtension copyWith({String? organization, String? department}) {
    return EnterpriseUserExtension(
      organization: organization ?? this.organization,
      department: department ?? this.department,
    );
  }
}

class ExternalAtlassianScimExtension {
  final String? atlassianAccountId;

  ExternalAtlassianScimExtension({this.atlassianAccountId});

  factory ExternalAtlassianScimExtension.fromJson(Map<String, Object?> json) {
    return ExternalAtlassianScimExtension(
      atlassianAccountId: json[r'atlassianAccountId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var atlassianAccountId = this.atlassianAccountId;

    final json = <String, Object?>{};
    if (atlassianAccountId != null) {
      json[r'atlassianAccountId'] = atlassianAccountId;
    }
    return json;
  }

  ExternalAtlassianScimExtension copyWith({String? atlassianAccountId}) {
    return ExternalAtlassianScimExtension(
      atlassianAccountId: atlassianAccountId ?? this.atlassianAccountId,
    );
  }
}

class Failure {
  /// Human readable error message
  final String? error;

  /// Trace ID that can be used to find log messages
  final String? traceId;

  Failure({this.error, this.traceId});

  factory Failure.fromJson(Map<String, Object?> json) {
    return Failure(
      error: json[r'error'] as String?,
      traceId: json[r'traceId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var error = this.error;
    var traceId = this.traceId;

    final json = <String, Object?>{};
    if (error != null) {
      json[r'error'] = error;
    }
    if (traceId != null) {
      json[r'traceId'] = traceId;
    }
    return json;
  }

  Failure copyWith({String? error, String? traceId}) {
    return Failure(
      error: error ?? this.error,
      traceId: traceId ?? this.traceId,
    );
  }
}

class JsonNode {
  final bool array;
  final bool null$;
  final bool valueNode;
  final bool containerNode;
  final bool missingNode;
  final bool object;
  final JsonNodeNodeType? nodeType;
  final bool pojo;
  final bool number;
  final bool integralNumber;
  final bool floatingPointNumber;
  final bool short;
  final bool int$;
  final bool long;
  final bool double$;
  final bool bigDecimal;
  final bool bigInteger;
  final bool textual;
  final bool boolean;
  final bool binary;
  final bool float;

  JsonNode(
      {bool? array,
      bool? null$,
      bool? valueNode,
      bool? containerNode,
      bool? missingNode,
      bool? object,
      this.nodeType,
      bool? pojo,
      bool? number,
      bool? integralNumber,
      bool? floatingPointNumber,
      bool? short,
      bool? int$,
      bool? long,
      bool? double$,
      bool? bigDecimal,
      bool? bigInteger,
      bool? textual,
      bool? boolean,
      bool? binary,
      bool? float})
      : array = array ?? false,
        null$ = null$ ?? false,
        valueNode = valueNode ?? false,
        containerNode = containerNode ?? false,
        missingNode = missingNode ?? false,
        object = object ?? false,
        pojo = pojo ?? false,
        number = number ?? false,
        integralNumber = integralNumber ?? false,
        floatingPointNumber = floatingPointNumber ?? false,
        short = short ?? false,
        int$ = int$ ?? false,
        long = long ?? false,
        double$ = double$ ?? false,
        bigDecimal = bigDecimal ?? false,
        bigInteger = bigInteger ?? false,
        textual = textual ?? false,
        boolean = boolean ?? false,
        binary = binary ?? false,
        float = float ?? false;

  factory JsonNode.fromJson(Map<String, Object?> json) {
    return JsonNode(
      array: json[r'array'] as bool? ?? false,
      null$: json[r'null'] as bool? ?? false,
      valueNode: json[r'valueNode'] as bool? ?? false,
      containerNode: json[r'containerNode'] as bool? ?? false,
      missingNode: json[r'missingNode'] as bool? ?? false,
      object: json[r'object'] as bool? ?? false,
      nodeType: json[r'nodeType'] != null
          ? JsonNodeNodeType.fromValue(json[r'nodeType']! as String)
          : null,
      pojo: json[r'pojo'] as bool? ?? false,
      number: json[r'number'] as bool? ?? false,
      integralNumber: json[r'integralNumber'] as bool? ?? false,
      floatingPointNumber: json[r'floatingPointNumber'] as bool? ?? false,
      short: json[r'short'] as bool? ?? false,
      int$: json[r'int'] as bool? ?? false,
      long: json[r'long'] as bool? ?? false,
      double$: json[r'double'] as bool? ?? false,
      bigDecimal: json[r'bigDecimal'] as bool? ?? false,
      bigInteger: json[r'bigInteger'] as bool? ?? false,
      textual: json[r'textual'] as bool? ?? false,
      boolean: json[r'boolean'] as bool? ?? false,
      binary: json[r'binary'] as bool? ?? false,
      float: json[r'float'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var array = this.array;
    var null$ = this.null$;
    var valueNode = this.valueNode;
    var containerNode = this.containerNode;
    var missingNode = this.missingNode;
    var object = this.object;
    var nodeType = this.nodeType;
    var pojo = this.pojo;
    var number = this.number;
    var integralNumber = this.integralNumber;
    var floatingPointNumber = this.floatingPointNumber;
    var short = this.short;
    var int$ = this.int$;
    var long = this.long;
    var double$ = this.double$;
    var bigDecimal = this.bigDecimal;
    var bigInteger = this.bigInteger;
    var textual = this.textual;
    var boolean = this.boolean;
    var binary = this.binary;
    var float = this.float;

    final json = <String, Object?>{};
    json[r'array'] = array;
    json[r'null'] = null$;
    json[r'valueNode'] = valueNode;
    json[r'containerNode'] = containerNode;
    json[r'missingNode'] = missingNode;
    json[r'object'] = object;
    if (nodeType != null) {
      json[r'nodeType'] = nodeType.value;
    }
    json[r'pojo'] = pojo;
    json[r'number'] = number;
    json[r'integralNumber'] = integralNumber;
    json[r'floatingPointNumber'] = floatingPointNumber;
    json[r'short'] = short;
    json[r'int'] = int$;
    json[r'long'] = long;
    json[r'double'] = double$;
    json[r'bigDecimal'] = bigDecimal;
    json[r'bigInteger'] = bigInteger;
    json[r'textual'] = textual;
    json[r'boolean'] = boolean;
    json[r'binary'] = binary;
    json[r'float'] = float;
    return json;
  }

  JsonNode copyWith(
      {bool? array,
      bool? null$,
      bool? valueNode,
      bool? containerNode,
      bool? missingNode,
      bool? object,
      JsonNodeNodeType? nodeType,
      bool? pojo,
      bool? number,
      bool? integralNumber,
      bool? floatingPointNumber,
      bool? short,
      bool? int$,
      bool? long,
      bool? double$,
      bool? bigDecimal,
      bool? bigInteger,
      bool? textual,
      bool? boolean,
      bool? binary,
      bool? float}) {
    return JsonNode(
      array: array ?? this.array,
      null$: null$ ?? this.null$,
      valueNode: valueNode ?? this.valueNode,
      containerNode: containerNode ?? this.containerNode,
      missingNode: missingNode ?? this.missingNode,
      object: object ?? this.object,
      nodeType: nodeType ?? this.nodeType,
      pojo: pojo ?? this.pojo,
      number: number ?? this.number,
      integralNumber: integralNumber ?? this.integralNumber,
      floatingPointNumber: floatingPointNumber ?? this.floatingPointNumber,
      short: short ?? this.short,
      int$: int$ ?? this.int$,
      long: long ?? this.long,
      double$: double$ ?? this.double$,
      bigDecimal: bigDecimal ?? this.bigDecimal,
      bigInteger: bigInteger ?? this.bigInteger,
      textual: textual ?? this.textual,
      boolean: boolean ?? this.boolean,
      binary: binary ?? this.binary,
      float: float ?? this.float,
    );
  }
}

class JsonNodeNodeType {
  static const array = JsonNodeNodeType._('ARRAY');
  static const binary = JsonNodeNodeType._('BINARY');
  static const boolean = JsonNodeNodeType._('BOOLEAN');
  static const missing = JsonNodeNodeType._('MISSING');
  static const null$ = JsonNodeNodeType._('NULL');
  static const number = JsonNodeNodeType._('NUMBER');
  static const object = JsonNodeNodeType._('OBJECT');
  static const pojo = JsonNodeNodeType._('POJO');
  static const string = JsonNodeNodeType._('STRING');

  static const values = [
    array,
    binary,
    boolean,
    missing,
    null$,
    number,
    object,
    pojo,
    string,
  ];
  final String value;

  const JsonNodeNodeType._(this.value);

  static JsonNodeNodeType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => JsonNodeNodeType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Operation for a SCIM patch
class OperationForAScimPatch {
  final String? op;
  final String? path;
  final JsonNode? value;

  OperationForAScimPatch({this.op, this.path, this.value});

  factory OperationForAScimPatch.fromJson(Map<String, Object?> json) {
    return OperationForAScimPatch(
      op: json[r'op'] as String?,
      path: json[r'path'] as String?,
      value: json[r'value'] != null
          ? JsonNode.fromJson(json[r'value']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var op = this.op;
    var path = this.path;
    var value = this.value;

    final json = <String, Object?>{};
    if (op != null) {
      json[r'op'] = op;
    }
    if (path != null) {
      json[r'path'] = path;
    }
    if (value != null) {
      json[r'value'] = value.toJson();
    }
    return json;
  }

  OperationForAScimPatch copyWith({String? op, String? path, JsonNode? value}) {
    return OperationForAScimPatch(
      op: op ?? this.op,
      path: path ?? this.path,
      value: value ?? this.value,
    );
  }
}

/// Request object to patch a scim user
class RequestPayloadToPatch {
  /// SCIM patch schemas.
  final List<String> schemas;

  /// SCIM patch operations.
  final List<OperationForAScimPatch> operations;

  RequestPayloadToPatch(
      {List<String>? schemas, List<OperationForAScimPatch>? operations})
      : schemas = schemas ?? [],
        operations = operations ?? [];

  factory RequestPayloadToPatch.fromJson(Map<String, Object?> json) {
    return RequestPayloadToPatch(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationForAScimPatch.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var operations = this.operations;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    return json;
  }

  RequestPayloadToPatch copyWith(
      {List<String>? schemas, List<OperationForAScimPatch>? operations}) {
    return RequestPayloadToPatch(
      schemas: schemas ?? this.schemas,
      operations: operations ?? this.operations,
    );
  }
}

/// SCIM Error
class ScimError {
  /// SCIM error schemas.
  final List<String> schemas;

  /// The HTTP status code.
  final String? status;

  /// Keyword for SCIM detail error.
  final ScimErrorScimType? scimType;

  /// Detailed human-readable message.
  final String? detail;

  ScimError({List<String>? schemas, this.status, this.scimType, this.detail})
      : schemas = schemas ?? [];

  factory ScimError.fromJson(Map<String, Object?> json) {
    return ScimError(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      status: json[r'status'] as String?,
      scimType: json[r'scimType'] != null
          ? ScimErrorScimType.fromValue(json[r'scimType']! as String)
          : null,
      detail: json[r'detail'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var status = this.status;
    var scimType = this.scimType;
    var detail = this.detail;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    if (status != null) {
      json[r'status'] = status;
    }
    if (scimType != null) {
      json[r'scimType'] = scimType.value;
    }
    if (detail != null) {
      json[r'detail'] = detail;
    }
    return json;
  }

  ScimError copyWith(
      {List<String>? schemas,
      String? status,
      ScimErrorScimType? scimType,
      String? detail}) {
    return ScimError(
      schemas: schemas ?? this.schemas,
      status: status ?? this.status,
      scimType: scimType ?? this.scimType,
      detail: detail ?? this.detail,
    );
  }
}

class ScimErrorScimType {
  static const invalidFilter = ScimErrorScimType._('invalidFilter');
  static const tooMany = ScimErrorScimType._('tooMany');
  static const uniqueness = ScimErrorScimType._('uniqueness');
  static const mutability = ScimErrorScimType._('mutability');
  static const invalidSyntax = ScimErrorScimType._('invalidSyntax');
  static const invalidPath = ScimErrorScimType._('invalidPath');
  static const noTarget = ScimErrorScimType._('noTarget');
  static const invalidValue = ScimErrorScimType._('invalidValue');
  static const invalidVers = ScimErrorScimType._('invalidVers');
  static const sensitive = ScimErrorScimType._('sensitive');

  static const values = [
    invalidFilter,
    tooMany,
    uniqueness,
    mutability,
    invalidSyntax,
    invalidPath,
    noTarget,
    invalidValue,
    invalidVers,
    sensitive,
  ];
  final String value;

  const ScimErrorScimType._(this.value);

  static ScimErrorScimType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ScimErrorScimType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// SCIM group
class ScimGroup {
  /// SCIM schemas that define the attributes present in the current JSON
  /// structure. This field  is required during user creation or modification.
  final List<String> schemas;

  /// Unique identifier defined by Atlassian SCIM Service. This field is
  /// read-only and case-sensitive.  It is ignored if specified in the payload
  /// during user creation or modification.
  final String? id;

  /// Identifier defined by provisioning client. CaseExact. Uniqueness is
  /// controlled by client.
  final String? externalId;

  /// Group display name. This field is immutable, required, and read-only.
  final String? displayName;

  /// Group members
  final List<ScimGroupMember> members;

  /// Group metadata information.
  final ScimMetadata? meta;

  ScimGroup(
      {List<String>? schemas,
      this.id,
      this.externalId,
      this.displayName,
      List<ScimGroupMember>? members,
      this.meta})
      : schemas = schemas ?? [],
        members = members ?? [];

  factory ScimGroup.fromJson(Map<String, Object?> json) {
    return ScimGroup(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      id: json[r'id'] as String?,
      externalId: json[r'externalId'] as String?,
      displayName: json[r'displayName'] as String?,
      members: (json[r'members'] as List<Object?>?)
              ?.map((i) => ScimGroupMember.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? ScimMetadata.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var id = this.id;
    var externalId = this.externalId;
    var displayName = this.displayName;
    var members = this.members;
    var meta = this.meta;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    if (id != null) {
      json[r'id'] = id;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    json[r'members'] = members.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    return json;
  }

  ScimGroup copyWith(
      {List<String>? schemas,
      String? id,
      String? externalId,
      String? displayName,
      List<ScimGroupMember>? members,
      ScimMetadata? meta}) {
    return ScimGroup(
      schemas: schemas ?? this.schemas,
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      displayName: displayName ?? this.displayName,
      members: members ?? this.members,
      meta: meta ?? this.meta,
    );
  }
}

/// SCIM group for user
class ScimGroupForUser {
  final String? type;
  final String? value;
  final String? display;
  final String? ref;

  ScimGroupForUser({this.type, this.value, this.display, this.ref});

  factory ScimGroupForUser.fromJson(Map<String, Object?> json) {
    return ScimGroupForUser(
      type: json[r'type'] as String?,
      value: json[r'value'] as String?,
      display: json[r'display'] as String?,
      ref: json[r'$ref'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var value = this.value;
    var display = this.display;
    var ref = this.ref;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (display != null) {
      json[r'display'] = display;
    }
    if (ref != null) {
      json[r'$ref'] = ref;
    }
    return json;
  }

  ScimGroupForUser copyWith(
      {String? type, String? value, String? display, String? ref}) {
    return ScimGroupForUser(
      type: type ?? this.type,
      value: value ?? this.value,
      display: display ?? this.display,
      ref: ref ?? this.ref,
    );
  }
}

/// SCIM group list response
class ScimGroupListResponse {
  /// SCIM schemas that define list of response.
  final List<String> schemas;

  /// The total number of results returned by the query operation. The value may
  /// be larger than  the number of resources returned, such as when returning a
  /// single page of results from a  larger result set.
  final int? totalResults;

  /// The 1-based index of the first result in the current set of list results.
  final int? startIndex;

  /// The number of resources returned in a list response page.
  final int? itemsPerPage;

  /// The list of resource objects.
  final List<ScimGroup> resources;

  ScimGroupListResponse(
      {List<String>? schemas,
      this.totalResults,
      this.startIndex,
      this.itemsPerPage,
      List<ScimGroup>? resources})
      : schemas = schemas ?? [],
        resources = resources ?? [];

  factory ScimGroupListResponse.fromJson(Map<String, Object?> json) {
    return ScimGroupListResponse(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      totalResults: (json[r'totalResults'] as num?)?.toInt(),
      startIndex: (json[r'startIndex'] as num?)?.toInt(),
      itemsPerPage: (json[r'itemsPerPage'] as num?)?.toInt(),
      resources: (json[r'Resources'] as List<Object?>?)
              ?.map((i) =>
                  ScimGroup.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var totalResults = this.totalResults;
    var startIndex = this.startIndex;
    var itemsPerPage = this.itemsPerPage;
    var resources = this.resources;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    if (totalResults != null) {
      json[r'totalResults'] = totalResults;
    }
    if (startIndex != null) {
      json[r'startIndex'] = startIndex;
    }
    if (itemsPerPage != null) {
      json[r'itemsPerPage'] = itemsPerPage;
    }
    json[r'Resources'] = resources.map((i) => i.toJson()).toList();
    return json;
  }

  ScimGroupListResponse copyWith(
      {List<String>? schemas,
      int? totalResults,
      int? startIndex,
      int? itemsPerPage,
      List<ScimGroup>? resources}) {
    return ScimGroupListResponse(
      schemas: schemas ?? this.schemas,
      totalResults: totalResults ?? this.totalResults,
      startIndex: startIndex ?? this.startIndex,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      resources: resources ?? this.resources,
    );
  }
}

/// SCIM group member
class ScimGroupMember {
  final String? type;
  final String? value;
  final String? display;
  final String? ref;

  ScimGroupMember({this.type, this.value, this.display, this.ref});

  factory ScimGroupMember.fromJson(Map<String, Object?> json) {
    return ScimGroupMember(
      type: json[r'type'] as String?,
      value: json[r'value'] as String?,
      display: json[r'display'] as String?,
      ref: json[r'$ref'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var value = this.value;
    var display = this.display;
    var ref = this.ref;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (display != null) {
      json[r'display'] = display;
    }
    if (ref != null) {
      json[r'$ref'] = ref;
    }
    return json;
  }

  ScimGroupMember copyWith(
      {String? type, String? value, String? display, String? ref}) {
    return ScimGroupMember(
      type: type ?? this.type,
      value: value ?? this.value,
      display: display ?? this.display,
      ref: ref ?? this.ref,
    );
  }
}

/// SCIM metadata
class ScimMetadata {
  /// The name of the resource type of the resource. This field is read-only and
  ///  case-sensitive.
  final ScimMetadataResourceType? resourceType;

  /// The URI of the resource being returned. This field is read-only.
  final String? location;

  /// The most recent DateTime that the details of this resource were updated.
  /// This  field is read-only.
  final DateTime? lastModified;

  /// The DateTime that the resource was added to Atlassian SCIM service. This
  /// field  is read-only.
  final DateTime? created;

  ScimMetadata(
      {this.resourceType, this.location, this.lastModified, this.created});

  factory ScimMetadata.fromJson(Map<String, Object?> json) {
    return ScimMetadata(
      resourceType: json[r'resourceType'] != null
          ? ScimMetadataResourceType.fromValue(json[r'resourceType']! as String)
          : null,
      location: json[r'location'] as String?,
      lastModified: DateTime.tryParse(json[r'lastModified'] as String? ?? ''),
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var resourceType = this.resourceType;
    var location = this.location;
    var lastModified = this.lastModified;
    var created = this.created;

    final json = <String, Object?>{};
    if (resourceType != null) {
      json[r'resourceType'] = resourceType.value;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    if (lastModified != null) {
      json[r'lastModified'] = lastModified.toIso8601String();
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    return json;
  }

  ScimMetadata copyWith(
      {ScimMetadataResourceType? resourceType,
      String? location,
      DateTime? lastModified,
      DateTime? created}) {
    return ScimMetadata(
      resourceType: resourceType ?? this.resourceType,
      location: location ?? this.location,
      lastModified: lastModified ?? this.lastModified,
      created: created ?? this.created,
    );
  }
}

class ScimMetadataResourceType {
  static const user = ScimMetadataResourceType._('USER');
  static const group = ScimMetadataResourceType._('GROUP');
  static const directory = ScimMetadataResourceType._('DIRECTORY');

  static const values = [
    user,
    group,
    directory,
  ];
  final String value;

  const ScimMetadataResourceType._(this.value);

  static ScimMetadataResourceType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ScimMetadataResourceType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// SCIM user
class ScimUser {
  /// SCIM schemas that define the attributes present in the current JSON
  /// structure This field is required during user creation or modification.
  final List<String> schemas;

  /// Unique identifier defined by the provisioning client. Atlassian SCIM
  /// service will verify  the value and guarantee its uniqueness. This field is
  /// required during  user creation or modification.
  final String? userName;

  /// Email addresses for the User. This field is required during user creation
  /// or modification.  One value must be marked as primary.
  final List<ScimUserEmail> emails;

  /// Unique identifier defined by Atlassian SCIM Service. CaseExact. This field
  /// is read-only and is be ignored during user creation or modification if
  /// specified in the payload.
  final String? id;

  /// Identifier defined by provisioning client. This field is case-sensitive.
  /// Uniqueness is  controlled by client.
  final String? externalId;

  /// The components of the user's name.
  final ScimUserName? name;

  /// User display name.
  final String? displayName;

  /// User nickname.
  final String? nickName;

  /// User title.
  final String? title;

  /// User preferred language.
  final String? preferredLanguage;

  /// User department.
  final String? department;

  /// User organization.
  final String? organization;

  /// User timezone. e.g. America/Los_Angeles .
  final String? timezone;

  /// Phone numbers for the user.
  final List<ScimUserPhoneNumber> phoneNumbers;

  /// User metadata information.
  final ScimMetadata? meta;

  /// SCIM groups user belongs to.
  final List<ScimGroupForUser> groups;

  /// Enterprise user information
  final EnterpriseUserExtension?
      urnIetfParamsScimSchemasExtensionEnterprise20User;

  /// Atlassian specific SCIM Extension
  final ExternalAtlassianScimExtension?
      urnScimSchemasExtensionAtlassianExternal10;

  /// A Boolean value indicating the user's administrative status.
  final bool active;

  ScimUser(
      {List<String>? schemas,
      this.userName,
      List<ScimUserEmail>? emails,
      this.id,
      this.externalId,
      this.name,
      this.displayName,
      this.nickName,
      this.title,
      this.preferredLanguage,
      this.department,
      this.organization,
      this.timezone,
      List<ScimUserPhoneNumber>? phoneNumbers,
      this.meta,
      List<ScimGroupForUser>? groups,
      this.urnIetfParamsScimSchemasExtensionEnterprise20User,
      this.urnScimSchemasExtensionAtlassianExternal10,
      bool? active})
      : schemas = schemas ?? [],
        emails = emails ?? [],
        phoneNumbers = phoneNumbers ?? [],
        groups = groups ?? [],
        active = active ?? false;

  factory ScimUser.fromJson(Map<String, Object?> json) {
    return ScimUser(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      userName: json[r'userName'] as String?,
      emails: (json[r'emails'] as List<Object?>?)
              ?.map((i) => ScimUserEmail.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      id: json[r'id'] as String?,
      externalId: json[r'externalId'] as String?,
      name: json[r'name'] != null
          ? ScimUserName.fromJson(json[r'name']! as Map<String, Object?>)
          : null,
      displayName: json[r'displayName'] as String?,
      nickName: json[r'nickName'] as String?,
      title: json[r'title'] as String?,
      preferredLanguage: json[r'preferredLanguage'] as String?,
      department: json[r'department'] as String?,
      organization: json[r'organization'] as String?,
      timezone: json[r'timezone'] as String?,
      phoneNumbers: (json[r'phoneNumbers'] as List<Object?>?)
              ?.map((i) => ScimUserPhoneNumber.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? ScimMetadata.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      groups: (json[r'groups'] as List<Object?>?)
              ?.map((i) => ScimGroupForUser.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      urnIetfParamsScimSchemasExtensionEnterprise20User: json[
                  r'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User'] !=
              null
          ? EnterpriseUserExtension.fromJson(json[
                  r'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User']!
              as Map<String, Object?>)
          : null,
      urnScimSchemasExtensionAtlassianExternal10:
          json[r'urn:scim:schemas:extension:atlassian-external:1.0'] != null
              ? ExternalAtlassianScimExtension.fromJson(
                  json[r'urn:scim:schemas:extension:atlassian-external:1.0']!
                      as Map<String, Object?>)
              : null,
      active: json[r'active'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var userName = this.userName;
    var emails = this.emails;
    var id = this.id;
    var externalId = this.externalId;
    var name = this.name;
    var displayName = this.displayName;
    var nickName = this.nickName;
    var title = this.title;
    var preferredLanguage = this.preferredLanguage;
    var department = this.department;
    var organization = this.organization;
    var timezone = this.timezone;
    var phoneNumbers = this.phoneNumbers;
    var meta = this.meta;
    var groups = this.groups;
    var urnIetfParamsScimSchemasExtensionEnterprise20User =
        this.urnIetfParamsScimSchemasExtensionEnterprise20User;
    var urnScimSchemasExtensionAtlassianExternal10 =
        this.urnScimSchemasExtensionAtlassianExternal10;
    var active = this.active;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    if (userName != null) {
      json[r'userName'] = userName;
    }
    json[r'emails'] = emails.map((i) => i.toJson()).toList();
    if (id != null) {
      json[r'id'] = id;
    }
    if (externalId != null) {
      json[r'externalId'] = externalId;
    }
    if (name != null) {
      json[r'name'] = name.toJson();
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (nickName != null) {
      json[r'nickName'] = nickName;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (preferredLanguage != null) {
      json[r'preferredLanguage'] = preferredLanguage;
    }
    if (department != null) {
      json[r'department'] = department;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (timezone != null) {
      json[r'timezone'] = timezone;
    }
    json[r'phoneNumbers'] = phoneNumbers.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    json[r'groups'] = groups.map((i) => i.toJson()).toList();
    if (urnIetfParamsScimSchemasExtensionEnterprise20User != null) {
      json[r'urn:ietf:params:scim:schemas:extension:enterprise:2.0:User'] =
          urnIetfParamsScimSchemasExtensionEnterprise20User.toJson();
    }
    if (urnScimSchemasExtensionAtlassianExternal10 != null) {
      json[r'urn:scim:schemas:extension:atlassian-external:1.0'] =
          urnScimSchemasExtensionAtlassianExternal10.toJson();
    }
    json[r'active'] = active;
    return json;
  }

  ScimUser copyWith(
      {List<String>? schemas,
      String? userName,
      List<ScimUserEmail>? emails,
      String? id,
      String? externalId,
      ScimUserName? name,
      String? displayName,
      String? nickName,
      String? title,
      String? preferredLanguage,
      String? department,
      String? organization,
      String? timezone,
      List<ScimUserPhoneNumber>? phoneNumbers,
      ScimMetadata? meta,
      List<ScimGroupForUser>? groups,
      EnterpriseUserExtension?
          urnIetfParamsScimSchemasExtensionEnterprise20User,
      ExternalAtlassianScimExtension?
          urnScimSchemasExtensionAtlassianExternal10,
      bool? active}) {
    return ScimUser(
      schemas: schemas ?? this.schemas,
      userName: userName ?? this.userName,
      emails: emails ?? this.emails,
      id: id ?? this.id,
      externalId: externalId ?? this.externalId,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      nickName: nickName ?? this.nickName,
      title: title ?? this.title,
      preferredLanguage: preferredLanguage ?? this.preferredLanguage,
      department: department ?? this.department,
      organization: organization ?? this.organization,
      timezone: timezone ?? this.timezone,
      phoneNumbers: phoneNumbers ?? this.phoneNumbers,
      meta: meta ?? this.meta,
      groups: groups ?? this.groups,
      urnIetfParamsScimSchemasExtensionEnterprise20User:
          urnIetfParamsScimSchemasExtensionEnterprise20User ??
              this.urnIetfParamsScimSchemasExtensionEnterprise20User,
      urnScimSchemasExtensionAtlassianExternal10:
          urnScimSchemasExtensionAtlassianExternal10 ??
              this.urnScimSchemasExtensionAtlassianExternal10,
      active: active ?? this.active,
    );
  }
}

/// SCIM user email
class ScimUserEmail {
  /// Email address.
  final String? value;

  /// Type of email address, for example "work" or "personal".
  final String? type;

  /// Boolean value indicating whether this is the primary email address.
  final bool primary;

  ScimUserEmail({this.value, this.type, bool? primary})
      : primary = primary ?? false;

  factory ScimUserEmail.fromJson(Map<String, Object?> json) {
    return ScimUserEmail(
      value: json[r'value'] as String?,
      type: json[r'type'] as String?,
      primary: json[r'primary'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var type = this.type;
    var primary = this.primary;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    json[r'primary'] = primary;
    return json;
  }

  ScimUserEmail copyWith({String? value, String? type, bool? primary}) {
    return ScimUserEmail(
      value: value ?? this.value,
      type: type ?? this.type,
      primary: primary ?? this.primary,
    );
  }
}

/// SCIM user list response
class ScimUserListResponse {
  /// SCIM schemas that define list of response.
  final List<String> schemas;

  /// The total number of results returned by query operation. The value may be
  /// larger than  the number of resources returned, such as when returning a
  /// single page of results from a  larger result set.
  final int? totalResults;

  /// The 1-based index of the first result in the current set of list results.
  final int? startIndex;

  /// The number of resources returned in a list response page.
  final int? itemsPerPage;

  /// The list of resource objects.
  final List<ScimUser> resources;

  ScimUserListResponse(
      {List<String>? schemas,
      this.totalResults,
      this.startIndex,
      this.itemsPerPage,
      List<ScimUser>? resources})
      : schemas = schemas ?? [],
        resources = resources ?? [];

  factory ScimUserListResponse.fromJson(Map<String, Object?> json) {
    return ScimUserListResponse(
      schemas: (json[r'schemas'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      totalResults: (json[r'totalResults'] as num?)?.toInt(),
      startIndex: (json[r'startIndex'] as num?)?.toInt(),
      itemsPerPage: (json[r'itemsPerPage'] as num?)?.toInt(),
      resources: (json[r'Resources'] as List<Object?>?)
              ?.map((i) =>
                  ScimUser.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var schemas = this.schemas;
    var totalResults = this.totalResults;
    var startIndex = this.startIndex;
    var itemsPerPage = this.itemsPerPage;
    var resources = this.resources;

    final json = <String, Object?>{};
    json[r'schemas'] = schemas;
    if (totalResults != null) {
      json[r'totalResults'] = totalResults;
    }
    if (startIndex != null) {
      json[r'startIndex'] = startIndex;
    }
    if (itemsPerPage != null) {
      json[r'itemsPerPage'] = itemsPerPage;
    }
    json[r'Resources'] = resources.map((i) => i.toJson()).toList();
    return json;
  }

  ScimUserListResponse copyWith(
      {List<String>? schemas,
      int? totalResults,
      int? startIndex,
      int? itemsPerPage,
      List<ScimUser>? resources}) {
    return ScimUserListResponse(
      schemas: schemas ?? this.schemas,
      totalResults: totalResults ?? this.totalResults,
      startIndex: startIndex ?? this.startIndex,
      itemsPerPage: itemsPerPage ?? this.itemsPerPage,
      resources: resources ?? this.resources,
    );
  }
}

/// SCIM user name
class ScimUserName {
  /// The full name, including all middle names, titles, and suffixes as
  /// appropriate, formatted for display.
  final String? formatted;

  /// The family name of the User.
  final String? familyName;

  /// The given name of the User.
  final String? givenName;

  /// The middle name(s) of the User.
  final String? middleName;

  /// The honorific prefix(es) of the User, or title in most Western languages.
  final String? honorificPrefix;

  /// The honorific suffix(es) of the User, or suffix in most Western languages.
  final String? honorificSuffix;

  ScimUserName(
      {this.formatted,
      this.familyName,
      this.givenName,
      this.middleName,
      this.honorificPrefix,
      this.honorificSuffix});

  factory ScimUserName.fromJson(Map<String, Object?> json) {
    return ScimUserName(
      formatted: json[r'formatted'] as String?,
      familyName: json[r'familyName'] as String?,
      givenName: json[r'givenName'] as String?,
      middleName: json[r'middleName'] as String?,
      honorificPrefix: json[r'honorificPrefix'] as String?,
      honorificSuffix: json[r'honorificSuffix'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var formatted = this.formatted;
    var familyName = this.familyName;
    var givenName = this.givenName;
    var middleName = this.middleName;
    var honorificPrefix = this.honorificPrefix;
    var honorificSuffix = this.honorificSuffix;

    final json = <String, Object?>{};
    if (formatted != null) {
      json[r'formatted'] = formatted;
    }
    if (familyName != null) {
      json[r'familyName'] = familyName;
    }
    if (givenName != null) {
      json[r'givenName'] = givenName;
    }
    if (middleName != null) {
      json[r'middleName'] = middleName;
    }
    if (honorificPrefix != null) {
      json[r'honorificPrefix'] = honorificPrefix;
    }
    if (honorificSuffix != null) {
      json[r'honorificSuffix'] = honorificSuffix;
    }
    return json;
  }

  ScimUserName copyWith(
      {String? formatted,
      String? familyName,
      String? givenName,
      String? middleName,
      String? honorificPrefix,
      String? honorificSuffix}) {
    return ScimUserName(
      formatted: formatted ?? this.formatted,
      familyName: familyName ?? this.familyName,
      givenName: givenName ?? this.givenName,
      middleName: middleName ?? this.middleName,
      honorificPrefix: honorificPrefix ?? this.honorificPrefix,
      honorificSuffix: honorificSuffix ?? this.honorificSuffix,
    );
  }
}

/// SCIM user phone number
class ScimUserPhoneNumber {
  /// Phone number.
  final String? value;

  /// Type of phone number, for example `work` or `personal`
  final String? type;

  /// Boolean value indicating whether phone number is primary.
  final bool primary;

  ScimUserPhoneNumber({this.value, this.type, bool? primary})
      : primary = primary ?? false;

  factory ScimUserPhoneNumber.fromJson(Map<String, Object?> json) {
    return ScimUserPhoneNumber(
      value: json[r'value'] as String?,
      type: json[r'type'] as String?,
      primary: json[r'primary'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var type = this.type;
    var primary = this.primary;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    json[r'primary'] = primary;
    return json;
  }

  ScimUserPhoneNumber copyWith({String? value, String? type, bool? primary}) {
    return ScimUserPhoneNumber(
      value: value ?? this.value,
      type: type ?? this.type,
      primary: primary ?? this.primary,
    );
  }
}

class StackTraceElement {
  final String? methodName;
  final String? fileName;
  final int? lineNumber;
  final String? className;
  final bool nativeMethod;

  StackTraceElement(
      {this.methodName,
      this.fileName,
      this.lineNumber,
      this.className,
      bool? nativeMethod})
      : nativeMethod = nativeMethod ?? false;

  factory StackTraceElement.fromJson(Map<String, Object?> json) {
    return StackTraceElement(
      methodName: json[r'methodName'] as String?,
      fileName: json[r'fileName'] as String?,
      lineNumber: (json[r'lineNumber'] as num?)?.toInt(),
      className: json[r'className'] as String?,
      nativeMethod: json[r'nativeMethod'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var methodName = this.methodName;
    var fileName = this.fileName;
    var lineNumber = this.lineNumber;
    var className = this.className;
    var nativeMethod = this.nativeMethod;

    final json = <String, Object?>{};
    if (methodName != null) {
      json[r'methodName'] = methodName;
    }
    if (fileName != null) {
      json[r'fileName'] = fileName;
    }
    if (lineNumber != null) {
      json[r'lineNumber'] = lineNumber;
    }
    if (className != null) {
      json[r'className'] = className;
    }
    json[r'nativeMethod'] = nativeMethod;
    return json;
  }

  StackTraceElement copyWith(
      {String? methodName,
      String? fileName,
      int? lineNumber,
      String? className,
      bool? nativeMethod}) {
    return StackTraceElement(
      methodName: methodName ?? this.methodName,
      fileName: fileName ?? this.fileName,
      lineNumber: lineNumber ?? this.lineNumber,
      className: className ?? this.className,
      nativeMethod: nativeMethod ?? this.nativeMethod,
    );
  }
}

class Throwable {
  final Throwable? cause;
  final List<StackTraceElement> stackTrace;
  final String? message;
  final String? localizedMessage;
  final List<Throwable> suppressed;

  Throwable(
      {this.cause,
      List<StackTraceElement>? stackTrace,
      this.message,
      this.localizedMessage,
      List<Throwable>? suppressed})
      : stackTrace = stackTrace ?? [],
        suppressed = suppressed ?? [];

  factory Throwable.fromJson(Map<String, Object?> json) {
    return Throwable(
      cause: json[r'cause'] != null
          ? Throwable.fromJson(json[r'cause']! as Map<String, Object?>)
          : null,
      stackTrace: (json[r'stackTrace'] as List<Object?>?)
              ?.map((i) => StackTraceElement.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      message: json[r'message'] as String?,
      localizedMessage: json[r'localizedMessage'] as String?,
      suppressed: (json[r'suppressed'] as List<Object?>?)
              ?.map((i) =>
                  Throwable.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var cause = this.cause;
    var stackTrace = this.stackTrace;
    var message = this.message;
    var localizedMessage = this.localizedMessage;
    var suppressed = this.suppressed;

    final json = <String, Object?>{};
    if (cause != null) {
      json[r'cause'] = cause.toJson();
    }
    json[r'stackTrace'] = stackTrace.map((i) => i.toJson()).toList();
    if (message != null) {
      json[r'message'] = message;
    }
    if (localizedMessage != null) {
      json[r'localizedMessage'] = localizedMessage;
    }
    json[r'suppressed'] = suppressed.map((i) => i.toJson()).toList();
    return json;
  }

  Throwable copyWith(
      {Throwable? cause,
      List<StackTraceElement>? stackTrace,
      String? message,
      String? localizedMessage,
      List<Throwable>? suppressed}) {
    return Throwable(
      cause: cause ?? this.cause,
      stackTrace: stackTrace ?? this.stackTrace,
      message: message ?? this.message,
      localizedMessage: localizedMessage ?? this.localizedMessage,
      suppressed: suppressed ?? this.suppressed,
    );
  }
}
