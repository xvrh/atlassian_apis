// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class ConfluenceApi {
  final ApiClient _client;

  ConfluenceApi(this._client);

  late final audit = AuditApi(_client);

  late final content = ContentApi(_client);

  late final contentAttachments = ContentAttachmentsApi(_client);

  late final contentChildrenAndDescendants =
      ContentChildrenAndDescendantsApi(_client);

  late final contentMacroBody = ContentMacroBodyApi(_client);

  late final contentBody = ContentBodyApi(_client);

  late final contentComments = ContentCommentsApi(_client);

  late final contentLabels = ContentLabelsApi(_client);

  late final contentPermissions = ContentPermissionsApi(_client);

  late final contentProperties = ContentPropertiesApi(_client);

  late final contentRestrictions = ContentRestrictionsApi(_client);

  late final contentVersions = ContentVersionsApi(_client);

  late final contentWatches = ContentWatchesApi(_client);

  late final dynamicModules = DynamicModulesApi(_client);

  late final group = GroupApi(_client);

  late final inlineTasks = InlineTasksApi(_client);

  late final labelInfo = LabelInfoApi(_client);

  late final longRunningTask = LongRunningTaskApi(_client);

  late final relation = RelationApi(_client);

  late final search = SearchApi(_client);

  late final settings = SettingsApi(_client);

  late final space = SpaceApi(_client);

  late final spacePermissions = SpacePermissionsApi(_client);

  late final spaceProperties = SpacePropertiesApi(_client);

  late final spaceSettings = SpaceSettingsApi(_client);

  late final template = TemplateApi(_client);

  late final themes = ThemesApi(_client);

  late final users = UsersApi(_client);

  void close() => _client.close();
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class AuditApi {
  final ApiClient _client;

  AuditApi(this._client);

  /// Returns all records in the audit log, optionally for a certain date range.
  /// This contains information about events like space exports, group
  /// membership
  /// changes, app installations, etc. For more information, see
  /// [Audit log](https://confluence.atlassian.com/confcloud/audit-log-802164269.html)
  /// in the Confluence administrator's guide.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<AuditRecordArray> getAuditRecords(
      {String? startDate,
      String? endDate,
      String? searchString,
      int? start,
      int? limit}) async {
    return AuditRecordArray.fromJson(await _client.send(
      'get',
      'api/audit',
      queryParameters: {
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
        if (searchString != null) 'searchString': searchString,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a record in the audit log.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<AuditRecord> createAuditRecord(
      {required AuditRecordCreate body}) async {
    return AuditRecord.fromJson(await _client.send(
      'post',
      'api/audit',
      body: body.toJson(),
    ));
  }

  /// Exports audit records as a CSV file or ZIP file.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<String> exportAuditRecords(
      {String? startDate,
      String? endDate,
      String? searchString,
      String? format}) async {
    return await _client.send(
      'get',
      'api/audit/export',
      queryParameters: {
        if (startDate != null) 'startDate': startDate,
        if (endDate != null) 'endDate': endDate,
        if (searchString != null) 'searchString': searchString,
        if (format != null) 'format': format,
      },
    ) as String;
  }

  /// Returns the retention period for records in the audit log. The retention
  /// period is how long an audit record is kept for, from creation date until
  /// it is deleted.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<RetentionPeriod> getRetentionPeriod() async {
    return RetentionPeriod.fromJson(await _client.send(
      'get',
      'api/audit/retention',
    ));
  }

  /// Sets the retention period for records in the audit log. The retention
  /// period
  /// can be set to a maximum of 20 years.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<RetentionPeriod> setRetentionPeriod(
      {required RetentionPeriod body}) async {
    return RetentionPeriod.fromJson(await _client.send(
      'put',
      'api/audit/retention',
      body: body.toJson(),
    ));
  }

  /// Returns records from the audit log, for a time period back from the
  /// current
  /// date. For example, you can use this method to get the last 3 months of
  /// records.
  ///
  /// This contains information about events like space exports, group
  /// membership
  /// changes, app installations, etc. For more information, see
  /// [Audit log](https://confluence.atlassian.com/confcloud/audit-log-802164269.html)
  /// in the Confluence administrator's guide.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission.
  Future<AuditRecordArray> getAuditRecordsForTimePeriod(
      {int? number,
      String? units,
      String? searchString,
      int? start,
      int? limit}) async {
    return AuditRecordArray.fromJson(await _client.send(
      'get',
      'api/audit/since',
      queryParameters: {
        if (number != null) 'number': '$number',
        if (units != null) 'units': units,
        if (searchString != null) 'searchString': searchString,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentApi {
  final ApiClient _client;

  ContentApi(this._client);

  /// Returns all content in a Confluence instance.
  ///
  /// By default, the following objects are expanded: `space`, `history`,
  /// `version`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only content that the user has permission to view will be returned.
  Future<ContentArray> getContent(
      {String? type,
      String? spaceKey,
      String? title,
      List<String>? status,
      String? postingDay,
      List<String>? expand,
      String? trigger,
      String? orderby,
      int? start,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content',
      queryParameters: {
        if (type != null) 'type': type,
        if (spaceKey != null) 'spaceKey': spaceKey,
        if (title != null) 'title': title,
        if (status != null) 'status': '$status',
        if (postingDay != null) 'postingDay': postingDay,
        if (expand != null) 'expand': '$expand',
        if (trigger != null) 'trigger': trigger,
        if (orderby != null) 'orderby': orderby,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a new piece of content or publishes an existing draft.
  ///
  /// To publish a draft, add the `id` and `status` properties to the body of
  /// the request.
  /// Set the `id` to the ID of the draft and set the `status` to 'current'.
  /// When the
  /// request is sent, a new piece of content will be created and the metadata
  /// from the
  /// draft will be transferred into it.
  ///
  /// By default, the following objects are expanded: `space`, `history`,
  /// `version`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Add' permission for the
  /// space that the content will be created in, and permission to view the
  /// draft if publishing a draft.
  Future<Content> createContent(
      {String? status,
      List<String>? expand,
      required ContentCreate body}) async {
    return Content.fromJson(await _client.send(
      'post',
      'api/content',
      queryParameters: {
        if (status != null) 'status': status,
        if (expand != null) 'expand': '$expand',
      },
      body: body.toJson(),
    ));
  }

  /// Publishes a legacy draft of a page created from a blueprint. Legacy drafts
  /// will eventually be removed in favor of shared drafts. For now, this method
  /// works the same as
  /// [Publish shared draft](#api-content-blueprint-instance-draftId-put).
  ///
  /// By default, the following objects are expanded: `body.storage`, `history`,
  /// `space`, `version`, `ancestors`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the draft and 'Add' permission for the space that
  /// the content will be created in.
  Future<Content> publishLegacyDraft(
      {required String draftId, String? status, List<String>? expand}) async {
    return Content.fromJson(await _client.send(
      'post',
      'api/content/blueprint/instance/{draftId}',
      pathParameters: {
        'draftId': draftId,
      },
      queryParameters: {
        if (status != null) 'status': status,
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Publishes a shared draft of a page created from a blueprint.
  ///
  /// By default, the following objects are expanded: `body.storage`, `history`,
  /// `space`, `version`, `ancestors`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the draft and 'Add' permission for the space that
  /// the content will be created in.
  Future<Content> publishSharedDraft(
      {required String draftId, String? status, List<String>? expand}) async {
    return Content.fromJson(await _client.send(
      'put',
      'api/content/blueprint/instance/{draftId}',
      pathParameters: {
        'draftId': draftId,
      },
      queryParameters: {
        if (status != null) 'status': status,
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns the list of content that matches a Confluence Query Language
  /// (CQL) query. For information on CQL, see:
  /// [Advanced searching using CQL](https://developer.atlassian.com/cloud/confluence/advanced-searching-using-cql/).
  ///
  /// Example initial call:
  /// ```
  /// https://your-domain.atlassian.net/wiki/rest/api/content/search?cql=type=page&limit=25
  /// ```
  ///
  /// Example response:
  /// ```
  /// {
  ///   "results": [
  ///     { ... },
  ///     { ... },
  ///     ...
  ///     { ... }
  ///   ],
  ///   "limit": 25,
  ///   "size": 25,
  ///   ...
  ///   "_links": {
  ///     "base": "<url>",
  ///     "context": "<url>",
  ///     "next":
  /// "/rest/api/content/search?cql=type=page&limit=25&cursor=raNDoMsTRiNg",
  ///     "self": "<url>"
  ///   }
  /// }
  /// ```
  ///
  /// When additional results are available, returns `next` and `prev` URLs to
  /// retrieve them in subsequent calls. The URLs each contain a cursor that
  /// points to the appropriate set of results. Use `limit` to specify the
  /// number of results returned in each call.
  /// Example subsequent call (taken from example response):
  /// ```
  /// https://your-domain.atlassian.net/wiki/rest/api/content/search?cql=type=page&limit=25&cursor=raNDoMsTRiNg
  /// ```
  /// The response to this will have a `prev` URL similar to the `next` in the
  /// example response.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only content that the user has permission to view will be returned.
  Future<ContentArray> searchContentByCQL(
      {required String cql,
      String? cqlcontext,
      List<String>? expand,
      String? cursor,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content/search',
      queryParameters: {
        'cql': cql,
        if (cqlcontext != null) 'cqlcontext': cqlcontext,
        if (expand != null) 'expand': '$expand',
        if (cursor != null) 'cursor': cursor,
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns a single piece of content, like a page or a blog post.
  ///
  /// By default, the following objects are expanded: `space`, `history`,
  /// `version`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content. If the content is a blog post, 'View'
  /// permission
  /// for the space is required.
  Future<Content> getContentById(
      {required String id,
      List<String>? status,
      int? version,
      String? embeddedContentRender,
      List<String>? expand,
      String? trigger}) async {
    return Content.fromJson(await _client.send(
      'get',
      'api/content/{id}',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (status != null) 'status': '$status',
        if (version != null) 'version': '$version',
        if (embeddedContentRender != null)
          'embeddedContentRender': embeddedContentRender,
        if (expand != null) 'expand': '$expand',
        if (trigger != null) 'trigger': trigger,
      },
    ));
  }

  /// Updates a piece of content. Use this method to update the title or body
  /// of a piece of content, change the status, change the parent page, and
  /// more.
  ///
  /// Note, updating draft content is currently not supported.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<Content> updateContent(
      {required String id,
      String? status,
      String? conflictPolicy,
      required ContentUpdate body}) async {
    return Content.fromJson(await _client.send(
      'put',
      'api/content/{id}',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (status != null) 'status': status,
        if (conflictPolicy != null) 'conflictPolicy': conflictPolicy,
      },
      body: body.toJson(),
    ));
  }

  /// Moves a piece of content to the space's trash or purges it from the trash,
  /// depending on the content's type and status:
  ///
  /// - If the content's type is `page` or `blogpost` and its status is
  /// `current`,
  /// it will be trashed.
  /// - If the content's type is `page` or `blogpost` and its status is
  /// `trashed`,
  /// the content will be purged from the trash and deleted permanently. Note,
  /// you must also set the `status` query parameter to `trashed` in your
  /// request.
  /// - If the content's type is `comment` or `attachment`, it will be deleted
  /// permanently without being trashed.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Delete' permission for the space that the content is in, and permission
  /// to edit the content.
  Future<void> deleteContent({required String id, String? status}) async {
    await _client.send(
      'delete',
      'api/content/{id}',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (status != null) 'status': status,
      },
    );
  }

  /// Returns the most recent update for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<ContentHistory> getHistoryForContent(
      {required String id, List<String>? expand}) async {
    return ContentHistory.fromJson(await _client.send(
      'get',
      'api/content/{id}/history',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentAttachmentsApi {
  final ApiClient _client;

  ContentAttachmentsApi(this._client);

  /// Returns the attachments for a piece of content.
  ///
  /// By default, the following objects are expanded: `metadata`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content. If the content is a blog post, 'View'
  /// permission
  /// for the space is required.
  Future<ContentArray> getAttachments(
      {required String id,
      List<String>? expand,
      int? start,
      int? limit,
      String? filename,
      String? mediaType}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/child/attachment',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (filename != null) 'filename': filename,
        if (mediaType != null) 'mediaType': mediaType,
      },
    ));
  }

  /// Adds an attachment to a piece of content. This method only adds a new
  /// attachment. If you want to update an existing attachment, use
  /// [Create or update attachments](#api-content-id-child-attachment-put).
  ///
  /// Note, you must set a `X-Atlassian-Token: nocheck` header on the request
  /// for this method, otherwise it will be blocked. This protects against XSRF
  /// attacks, which is necessary as this method accepts multipart/form-data.
  ///
  /// The media type 'multipart/form-data' is defined in
  /// [RFC 7578](https://www.ietf.org/rfc/rfc7578.txt).
  /// Most client libraries have classes that make it easier to implement
  /// multipart posts, like the
  /// [MultipartEntityBuilder](http://hc.apache.org/httpcomponents-client-5.0.x/current/httpclient5/apidocs/)
  /// Java class provided by Apache HTTP Components.
  ///
  /// Note, according to
  /// [RFC 7578](https://tools.ietf.org/html/rfc7578#section-4.5),
  /// in the case where the form data is text,
  /// the charset parameter for the "text/plain" Content-Type may be used to
  /// indicate the character encoding used in that part. In the case of this
  /// API endpoint, the `comment` body parameter should be sent with
  /// `type=text/plain`
  /// and `charset=utf-8` values. This will force the charset to be UTF-8.
  ///
  /// Example: This curl command attaches a file ('example.txt') to a container
  /// (id='123') with a comment and `minorEdits`=true.
  ///
  /// ``` bash
  /// curl -D-
  ///   -u admin:admin
  ///   -X POST
  ///   -H 'X-Atlassian-Token: nocheck'
  ///   -F 'file=@"example.txt"'
  ///   -F 'minorEdit="true"'
  ///   -F 'comment="Example attachment comment"; type=text/plain;
  /// charset=utf-8'
  ///   http://myhost/rest/api/content/123/child/attachment
  /// ```
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<ContentArray> createAttachments(
      {required String id, String? status}) async {
    return ContentArray.fromJson(await _client.send(
      'post',
      'api/content/{id}/child/attachment',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (status != null) 'status': status,
      },
    ));
  }

  /// Adds an attachment to a piece of content. If the attachment already exists
  /// for the content, then the attachment is updated (i.e. a new version of the
  /// attachment is created).
  ///
  /// Note, you must set a `X-Atlassian-Token: nocheck` header on the request
  /// for this method, otherwise it will be blocked. This protects against XSRF
  /// attacks, which is necessary as this method accepts multipart/form-data.
  ///
  /// The media type 'multipart/form-data' is defined in
  /// [RFC 7578](https://www.ietf.org/rfc/rfc7578.txt).
  /// Most client libraries have classes that make it easier to implement
  /// multipart posts, like the
  /// [MultipartEntityBuilder](http://hc.apache.org/httpcomponents-client-5.0.x/current/httpclient5/apidocs/)
  /// Java class provided by Apache HTTP Components.
  ///
  /// Note, according to
  /// [RFC 7578](https://tools.ietf.org/html/rfc7578#section-4.5),
  /// in the case where the form data is text,
  /// the charset parameter for the "text/plain" Content-Type may be used to
  /// indicate the character encoding used in that part. In the case of this
  /// API endpoint, the `comment` body parameter should be sent with
  /// `type=text/plain`
  /// and `charset=utf-8` values. This will force the charset to be UTF-8.
  ///
  /// Example: This curl command attaches a file ('example.txt') to a piece of
  /// content (id='123') with a comment and `minorEdits`=true. If the
  /// 'example.txt'
  /// file already exists, it will update it with a new version of the
  /// attachment.
  ///
  /// ``` bash
  /// curl -D-
  ///   -u admin:admin
  ///   -X PUT
  ///   -H 'X-Atlassian-Token: nocheck'
  ///   -F 'file=@"example.txt"'
  ///   -F 'minorEdit="true"'
  ///   -F 'comment="Example attachment comment"; type=text/plain;
  /// charset=utf-8'
  ///   http://myhost/rest/api/content/123/child/attachment
  /// ```
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<ContentArray> createOrUpdateAttachments(
      {required String id, String? status}) async {
    return ContentArray.fromJson(await _client.send(
      'put',
      'api/content/{id}/child/attachment',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (status != null) 'status': status,
      },
    ));
  }

  /// Updates the attachment properties, i.e. the non-binary data of an
  /// attachment
  /// like the filename, media-type, comment, and parent container.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<Content> updateAttachmentProperties(
      {required String id,
      required String attachmentId,
      required AttachmentUpdate body}) async {
    return Content.fromJson(await _client.send(
      'put',
      'api/content/{id}/child/attachment/{attachmentId}',
      pathParameters: {
        'id': id,
        'attachmentId': attachmentId,
      },
      body: body.toJson(),
    ));
  }

  /// Updates the binary data of an attachment, given the attachment ID, and
  /// optionally the comment and the minor edit field.
  ///
  /// This method is essentially the same as
  /// [Create or update attachments](#api-content-id-child-attachment-put),
  /// except that it matches the attachment ID rather than the name.
  ///
  /// Note, you must set a `X-Atlassian-Token: nocheck` header on the request
  /// for this method, otherwise it will be blocked. This protects against XSRF
  /// attacks, which is necessary as this method accepts multipart/form-data.
  ///
  /// The media type 'multipart/form-data' is defined in
  /// [RFC 7578](https://www.ietf.org/rfc/rfc7578.txt).
  /// Most client libraries have classes that make it easier to implement
  /// multipart posts, like the
  /// [MultipartEntityBuilder](http://hc.apache.org/httpcomponents-client-5.0.x/current/httpclient5/apidocs/)
  /// Java class provided by Apache HTTP Components.
  ///
  /// Note, according to
  /// [RFC 7578](https://tools.ietf.org/html/rfc7578#section-4.5),
  /// in the case where the form data is text,
  /// the charset parameter for the "text/plain" Content-Type may be used to
  /// indicate the character encoding used in that part. In the case of this
  /// API endpoint, the `comment` body parameter should be sent with
  /// `type=text/plain`
  /// and `charset=utf-8` values. This will force the charset to be UTF-8.
  ///
  /// Example: This curl command updates an attachment (id='att456') that is
  /// attached
  /// to a piece of content (id='123') with a comment and `minorEdits`=true.
  ///
  /// ``` bash
  /// curl -D-
  ///   -u admin:admin
  ///   -X POST
  ///   -H 'X-Atlassian-Token: nocheck'
  ///   -F 'file=@"example.txt"'
  ///   -F 'minorEdit="true"'
  ///   -F 'comment="Example attachment comment"; type=text/plain;
  /// charset=utf-8'
  ///   http://myhost/rest/api/content/123/child/attachment/att456/data
  /// ```
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<Content> updateAttachmentData(
      {required String id, required String attachmentId}) async {
    return Content.fromJson(await _client.send(
      'post',
      'api/content/{id}/child/attachment/{attachmentId}/data',
      pathParameters: {
        'id': id,
        'attachmentId': attachmentId,
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentChildrenAndDescendantsApi {
  final ApiClient _client;

  ContentChildrenAndDescendantsApi(this._client);

  /// Returns a map of the direct children of a piece of content. A piece of
  /// content
  /// has different types of child content, depending on its type. These are
  /// the default parent-child content type relationships:
  ///
  /// - `page`: child content is `page`, `comment`, `attachment`
  /// - `blogpost`: child content is `comment`, `attachment`
  /// - `attachment`: child content is `comment`
  /// - `comment`: child content is `attachment`
  ///
  /// Apps can override these default relationships. Apps can also introduce
  /// new content types that create new parent-child content relationships.
  ///
  /// Note, the map will always include all child content types that are valid
  /// for the content. However, if the content has no instances of a child
  /// content
  /// type, the map will contain an empty array for that child content type.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space,
  /// and permission to view the content if it is a page.
  Future<ContentChildren> getContentChildren(
      {required String id, List<String>? expand, int? parentVersion}) async {
    return ContentChildren.fromJson(await _client.send(
      'get',
      'api/content/{id}/child',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (parentVersion != null) 'parentVersion': '$parentVersion',
      },
    ));
  }

  /// Move a page to a new location relative to a target page:
  ///
  /// * `before` - move the page under the same parent as the target, before the
  /// target in the list of children
  /// * `after` - move the page under the same parent as the target, after the
  /// target in the list of children
  /// * `append` - move the page to be a child of the target
  ///
  /// Caution: This API can move pages to the top level of a space. Top-level
  /// pages are difficult to find in the UI
  /// because they do not show up in the page tree display. To avoid this, never
  /// use `before` or `after` positions
  /// when the `targetId` is a top-level page.
  Future<Map<String, dynamic>> movePage(
      {required String id,
      required String position,
      required String targetId}) async {
    return await _client.send(
      'put',
      'api/content/{id}/move/{position}/{targetId}',
      pathParameters: {
        'id': id,
        'position': position,
        'targetId': targetId,
      },
    ) as Map<String, Object?>;
  }

  /// Returns all children of a given type, for a piece of content.
  /// A piece of content has different types of child content, depending on its
  /// type:
  ///
  /// - `page`: child content is `page`, `comment`, `attachment`
  /// - `blogpost`: child content is `comment`, `attachment`
  /// - `attachment`: child content is `comment`
  /// - `comment`: child content is `attachment`
  ///
  /// Custom content types that are provided by apps can also be returned.
  ///
  /// Note, this method only returns direct children. To return children at all
  /// levels, use
  /// [Get descendants by type](#api-content-id-descendant-type-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space,
  /// and permission to view the content if it is a page.
  Future<ContentArray> getContentChildrenByType(
      {required String id,
      required String type,
      List<String>? expand,
      int? parentVersion,
      int? start,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/child/{type}',
      pathParameters: {
        'id': id,
        'type': type,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (parentVersion != null) 'parentVersion': '$parentVersion',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns a map of the descendants of a piece of content. This is similar
  /// to [Get content children](#api-content-id-child-get), except that this
  /// method returns child pages at all levels, rather than just the direct
  /// child pages.
  ///
  /// A piece of content has different types of descendants, depending on its
  /// type:
  ///
  /// - `page`: descendant is `page`, `comment`, `attachment`
  /// - `blogpost`: descendant is `comment`, `attachment`
  /// - `attachment`: descendant is `comment`
  /// - `comment`: descendant is `attachment`
  ///
  /// The map will always include all descendant types that are valid for the
  /// content.
  /// However, if the content has no instances of a descendant type, the map
  /// will
  /// contain an empty array for that descendant type.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space, and permission to view the content if it
  /// is a page.
  Future<ContentChildren> getContentDescendants(
      {required String id, List<String>? expand}) async {
    return ContentChildren.fromJson(await _client.send(
      'get',
      'api/content/{id}/descendant',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns all descendants of a given type, for a piece of content. This is
  /// similar to [Get content children by type](#api-content-id-child-type-get),
  /// except that this method returns child pages at all levels, rather than
  /// just
  /// the direct child pages.
  ///
  /// A piece of content has different types of descendants, depending on its
  /// type:
  ///
  /// - `page`: descendant is `page`, `comment`, `attachment`
  /// - `blogpost`: descendant is `comment`, `attachment`
  /// - `attachment`: descendant is `comment`
  /// - `comment`: descendant is `attachment`
  ///
  /// Custom content types that are provided by apps can also be returned.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space, and permission to view the content if it
  /// is a page.
  Future<ContentArray> descendantsOfType(
      {required String id,
      required String type,
      String? depth,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/descendant/{type}',
      pathParameters: {
        'id': id,
        'type': type,
      },
      queryParameters: {
        if (depth != null) 'depth': depth,
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Copy page hierarchy allows the copying of an entire hierarchy of pages and
  /// their associated properties, permissions and attachments.
  ///  The id path parameter refers to the content id of the page to copy, and
  /// the new parent of this copied page is defined using the destinationPageId
  /// in the request body.
  ///  The titleOptions object defines the rules of renaming page titles during
  /// the copy;
  ///  for example, search and replace can be used in conjunction to rewrite the
  /// copied page titles.
  ///
  ///  Response example:
  ///  <pre>`
  ///  {
  ///       "id" : "1180606",
  ///       "links" : {
  ///            "status" : "/rest/api/longtask/1180606"
  ///       }
  ///  }
  ///  `</pre>
  ///  Use the /longtask/<taskId> REST API to get the copy task status.
  Future<void> copyPageHierarchy(
      {required String id, required CopyPageHierarchyRequest body}) async {
    await _client.send(
      'post',
      'api/content/{id}/pagehierarchy/copy',
      pathParameters: {
        'id': id,
      },
      body: body.toJson(),
    );
  }

  /// Copies a single page and its associated properties, permissions,
  /// attachments, and custom contents.
  ///  The `id` path parameter refers to the content ID of the page to copy. The
  /// target of the page to be copied
  ///  is defined using the `destination` in the request body and can be one of
  /// the following types.
  ///
  ///   - `space`: page will be copied to the specified space as a root page on
  /// the space
  ///   - `parent_page`: page will be copied as a child of the specified parent
  /// page
  ///   - `existing_page`: page will be copied and replace the specified page
  ///
  /// By default, the following objects are expanded: `space`, `history`,
  /// `version`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Add' permission for the space that the content will be copied in and
  /// permission to update the content if copying to an `existing_page`.
  Future<Content> copyPage(
      {required String id,
      List<String>? expand,
      required CopyPageRequest body}) async {
    return Content.fromJson(await _client.send(
      'post',
      'api/content/{id}/copy',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
      body: body.toJson(),
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentMacroBodyApi {
  final ApiClient _client;

  ContentMacroBodyApi(this._client);

  /// Returns the body of a macro in storage format, for the given macro ID.
  /// This includes information like the name of the macro, the body of the
  /// macro,
  /// and any macro parameters. This method is mainly used by Cloud apps.
  ///
  /// About the macro ID: When a macro is created in a new version of content,
  /// Confluence will generate a random ID for it, unless an ID is specified
  /// (by an app). The macro ID will look similar to this:
  /// '50884bd9-0cb8-41d5-98be-f80943c14f96'.
  /// The ID is then persisted as new versions of content are created, and is
  /// only modified by Confluence if there are conflicting IDs.
  ///
  /// Note, to preserve backwards compatibility this resource will also match on
  /// the hash of the macro body, even if a macro ID is found. This check will
  /// eventually become redundant, as macro IDs are generated for pages and
  /// transparently propagate out to all instances.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content that the macro is in.
  Future<MacroInstance> getMacroBodyByMacroId(
      {required String id,
      required int version,
      required String macroId}) async {
    return MacroInstance.fromJson(await _client.send(
      'get',
      'api/content/{id}/history/{version}/macro/id/{macroId}',
      pathParameters: {
        'id': id,
        'version': '$version',
        'macroId': macroId,
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentBodyApi {
  final ApiClient _client;

  ContentBodyApi(this._client);

  /// Converts a content body from one format to another format.
  ///
  /// Supported conversions:
  ///
  /// - storage: view, export_view, styled_view, editor
  /// - editor: storage
  /// - view: none
  /// - export_view: none
  /// - styled_view: none
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// If request specifies 'contentIdContext', 'View' permission for the space,
  /// and permission to view the content.
  Future<ContentBody> convertContentBody(
      {required String to,
      List<String>? expand,
      String? spaceKeyContext,
      String? contentIdContext,
      String? embeddedContentRender,
      required ContentBodyCreate body}) async {
    return ContentBody.fromJson(await _client.send(
      'post',
      'api/contentbody/convert/{to}',
      pathParameters: {
        'to': to,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (spaceKeyContext != null) 'spaceKeyContext': spaceKeyContext,
        if (contentIdContext != null) 'contentIdContext': contentIdContext,
        if (embeddedContentRender != null)
          'embeddedContentRender': embeddedContentRender,
      },
      body: body.toJson(),
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentCommentsApi {
  final ApiClient _client;

  ContentCommentsApi(this._client);

  /// Returns the comments on a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space,
  /// and permission to view the content if it is a page.
  Future<ContentArray> getContentComments(
      {required String id,
      List<String>? expand,
      int? parentVersion,
      int? start,
      int? limit,
      List<String>? location,
      String? depth}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/child/comment',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (parentVersion != null) 'parentVersion': '$parentVersion',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (location != null) 'location': '$location',
        if (depth != null) 'depth': depth,
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentLabelsApi {
  final ApiClient _client;

  ContentLabelsApi(this._client);

  /// Returns the labels on a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space and permission to view the content if it
  /// is a page.
  Future<LabelArray> getLabelsForContent(
      {required String id, String? prefix, int? start, int? limit}) async {
    return LabelArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/label',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (prefix != null) 'prefix': prefix,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Adds labels to a piece of content. Does not modify the existing labels.
  ///
  /// Notes:
  ///
  /// - Labels can also be added when creating content
  /// ([Create content](#api-content-post)).
  /// - Labels can be updated when updating content
  /// ([Update content](#api-content-id-put)).
  /// This will delete the existing labels and replace them with the labels in
  /// the request.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<LabelArray> addLabelsToContent(
      {required String id,
      bool? use400ErrorResponse,
      required LabelCreateArray body}) async {
    return LabelArray.fromJson(await _client.send(
      'post',
      'api/content/{id}/label',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (use400ErrorResponse != null)
          'use-400-error-response': '$use400ErrorResponse',
      },
      body: body.toJson(),
    ));
  }

  /// Removes a label from a piece of content. This is similar to
  /// [Remove label from content](#api-content-id-label-label-delete)
  /// except that the label name is specified via a query parameter.
  ///
  /// Use this method if the label name has "/" characters, as
  /// [Remove label from content using query parameter](#api-content-id-label-delete)
  /// does not accept "/" characters for the label name.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<void> removeLabelFromContentUsingQueryParameter(
      {required String id, required String name}) async {
    await _client.send(
      'delete',
      'api/content/{id}/label',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        'name': name,
      },
    );
  }

  /// Removes a label from a piece of content. This is similar to
  /// [Remove label from content using query parameter](#api-content-id-label-delete)
  /// except that the label name is specified via a path parameter.
  ///
  /// Use this method if the label name does not have "/" characters, as the
  /// path
  /// parameter does not accept "/" characters for security reasons. Otherwise,
  /// use
  /// [Remove label from content using query parameter](#api-content-id-label-delete).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<void> removeLabelFromContent(
      {required String id, required String label}) async {
    await _client.send(
      'delete',
      'api/content/{id}/label/{label}',
      pathParameters: {
        'id': id,
        'label': label,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentPermissionsApi {
  final ApiClient _client;

  ContentPermissionsApi(this._client);

  /// Check if a user or a group can perform an operation to the specified
  /// content. The `operation` to check
  /// must be provided. The user’s account ID or the ID of the group can be
  /// provided in the `subject` to check
  /// permissions against a specified user or group. The following permission
  /// checks are done to make sure that the
  /// user or group has the proper access:
  ///
  /// - site permissions
  /// - space permissions
  /// - content restrictions
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) if
  /// checking permission for self,
  /// otherwise 'Confluence Administrator' global permission is required.
  Future<PermissionCheckResponse> permissionCheck(
      {required String id, required ContentPermissionRequest body}) async {
    return PermissionCheckResponse.fromJson(await _client.send(
      'post',
      'api/content/{id}/permission/check',
      pathParameters: {
        'id': id,
      },
      body: body.toJson(),
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentPropertiesApi {
  final ApiClient _client;

  ContentPropertiesApi(this._client);

  /// Returns the properties for a piece of content. For more information
  /// about content properties, see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space, and permission to view the content if it
  /// is a page.
  Future<ContentPropertyArray> getContentProperties(
      {required String id,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentPropertyArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/property',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a property for an existing piece of content. For more information
  /// about content properties, see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// This is the same as
  /// [Create content property for key](#api-content-id-property-key-post)
  /// except that the key is specified in the request body instead of as a
  /// path parameter.
  ///
  /// Content properties can also be added when creating a new piece of content
  /// by including them in the `metadata.properties` of the request.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<ContentProperty> createContentProperty(
      {required String id, required ContentPropertyCreate body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'api/content/{id}/property',
      pathParameters: {
        'id': id,
      },
      body: body.toJson(),
    ));
  }

  /// Returns a content property for a piece of content. For more information,
  /// see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space, and permission to view the content if it
  /// is a page.
  Future<ContentProperty> getContentProperty(
      {required String id, required String key, List<String>? expand}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'api/content/{id}/property/{key}',
      pathParameters: {
        'id': id,
        'key': key,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Creates a property for an existing piece of content. For more information
  /// about content properties, see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// This is the same as
  /// [Create content property](#api-content-id-property-post)
  /// except that the key is specified as a path parameter instead of in the
  /// request body.
  ///
  /// Content properties can also be added when creating a new piece of content
  /// by including them in the `metadata.properties` of the request.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<ContentProperty> createContentPropertyForKey(
      {required String id,
      required String key,
      required ContentPropertyCreateNoKey body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'api/content/{id}/property/{key}',
      pathParameters: {
        'id': id,
        'key': key,
      },
      body: body.toJson(),
    ));
  }

  /// Updates an existing content property. This method will also create a new
  /// property for a piece of content, if the property key does not exist and
  /// the property version is 1. For more information about content properties,
  /// see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<ContentProperty> updateContentProperty(
      {required String id,
      required String key,
      required ContentPropertyUpdate body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'api/content/{id}/property/{key}',
      pathParameters: {
        'id': id,
        'key': key,
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property. For more information about content properties,
  /// see
  /// [Confluence entity properties](https://developer.atlassian.com/cloud/confluence/confluence-entity-properties/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<void> deleteContentProperty(
      {required String id, required String key}) async {
    await _client.send(
      'delete',
      'api/content/{id}/property/{key}',
      pathParameters: {
        'id': id,
        'key': key,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentRestrictionsApi {
  final ApiClient _client;

  ContentRestrictionsApi(this._client);

  /// Returns the restrictions on a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<ContentRestrictionArray> getRestrictions(
      {required String id,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentRestrictionArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/restriction',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Adds restrictions to a piece of content. Note, this does not change any
  /// existing restrictions on the content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<ContentRestrictionArray> addRestrictions(
      {required String id,
      List<String>? expand,
      required AddContentRestrictionUpdateArray body}) async {
    return ContentRestrictionArray.fromJson(await _client.send(
      'post',
      'api/content/{id}/restriction',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
      body: body.toJson(),
    ));
  }

  /// Updates restrictions for a piece of content. This removes the existing
  /// restrictions and replaces them with the restrictions in the request.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<ContentRestrictionArray> updateRestrictions(
      {required String id,
      List<String>? expand,
      required ContentRestrictionUpdateArray body}) async {
    return ContentRestrictionArray.fromJson(await _client.send(
      'put',
      'api/content/{id}/restriction',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
      body: body.toJson(),
    ));
  }

  /// Removes all restrictions (read and update) on a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<ContentRestrictionArray> deleteRestrictions(
      {required String id, List<String>? expand}) async {
    return ContentRestrictionArray.fromJson(await _client.send(
      'delete',
      'api/content/{id}/restriction',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns restrictions on a piece of content by operation. This method is
  /// similar to [Get restrictions](#api-content-id-restriction-get) except that
  /// the operations are properties of the return object, rather than items in
  /// a results array.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<Map<String, dynamic>> getRestrictionsByOperation(
      {required String id, List<String>? expand}) async {
    return await _client.send(
      'get',
      'api/content/{id}/restriction/byOperation',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the restictions on a piece of content for a given operation (read
  /// or update).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<ContentRestriction> getRestrictionsForOperation(
      {required String id,
      required String operationKey,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentRestriction.fromJson(await _client.send(
      'get',
      'api/content/{id}/restriction/byOperation/{operationKey}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns whether the specified content restriction applies to a group.
  /// For example, if a page with `id=123` has a `read` restriction for the
  /// `admins` group,
  /// the following request will return `true`:
  ///
  /// `https://your-domain.atlassian.net/wiki/rest/api/content/123/restriction/byOperation/read/group/admins`
  ///
  /// Note that a response of `true` does not guarantee that the group can view
  /// the page, as it does not account for
  /// account-inherited restrictions, space permissions, or even product access.
  /// For more
  /// information, see
  /// [Confluence permissions](https://confluence.atlassian.com/x/_AozKw).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<void> getContentRestrictionStatusForGroup(
      {required String id,
      required String operationKey,
      required String groupName}) async {
    await _client.send(
      'get',
      'api/content/{id}/restriction/byOperation/{operationKey}/group/{groupName}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupName': groupName,
      },
    );
  }

  /// Adds a group to a content restriction. That is, grant read or update
  /// permission to the group for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> addGroupToContentRestriction(
      {required String id,
      required String operationKey,
      required String groupName}) async {
    await _client.send(
      'put',
      'api/content/{id}/restriction/byOperation/{operationKey}/group/{groupName}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupName': groupName,
      },
    );
  }

  /// Removes a group from a content restriction. That is, remove read or update
  /// permission for the group for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> removeGroupFromContentRestriction(
      {required String id,
      required String operationKey,
      required String groupName}) async {
    await _client.send(
      'delete',
      'api/content/{id}/restriction/byOperation/{operationKey}/group/{groupName}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupName': groupName,
      },
    );
  }

  /// Returns whether the specified content restriction applies to a group.
  /// For example, if a page with `id=123` has a `read` restriction for the
  /// `123456` group id,
  /// the following request will return `true`:
  ///
  /// `https://your-domain.atlassian.net/wiki/rest/api/content/123/restriction/byOperation/read/byGroupId/123456`
  ///
  /// Note that a response of `true` does not guarantee that the group can view
  /// the page, as it does not account for
  /// account-inherited restrictions, space permissions, or even product access.
  /// For more
  /// information, see
  /// [Confluence permissions](https://confluence.atlassian.com/x/_AozKw).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<void> getIndividualGroupRestrictionStatusByGroupId(
      {required String id,
      required String operationKey,
      required String groupId}) async {
    await _client.send(
      'get',
      'api/content/{id}/restriction/byOperation/{operationKey}/byGroupId/{groupId}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupId': groupId,
      },
    );
  }

  /// Adds a group to a content restriction by Group Id. That is, grant read or
  /// update
  /// permission to the group for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> addGroupToContentRestrictionByGroupId(
      {required String id,
      required String operationKey,
      required String groupId}) async {
    await _client.send(
      'put',
      'api/content/{id}/restriction/byOperation/{operationKey}/byGroupId/{groupId}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupId': groupId,
      },
    );
  }

  /// Removes a group from a content restriction. That is, remove read or update
  /// permission for the group for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> removeGroupFromContentRestriction2(
      {required String id,
      required String operationKey,
      required String groupId}) async {
    await _client.send(
      'delete',
      'api/content/{id}/restriction/byOperation/{operationKey}/byGroupId/{groupId}',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
        'groupId': groupId,
      },
    );
  }

  /// Returns whether the specified content restriction applies to a user.
  /// For example, if a page with `id=123` has a `read` restriction for a user
  /// with an account ID of
  /// `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`, the following request will
  /// return `true`:
  ///
  /// `https://your-domain.atlassian.net/wiki/rest/api/content/123/restriction/byOperation/read/user?accountId=384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`
  ///
  /// Note that a response of `true` does not guarantee that the user can view
  /// the page, as it does not account for
  /// account-inherited restrictions, space permissions, or even product access.
  /// For more
  /// information, see
  /// [Confluence permissions](https://confluence.atlassian.com/x/_AozKw).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content.
  Future<void> getContentRestrictionStatusForUser(
      {required String id,
      required String operationKey,
      String? key,
      String? userName,
      required String accountId}) async {
    await _client.send(
      'get',
      'api/content/{id}/restriction/byOperation/{operationKey}/user',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (userName != null) 'userName': userName,
        'accountId': accountId,
      },
    );
  }

  /// Adds a user to a content restriction. That is, grant read or update
  /// permission to the user for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> addUserToContentRestriction(
      {required String id,
      required String operationKey,
      String? key,
      String? userName,
      required String accountId}) async {
    await _client.send(
      'put',
      'api/content/{id}/restriction/byOperation/{operationKey}/user',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (userName != null) 'userName': userName,
        'accountId': accountId,
      },
    );
  }

  /// Removes a group from a content restriction. That is, remove read or update
  /// permission for the group for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the content.
  Future<void> removeUserFromContentRestriction(
      {required String id,
      required String operationKey,
      String? key,
      String? userName,
      required String accountId}) async {
    await _client.send(
      'delete',
      'api/content/{id}/restriction/byOperation/{operationKey}/user',
      pathParameters: {
        'id': id,
        'operationKey': operationKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (userName != null) 'userName': userName,
        'accountId': accountId,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentVersionsApi {
  final ApiClient _client;

  ContentVersionsApi(this._client);

  /// Returns the versions for a piece of content in descending order.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content. If the content is a blog post, 'View'
  /// permission
  /// for the space is required.
  Future<VersionArray> getContentVersions(
      {required String id,
      int? start,
      int? limit,
      List<String>? expand}) async {
    return VersionArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/version',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Restores a historical version to be the latest version. That is, a new
  /// version
  /// is created with the content of the historical version.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<Version> restoreContentVersion(
      {required String id,
      List<String>? expand,
      required VersionRestore body}) async {
    return Version.fromJson(await _client.send(
      'post',
      'api/content/{id}/version',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
      body: body.toJson(),
    ));
  }

  /// Returns a version for a piece of content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content. If the content is a blog post, 'View'
  /// permission
  /// for the space is required.
  Future<Version> getContentVersion(
      {required String id,
      required int versionNumber,
      List<String>? expand}) async {
    return Version.fromJson(await _client.send(
      'get',
      'api/content/{id}/version/{versionNumber}',
      pathParameters: {
        'id': id,
        'versionNumber': '$versionNumber',
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Delete a historical version. This does not delete the changes made to the
  /// content in that version, rather the changes for the deleted version are
  /// rolled up into the next version. Note, you cannot delete the current
  /// version.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the content.
  Future<void> deleteContentVersion(
      {required String id, required int versionNumber}) async {
    await _client.send(
      'delete',
      'api/content/{id}/version/{versionNumber}',
      pathParameters: {
        'id': id,
        'versionNumber': '$versionNumber',
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ContentWatchesApi {
  final ApiClient _client;

  ContentWatchesApi(this._client);

  /// Returns the watches for a page. A user that watches a page will receive
  /// receive notifications when the page is updated.
  ///
  /// If you want to manage watches for a page, use the following `user`
  /// methods:
  ///
  /// -
  /// [Get content watch status for user](#api-user-watch-content-contentId-get)
  /// - [Add content watch](#api-user-watch-content-contentId-post)
  /// - [Remove content watch](#api-user-watch-content-contentId-delete)
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<WatchArray> getWatchesForPage(
      {required String id, int? start, int? limit}) async {
    return WatchArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/notification/child-created',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns all space watches for the space that the content is in. A user
  /// that
  /// watches a space will receive receive notifications when any content in the
  /// space is updated.
  ///
  /// If you want to manage watches for a space, use the following `user`
  /// methods:
  ///
  /// - [Get space watch status for user](#api-user-watch-space-spaceKey-get)
  /// - [Add space watch](#api-user-watch-space-spaceKey-post)
  /// - [Remove space watch](#api-user-watch-space-spaceKey-delete)
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<WatchArray> getWatchesForSpace(
      {required String id, int? start, int? limit}) async {
    return WatchArray.fromJson(await _client.send(
      'get',
      'api/content/{id}/notification/created',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns a list of watchers of a space
  Future<SpaceWatchArray> getWatchersForSpace(
      {required String spaceKey, String? start, String? limit}) async {
    return SpaceWatchArray.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/watch',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (start != null) 'start': start,
        if (limit != null) 'limit': limit,
      },
    ));
  }

  /// Returns whether a user is watching a piece of content. Choose the user by
  /// doing one of the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<UserWatch> getContentWatchStatus(
      {required String contentId,
      String? key,
      String? username,
      required String accountId}) async {
    return UserWatch.fromJson(await _client.send(
      'get',
      'api/user/watch/content/{contentId}',
      pathParameters: {
        'contentId': contentId,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    ));
  }

  /// Adds a user as a watcher to a piece of content. Choose the user by doing
  /// one of the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// Note, you must add the `X-Atlassian-Token: no-check` header when making a
  /// request, as this operation has XSRF protection.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> addContentWatcher(
      {required String contentId,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'post',
      'api/user/watch/content/{contentId}',
      pathParameters: {
        'contentId': contentId,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    );
  }

  /// Removes a user as a watcher from a piece of content. Choose the user by
  /// doing one of the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> removeContentWatcher(
      {required String xAtlassianToken,
      required String contentId,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'delete',
      'api/user/watch/content/{contentId}',
      pathParameters: {
        'contentId': contentId,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
      headers: {
        'X-Atlassian-Token': 'no-check',
      },
    );
  }

  /// Returns whether a user is watching a label. Choose the user by doing one
  /// of the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<UserWatch> isWatchingLabel(
      {required String labelName,
      String? key,
      String? username,
      required String accountId}) async {
    return UserWatch.fromJson(await _client.send(
      'get',
      'api/user/watch/label/{labelName}',
      pathParameters: {
        'labelName': labelName,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    ));
  }

  /// Adds a user as a watcher to a label. Choose the user by doing one of the
  /// following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// Note, you must add the `X-Atlassian-Token: no-check` header when making a
  /// request, as this operation has XSRF protection.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> addLabelWatcher(
      {required String xAtlassianToken,
      required String labelName,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'post',
      'api/user/watch/label/{labelName}',
      pathParameters: {
        'labelName': labelName,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
      headers: {
        'X-Atlassian-Token': 'no-check',
      },
    );
  }

  /// Removes a user as a watcher from a label. Choose the user by doing one of
  /// the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> removeLabelWatcher(
      {required String labelName,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'delete',
      'api/user/watch/label/{labelName}',
      pathParameters: {
        'labelName': labelName,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    );
  }

  /// Returns whether a user is watching a space. Choose the user by
  /// doing one of the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<UserWatch> isWatchingSpace(
      {required String spaceKey,
      String? key,
      String? username,
      required String accountId}) async {
    return UserWatch.fromJson(await _client.send(
      'get',
      'api/user/watch/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    ));
  }

  /// Adds a user as a watcher to a space. Choose the user by doing one of the
  /// following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// Note, you must add the `X-Atlassian-Token: no-check` header when making a
  /// request, as this operation has XSRF protection.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> addSpaceWatcher(
      {required String xAtlassianToken,
      required String spaceKey,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'post',
      'api/user/watch/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
      headers: {
        'X-Atlassian-Token': 'no-check',
      },
    );
  }

  /// Removes a user as a watcher from a space. Choose the user by doing one of
  /// the following:
  ///
  /// - Specify a user via a query parameter: Use the `accountId` to identify
  /// the user.
  /// - Do not specify a user: The currently logged-in user will be used.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<void> removeSpaceWatch(
      {required String spaceKey,
      String? key,
      String? username,
      required String accountId}) async {
    await _client.send(
      'delete',
      'api/user/watch/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class DynamicModulesApi {
  final ApiClient _client;

  DynamicModulesApi(this._client);

  /// Returns all modules registered dynamically by the calling app.
  ///
  /// **[Permissions](#permissions) required:** Only Connect apps can make this
  /// request.
  Future<ConnectModules> getModules() async {
    return ConnectModules.fromJson(await _client.send(
      'get',
      'atlassian-connect/1/app/module/dynamic',
    ));
  }

  /// Registers a list of modules. For the list of modules that support dynamic
  /// registration, see
  /// [Dynamic modules](https://developer.atlassian.com/cloud/confluence/dynamic-modules/).
  ///
  /// **[Permissions](#permissions) required:** Only Connect apps can make this
  /// request.
  Future<void> registerModules({required ConnectModules body}) async {
    await _client.send(
      'post',
      'atlassian-connect/1/app/module/dynamic',
      body: body.toJson(),
    );
  }

  /// Remove all or a list of modules registered by the calling app.
  ///
  /// **[Permissions](#permissions) required:** Only Connect apps can make this
  /// request.
  Future<void> removeModules(List<String> moduleKey) async {
    await _client.send(
      'delete',
      'atlassian-connect/1/app/module/dynamic',
      queryParameters: {
        'moduleKey': '$moduleKey',
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class GroupApi {
  final ApiClient _client;

  GroupApi(this._client);

  /// Returns all user groups. The returned groups are ordered alphabetically in
  /// ascending order by group name.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<GroupArrayWithLinks> getGroups({int? start, int? limit}) async {
    return GroupArrayWithLinks.fromJson(await _client.send(
      'get',
      'api/group',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a new user group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<Group> createGroup({required GroupName body}) async {
    return Group.fromJson(await _client.send(
      'post',
      'api/group',
      body: body.toJson(),
    ));
  }

  /// Delete user group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<void> removeGroup(String name) async {
    await _client.send(
      'delete',
      'api/group',
      queryParameters: {
        'name': name,
      },
    );
  }

  /// Returns a user group for a given group name.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Group> getGroupByQueryParam(String name) async {
    return Group.fromJson(await _client.send(
      'get',
      'api/group/by-name',
      queryParameters: {
        'name': name,
      },
    ));
  }

  /// Returns a user group for a given group id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Group> getGroupByGroupId(String id) async {
    return Group.fromJson(await _client.send(
      'get',
      'api/group/by-id',
      queryParameters: {
        'id': id,
      },
    ));
  }

  /// Returns a user group for a given group name.
  ///
  /// Use updated Get group API
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Group> getGroup(String groupName) async {
    return Group.fromJson(await _client.send(
      'get',
      'api/group/{groupName}',
      pathParameters: {
        'groupName': groupName,
      },
    ));
  }

  /// Returns the users that are members of a group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<UserArrayWithLinks> getMembersByQueryParam(
      {required String name, int? start, int? limit}) async {
    return UserArrayWithLinks.fromJson(await _client.send(
      'get',
      'api/group/member',
      queryParameters: {
        'name': name,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns the users that are members of a group.
  ///
  /// Use updated Get group API
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<UserArrayWithLinks> getGroupMembers(
      {required String groupName, int? start, int? limit}) async {
    return UserArrayWithLinks.fromJson(await _client.send(
      'get',
      'api/group/{groupName}/member',
      pathParameters: {
        'groupName': groupName,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Get search results of groups by partial query provided.
  Future<GroupArrayWithLinks> getGroupsSearch(
      {required String query, int? start, int? limit}) async {
    return GroupArrayWithLinks.fromJson(await _client.send(
      'get',
      'api/group/picker',
      queryParameters: {
        'query': query,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Adds a user as a member in a group represented by its groupId
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<void> addUserToGroupByGroupId(String groupId) async {
    await _client.send(
      'post',
      'api/group/userByGroupId',
      queryParameters: {
        'groupId': groupId,
      },
    );
  }

  /// Remove user as a member from a group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<void> removeMemberFromGroupByGroupId(
      {required String groupId, required String accountId}) async {
    await _client.send(
      'delete',
      'api/group/userByGroupId',
      queryParameters: {
        'groupId': groupId,
        'accountId': accountId,
      },
    );
  }

  /// Returns the users that are members of a group.
  ///
  /// Use updated Get group API
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<UserArrayWithLinks> getGroupMembersByGroupId(
      {required String groupId, int? start, int? limit}) async {
    return UserArrayWithLinks.fromJson(await _client.send(
      'get',
      'api/group/{groupId}/membersByGroupId',
      pathParameters: {
        'groupId': groupId,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Adds a user as a member in a group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<void> addUserToGroup(String name) async {
    await _client.send(
      'post',
      'api/group/user',
      queryParameters: {
        'name': name,
      },
    );
  }

  /// Remove user as a member from a group.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// User must be a site admin.
  Future<void> removeMemberFromGroup(
      {required String name, required String accountId}) async {
    await _client.send(
      'delete',
      'api/group/user',
      queryParameters: {
        'name': name,
        'accountId': accountId,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class InlineTasksApi {
  final ApiClient _client;

  InlineTasksApi(this._client);

  /// Returns inline tasks based on the search query.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only tasks
  /// in contents that the user has permission to view are returned.
  Future<TaskPageResponse> searchTasks(
      {int? start,
      int? limit,
      String? spaceKey,
      String? pageId,
      String? assignee,
      String? creator,
      String? completedUser,
      int? duedateFrom,
      int? duedateTo,
      int? createdateFrom,
      int? createdateTo,
      int? completedateFrom,
      int? completedateTo,
      String? status}) async {
    return TaskPageResponse.fromJson(await _client.send(
      'get',
      'api/inlinetasks/search',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (spaceKey != null) 'spaceKey': spaceKey,
        if (pageId != null) 'pageId': pageId,
        if (assignee != null) 'assignee': assignee,
        if (creator != null) 'creator': creator,
        if (completedUser != null) 'completedUser': completedUser,
        if (duedateFrom != null) 'duedateFrom': '$duedateFrom',
        if (duedateTo != null) 'duedateTo': '$duedateTo',
        if (createdateFrom != null) 'createdateFrom': '$createdateFrom',
        if (createdateTo != null) 'createdateTo': '$createdateTo',
        if (completedateFrom != null) 'completedateFrom': '$completedateFrom',
        if (completedateTo != null) 'completedateTo': '$completedateTo',
        if (status != null) 'status': status,
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class LabelInfoApi {
  final ApiClient _client;

  LabelInfoApi(this._client);

  /// Returns label information and a list of contents associated with the
  /// label.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only contents
  /// that the user is permitted to view is returned.
  Future<LabelDetails> getAllLabelContent(
      {required String name, String? type, int? start, int? limit}) async {
    return LabelDetails.fromJson(await _client.send(
      'get',
      'api/label',
      queryParameters: {
        'name': name,
        if (type != null) 'type': type,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class LongRunningTaskApi {
  final ApiClient _client;

  LongRunningTaskApi(this._client);

  /// Returns information about all active long-running tasks (e.g. space
  /// export),
  /// such as how long each task has been running and the percentage of each
  /// task
  /// that has completed.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<LongTaskStatusArray> getTasks({int? start, int? limit}) async {
    return LongTaskStatusArray.fromJson(await _client.send(
      'get',
      'api/longtask',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns information about an active long-running task (e.g. space export),
  /// such as how long it has been running and the percentage of the task that
  /// has completed.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<LongTaskStatusWithLinks> getTask(String id) async {
    return LongTaskStatusWithLinks.fromJson(await _client.send(
      'get',
      'api/longtask/{id}',
      pathParameters: {
        'id': id,
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class RelationApi {
  final ApiClient _client;

  RelationApi(this._client);

  /// Returns all target entities that have a particular relationship to the
  /// source entity. Note, relationships are one way.
  ///
  /// For example, the following method finds all content that the current user
  /// has an 'ignore' relationship with:
  /// `GET
  /// https://your-domain.atlassian.net/wiki/rest/api/relation/ignore/from/user/current/to/content`
  /// Note, 'ignore' is an example custom relationship type.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view both the target entity and source entity.
  Future<RelationArray> findTargetFromSource(
      {required String relationName,
      required String sourceType,
      required String sourceKey,
      required String targetType,
      String? sourceStatus,
      String? targetStatus,
      int? sourceVersion,
      int? targetVersion,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return RelationArray.fromJson(await _client.send(
      'get',
      'api/relation/{relationName}/from/{sourceType}/{sourceKey}/to/{targetType}',
      pathParameters: {
        'relationName': relationName,
        'sourceType': sourceType,
        'sourceKey': sourceKey,
        'targetType': targetType,
      },
      queryParameters: {
        if (sourceStatus != null) 'sourceStatus': sourceStatus,
        if (targetStatus != null) 'targetStatus': targetStatus,
        if (sourceVersion != null) 'sourceVersion': '$sourceVersion',
        if (targetVersion != null) 'targetVersion': '$targetVersion',
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Find whether a particular type of relationship exists from a source
  /// entity to a target entity. Note, relationships are one way.
  ///
  /// For example, you can use this method to find whether the current user has
  /// selected a particular page as a favorite (i.e. 'save for later'):
  /// `GET
  /// https://your-domain.atlassian.net/wiki/rest/api/relation/favourite/from/user/current/to/content/123`
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view both the target entity and source entity.
  Future<Relation> getRelationship(
      {required String relationName,
      required String sourceType,
      required String sourceKey,
      required String targetType,
      required String targetKey,
      String? sourceStatus,
      String? targetStatus,
      int? sourceVersion,
      int? targetVersion,
      List<String>? expand}) async {
    return Relation.fromJson(await _client.send(
      'get',
      'api/relation/{relationName}/from/{sourceType}/{sourceKey}/to/{targetType}/{targetKey}',
      pathParameters: {
        'relationName': relationName,
        'sourceType': sourceType,
        'sourceKey': sourceKey,
        'targetType': targetType,
        'targetKey': targetKey,
      },
      queryParameters: {
        if (sourceStatus != null) 'sourceStatus': sourceStatus,
        if (targetStatus != null) 'targetStatus': targetStatus,
        if (sourceVersion != null) 'sourceVersion': '$sourceVersion',
        if (targetVersion != null) 'targetVersion': '$targetVersion',
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Creates a relationship between two entities (user, space, content). The
  /// 'favourite' relationship is supported by default, but you can use this
  /// method
  /// to create any type of relationship between two entities.
  ///
  /// For example, the following method creates a 'sibling' relationship between
  /// two pieces of content:
  /// `GET
  /// https://your-domain.atlassian.net/wiki/rest/api/relation/sibling/from/content/123/to/content/456`
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Relation> createRelationship(
      {required String relationName,
      required String sourceType,
      required String sourceKey,
      required String targetType,
      required String targetKey,
      String? sourceStatus,
      String? targetStatus,
      int? sourceVersion,
      int? targetVersion}) async {
    return Relation.fromJson(await _client.send(
      'put',
      'api/relation/{relationName}/from/{sourceType}/{sourceKey}/to/{targetType}/{targetKey}',
      pathParameters: {
        'relationName': relationName,
        'sourceType': sourceType,
        'sourceKey': sourceKey,
        'targetType': targetType,
        'targetKey': targetKey,
      },
      queryParameters: {
        if (sourceStatus != null) 'sourceStatus': sourceStatus,
        if (targetStatus != null) 'targetStatus': targetStatus,
        if (sourceVersion != null) 'sourceVersion': '$sourceVersion',
        if (targetVersion != null) 'targetVersion': '$targetVersion',
      },
    ));
  }

  /// Deletes a relationship between two entities (user, space, content).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// For favourite relationships, the current user can only delete their own
  /// favourite relationships. A space administrator can delete favourite
  /// relationships for any user.
  Future<void> delete(
      {required String relationName,
      required String sourceType,
      required String sourceKey,
      required String targetType,
      required String targetKey,
      String? sourceStatus,
      String? targetStatus,
      int? sourceVersion,
      int? targetVersion}) async {
    await _client.send(
      'delete',
      'api/relation/{relationName}/from/{sourceType}/{sourceKey}/to/{targetType}/{targetKey}',
      pathParameters: {
        'relationName': relationName,
        'sourceType': sourceType,
        'sourceKey': sourceKey,
        'targetType': targetType,
        'targetKey': targetKey,
      },
      queryParameters: {
        if (sourceStatus != null) 'sourceStatus': sourceStatus,
        if (targetStatus != null) 'targetStatus': targetStatus,
        if (sourceVersion != null) 'sourceVersion': '$sourceVersion',
        if (targetVersion != null) 'targetVersion': '$targetVersion',
      },
    );
  }

  /// Returns all target entities that have a particular relationship to the
  /// source entity. Note, relationships are one way.
  ///
  /// For example, the following method finds all users that have a
  /// 'collaborator'
  /// relationship to a piece of content with an ID of '1234':
  /// `GET
  /// https://your-domain.atlassian.net/wiki/rest/api/relation/collaborator/to/content/1234/from/user`
  /// Note, 'collaborator' is an example custom relationship type.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view both the target entity and source entity.
  Future<RelationArray> findSourcesForTarget(
      {required String relationName,
      required String sourceType,
      required String targetType,
      required String targetKey,
      String? sourceStatus,
      String? targetStatus,
      int? sourceVersion,
      int? targetVersion,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return RelationArray.fromJson(await _client.send(
      'get',
      'api/relation/{relationName}/to/{targetType}/{targetKey}/from/{sourceType}',
      pathParameters: {
        'relationName': relationName,
        'sourceType': sourceType,
        'targetType': targetType,
        'targetKey': targetKey,
      },
      queryParameters: {
        if (sourceStatus != null) 'sourceStatus': sourceStatus,
        if (targetStatus != null) 'targetStatus': targetStatus,
        if (sourceVersion != null) 'sourceVersion': '$sourceVersion',
        if (targetVersion != null) 'targetVersion': '$targetVersion',
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SearchApi {
  final ApiClient _client;

  SearchApi(this._client);

  /// Searches for content using the
  /// [Confluence Query Language (CQL)](https://developer.atlassian.com/cloud/confluence/advanced-searching-using-cql/)
  ///
  /// Example initial call:
  /// ```
  /// https://your-domain.atlassian.net/wiki/rest/api/search?cql=type=page&limit=25
  /// ```
  ///
  /// Example response:
  /// ```
  /// {
  ///   "results": [
  ///     { ... },
  ///     { ... },
  ///     ...
  ///     { ... }
  ///   ],
  ///   "limit": 25,
  ///   "size": 25,
  ///   ...
  ///   "_links": {
  ///     "base": "<url>",
  ///     "context": "<url>",
  ///     "next": "/rest/api/search?cql=type=page&limit=25&cursor=raNDoMsTRiNg",
  ///     "self": "<url>"
  ///   }
  /// }
  /// ```
  ///
  /// When additional results are available, returns `next` and `prev` URLs to
  /// retrieve them in subsequent calls. The URLs each contain a cursor that
  /// points to the appropriate set of results. Use `limit` to specify the
  /// number of results returned in each call.
  ///
  /// Example subsequent call (taken from example response):
  /// ```
  /// https://your-domain.atlassian.net/wiki/rest/api/search?cql=type=page&limit=25&cursor=raNDoMsTRiNg
  /// ```
  /// The response to this will have a `prev` URL similar to the `next` in the
  /// example response.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the entities. Note, only entities that the user has
  /// permission to view will be returned.
  Future<SearchPageResponseSearchResult> search(
      {required String cql,
      String? cqlcontext,
      String? cursor,
      int? limit,
      bool? includeArchivedSpaces}) async {
    return SearchPageResponseSearchResult.fromJson(await _client.send(
      'get',
      'api/search',
      queryParameters: {
        'cql': cql,
        if (cqlcontext != null) 'cqlcontext': cqlcontext,
        if (cursor != null) 'cursor': cursor,
        if (limit != null) 'limit': '$limit',
        if (includeArchivedSpaces != null)
          'includeArchivedSpaces': '$includeArchivedSpaces',
      },
    ));
  }

  /// Searches for users using user-specific queries from the
  /// [Confluence Query Language (CQL)](https://developer.atlassian.com/cloud/confluence/advanced-searching-using-cql/).
  ///
  /// Note that some user fields may be set to null depending on the user's
  /// privacy settings.
  /// These are: email, profilePicture, and displayName.
  Future<SearchPageResponseSearchResult> search2(
      {required String cql, int? start, int? limit}) async {
    return SearchPageResponseSearchResult.fromJson(await _client.send(
      'get',
      'api/search/user',
      queryParameters: {
        'cql': cql,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SettingsApi {
  final ApiClient _client;

  SettingsApi(this._client);

  /// Returns the look and feel settings for the site or a single space. This
  /// includes attributes such as the color scheme, padding, and border radius.
  ///
  /// The look and feel settings for a space can be inherited from the global
  /// look and feel settings or provided by a theme.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// None
  Future<LookAndFeelSettings> getLookAndFeelSettings({String? spaceKey}) async {
    return LookAndFeelSettings.fromJson(await _client.send(
      'get',
      'api/settings/lookandfeel',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
      },
    ));
  }

  /// Sets the look and feel settings to the default (global) settings, the
  /// custom settings, or the current theme's settings for a space.
  /// The custom and theme settings can only be selected if there is already
  /// a theme set for a space. Note, the default space settings are inherited
  /// from the current global settings.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<LookAndFeelSelection> updateLookAndFeel(
      {required LookAndFeelSelection body}) async {
    return LookAndFeelSelection.fromJson(await _client.send(
      'put',
      'api/settings/lookandfeel',
      body: body.toJson(),
    ));
  }

  /// Updates the look and feel settings for the site or for a single space.
  /// If custom settings exist, they are updated. If no custom settings exist,
  /// then a set of custom settings is created.
  ///
  /// Note, if a theme is selected for a space, the space look and feel settings
  /// are provided by the theme and cannot be overridden.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<LookAndFeelUpdated> updateLookAndFeelSettings(
      {String? spaceKey, required LookAndFeel body}) async {
    return LookAndFeelUpdated.fromJson(await _client.send(
      'post',
      'api/settings/lookandfeel/custom',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }

  /// Resets the custom look and feel settings for the site or a single space.
  /// This changes the values of the custom settings to be the same as the
  /// default settings. It does not change which settings (default or custom)
  /// are selected. Note, the default space settings are inherited from the
  /// current global settings.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<void> resetLookAndFeelSettings({String? spaceKey}) async {
    await _client.send(
      'delete',
      'api/settings/lookandfeel/custom',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
      },
    );
  }

  /// Sets the look and feel settings to either the default settings or the
  /// custom settings, for the site or a single space. Note, the default
  /// space settings are inherited from the current global settings.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<String> setLookAndFeelSettings(
      {String? spaceKey, required String body}) async {
    return await _client.send(
      'put',
      'api/settings/lookandfeel/selected',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
      },
      body: body,
    ) as String;
  }

  /// Returns the system information for the Confluence Cloud tenant. This
  /// information is used by Atlassian.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<SystemInfoEntity> getSystemInfo() async {
    return SystemInfoEntity.fromJson(await _client.send(
      'get',
      'api/settings/systemInfo',
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SpaceApi {
  final ApiClient _client;

  SpaceApi(this._client);

  /// Returns all spaces. The returned spaces are ordered alphabetically in
  /// ascending order by space key.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Note, the returned list will only contain spaces that the current user
  /// has permission to view.
  Future<SpaceArray> getSpaces(
      {List<String>? spaceKey,
      List<int>? spaceId,
      String? type,
      String? status,
      List<String>? label,
      bool? favourite,
      String? favouriteUserKey,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return SpaceArray.fromJson(await _client.send(
      'get',
      'api/space',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': '$spaceKey',
        if (spaceId != null) 'spaceId': '$spaceId',
        if (type != null) 'type': type,
        if (status != null) 'status': status,
        if (label != null) 'label': '$label',
        if (favourite != null) 'favourite': '$favourite',
        if (favouriteUserKey != null) 'favouriteUserKey': favouriteUserKey,
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a new space. Note, currently you cannot set space labels when
  /// creating a space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Create Space(s)' global permission.
  Future<Space> createSpace({required SpaceCreate body}) async {
    return Space.fromJson(await _client.send(
      'post',
      'api/space',
      body: body.toJson(),
    ));
  }

  /// Creates a new space that is only visible to the creator. This method is
  /// the same as the [Create space](#api-space-post) method with permissions
  /// set to the current user only. Note, currently you cannot set space
  /// labels when creating a space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Create Space(s)' global permission.
  Future<Space> createPrivateSpace({required SpacePrivateCreate body}) async {
    return Space.fromJson(await _client.send(
      'post',
      'api/space/_private',
      body: body.toJson(),
    ));
  }

  /// Returns a space. This includes information like the name, description,
  /// and permissions, but not the content in the space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space.
  Future<Space> getSpace(
      {required String spaceKey, List<String>? expand}) async {
    return Space.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Updates the name, description, or homepage of a space.
  ///
  /// -   For security reasons, permissions cannot be updated via the API and
  /// must be changed via the user interface instead.
  /// -   Currently you cannot set space labels when updating a space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<Space> updateSpace(
      {required String spaceKey, required SpaceUpdate body}) async {
    return Space.fromJson(await _client.send(
      'put',
      'api/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a space. Note, the space will be deleted in a long running task.
  /// Therefore, the space may not be deleted yet when this method has
  /// returned. Clients should poll the status link that is returned in the
  /// response until the task completes.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<void> deleteSpace(String spaceKey) async {
    await _client.send(
      'delete',
      'api/space/{spaceKey}',
      pathParameters: {
        'spaceKey': spaceKey,
      },
    );
  }

  /// Returns all content in a space. The returned content is grouped by type
  /// (pages then blogposts), then ordered by content ID in ascending order.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space. Note, the returned list will only
  /// contain content that the current user has permission to view.
  Future<ContentArray> getContentForSpace(
      {required String spaceKey,
      String? depth,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/content',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (depth != null) 'depth': depth,
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns all content of a given type, in a space. The returned content is
  /// ordered by content ID in ascending order.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space. Note, the returned list will only
  /// contain content that the current user has permission to view.
  Future<ContentArray> getContentByTypeForSpace(
      {required String spaceKey,
      required String type,
      String? depth,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return ContentArray.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/content/{type}',
      pathParameters: {
        'spaceKey': spaceKey,
        'type': type,
      },
      queryParameters: {
        if (depth != null) 'depth': depth,
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SpacePermissionsApi {
  final ApiClient _client;

  SpacePermissionsApi(this._client);

  /// Adds new permission to space.
  ///
  /// If the permission to be added is a group permission, the group can be
  /// identified
  /// by its group name or group id.
  ///
  /// Note: Apps cannot access this REST resource - including when utilizing
  /// user impersonation.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<SpacePermissionV2> addPermission(
      {required String spaceKey, required SpacePermissionV2 body}) async {
    return SpacePermissionV2.fromJson(await _client.send(
      'post',
      'api/space/{spaceKey}/permission',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }

  /// Removes a space permission. Note that removing Read Space permission for a
  /// user or group will remove all
  /// the space permissions for that user or group.
  ///
  /// Note: Apps cannot access this REST resource - including when utilizing
  /// user impersonation.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<void> removePermission(
      {required String spaceKey, required int id}) async {
    await _client.send(
      'delete',
      'api/space/{spaceKey}/permission/{id}',
      pathParameters: {
        'spaceKey': spaceKey,
        'id': '$id',
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SpacePropertiesApi {
  final ApiClient _client;

  SpacePropertiesApi(this._client);

  /// Returns all properties for the given space. Space properties are a
  /// key-value storage associated with a space.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘View’ permission for the space.
  Future<SpacePropertyArray> getSpaceProperties(
      {required String spaceKey,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return SpacePropertyArray.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/property',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Creates a new space property.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘Admin’ permission for the space.
  Future<SpaceProperty> createSpaceProperty(
      {required String spaceKey, required SpacePropertyCreate body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'post',
      'api/space/{spaceKey}/property',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }

  /// Returns a space property.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘View’ permission for the space.
  Future<SpaceProperty> getSpaceProperty(
      {required String spaceKey,
      required String key,
      List<String>? expand}) async {
    return SpaceProperty.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/property/{key}',
      pathParameters: {
        'spaceKey': spaceKey,
        'key': key,
      },
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Creates a new space property. This is the same as `POST
  /// /api/space/{spaceKey}/property` but the key for the property is passed as
  /// a
  /// path parameter, rather than in the request body.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘Admin’ permission for the space.
  Future<SpaceProperty> createSpacePropertyForKey(
      {required String spaceKey,
      required String key,
      required SpacePropertyCreateNoKey body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'post',
      'api/space/{spaceKey}/property/{key}',
      pathParameters: {
        'spaceKey': spaceKey,
        'key': key,
      },
      body: body.toJson(),
    ));
  }

  /// Updates a space property. Note, you cannot update the key of a space
  /// property, only the value.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘Admin’ permission for the space.
  Future<SpaceProperty> updateSpaceProperty(
      {required String spaceKey,
      required String key,
      required SpacePropertyUpdate body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'put',
      'api/space/{spaceKey}/property/{key}',
      pathParameters: {
        'spaceKey': spaceKey,
        'key': key,
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a space property.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘Admin’ permission for the space.
  Future<void> deleteSpaceProperty(
      {required String spaceKey, required String key}) async {
    await _client.send(
      'delete',
      'api/space/{spaceKey}/property/{key}',
      pathParameters: {
        'spaceKey': spaceKey,
        'key': key,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class SpaceSettingsApi {
  final ApiClient _client;

  SpaceSettingsApi(this._client);

  /// Returns the settings of a space. Currently only the
  /// `routeOverrideEnabled` setting can be returned.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'View' permission for the space.
  Future<SpaceSettings> getSpaceSettings(String spaceKey) async {
    return SpaceSettings.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/settings',
      pathParameters: {
        'spaceKey': spaceKey,
      },
    ));
  }

  /// Updates the settings for a space. Currently only the
  /// `routeOverrideEnabled` setting can be updated.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<SpaceSettings> updateSpaceSettings(
      {required String spaceKey, required SpaceSettingsUpdate body}) async {
    return SpaceSettings.fromJson(await _client.send(
      'put',
      'api/space/{spaceKey}/settings',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class TemplateApi {
  final ApiClient _client;

  TemplateApi(this._client);

  /// Creates a new content template. Note, blueprint templates cannot be
  /// created via the REST API.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space to create a space template or 'Confluence
  /// Administrator'
  /// global permission to create a global template.
  Future<ContentTemplate> createContentTemplate(
      {required ContentTemplateCreate body}) async {
    return ContentTemplate.fromJson(await _client.send(
      'post',
      'api/template',
      body: body.toJson(),
    ));
  }

  /// Updates a content template. Note, blueprint templates cannot be updated
  /// via the REST API.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space to create a space template or 'Confluence
  /// Administrator'
  /// global permission to create a global template.
  Future<ContentTemplate> updateContentTemplate(
      {required ContentTemplateUpdate body}) async {
    return ContentTemplate.fromJson(await _client.send(
      'put',
      'api/template',
      body: body.toJson(),
    ));
  }

  /// Returns all templates provided by blueprints. Use this method to retrieve
  /// all global blueprint templates or all blueprint templates in a space.
  ///
  /// Note, all global blueprints are inherited by each space. Space blueprints
  /// can be customised without affecting the global blueprints.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<BlueprintTemplateArray> getBlueprintTemplates(
      {String? spaceKey, int? start, int? limit, List<String>? expand}) async {
    return BlueprintTemplateArray.fromJson(await _client.send(
      'get',
      'api/template/blueprint',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns all content templates. Use this method to retrieve all global
  /// content templates or all content templates in a space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space to view space templates and 'Confluence
  /// Administrator' global permission to view global templates.
  Future<ContentTemplateArray> getContentTemplates(
      {String? spaceKey, int? start, int? limit, List<String>? expand}) async {
    return ContentTemplateArray.fromJson(await _client.send(
      'get',
      'api/template/page',
      queryParameters: {
        if (spaceKey != null) 'spaceKey': spaceKey,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns a content template. This includes information about template,
  /// like the name, the space or blueprint that the template is in, the body
  /// of the template, and more.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space to view space templates and 'Confluence
  /// Administrator' global permission to view global templates.
  Future<ContentTemplate> getContentTemplate(String contentTemplateId) async {
    return ContentTemplate.fromJson(await _client.send(
      'get',
      'api/template/{contentTemplateId}',
      pathParameters: {
        'contentTemplateId': contentTemplateId,
      },
    ));
  }

  /// Deletes a template. This results in different actions depending on the
  /// type of template:
  ///
  /// - If the template is a content template, it is deleted.
  /// - If the template is a modified space-level blueprint template, it reverts
  /// to the template inherited from the global-level blueprint template.
  /// - If the template is a modified global-level blueprint template, it
  /// reverts
  /// to the default global-level blueprint template.
  ///
  ///  Note, unmodified blueprint templates cannot be deleted.
  Future<void> removeTemplate(String contentTemplateId) async {
    await _client.send(
      'delete',
      'api/template/{contentTemplateId}',
      pathParameters: {
        'contentTemplateId': contentTemplateId,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class ThemesApi {
  final ApiClient _client;

  ThemesApi(this._client);

  /// Returns all themes, not including the default theme.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// None
  Future<ThemeArray> getThemes({int? start, int? limit}) async {
    return ThemeArray.fromJson(await _client.send(
      'get',
      'api/settings/theme',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns the globally assigned theme.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// None
  Future<Theme> getGlobalTheme() async {
    return Theme.fromJson(await _client.send(
      'get',
      'api/settings/theme/selected',
    ));
  }

  /// Returns a theme. This includes information about the theme name,
  /// description, and icon.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// None
  Future<Theme> getTheme(String themeKey) async {
    return Theme.fromJson(await _client.send(
      'get',
      'api/settings/theme/{themeKey}',
      pathParameters: {
        'themeKey': themeKey,
      },
    ));
  }

  /// Returns the theme selected for a space, if one is set. If no space
  /// theme is set, this means that the space is inheriting the global look
  /// and feel settings.
  ///
  /// **[Permissions required](https://confluence.atlassian.com/x/_AozKw)**:
  /// ‘View’ permission for the space.
  Future<Theme> getSpaceTheme(String spaceKey) async {
    return Theme.fromJson(await _client.send(
      'get',
      'api/space/{spaceKey}/theme',
      pathParameters: {
        'spaceKey': spaceKey,
      },
    ));
  }

  /// Sets the theme for a space. Note, if you want to reset the space theme to
  /// the default Confluence theme, use the 'Reset space theme' method instead
  /// of this method.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<Theme> setSpaceTheme(
      {required String spaceKey, required ThemeUpdate body}) async {
    return Theme.fromJson(await _client.send(
      'put',
      'api/space/{spaceKey}/theme',
      pathParameters: {
        'spaceKey': spaceKey,
      },
      body: body.toJson(),
    ));
  }

  /// Resets the space theme. This means that the space will inherit the
  /// global look and feel settings
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Admin' permission for the space.
  Future<void> resetSpaceTheme(String spaceKey) async {
    await _client.send(
      'delete',
      'api/space/{spaceKey}/theme',
      pathParameters: {
        'spaceKey': spaceKey,
      },
    );
  }
}

/// This document describes the REST API and resources provided by Confluence. The REST APIs are for developers who want to integrate Confluence into their application and for administrators who want to script interactions with the Confluence server.Confluence's REST APIs provide access to resources (data entities) via URI paths. To use a REST API, your application will make an HTTP request and parse the response. The response format is JSON. Your methods will be the standard HTTP methods like GET, PUT, POST and DELETE. Because the REST API is based on open standards, you can use any web development language to access the API.

class UsersApi {
  final ApiClient _client;

  UsersApi(this._client);

  /// Returns a user. This includes information about the user, such as the
  /// display name, account ID, profile picture, and more. The information
  /// returned may be
  /// restricted by the user's profile visibility settings.
  ///
  /// **Note:** to add, edit, or delete users in your organization, see the
  /// [user management REST API](/cloud/admin/user-management/about/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<User> getUser(
      {String? key,
      String? username,
      required String accountId,
      List<String>? expand}) async {
    return User.fromJson(await _client.send(
      'get',
      'api/user',
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns information about how anonymous users are represented, like the
  /// profile picture and display name.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<UserAnonymous> getAnonymousUser({List<String>? expand}) async {
    return UserAnonymous.fromJson(await _client.send(
      'get',
      'api/user/anonymous',
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns the currently logged-in user. This includes information about
  /// the user, like the display name, userKey, account ID, profile picture,
  /// and more.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<User> getCurrentUser({List<String>? expand}) async {
    return User.fromJson(await _client.send(
      'get',
      'api/user/current',
      queryParameters: {
        if (expand != null) 'expand': '$expand',
      },
    ));
  }

  /// Returns the groups that a user is a member of.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<GroupArray> getGroupMembershipsForUser(
      {String? key,
      String? username,
      required String accountId,
      int? start,
      int? limit}) async {
    return GroupArray.fromJson(await _client.send(
      'get',
      'api/user/memberof',
      queryParameters: {
        if (key != null) 'key': key,
        if (username != null) 'username': username,
        'accountId': accountId,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns user details for the ids provided in request.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<BulkUserLookupArray> getBulkUserLookup(
      {required String accountId, List<String>? expand, int? limit}) async {
    return BulkUserLookupArray.fromJson(await _client.send(
      'get',
      'api/user/bulk',
      queryParameters: {
        'accountId': accountId,
        if (expand != null) 'expand': '$expand',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Returns a user's email address. This API is only available to apps
  /// approved by
  /// Atlassian, according to these
  /// [guidelines](https://community.developer.atlassian.com/t/guidelines-for-requesting-access-to-email-address/27603).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<AccountIdEmailRecord> getPrivacyUnsafeUserEmail(
      String accountId) async {
    return AccountIdEmailRecord.fromJson(await _client.send(
      'get',
      'api/user/email',
      queryParameters: {
        'accountId': accountId,
      },
    ));
  }

  /// Returns user email addresses for a set of accountIds. This API is only
  /// available to apps approved by
  /// Atlassian, according to these
  /// [guidelines](https://community.developer.atlassian.com/t/guidelines-for-requesting-access-to-email-address/27603).
  ///
  /// Any accounts which are not available will not be included in the result.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<AccountIdEmailRecordArray> getPrivacyUnsafeUserEmailBulk(
      List<String> accountId) async {
    return AccountIdEmailRecordArray.fromJson(await _client.send(
      'get',
      'api/user/email/bulk',
      queryParameters: {
        'accountId': '$accountId',
      },
    ));
  }

  /// Returns the accountIds for the users specified in the key or username
  /// parameters. Note that multiple key and username parameters can be
  /// specified.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Confluence Administrator' global permission if specifying a user,
  /// otherwise
  /// permission to access the Confluence site ('Can use' global permission).
  Future<MigratedUserArray> getBulkUserMigration(
      {required List<String> key,
      List<String>? username,
      int? start,
      int? limit}) async {
    return MigratedUserArray.fromJson(await _client.send(
      'get',
      'api/user/bulk/migration',
      queryParameters: {
        'key': '$key',
        if (username != null) 'username': '$username',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

class AccountId {
  final String accountId;

  AccountId({required this.accountId});

  factory AccountId.fromJson(Map<String, Object?> json) {
    return AccountId(
      accountId: json[r'accountId'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;

    final json = <String, Object?>{};
    json[r'accountId'] = accountId;
    return json;
  }

  AccountId copyWith({String? accountId}) {
    return AccountId(
      accountId: accountId ?? this.accountId,
    );
  }
}

class AccountIdEmailRecord {
  final String accountId;
  final String email;

  AccountIdEmailRecord({required this.accountId, required this.email});

  factory AccountIdEmailRecord.fromJson(Map<String, Object?> json) {
    return AccountIdEmailRecord(
      accountId: json[r'accountId'] as String? ?? '',
      email: json[r'email'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var email = this.email;

    final json = <String, Object?>{};
    json[r'accountId'] = accountId;
    json[r'email'] = email;
    return json;
  }

  AccountIdEmailRecord copyWith({String? accountId, String? email}) {
    return AccountIdEmailRecord(
      accountId: accountId ?? this.accountId,
      email: email ?? this.email,
    );
  }
}

class AccountIdEmailRecordArray {
  AccountIdEmailRecordArray();

  factory AccountIdEmailRecordArray.fromJson(Map<String, Object?> json) {
    return AccountIdEmailRecordArray();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class AddContentRestriction {
  /// The restriction operation applied to content.
  final AddContentRestrictionOperation operation;

  /// The users/groups that the restrictions will be applied to. At least one of
  /// `user` or `group` must be specified for this object.
  final AddContentRestrictionRestrictions restrictions;

  AddContentRestriction({required this.operation, required this.restrictions});

  factory AddContentRestriction.fromJson(Map<String, Object?> json) {
    return AddContentRestriction(
      operation: AddContentRestrictionOperation.fromValue(
          json[r'operation'] as String? ?? ''),
      restrictions: AddContentRestrictionRestrictions.fromJson(
          json[r'restrictions'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var operation = this.operation;
    var restrictions = this.restrictions;

    final json = <String, Object?>{};
    json[r'operation'] = operation.value;
    json[r'restrictions'] = restrictions.toJson();
    return json;
  }

  AddContentRestriction copyWith(
      {AddContentRestrictionOperation? operation,
      AddContentRestrictionRestrictions? restrictions}) {
    return AddContentRestriction(
      operation: operation ?? this.operation,
      restrictions: restrictions ?? this.restrictions,
    );
  }
}

class AddContentRestrictionOperation {
  static const read = AddContentRestrictionOperation._('read');
  static const update = AddContentRestrictionOperation._('update');

  static const values = [
    read,
    update,
  ];
  final String value;

  const AddContentRestrictionOperation._(this.value);

  static AddContentRestrictionOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AddContentRestrictionOperation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The users/groups that the restrictions will be applied to. At least one of
/// `user` or `group` must be specified for this object.
class AddContentRestrictionRestrictions {
  /// The users that the restrictions will be applied to. This array must
  /// have at least one item, otherwise it should be omitted.
  final List<AddContentRestrictionRestrictionsUserItem> user;

  /// The groups that the restrictions will be applied to. This array must
  /// have at least one item, otherwise it should be omitted.
  final List<AddContentRestrictionRestrictionsGroupItem> group;

  AddContentRestrictionRestrictions(
      {List<AddContentRestrictionRestrictionsUserItem>? user,
      List<AddContentRestrictionRestrictionsGroupItem>? group})
      : user = user ?? [],
        group = group ?? [];

  factory AddContentRestrictionRestrictions.fromJson(
      Map<String, Object?> json) {
    return AddContentRestrictionRestrictions(
      user: (json[r'user'] as List<Object?>?)
              ?.map((i) => AddContentRestrictionRestrictionsUserItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      group: (json[r'group'] as List<Object?>?)
              ?.map((i) => AddContentRestrictionRestrictionsGroupItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;

    final json = <String, Object?>{};
    json[r'user'] = user.map((i) => i.toJson()).toList();
    json[r'group'] = group.map((i) => i.toJson()).toList();
    return json;
  }

  AddContentRestrictionRestrictions copyWith(
      {List<AddContentRestrictionRestrictionsUserItem>? user,
      List<AddContentRestrictionRestrictionsGroupItem>? group}) {
    return AddContentRestrictionRestrictions(
      user: user ?? this.user,
      group: group ?? this.group,
    );
  }
}

/// A group that the restriction will be applied to.
class AddContentRestrictionRestrictionsGroupItem {
  /// Set to 'group'.
  final AddContentRestrictionRestrictionsGroupItemType type;

  /// The name of the group.
  final String name;

  AddContentRestrictionRestrictionsGroupItem(
      {required this.type, required this.name});

  factory AddContentRestrictionRestrictionsGroupItem.fromJson(
      Map<String, Object?> json) {
    return AddContentRestrictionRestrictionsGroupItem(
      type: AddContentRestrictionRestrictionsGroupItemType.fromValue(
          json[r'type'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'name'] = name;
    return json;
  }

  AddContentRestrictionRestrictionsGroupItem copyWith(
      {AddContentRestrictionRestrictionsGroupItemType? type, String? name}) {
    return AddContentRestrictionRestrictionsGroupItem(
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }
}

class AddContentRestrictionRestrictionsGroupItemType {
  static const group =
      AddContentRestrictionRestrictionsGroupItemType._('group');

  static const values = [
    group,
  ];
  final String value;

  const AddContentRestrictionRestrictionsGroupItemType._(this.value);

  static AddContentRestrictionRestrictionsGroupItemType fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              AddContentRestrictionRestrictionsGroupItemType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// A user that the restriction will be applied to. Either the `username`
/// or the `userKey` must be specified to identify the user.
class AddContentRestrictionRestrictionsUserItem {
  /// Set to 'known'.
  final AddContentRestrictionRestrictionsUserItemType type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;

  AddContentRestrictionRestrictionsUserItem(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId});

  factory AddContentRestrictionRestrictionsUserItem.fromJson(
      Map<String, Object?> json) {
    return AddContentRestrictionRestrictionsUserItem(
      type: AddContentRestrictionRestrictionsUserItemType.fromValue(
          json[r'type'] as String? ?? ''),
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    return json;
  }

  AddContentRestrictionRestrictionsUserItem copyWith(
      {AddContentRestrictionRestrictionsUserItemType? type,
      String? username,
      String? userKey,
      String? accountId}) {
    return AddContentRestrictionRestrictionsUserItem(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
    );
  }
}

class AddContentRestrictionRestrictionsUserItemType {
  static const known = AddContentRestrictionRestrictionsUserItemType._('known');
  static const unknown =
      AddContentRestrictionRestrictionsUserItemType._('unknown');
  static const anonymous =
      AddContentRestrictionRestrictionsUserItemType._('anonymous');
  static const user = AddContentRestrictionRestrictionsUserItemType._('user');

  static const values = [
    known,
    unknown,
    anonymous,
    user,
  ];
  final String value;

  const AddContentRestrictionRestrictionsUserItemType._(this.value);

  static AddContentRestrictionRestrictionsUserItemType fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AddContentRestrictionRestrictionsUserItemType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class AddContentRestrictionUpdateArray {
  AddContentRestrictionUpdateArray();

  factory AddContentRestrictionUpdateArray.fromJson(Map<String, Object?> json) {
    return AddContentRestrictionUpdateArray();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class AffectedObject {
  final String name;
  final String objectType;

  AffectedObject({required this.name, required this.objectType});

  factory AffectedObject.fromJson(Map<String, Object?> json) {
    return AffectedObject(
      name: json[r'name'] as String? ?? '',
      objectType: json[r'objectType'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var objectType = this.objectType;

    final json = <String, Object?>{};
    json[r'name'] = name;
    json[r'objectType'] = objectType;
    return json;
  }

  AffectedObject copyWith({String? name, String? objectType}) {
    return AffectedObject(
      name: name ?? this.name,
      objectType: objectType ?? this.objectType,
    );
  }
}

class AttachmentUpdate {
  /// The attachment version. Set this to the current version number of the
  /// attachment. Note, the version number only needs to be incremented when
  /// updating the actual attachment, not its properties.
  final AttachmentUpdateVersion version;

  /// The ID of the attachment to be updated.
  final String id;

  /// Set this to `attachment`.
  final AttachmentUpdateType type;

  /// The updated name of the attachment.
  final String? title;
  final AttachmentUpdateMetadata? metadata;

  /// The new content to attach the attachment to.
  final AttachmentUpdateContainer? container;

  AttachmentUpdate(
      {required this.version,
      required this.id,
      required this.type,
      this.title,
      this.metadata,
      this.container});

  factory AttachmentUpdate.fromJson(Map<String, Object?> json) {
    return AttachmentUpdate(
      version: AttachmentUpdateVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
      id: json[r'id'] as String? ?? '',
      type: AttachmentUpdateType.fromValue(json[r'type'] as String? ?? ''),
      title: json[r'title'] as String?,
      metadata: json[r'metadata'] != null
          ? AttachmentUpdateMetadata.fromJson(
              json[r'metadata']! as Map<String, Object?>)
          : null,
      container: json[r'container'] != null
          ? AttachmentUpdateContainer.fromJson(
              json[r'container']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var id = this.id;
    var type = this.type;
    var title = this.title;
    var metadata = this.metadata;
    var container = this.container;

    final json = <String, Object?>{};
    json[r'version'] = version.toJson();
    json[r'id'] = id;
    json[r'type'] = type.value;
    if (title != null) {
      json[r'title'] = title;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata.toJson();
    }
    if (container != null) {
      json[r'container'] = container.toJson();
    }
    return json;
  }

  AttachmentUpdate copyWith(
      {AttachmentUpdateVersion? version,
      String? id,
      AttachmentUpdateType? type,
      String? title,
      AttachmentUpdateMetadata? metadata,
      AttachmentUpdateContainer? container}) {
    return AttachmentUpdate(
      version: version ?? this.version,
      id: id ?? this.id,
      type: type ?? this.type,
      title: title ?? this.title,
      metadata: metadata ?? this.metadata,
      container: container ?? this.container,
    );
  }
}

class AttachmentUpdateType {
  static const attachment = AttachmentUpdateType._('attachment');

  static const values = [
    attachment,
  ];
  final String value;

  const AttachmentUpdateType._(this.value);

  static AttachmentUpdateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AttachmentUpdateType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The new content to attach the attachment to.
class AttachmentUpdateContainer {
  /// The `id` of the parent content.
  final String id;

  /// The content type. You can only attach attachments to content
  /// of type: `page`, `blogpost`.
  final String type;

  AttachmentUpdateContainer({required this.id, required this.type});

  factory AttachmentUpdateContainer.fromJson(Map<String, Object?> json) {
    return AttachmentUpdateContainer(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type;
    return json;
  }

  AttachmentUpdateContainer copyWith({String? id, String? type}) {
    return AttachmentUpdateContainer(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }
}

class AttachmentUpdateMetadata {
  /// The media type of the attachment, e.g. 'img/jpg'.
  final String? mediaType;

  /// The comment for this update.
  final String? comment;

  AttachmentUpdateMetadata({this.mediaType, this.comment});

  factory AttachmentUpdateMetadata.fromJson(Map<String, Object?> json) {
    return AttachmentUpdateMetadata(
      mediaType: json[r'mediaType'] as String?,
      comment: json[r'comment'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var mediaType = this.mediaType;
    var comment = this.comment;

    final json = <String, Object?>{};
    if (mediaType != null) {
      json[r'mediaType'] = mediaType;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    return json;
  }

  AttachmentUpdateMetadata copyWith({String? mediaType, String? comment}) {
    return AttachmentUpdateMetadata(
      mediaType: mediaType ?? this.mediaType,
      comment: comment ?? this.comment,
    );
  }
}

/// The attachment version. Set this to the current version number of the
/// attachment. Note, the version number only needs to be incremented when
/// updating the actual attachment, not its properties.
class AttachmentUpdateVersion {
  /// The version number.
  final int number;

  AttachmentUpdateVersion({required this.number});

  factory AttachmentUpdateVersion.fromJson(Map<String, Object?> json) {
    return AttachmentUpdateVersion(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;

    final json = <String, Object?>{};
    json[r'number'] = number;
    return json;
  }

  AttachmentUpdateVersion copyWith({int? number}) {
    return AttachmentUpdateVersion(
      number: number ?? this.number,
    );
  }
}

class AuditRecord {
  final AuditRecordAuthor author;
  final String remoteAddress;

  /// The creation date-time of the audit record, as a timestamp.
  final int creationDate;
  final String summary;
  final String description;
  final String category;
  final bool sysAdmin;
  final AffectedObject affectedObject;
  final List<ChangedValue> changedValues;
  final List<AffectedObject> associatedObjects;

  AuditRecord(
      {required this.author,
      required this.remoteAddress,
      required this.creationDate,
      required this.summary,
      required this.description,
      required this.category,
      required this.sysAdmin,
      required this.affectedObject,
      required this.changedValues,
      required this.associatedObjects});

  factory AuditRecord.fromJson(Map<String, Object?> json) {
    return AuditRecord(
      author: AuditRecordAuthor.fromJson(
          json[r'author'] as Map<String, Object?>? ?? const {}),
      remoteAddress: json[r'remoteAddress'] as String? ?? '',
      creationDate: (json[r'creationDate'] as num?)?.toInt() ?? 0,
      summary: json[r'summary'] as String? ?? '',
      description: json[r'description'] as String? ?? '',
      category: json[r'category'] as String? ?? '',
      sysAdmin: json[r'sysAdmin'] as bool? ?? false,
      affectedObject: AffectedObject.fromJson(
          json[r'affectedObject'] as Map<String, Object?>? ?? const {}),
      changedValues: (json[r'changedValues'] as List<Object?>?)
              ?.map((i) =>
                  ChangedValue.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      associatedObjects: (json[r'associatedObjects'] as List<Object?>?)
              ?.map((i) => AffectedObject.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var author = this.author;
    var remoteAddress = this.remoteAddress;
    var creationDate = this.creationDate;
    var summary = this.summary;
    var description = this.description;
    var category = this.category;
    var sysAdmin = this.sysAdmin;
    var affectedObject = this.affectedObject;
    var changedValues = this.changedValues;
    var associatedObjects = this.associatedObjects;

    final json = <String, Object?>{};
    json[r'author'] = author.toJson();
    json[r'remoteAddress'] = remoteAddress;
    json[r'creationDate'] = creationDate;
    json[r'summary'] = summary;
    json[r'description'] = description;
    json[r'category'] = category;
    json[r'sysAdmin'] = sysAdmin;
    json[r'affectedObject'] = affectedObject.toJson();
    json[r'changedValues'] = changedValues.map((i) => i.toJson()).toList();
    json[r'associatedObjects'] =
        associatedObjects.map((i) => i.toJson()).toList();
    return json;
  }

  AuditRecord copyWith(
      {AuditRecordAuthor? author,
      String? remoteAddress,
      int? creationDate,
      String? summary,
      String? description,
      String? category,
      bool? sysAdmin,
      AffectedObject? affectedObject,
      List<ChangedValue>? changedValues,
      List<AffectedObject>? associatedObjects}) {
    return AuditRecord(
      author: author ?? this.author,
      remoteAddress: remoteAddress ?? this.remoteAddress,
      creationDate: creationDate ?? this.creationDate,
      summary: summary ?? this.summary,
      description: description ?? this.description,
      category: category ?? this.category,
      sysAdmin: sysAdmin ?? this.sysAdmin,
      affectedObject: affectedObject ?? this.affectedObject,
      changedValues: changedValues ?? this.changedValues,
      associatedObjects: associatedObjects ?? this.associatedObjects,
    );
  }
}

class AuditRecordArray {
  final List<AuditRecord> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  AuditRecordArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory AuditRecordArray.fromJson(Map<String, Object?> json) {
    return AuditRecordArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  AuditRecord.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  AuditRecordArray copyWith(
      {List<AuditRecord>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return AuditRecordArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class AuditRecordAuthor {
  final AuditRecordAuthorType type;
  final String displayName;
  final Map<String, dynamic> operations;

  /// This property has been deprecated and will be removed soon.
  final String username;

  /// This property has been deprecated and will be removed soon.
  final String userKey;

  AuditRecordAuthor(
      {required this.type,
      required this.displayName,
      required this.operations,
      required this.username,
      required this.userKey});

  factory AuditRecordAuthor.fromJson(Map<String, Object?> json) {
    return AuditRecordAuthor(
      type: AuditRecordAuthorType.fromValue(json[r'type'] as String? ?? ''),
      displayName: json[r'displayName'] as String? ?? '',
      operations: json[r'operations'] as Map<String, Object?>? ?? {},
      username: json[r'username'] as String? ?? '',
      userKey: json[r'userKey'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var displayName = this.displayName;
    var operations = this.operations;
    var username = this.username;
    var userKey = this.userKey;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'displayName'] = displayName;
    json[r'operations'] = operations;
    json[r'username'] = username;
    json[r'userKey'] = userKey;
    return json;
  }

  AuditRecordAuthor copyWith(
      {AuditRecordAuthorType? type,
      String? displayName,
      Map<String, dynamic>? operations,
      String? username,
      String? userKey}) {
    return AuditRecordAuthor(
      type: type ?? this.type,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
    );
  }
}

class AuditRecordAuthorType {
  static const user = AuditRecordAuthorType._('user');

  static const values = [
    user,
  ];
  final String value;

  const AuditRecordAuthorType._(this.value);

  static AuditRecordAuthorType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AuditRecordAuthorType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class AuditRecordCreate {
  /// The user that actioned the event. If `author` is not specified, then all
  /// `author` properties will be set to null/empty, except for `type` which
  /// will be set to 'user'.
  final AuditRecordCreateAuthor? author;

  /// The IP address of the computer where the event was initiated from.
  final String remoteAddress;

  /// The creation date-time of the audit record, as a timestamp. This is
  /// converted
  /// to a date-time display in the Confluence UI. If the `creationDate` is not
  /// specified, then it will be set to the timestamp for the current date-time.
  final int? creationDate;

  /// The summary of the event, which is displayed in the 'Change' column on
  /// the audit log in the Confluence UI.
  final String? summary;

  /// A long description of the event, which is displayed in the 'Description'
  /// field on the audit log in the Confluence UI.
  final String? description;

  /// The category of the event, which is displayed in the 'Event type' column
  /// on the audit log in the Confluence UI.
  final String? category;

  /// Indicates whether the event was actioned by a system administrator.
  final bool sysAdmin;
  final AffectedObject? affectedObject;

  /// The values that were changed in the event.
  final List<ChangedValue> changedValues;

  /// Objects that were associated with the event. For example, if the event
  /// was a space permission change then the associated object would be the
  /// space.
  final List<AffectedObject> associatedObjects;

  AuditRecordCreate(
      {this.author,
      required this.remoteAddress,
      this.creationDate,
      this.summary,
      this.description,
      this.category,
      bool? sysAdmin,
      this.affectedObject,
      List<ChangedValue>? changedValues,
      List<AffectedObject>? associatedObjects})
      : sysAdmin = sysAdmin ?? false,
        changedValues = changedValues ?? [],
        associatedObjects = associatedObjects ?? [];

  factory AuditRecordCreate.fromJson(Map<String, Object?> json) {
    return AuditRecordCreate(
      author: json[r'author'] != null
          ? AuditRecordCreateAuthor.fromJson(
              json[r'author']! as Map<String, Object?>)
          : null,
      remoteAddress: json[r'remoteAddress'] as String? ?? '',
      creationDate: (json[r'creationDate'] as num?)?.toInt(),
      summary: json[r'summary'] as String?,
      description: json[r'description'] as String?,
      category: json[r'category'] as String?,
      sysAdmin: json[r'sysAdmin'] as bool? ?? false,
      affectedObject: json[r'affectedObject'] != null
          ? AffectedObject.fromJson(
              json[r'affectedObject']! as Map<String, Object?>)
          : null,
      changedValues: (json[r'changedValues'] as List<Object?>?)
              ?.map((i) =>
                  ChangedValue.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      associatedObjects: (json[r'associatedObjects'] as List<Object?>?)
              ?.map((i) => AffectedObject.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var author = this.author;
    var remoteAddress = this.remoteAddress;
    var creationDate = this.creationDate;
    var summary = this.summary;
    var description = this.description;
    var category = this.category;
    var sysAdmin = this.sysAdmin;
    var affectedObject = this.affectedObject;
    var changedValues = this.changedValues;
    var associatedObjects = this.associatedObjects;

    final json = <String, Object?>{};
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    json[r'remoteAddress'] = remoteAddress;
    if (creationDate != null) {
      json[r'creationDate'] = creationDate;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    json[r'sysAdmin'] = sysAdmin;
    if (affectedObject != null) {
      json[r'affectedObject'] = affectedObject.toJson();
    }
    json[r'changedValues'] = changedValues.map((i) => i.toJson()).toList();
    json[r'associatedObjects'] =
        associatedObjects.map((i) => i.toJson()).toList();
    return json;
  }

  AuditRecordCreate copyWith(
      {AuditRecordCreateAuthor? author,
      String? remoteAddress,
      int? creationDate,
      String? summary,
      String? description,
      String? category,
      bool? sysAdmin,
      AffectedObject? affectedObject,
      List<ChangedValue>? changedValues,
      List<AffectedObject>? associatedObjects}) {
    return AuditRecordCreate(
      author: author ?? this.author,
      remoteAddress: remoteAddress ?? this.remoteAddress,
      creationDate: creationDate ?? this.creationDate,
      summary: summary ?? this.summary,
      description: description ?? this.description,
      category: category ?? this.category,
      sysAdmin: sysAdmin ?? this.sysAdmin,
      affectedObject: affectedObject ?? this.affectedObject,
      changedValues: changedValues ?? this.changedValues,
      associatedObjects: associatedObjects ?? this.associatedObjects,
    );
  }
}

/// The user that actioned the event. If `author` is not specified, then all
/// `author` properties will be set to null/empty, except for `type` which
/// will be set to 'user'.
class AuditRecordCreateAuthor {
  /// Set to 'user'.
  final AuditRecordCreateAuthorType type;

  /// The name that is displayed on the audit log in the Confluence UI.
  final String? displayName;

  /// Always defaults to null.
  final Map<String, dynamic>? operations;

  /// This property has been deprecated and will be removed soon.
  final String? username;

  /// This property has been deprecated and will be removed soon.
  final String? userKey;

  AuditRecordCreateAuthor(
      {required this.type,
      this.displayName,
      this.operations,
      this.username,
      this.userKey});

  factory AuditRecordCreateAuthor.fromJson(Map<String, Object?> json) {
    return AuditRecordCreateAuthor(
      type:
          AuditRecordCreateAuthorType.fromValue(json[r'type'] as String? ?? ''),
      displayName: json[r'displayName'] as String?,
      operations: json[r'operations'] as Map<String, Object?>?,
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var displayName = this.displayName;
    var operations = this.operations;
    var username = this.username;
    var userKey = this.userKey;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (operations != null) {
      json[r'operations'] = operations;
    }
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    return json;
  }

  AuditRecordCreateAuthor copyWith(
      {AuditRecordCreateAuthorType? type,
      String? displayName,
      Map<String, dynamic>? operations,
      String? username,
      String? userKey}) {
    return AuditRecordCreateAuthor(
      type: type ?? this.type,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
    );
  }
}

class AuditRecordCreateAuthorType {
  static const user = AuditRecordCreateAuthorType._('user');

  static const values = [
    user,
  ];
  final String value;

  const AuditRecordCreateAuthorType._(this.value);

  static AuditRecordCreateAuthorType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AuditRecordCreateAuthorType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlueprintTemplate {
  final String templateId;
  final BlueprintTemplateOriginalTemplate originalTemplate;
  final String referencingBlueprint;
  final String name;
  final String description;
  final List<Label> labels;
  final String templateType;
  final ContentBody? body;
  final BlueprintTemplateExpandable expandable;
  final GenericLinks links;

  BlueprintTemplate(
      {required this.templateId,
      required this.originalTemplate,
      required this.referencingBlueprint,
      required this.name,
      required this.description,
      required this.labels,
      required this.templateType,
      this.body,
      required this.expandable,
      required this.links});

  factory BlueprintTemplate.fromJson(Map<String, Object?> json) {
    return BlueprintTemplate(
      templateId: json[r'templateId'] as String? ?? '',
      originalTemplate: BlueprintTemplateOriginalTemplate.fromJson(
          json[r'originalTemplate'] as Map<String, Object?>? ?? const {}),
      referencingBlueprint: json[r'referencingBlueprint'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      description: json[r'description'] as String? ?? '',
      labels: (json[r'labels'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      templateType: json[r'templateType'] as String? ?? '',
      body: json[r'body'] != null
          ? ContentBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      expandable: BlueprintTemplateExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var templateId = this.templateId;
    var originalTemplate = this.originalTemplate;
    var referencingBlueprint = this.referencingBlueprint;
    var name = this.name;
    var description = this.description;
    var labels = this.labels;
    var templateType = this.templateType;
    var body = this.body;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'templateId'] = templateId;
    json[r'originalTemplate'] = originalTemplate.toJson();
    json[r'referencingBlueprint'] = referencingBlueprint;
    json[r'name'] = name;
    json[r'description'] = description;
    json[r'labels'] = labels.map((i) => i.toJson()).toList();
    json[r'templateType'] = templateType;
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  BlueprintTemplate copyWith(
      {String? templateId,
      BlueprintTemplateOriginalTemplate? originalTemplate,
      String? referencingBlueprint,
      String? name,
      String? description,
      List<Label>? labels,
      String? templateType,
      ContentBody? body,
      BlueprintTemplateExpandable? expandable,
      GenericLinks? links}) {
    return BlueprintTemplate(
      templateId: templateId ?? this.templateId,
      originalTemplate: originalTemplate ?? this.originalTemplate,
      referencingBlueprint: referencingBlueprint ?? this.referencingBlueprint,
      name: name ?? this.name,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      templateType: templateType ?? this.templateType,
      body: body ?? this.body,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class BlueprintTemplateArray {
  final List<BlueprintTemplate> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  BlueprintTemplateArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory BlueprintTemplateArray.fromJson(Map<String, Object?> json) {
    return BlueprintTemplateArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => BlueprintTemplate.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  BlueprintTemplateArray copyWith(
      {List<BlueprintTemplate>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return BlueprintTemplateArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class BlueprintTemplateExpandable {
  final String? body;

  BlueprintTemplateExpandable({this.body});

  factory BlueprintTemplateExpandable.fromJson(Map<String, Object?> json) {
    return BlueprintTemplateExpandable(
      body: json[r'body'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var body = this.body;

    final json = <String, Object?>{};
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  BlueprintTemplateExpandable copyWith({String? body}) {
    return BlueprintTemplateExpandable(
      body: body ?? this.body,
    );
  }
}

class BlueprintTemplateOriginalTemplate {
  final String pluginKey;
  final String moduleKey;

  BlueprintTemplateOriginalTemplate(
      {required this.pluginKey, required this.moduleKey});

  factory BlueprintTemplateOriginalTemplate.fromJson(
      Map<String, Object?> json) {
    return BlueprintTemplateOriginalTemplate(
      pluginKey: json[r'pluginKey'] as String? ?? '',
      moduleKey: json[r'moduleKey'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var pluginKey = this.pluginKey;
    var moduleKey = this.moduleKey;

    final json = <String, Object?>{};
    json[r'pluginKey'] = pluginKey;
    json[r'moduleKey'] = moduleKey;
    return json;
  }

  BlueprintTemplateOriginalTemplate copyWith(
      {String? pluginKey, String? moduleKey}) {
    return BlueprintTemplateOriginalTemplate(
      pluginKey: pluginKey ?? this.pluginKey,
      moduleKey: moduleKey ?? this.moduleKey,
    );
  }
}

class Breadcrumb {
  final String label;
  final String url;
  final String separator;

  Breadcrumb({required this.label, required this.url, required this.separator});

  factory Breadcrumb.fromJson(Map<String, Object?> json) {
    return Breadcrumb(
      label: json[r'label'] as String? ?? '',
      url: json[r'url'] as String? ?? '',
      separator: json[r'separator'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var label = this.label;
    var url = this.url;
    var separator = this.separator;

    final json = <String, Object?>{};
    json[r'label'] = label;
    json[r'url'] = url;
    json[r'separator'] = separator;
    return json;
  }

  Breadcrumb copyWith({String? label, String? url, String? separator}) {
    return Breadcrumb(
      label: label ?? this.label,
      url: url ?? this.url,
      separator: separator ?? this.separator,
    );
  }
}

class BulkUserLookup {
  final BulkUserLookupType type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;

  /// The account type of the user, may return empty string if unavailable.
  final String accountType;

  /// The email address of the user. Depending on the user's privacy setting,
  /// this may return an empty string.
  final String email;

  /// The public name or nickname of the user. Will always contain a value.
  final String publicName;
  final Icon profilePicture;

  /// The display name of the user. Depending on the user's privacy setting,
  /// this may be the same as publicName.
  final String displayName;
  final List<OperationCheckResult> operations;
  final UserDetails? details;
  final Space? personalSpace;
  final BulkUserLookupExpandable expandable;
  final GenericLinks links;

  BulkUserLookup(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId,
      required this.accountType,
      required this.email,
      required this.publicName,
      required this.profilePicture,
      required this.displayName,
      List<OperationCheckResult>? operations,
      this.details,
      this.personalSpace,
      required this.expandable,
      required this.links})
      : operations = operations ?? [];

  factory BulkUserLookup.fromJson(Map<String, Object?> json) {
    return BulkUserLookup(
      type: BulkUserLookupType.fromValue(json[r'type'] as String? ?? ''),
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
      accountType: json[r'accountType'] as String? ?? '',
      email: json[r'email'] as String? ?? '',
      publicName: json[r'publicName'] as String? ?? '',
      profilePicture: Icon.fromJson(
          json[r'profilePicture'] as Map<String, Object?>? ?? const {}),
      displayName: json[r'displayName'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      details: json[r'details'] != null
          ? UserDetails.fromJson(json[r'details']! as Map<String, Object?>)
          : null,
      personalSpace: json[r'personalSpace'] != null
          ? Space.fromJson(json[r'personalSpace']! as Map<String, Object?>)
          : null,
      expandable: BulkUserLookupExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;
    var accountType = this.accountType;
    var email = this.email;
    var publicName = this.publicName;
    var profilePicture = this.profilePicture;
    var displayName = this.displayName;
    var operations = this.operations;
    var details = this.details;
    var personalSpace = this.personalSpace;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    json[r'accountType'] = accountType;
    json[r'email'] = email;
    json[r'publicName'] = publicName;
    json[r'profilePicture'] = profilePicture.toJson();
    json[r'displayName'] = displayName;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    if (details != null) {
      json[r'details'] = details.toJson();
    }
    if (personalSpace != null) {
      json[r'personalSpace'] = personalSpace.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  BulkUserLookup copyWith(
      {BulkUserLookupType? type,
      String? username,
      String? userKey,
      String? accountId,
      String? accountType,
      String? email,
      String? publicName,
      Icon? profilePicture,
      String? displayName,
      List<OperationCheckResult>? operations,
      UserDetails? details,
      Space? personalSpace,
      BulkUserLookupExpandable? expandable,
      GenericLinks? links}) {
    return BulkUserLookup(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
      accountType: accountType ?? this.accountType,
      email: email ?? this.email,
      publicName: publicName ?? this.publicName,
      profilePicture: profilePicture ?? this.profilePicture,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      details: details ?? this.details,
      personalSpace: personalSpace ?? this.personalSpace,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class BulkUserLookupType {
  static const known = BulkUserLookupType._('known');
  static const unknown = BulkUserLookupType._('unknown');
  static const anonymous = BulkUserLookupType._('anonymous');
  static const user = BulkUserLookupType._('user');

  static const values = [
    known,
    unknown,
    anonymous,
    user,
  ];
  final String value;

  const BulkUserLookupType._(this.value);

  static BulkUserLookupType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BulkUserLookupType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BulkUserLookupArray {
  final List<BulkUserLookup> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  BulkUserLookupArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory BulkUserLookupArray.fromJson(Map<String, Object?> json) {
    return BulkUserLookupArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => BulkUserLookup.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  BulkUserLookupArray copyWith(
      {List<BulkUserLookup>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return BulkUserLookupArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class BulkUserLookupExpandable {
  final String? operations;
  final String? details;
  final String? personalSpace;

  BulkUserLookupExpandable({this.operations, this.details, this.personalSpace});

  factory BulkUserLookupExpandable.fromJson(Map<String, Object?> json) {
    return BulkUserLookupExpandable(
      operations: json[r'operations'] as String?,
      details: json[r'details'] as String?,
      personalSpace: json[r'personalSpace'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var operations = this.operations;
    var details = this.details;
    var personalSpace = this.personalSpace;

    final json = <String, Object?>{};
    if (operations != null) {
      json[r'operations'] = operations;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    if (personalSpace != null) {
      json[r'personalSpace'] = personalSpace;
    }
    return json;
  }

  BulkUserLookupExpandable copyWith(
      {String? operations, String? details, String? personalSpace}) {
    return BulkUserLookupExpandable(
      operations: operations ?? this.operations,
      details: details ?? this.details,
      personalSpace: personalSpace ?? this.personalSpace,
    );
  }
}

class ButtonLookAndFeel {
  final String backgroundColor;
  final String color;

  ButtonLookAndFeel({required this.backgroundColor, required this.color});

  factory ButtonLookAndFeel.fromJson(Map<String, Object?> json) {
    return ButtonLookAndFeel(
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var backgroundColor = this.backgroundColor;
    var color = this.color;

    final json = <String, Object?>{};
    json[r'backgroundColor'] = backgroundColor;
    json[r'color'] = color;
    return json;
  }

  ButtonLookAndFeel copyWith({String? backgroundColor, String? color}) {
    return ButtonLookAndFeel(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
    );
  }
}

/// The converted CQL queries.
class CQLPersonalDataConvertedQueries {
  /// The list of converted CQL query strings with account IDs in
  /// place of user identifiers.
  final List<String> queryStrings;

  CQLPersonalDataConvertedQueries({required this.queryStrings});

  factory CQLPersonalDataConvertedQueries.fromJson(Map<String, Object?> json) {
    return CQLPersonalDataConvertedQueries(
      queryStrings: (json[r'queryStrings'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var queryStrings = this.queryStrings;

    final json = <String, Object?>{};
    json[r'queryStrings'] = queryStrings;
    return json;
  }

  CQLPersonalDataConvertedQueries copyWith({List<String>? queryStrings}) {
    return CQLPersonalDataConvertedQueries(
      queryStrings: queryStrings ?? this.queryStrings,
    );
  }
}

/// The CQL queries to be converted.
class CQLPersonalDataMigrationRequest {
  /// A list of queries with user identifiers. Maximum of 100 queries.
  final List<String> queryStrings;

  CQLPersonalDataMigrationRequest({required this.queryStrings});

  factory CQLPersonalDataMigrationRequest.fromJson(Map<String, Object?> json) {
    return CQLPersonalDataMigrationRequest(
      queryStrings: (json[r'queryStrings'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var queryStrings = this.queryStrings;

    final json = <String, Object?>{};
    json[r'queryStrings'] = queryStrings;
    return json;
  }

  CQLPersonalDataMigrationRequest copyWith({List<String>? queryStrings}) {
    return CQLPersonalDataMigrationRequest(
      queryStrings: queryStrings ?? this.queryStrings,
    );
  }
}

class ChangedValue {
  final String name;
  final String oldValue;
  final String newValue;

  ChangedValue(
      {required this.name, required this.oldValue, required this.newValue});

  factory ChangedValue.fromJson(Map<String, Object?> json) {
    return ChangedValue(
      name: json[r'name'] as String? ?? '',
      oldValue: json[r'oldValue'] as String? ?? '',
      newValue: json[r'newValue'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var oldValue = this.oldValue;
    var newValue = this.newValue;

    final json = <String, Object?>{};
    json[r'name'] = name;
    json[r'oldValue'] = oldValue;
    json[r'newValue'] = newValue;
    return json;
  }

  ChangedValue copyWith({String? name, String? oldValue, String? newValue}) {
    return ChangedValue(
      name: name ?? this.name,
      oldValue: oldValue ?? this.oldValue,
      newValue: newValue ?? this.newValue,
    );
  }
}

/// A
/// [Connect module](https://developer.atlassian.com/cloud/confluence/modules/admin-page/)
/// in the same format as in the
/// [app descriptor](https://developer.atlassian.com/cloud/confluence/app-descriptor/).
class ConnectModule {
  ConnectModule();

  factory ConnectModule.fromJson(Map<String, Object?> json) {
    return ConnectModule();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// A list of app modules in the same format as the `modules` property in the
/// [app descriptor](https://developer.atlassian.com/cloud/confluence/app-descriptor/).
class ConnectModules {
  ConnectModules();

  factory ConnectModules.fromJson(Map<String, Object?> json) {
    return ConnectModules();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// Container for content. This can be either a space (containing a page or
/// blogpost)
/// or a page/blog post (containing an attachment or comment)
class Container {
  Container();

  factory Container.fromJson(Map<String, Object?> json) {
    return Container();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ContainerLookAndFeel {
  final String background;
  final String backgroundColor;
  final String backgroundImage;
  final String backgroundSize;
  final String padding;
  final String borderRadius;

  ContainerLookAndFeel(
      {required this.background,
      required this.backgroundColor,
      required this.backgroundImage,
      required this.backgroundSize,
      required this.padding,
      required this.borderRadius});

  factory ContainerLookAndFeel.fromJson(Map<String, Object?> json) {
    return ContainerLookAndFeel(
      background: json[r'background'] as String? ?? '',
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      backgroundImage: json[r'backgroundImage'] as String? ?? '',
      backgroundSize: json[r'backgroundSize'] as String? ?? '',
      padding: json[r'padding'] as String? ?? '',
      borderRadius: json[r'borderRadius'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var background = this.background;
    var backgroundColor = this.backgroundColor;
    var backgroundImage = this.backgroundImage;
    var backgroundSize = this.backgroundSize;
    var padding = this.padding;
    var borderRadius = this.borderRadius;

    final json = <String, Object?>{};
    json[r'background'] = background;
    json[r'backgroundColor'] = backgroundColor;
    json[r'backgroundImage'] = backgroundImage;
    json[r'backgroundSize'] = backgroundSize;
    json[r'padding'] = padding;
    json[r'borderRadius'] = borderRadius;
    return json;
  }

  ContainerLookAndFeel copyWith(
      {String? background,
      String? backgroundColor,
      String? backgroundImage,
      String? backgroundSize,
      String? padding,
      String? borderRadius}) {
    return ContainerLookAndFeel(
      background: background ?? this.background,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      backgroundSize: backgroundSize ?? this.backgroundSize,
      padding: padding ?? this.padding,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }
}

class ContainerSummary {
  final String title;
  final String displayUrl;

  ContainerSummary({required this.title, required this.displayUrl});

  factory ContainerSummary.fromJson(Map<String, Object?> json) {
    return ContainerSummary(
      title: json[r'title'] as String? ?? '',
      displayUrl: json[r'displayUrl'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var title = this.title;
    var displayUrl = this.displayUrl;

    final json = <String, Object?>{};
    json[r'title'] = title;
    json[r'displayUrl'] = displayUrl;
    return json;
  }

  ContainerSummary copyWith({String? title, String? displayUrl}) {
    return ContainerSummary(
      title: title ?? this.title,
      displayUrl: displayUrl ?? this.displayUrl,
    );
  }
}

/// Base object for all content types.
class Content {
  final String id;
  final String type;
  final String status;
  final String title;
  final Space? space;
  final ContentHistory? history;
  final Version? version;
  final List<Content> ancestors;
  final List<OperationCheckResult> operations;
  final ContentChildren? children;
  final ContentChildType? childTypes;
  final ContentChildren? descendants;
  final Container? container;
  final ContentBody? body;
  final ContentRestrictions? restrictions;
  final ContentExpandable expandable;
  final GenericLinks? links;

  Content(
      {required this.id,
      required this.type,
      required this.status,
      required this.title,
      this.space,
      this.history,
      this.version,
      List<Content>? ancestors,
      List<OperationCheckResult>? operations,
      this.children,
      this.childTypes,
      this.descendants,
      this.container,
      this.body,
      this.restrictions,
      required this.expandable,
      this.links})
      : ancestors = ancestors ?? [],
        operations = operations ?? [];

  factory Content.fromJson(Map<String, Object?> json) {
    return Content(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String? ?? '',
      status: json[r'status'] as String? ?? '',
      title: json[r'title'] as String? ?? '',
      space: json[r'space'] != null
          ? Space.fromJson(json[r'space']! as Map<String, Object?>)
          : null,
      history: json[r'history'] != null
          ? ContentHistory.fromJson(json[r'history']! as Map<String, Object?>)
          : null,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      ancestors: (json[r'ancestors'] as List<Object?>?)
              ?.map((i) =>
                  Content.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      children: json[r'children'] != null
          ? ContentChildren.fromJson(json[r'children']! as Map<String, Object?>)
          : null,
      childTypes: json[r'childTypes'] != null
          ? ContentChildType.fromJson(
              json[r'childTypes']! as Map<String, Object?>)
          : null,
      descendants: json[r'descendants'] != null
          ? ContentChildren.fromJson(
              json[r'descendants']! as Map<String, Object?>)
          : null,
      container: json[r'container'] != null
          ? Container.fromJson(json[r'container']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? ContentBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      restrictions: json[r'restrictions'] != null
          ? ContentRestrictions.fromJson(
              json[r'restrictions']! as Map<String, Object?>)
          : null,
      expandable: ContentExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var space = this.space;
    var history = this.history;
    var version = this.version;
    var ancestors = this.ancestors;
    var operations = this.operations;
    var children = this.children;
    var childTypes = this.childTypes;
    var descendants = this.descendants;
    var container = this.container;
    var body = this.body;
    var restrictions = this.restrictions;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type;
    json[r'status'] = status;
    json[r'title'] = title;
    if (space != null) {
      json[r'space'] = space.toJson();
    }
    if (history != null) {
      json[r'history'] = history.toJson();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    json[r'ancestors'] = ancestors.map((i) => i.toJson()).toList();
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    if (children != null) {
      json[r'children'] = children.toJson();
    }
    if (childTypes != null) {
      json[r'childTypes'] = childTypes.toJson();
    }
    if (descendants != null) {
      json[r'descendants'] = descendants.toJson();
    }
    if (container != null) {
      json[r'container'] = container.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (restrictions != null) {
      json[r'restrictions'] = restrictions.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  Content copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      Space? space,
      ContentHistory? history,
      Version? version,
      List<Content>? ancestors,
      List<OperationCheckResult>? operations,
      ContentChildren? children,
      ContentChildType? childTypes,
      ContentChildren? descendants,
      Container? container,
      ContentBody? body,
      ContentRestrictions? restrictions,
      ContentExpandable? expandable,
      GenericLinks? links}) {
    return Content(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      space: space ?? this.space,
      history: history ?? this.history,
      version: version ?? this.version,
      ancestors: ancestors ?? this.ancestors,
      operations: operations ?? this.operations,
      children: children ?? this.children,
      childTypes: childTypes ?? this.childTypes,
      descendants: descendants ?? this.descendants,
      container: container ?? this.container,
      body: body ?? this.body,
      restrictions: restrictions ?? this.restrictions,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class ContentArray {
  final List<Content> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  ContentArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory ContentArray.fromJson(Map<String, Object?> json) {
    return ContentArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Content.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentArray copyWith(
      {List<Content>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return ContentArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// Representation of an attachment (content)
class ContentAttachment {
  ContentAttachment();

  factory ContentAttachment.fromJson(Map<String, Object?> json) {
    return ContentAttachment();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// Representation of a blogpost (content)
class ContentBlogpost {
  ContentBlogpost();

  factory ContentBlogpost.fromJson(Map<String, Object?> json) {
    return ContentBlogpost();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ContentBlueprintDraft {
  /// The version for the new content.
  final ContentBlueprintDraftVersion version;

  /// The title of the content. If you don't want to change the title,
  /// set this to the current title of the draft.
  final String title;

  /// The type of content. Set this to `page`.
  final ContentBlueprintDraftType type;

  /// The status of the content. Set this to `current` or omit it altogether.
  final ContentBlueprintDraftStatus? status;

  /// The space for the content.
  final ContentBlueprintDraftSpace? space;

  /// The new ancestor (i.e. parent page) for the content. If you have
  /// specified an ancestor, you must also specify a `space` property
  /// in the request body for the space that the ancestor is in.
  ///
  /// Note, if you specify more than one ancestor, the last ID in the array
  /// will be selected as the parent page for the content.
  final List<ContentBlueprintDraftAncestorsItem> ancestors;

  ContentBlueprintDraft(
      {required this.version,
      required this.title,
      required this.type,
      this.status,
      this.space,
      List<ContentBlueprintDraftAncestorsItem>? ancestors})
      : ancestors = ancestors ?? [];

  factory ContentBlueprintDraft.fromJson(Map<String, Object?> json) {
    return ContentBlueprintDraft(
      version: ContentBlueprintDraftVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
      title: json[r'title'] as String? ?? '',
      type: ContentBlueprintDraftType.fromValue(json[r'type'] as String? ?? ''),
      status: json[r'status'] != null
          ? ContentBlueprintDraftStatus.fromValue(json[r'status']! as String)
          : null,
      space: json[r'space'] != null
          ? ContentBlueprintDraftSpace.fromJson(
              json[r'space']! as Map<String, Object?>)
          : null,
      ancestors: (json[r'ancestors'] as List<Object?>?)
              ?.map((i) => ContentBlueprintDraftAncestorsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var title = this.title;
    var type = this.type;
    var status = this.status;
    var space = this.space;
    var ancestors = this.ancestors;

    final json = <String, Object?>{};
    json[r'version'] = version.toJson();
    json[r'title'] = title;
    json[r'type'] = type.value;
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (space != null) {
      json[r'space'] = space.toJson();
    }
    json[r'ancestors'] = ancestors.map((i) => i.toJson()).toList();
    return json;
  }

  ContentBlueprintDraft copyWith(
      {ContentBlueprintDraftVersion? version,
      String? title,
      ContentBlueprintDraftType? type,
      ContentBlueprintDraftStatus? status,
      ContentBlueprintDraftSpace? space,
      List<ContentBlueprintDraftAncestorsItem>? ancestors}) {
    return ContentBlueprintDraft(
      version: version ?? this.version,
      title: title ?? this.title,
      type: type ?? this.type,
      status: status ?? this.status,
      space: space ?? this.space,
      ancestors: ancestors ?? this.ancestors,
    );
  }
}

class ContentBlueprintDraftType {
  static const page = ContentBlueprintDraftType._('page');

  static const values = [
    page,
  ];
  final String value;

  const ContentBlueprintDraftType._(this.value);

  static ContentBlueprintDraftType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentBlueprintDraftType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentBlueprintDraftStatus {
  static const current = ContentBlueprintDraftStatus._('current');

  static const values = [
    current,
  ];
  final String value;

  const ContentBlueprintDraftStatus._(this.value);

  static ContentBlueprintDraftStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentBlueprintDraftStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentBlueprintDraftAncestorsItem {
  /// The content ID of the ancestor.
  final String id;

  ContentBlueprintDraftAncestorsItem({required this.id});

  factory ContentBlueprintDraftAncestorsItem.fromJson(
      Map<String, Object?> json) {
    return ContentBlueprintDraftAncestorsItem(
      id: json[r'id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;

    final json = <String, Object?>{};
    json[r'id'] = id;
    return json;
  }

  ContentBlueprintDraftAncestorsItem copyWith({String? id}) {
    return ContentBlueprintDraftAncestorsItem(
      id: id ?? this.id,
    );
  }
}

/// The space for the content.
class ContentBlueprintDraftSpace {
  /// The key of the space
  final String key;

  ContentBlueprintDraftSpace({required this.key});

  factory ContentBlueprintDraftSpace.fromJson(Map<String, Object?> json) {
    return ContentBlueprintDraftSpace(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ContentBlueprintDraftSpace copyWith({String? key}) {
    return ContentBlueprintDraftSpace(
      key: key ?? this.key,
    );
  }
}

/// The version for the new content.
class ContentBlueprintDraftVersion {
  /// The version number. Set this to `1`.
  final int number;

  ContentBlueprintDraftVersion({required this.number});

  factory ContentBlueprintDraftVersion.fromJson(Map<String, Object?> json) {
    return ContentBlueprintDraftVersion(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;

    final json = <String, Object?>{};
    json[r'number'] = number;
    return json;
  }

  ContentBlueprintDraftVersion copyWith({int? number}) {
    return ContentBlueprintDraftVersion(
      number: number ?? this.number,
    );
  }
}

class ContentBody {
  final ContentBody? view;
  final ContentBody? exportView;
  final ContentBody? styledView;
  final ContentBody? storage;
  final ContentBody? editor2;
  final ContentBody? anonymousExportView;
  final ContentBodyExpandable expandable;

  ContentBody(
      {this.view,
      this.exportView,
      this.styledView,
      this.storage,
      this.editor2,
      this.anonymousExportView,
      required this.expandable});

  factory ContentBody.fromJson(Map<String, Object?> json) {
    return ContentBody(
      view: json[r'view'] != null
          ? ContentBody.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
      exportView: json[r'export_view'] != null
          ? ContentBody.fromJson(json[r'export_view']! as Map<String, Object?>)
          : null,
      styledView: json[r'styled_view'] != null
          ? ContentBody.fromJson(json[r'styled_view']! as Map<String, Object?>)
          : null,
      storage: json[r'storage'] != null
          ? ContentBody.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      editor2: json[r'editor2'] != null
          ? ContentBody.fromJson(json[r'editor2']! as Map<String, Object?>)
          : null,
      anonymousExportView: json[r'anonymous_export_view'] != null
          ? ContentBody.fromJson(
              json[r'anonymous_export_view']! as Map<String, Object?>)
          : null,
      expandable: ContentBodyExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var view = this.view;
    var exportView = this.exportView;
    var styledView = this.styledView;
    var storage = this.storage;
    var editor2 = this.editor2;
    var anonymousExportView = this.anonymousExportView;
    var expandable = this.expandable;

    final json = <String, Object?>{};
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    if (exportView != null) {
      json[r'export_view'] = exportView.toJson();
    }
    if (styledView != null) {
      json[r'styled_view'] = styledView.toJson();
    }
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (editor2 != null) {
      json[r'editor2'] = editor2.toJson();
    }
    if (anonymousExportView != null) {
      json[r'anonymous_export_view'] = anonymousExportView.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    return json;
  }

  ContentBody copyWith(
      {ContentBody? view,
      ContentBody? exportView,
      ContentBody? styledView,
      ContentBody? storage,
      ContentBody? editor2,
      ContentBody? anonymousExportView,
      ContentBodyExpandable? expandable}) {
    return ContentBody(
      view: view ?? this.view,
      exportView: exportView ?? this.exportView,
      styledView: styledView ?? this.styledView,
      storage: storage ?? this.storage,
      editor2: editor2 ?? this.editor2,
      anonymousExportView: anonymousExportView ?? this.anonymousExportView,
      expandable: expandable ?? this.expandable,
    );
  }
}

/// This object is used when creating or updating content.
class ContentBodyCreate {
  /// The body of the content in the relevant format.
  final String value;

  /// The content format type. Set the value of this property to
  /// the name of the format being used, e.g. 'storage'.
  final ContentBodyCreateRepresentation representation;

  ContentBodyCreate({required this.value, required this.representation});

  factory ContentBodyCreate.fromJson(Map<String, Object?> json) {
    return ContentBodyCreate(
      value: json[r'value'] as String? ?? '',
      representation: ContentBodyCreateRepresentation.fromValue(
          json[r'representation'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var representation = this.representation;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'representation'] = representation.value;
    return json;
  }

  ContentBodyCreate copyWith(
      {String? value, ContentBodyCreateRepresentation? representation}) {
    return ContentBodyCreate(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class ContentBodyCreateRepresentation {
  static const view = ContentBodyCreateRepresentation._('view');
  static const exportView = ContentBodyCreateRepresentation._('export_view');
  static const styledView = ContentBodyCreateRepresentation._('styled_view');
  static const storage = ContentBodyCreateRepresentation._('storage');
  static const editor2 = ContentBodyCreateRepresentation._('editor2');
  static const anonymousExportView =
      ContentBodyCreateRepresentation._('anonymous_export_view');

  static const values = [
    view,
    exportView,
    styledView,
    storage,
    editor2,
    anonymousExportView,
  ];
  final String value;

  const ContentBodyCreateRepresentation._(this.value);

  static ContentBodyCreateRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentBodyCreateRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// This object is used when creating or updating content.
class ContentBodyCreateStorage {
  /// The body of the content in the relevant format.
  final String value;

  /// The content format type. Set the value of this property to
  /// the name of the format being used, e.g. 'storage'.
  final ContentBodyCreateStorageRepresentation representation;

  ContentBodyCreateStorage({required this.value, required this.representation});

  factory ContentBodyCreateStorage.fromJson(Map<String, Object?> json) {
    return ContentBodyCreateStorage(
      value: json[r'value'] as String? ?? '',
      representation: ContentBodyCreateStorageRepresentation.fromValue(
          json[r'representation'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var representation = this.representation;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'representation'] = representation.value;
    return json;
  }

  ContentBodyCreateStorage copyWith(
      {String? value, ContentBodyCreateStorageRepresentation? representation}) {
    return ContentBodyCreateStorage(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class ContentBodyCreateStorageRepresentation {
  static const storage = ContentBodyCreateStorageRepresentation._('storage');
  static const view = ContentBodyCreateStorageRepresentation._('view');
  static const exportView =
      ContentBodyCreateStorageRepresentation._('export_view');
  static const styledView =
      ContentBodyCreateStorageRepresentation._('styled_view');
  static const editor2 = ContentBodyCreateStorageRepresentation._('editor2');
  static const anonymousExportView =
      ContentBodyCreateStorageRepresentation._('anonymous_export_view');

  static const values = [
    storage,
    view,
    exportView,
    styledView,
    editor2,
    anonymousExportView,
  ];
  final String value;

  const ContentBodyCreateStorageRepresentation._(this.value);

  static ContentBodyCreateStorageRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentBodyCreateStorageRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentBodyExpandable {
  final String? editor;
  final String? view;
  final String? exportView;
  final String? styledView;
  final String? storage;
  final String? editor2;
  final String? anonymousExportView;

  ContentBodyExpandable(
      {this.editor,
      this.view,
      this.exportView,
      this.styledView,
      this.storage,
      this.editor2,
      this.anonymousExportView});

  factory ContentBodyExpandable.fromJson(Map<String, Object?> json) {
    return ContentBodyExpandable(
      editor: json[r'editor'] as String?,
      view: json[r'view'] as String?,
      exportView: json[r'export_view'] as String?,
      styledView: json[r'styled_view'] as String?,
      storage: json[r'storage'] as String?,
      editor2: json[r'editor2'] as String?,
      anonymousExportView: json[r'anonymous_export_view'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var editor = this.editor;
    var view = this.view;
    var exportView = this.exportView;
    var styledView = this.styledView;
    var storage = this.storage;
    var editor2 = this.editor2;
    var anonymousExportView = this.anonymousExportView;

    final json = <String, Object?>{};
    if (editor != null) {
      json[r'editor'] = editor;
    }
    if (view != null) {
      json[r'view'] = view;
    }
    if (exportView != null) {
      json[r'export_view'] = exportView;
    }
    if (styledView != null) {
      json[r'styled_view'] = styledView;
    }
    if (storage != null) {
      json[r'storage'] = storage;
    }
    if (editor2 != null) {
      json[r'editor2'] = editor2;
    }
    if (anonymousExportView != null) {
      json[r'anonymous_export_view'] = anonymousExportView;
    }
    return json;
  }

  ContentBodyExpandable copyWith(
      {String? editor,
      String? view,
      String? exportView,
      String? styledView,
      String? storage,
      String? editor2,
      String? anonymousExportView}) {
    return ContentBodyExpandable(
      editor: editor ?? this.editor,
      view: view ?? this.view,
      exportView: exportView ?? this.exportView,
      styledView: styledView ?? this.styledView,
      storage: storage ?? this.storage,
      editor2: editor2 ?? this.editor2,
      anonymousExportView: anonymousExportView ?? this.anonymousExportView,
    );
  }
}

/// Shows whether a piece of content has attachments, comments, or child pages.
/// Note, this doesn't actually contain the child objects.
class ContentChildType {
  final ContentChildTypeAttachment? attachment;
  final ContentChildTypeComment? comment;
  final ContentChildTypePage? page;
  final ContentChildTypeExpandable expandable;

  ContentChildType(
      {this.attachment, this.comment, this.page, required this.expandable});

  factory ContentChildType.fromJson(Map<String, Object?> json) {
    return ContentChildType(
      attachment: json[r'attachment'] != null
          ? ContentChildTypeAttachment.fromJson(
              json[r'attachment']! as Map<String, Object?>)
          : null,
      comment: json[r'comment'] != null
          ? ContentChildTypeComment.fromJson(
              json[r'comment']! as Map<String, Object?>)
          : null,
      page: json[r'page'] != null
          ? ContentChildTypePage.fromJson(
              json[r'page']! as Map<String, Object?>)
          : null,
      expandable: ContentChildTypeExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var attachment = this.attachment;
    var comment = this.comment;
    var page = this.page;
    var expandable = this.expandable;

    final json = <String, Object?>{};
    if (attachment != null) {
      json[r'attachment'] = attachment.toJson();
    }
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    if (page != null) {
      json[r'page'] = page.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    return json;
  }

  ContentChildType copyWith(
      {ContentChildTypeAttachment? attachment,
      ContentChildTypeComment? comment,
      ContentChildTypePage? page,
      ContentChildTypeExpandable? expandable}) {
    return ContentChildType(
      attachment: attachment ?? this.attachment,
      comment: comment ?? this.comment,
      page: page ?? this.page,
      expandable: expandable ?? this.expandable,
    );
  }
}

class ContentChildTypeAttachment {
  final bool value;
  final GenericLinks links;

  ContentChildTypeAttachment({required this.value, required this.links});

  factory ContentChildTypeAttachment.fromJson(Map<String, Object?> json) {
    return ContentChildTypeAttachment(
      value: json[r'value'] as bool? ?? false,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentChildTypeAttachment copyWith({bool? value, GenericLinks? links}) {
    return ContentChildTypeAttachment(
      value: value ?? this.value,
      links: links ?? this.links,
    );
  }
}

class ContentChildTypeComment {
  final bool value;
  final GenericLinks links;

  ContentChildTypeComment({required this.value, required this.links});

  factory ContentChildTypeComment.fromJson(Map<String, Object?> json) {
    return ContentChildTypeComment(
      value: json[r'value'] as bool? ?? false,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentChildTypeComment copyWith({bool? value, GenericLinks? links}) {
    return ContentChildTypeComment(
      value: value ?? this.value,
      links: links ?? this.links,
    );
  }
}

class ContentChildTypeExpandable {
  final String? all;
  final String? attachment;
  final String? comment;
  final String? page;

  ContentChildTypeExpandable(
      {this.all, this.attachment, this.comment, this.page});

  factory ContentChildTypeExpandable.fromJson(Map<String, Object?> json) {
    return ContentChildTypeExpandable(
      all: json[r'all'] as String?,
      attachment: json[r'attachment'] as String?,
      comment: json[r'comment'] as String?,
      page: json[r'page'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var all = this.all;
    var attachment = this.attachment;
    var comment = this.comment;
    var page = this.page;

    final json = <String, Object?>{};
    if (all != null) {
      json[r'all'] = all;
    }
    if (attachment != null) {
      json[r'attachment'] = attachment;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (page != null) {
      json[r'page'] = page;
    }
    return json;
  }

  ContentChildTypeExpandable copyWith(
      {String? all, String? attachment, String? comment, String? page}) {
    return ContentChildTypeExpandable(
      all: all ?? this.all,
      attachment: attachment ?? this.attachment,
      comment: comment ?? this.comment,
      page: page ?? this.page,
    );
  }
}

class ContentChildTypePage {
  final bool value;
  final GenericLinks links;

  ContentChildTypePage({required this.value, required this.links});

  factory ContentChildTypePage.fromJson(Map<String, Object?> json) {
    return ContentChildTypePage(
      value: json[r'value'] as bool? ?? false,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentChildTypePage copyWith({bool? value, GenericLinks? links}) {
    return ContentChildTypePage(
      value: value ?? this.value,
      links: links ?? this.links,
    );
  }
}

class ContentChildren {
  final ContentArray? attachment;
  final ContentArray? comment;
  final ContentArray? page;
  final ContentChildrenExpandable expandable;
  final GenericLinks links;

  ContentChildren(
      {this.attachment,
      this.comment,
      this.page,
      required this.expandable,
      required this.links});

  factory ContentChildren.fromJson(Map<String, Object?> json) {
    return ContentChildren(
      attachment: json[r'attachment'] != null
          ? ContentArray.fromJson(json[r'attachment']! as Map<String, Object?>)
          : null,
      comment: json[r'comment'] != null
          ? ContentArray.fromJson(json[r'comment']! as Map<String, Object?>)
          : null,
      page: json[r'page'] != null
          ? ContentArray.fromJson(json[r'page']! as Map<String, Object?>)
          : null,
      expandable: ContentChildrenExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var attachment = this.attachment;
    var comment = this.comment;
    var page = this.page;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    if (attachment != null) {
      json[r'attachment'] = attachment.toJson();
    }
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    if (page != null) {
      json[r'page'] = page.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentChildren copyWith(
      {ContentArray? attachment,
      ContentArray? comment,
      ContentArray? page,
      ContentChildrenExpandable? expandable,
      GenericLinks? links}) {
    return ContentChildren(
      attachment: attachment ?? this.attachment,
      comment: comment ?? this.comment,
      page: page ?? this.page,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class ContentChildrenExpandable {
  final String? attachment;
  final String? comment;
  final String? page;

  ContentChildrenExpandable({this.attachment, this.comment, this.page});

  factory ContentChildrenExpandable.fromJson(Map<String, Object?> json) {
    return ContentChildrenExpandable(
      attachment: json[r'attachment'] as String?,
      comment: json[r'comment'] as String?,
      page: json[r'page'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var attachment = this.attachment;
    var comment = this.comment;
    var page = this.page;

    final json = <String, Object?>{};
    if (attachment != null) {
      json[r'attachment'] = attachment;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (page != null) {
      json[r'page'] = page;
    }
    return json;
  }

  ContentChildrenExpandable copyWith(
      {String? attachment, String? comment, String? page}) {
    return ContentChildrenExpandable(
      attachment: attachment ?? this.attachment,
      comment: comment ?? this.comment,
      page: page ?? this.page,
    );
  }
}

/// Representation of a comment (content)
class ContentComment {
  ContentComment();

  factory ContentComment.fromJson(Map<String, Object?> json) {
    return ContentComment();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ContentCreate {
  /// The ID of the draft content. Required when publishing a draft.
  final String? id;
  final String title;

  /// The type of the new content. Custom content types defined by apps are also
  /// supported.
  final ContentCreateType type;

  /// The space that the content is being created in.
  final ContentCreateSpace space;

  /// The status of the new content.
  final ContentCreateStatus? status;

  /// The container of the content. Required if type is `comment` or certain
  /// types of
  /// custom content. If you are trying to create a comment that is a child of
  /// another comment,
  /// specify the parent comment in the ancestors field, not in this field.
  final ContentCreateContainer? container;

  /// The parent content of the new content.  If you are creating a top-level
  /// `page` or `comment`,
  /// this can be left blank. If you are creating a child page, this is where
  /// the parent page id goes.
  /// If you are creating a child comment, this is where the parent comment id
  /// goes. Only one parent
  /// content id can be specified.
  final List<ContentCreateAncestorsItem> ancestors;

  /// The body of the new content. Does not apply to attachments.
  /// Only one body format should be specified as the property for
  /// this object, e.g. `storage`.
  ///
  /// Note, `editor2` format is used by Atlassian only. `anonymous_export_view`
  /// is
  /// the same as 'export_view' format but only content viewable by an anonymous
  /// user is included.
  final ContentCreateBody body;

  ContentCreate(
      {this.id,
      required this.title,
      required this.type,
      required this.space,
      this.status,
      this.container,
      List<ContentCreateAncestorsItem>? ancestors,
      required this.body})
      : ancestors = ancestors ?? [];

  factory ContentCreate.fromJson(Map<String, Object?> json) {
    return ContentCreate(
      id: json[r'id'] as String?,
      title: json[r'title'] as String? ?? '',
      type: ContentCreateType.fromValue(json[r'type'] as String? ?? ''),
      space: ContentCreateSpace.fromJson(
          json[r'space'] as Map<String, Object?>? ?? const {}),
      status: json[r'status'] != null
          ? ContentCreateStatus.fromValue(json[r'status']! as String)
          : null,
      container: json[r'container'] != null
          ? ContentCreateContainer.fromJson(
              json[r'container']! as Map<String, Object?>)
          : null,
      ancestors: (json[r'ancestors'] as List<Object?>?)
              ?.map((i) => ContentCreateAncestorsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      body: ContentCreateBody.fromJson(
          json[r'body'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var title = this.title;
    var type = this.type;
    var space = this.space;
    var status = this.status;
    var container = this.container;
    var ancestors = this.ancestors;
    var body = this.body;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'title'] = title;
    json[r'type'] = type.value;
    json[r'space'] = space.toJson();
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (container != null) {
      json[r'container'] = container.toJson();
    }
    json[r'ancestors'] = ancestors.map((i) => i.toJson()).toList();
    json[r'body'] = body.toJson();
    return json;
  }

  ContentCreate copyWith(
      {String? id,
      String? title,
      ContentCreateType? type,
      ContentCreateSpace? space,
      ContentCreateStatus? status,
      ContentCreateContainer? container,
      List<ContentCreateAncestorsItem>? ancestors,
      ContentCreateBody? body}) {
    return ContentCreate(
      id: id ?? this.id,
      title: title ?? this.title,
      type: type ?? this.type,
      space: space ?? this.space,
      status: status ?? this.status,
      container: container ?? this.container,
      ancestors: ancestors ?? this.ancestors,
      body: body ?? this.body,
    );
  }
}

class ContentCreateType {
  static const page = ContentCreateType._('page');
  static const blogpost = ContentCreateType._('blogpost');
  static const comment = ContentCreateType._('comment');

  static const values = [
    page,
    blogpost,
    comment,
  ];
  final String value;

  const ContentCreateType._(this.value);

  static ContentCreateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentCreateType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentCreateStatus {
  static const current = ContentCreateStatus._('current');
  static const trashed = ContentCreateStatus._('trashed');
  static const historical = ContentCreateStatus._('historical');
  static const draft = ContentCreateStatus._('draft');

  static const values = [
    current,
    trashed,
    historical,
    draft,
  ];
  final String value;

  const ContentCreateStatus._(this.value);

  static ContentCreateStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentCreateStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentCreateAncestorsItem {
  /// The `id` of the parent content.
  final String id;

  ContentCreateAncestorsItem({required this.id});

  factory ContentCreateAncestorsItem.fromJson(Map<String, Object?> json) {
    return ContentCreateAncestorsItem(
      id: json[r'id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;

    final json = <String, Object?>{};
    json[r'id'] = id;
    return json;
  }

  ContentCreateAncestorsItem copyWith({String? id}) {
    return ContentCreateAncestorsItem(
      id: id ?? this.id,
    );
  }
}

/// The body of the new content. Does not apply to attachments.
/// Only one body format should be specified as the property for
/// this object, e.g. `storage`.
///
/// Note, `editor2` format is used by Atlassian only. `anonymous_export_view` is
/// the same as 'export_view' format but only content viewable by an anonymous
/// user is included.
class ContentCreateBody {
  final ContentBodyCreate? view;
  final ContentBodyCreate? exportView;
  final ContentBodyCreate? styledView;
  final ContentBodyCreate? storage;
  final ContentBodyCreate? editor2;
  final ContentBodyCreate? anonymousExportView;

  ContentCreateBody(
      {this.view,
      this.exportView,
      this.styledView,
      this.storage,
      this.editor2,
      this.anonymousExportView});

  factory ContentCreateBody.fromJson(Map<String, Object?> json) {
    return ContentCreateBody(
      view: json[r'view'] != null
          ? ContentBodyCreate.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
      exportView: json[r'export_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'export_view']! as Map<String, Object?>)
          : null,
      styledView: json[r'styled_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'styled_view']! as Map<String, Object?>)
          : null,
      storage: json[r'storage'] != null
          ? ContentBodyCreate.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
      editor2: json[r'editor2'] != null
          ? ContentBodyCreate.fromJson(
              json[r'editor2']! as Map<String, Object?>)
          : null,
      anonymousExportView: json[r'anonymous_export_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'anonymous_export_view']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var view = this.view;
    var exportView = this.exportView;
    var styledView = this.styledView;
    var storage = this.storage;
    var editor2 = this.editor2;
    var anonymousExportView = this.anonymousExportView;

    final json = <String, Object?>{};
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    if (exportView != null) {
      json[r'export_view'] = exportView.toJson();
    }
    if (styledView != null) {
      json[r'styled_view'] = styledView.toJson();
    }
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (editor2 != null) {
      json[r'editor2'] = editor2.toJson();
    }
    if (anonymousExportView != null) {
      json[r'anonymous_export_view'] = anonymousExportView.toJson();
    }
    return json;
  }

  ContentCreateBody copyWith(
      {ContentBodyCreate? view,
      ContentBodyCreate? exportView,
      ContentBodyCreate? styledView,
      ContentBodyCreate? storage,
      ContentBodyCreate? editor2,
      ContentBodyCreate? anonymousExportView}) {
    return ContentCreateBody(
      view: view ?? this.view,
      exportView: exportView ?? this.exportView,
      styledView: styledView ?? this.styledView,
      storage: storage ?? this.storage,
      editor2: editor2 ?? this.editor2,
      anonymousExportView: anonymousExportView ?? this.anonymousExportView,
    );
  }
}

/// The container of the content. Required if type is `comment` or certain types
/// of
/// custom content. If you are trying to create a comment that is a child of
/// another comment,
/// specify the parent comment in the ancestors field, not in this field.
class ContentCreateContainer {
  /// The `id` of the container.
  final String id;

  /// The `type` of the container.
  final String type;

  ContentCreateContainer({required this.id, required this.type});

  factory ContentCreateContainer.fromJson(Map<String, Object?> json) {
    return ContentCreateContainer(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type;
    return json;
  }

  ContentCreateContainer copyWith({String? id, String? type}) {
    return ContentCreateContainer(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }
}

/// The space that the content is being created in.
class ContentCreateSpace {
  /// The key of the space.
  final String key;

  ContentCreateSpace({required this.key});

  factory ContentCreateSpace.fromJson(Map<String, Object?> json) {
    return ContentCreateSpace(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ContentCreateSpace copyWith({String? key}) {
    return ContentCreateSpace(
      key: key ?? this.key,
    );
  }
}

class ContentExpandable {
  final String? childTypes;
  final String? container;
  final String? metadata;
  final String? operations;
  final String? children;
  final String? restrictions;
  final String? history;
  final String? ancestors;
  final String? body;
  final String? version;
  final String? descendants;
  final String? space;

  ContentExpandable(
      {this.childTypes,
      this.container,
      this.metadata,
      this.operations,
      this.children,
      this.restrictions,
      this.history,
      this.ancestors,
      this.body,
      this.version,
      this.descendants,
      this.space});

  factory ContentExpandable.fromJson(Map<String, Object?> json) {
    return ContentExpandable(
      childTypes: json[r'childTypes'] as String?,
      container: json[r'container'] as String?,
      metadata: json[r'metadata'] as String?,
      operations: json[r'operations'] as String?,
      children: json[r'children'] as String?,
      restrictions: json[r'restrictions'] as String?,
      history: json[r'history'] as String?,
      ancestors: json[r'ancestors'] as String?,
      body: json[r'body'] as String?,
      version: json[r'version'] as String?,
      descendants: json[r'descendants'] as String?,
      space: json[r'space'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var childTypes = this.childTypes;
    var container = this.container;
    var metadata = this.metadata;
    var operations = this.operations;
    var children = this.children;
    var restrictions = this.restrictions;
    var history = this.history;
    var ancestors = this.ancestors;
    var body = this.body;
    var version = this.version;
    var descendants = this.descendants;
    var space = this.space;

    final json = <String, Object?>{};
    if (childTypes != null) {
      json[r'childTypes'] = childTypes;
    }
    if (container != null) {
      json[r'container'] = container;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (operations != null) {
      json[r'operations'] = operations;
    }
    if (children != null) {
      json[r'children'] = children;
    }
    if (restrictions != null) {
      json[r'restrictions'] = restrictions;
    }
    if (history != null) {
      json[r'history'] = history;
    }
    if (ancestors != null) {
      json[r'ancestors'] = ancestors;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (descendants != null) {
      json[r'descendants'] = descendants;
    }
    if (space != null) {
      json[r'space'] = space;
    }
    return json;
  }

  ContentExpandable copyWith(
      {String? childTypes,
      String? container,
      String? metadata,
      String? operations,
      String? children,
      String? restrictions,
      String? history,
      String? ancestors,
      String? body,
      String? version,
      String? descendants,
      String? space}) {
    return ContentExpandable(
      childTypes: childTypes ?? this.childTypes,
      container: container ?? this.container,
      metadata: metadata ?? this.metadata,
      operations: operations ?? this.operations,
      children: children ?? this.children,
      restrictions: restrictions ?? this.restrictions,
      history: history ?? this.history,
      ancestors: ancestors ?? this.ancestors,
      body: body ?? this.body,
      version: version ?? this.version,
      descendants: descendants ?? this.descendants,
      space: space ?? this.space,
    );
  }
}

class ContentHistory {
  final bool latest;
  final User createdBy;
  final DateTime createdDate;
  final Version? lastUpdated;
  final Version? previousVersion;
  final ContentHistoryContributors? contributors;
  final Version? nextVersion;
  final ContentHistoryExpandable? expandable;
  final GenericLinks? links;

  ContentHistory(
      {required this.latest,
      required this.createdBy,
      required this.createdDate,
      this.lastUpdated,
      this.previousVersion,
      this.contributors,
      this.nextVersion,
      this.expandable,
      this.links});

  factory ContentHistory.fromJson(Map<String, Object?> json) {
    return ContentHistory(
      latest: json[r'latest'] as bool? ?? false,
      createdBy: User.fromJson(
          json[r'createdBy'] as Map<String, Object?>? ?? const {}),
      createdDate: DateTime.tryParse(json[r'createdDate'] as String? ?? '') ??
          DateTime(0),
      lastUpdated: json[r'lastUpdated'] != null
          ? Version.fromJson(json[r'lastUpdated']! as Map<String, Object?>)
          : null,
      previousVersion: json[r'previousVersion'] != null
          ? Version.fromJson(json[r'previousVersion']! as Map<String, Object?>)
          : null,
      contributors: json[r'contributors'] != null
          ? ContentHistoryContributors.fromJson(
              json[r'contributors']! as Map<String, Object?>)
          : null,
      nextVersion: json[r'nextVersion'] != null
          ? Version.fromJson(json[r'nextVersion']! as Map<String, Object?>)
          : null,
      expandable: json[r'_expandable'] != null
          ? ContentHistoryExpandable.fromJson(
              json[r'_expandable']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var latest = this.latest;
    var createdBy = this.createdBy;
    var createdDate = this.createdDate;
    var lastUpdated = this.lastUpdated;
    var previousVersion = this.previousVersion;
    var contributors = this.contributors;
    var nextVersion = this.nextVersion;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'latest'] = latest;
    json[r'createdBy'] = createdBy.toJson();
    json[r'createdDate'] = createdDate.toIso8601String();
    if (lastUpdated != null) {
      json[r'lastUpdated'] = lastUpdated.toJson();
    }
    if (previousVersion != null) {
      json[r'previousVersion'] = previousVersion.toJson();
    }
    if (contributors != null) {
      json[r'contributors'] = contributors.toJson();
    }
    if (nextVersion != null) {
      json[r'nextVersion'] = nextVersion.toJson();
    }
    if (expandable != null) {
      json[r'_expandable'] = expandable.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  ContentHistory copyWith(
      {bool? latest,
      User? createdBy,
      DateTime? createdDate,
      Version? lastUpdated,
      Version? previousVersion,
      ContentHistoryContributors? contributors,
      Version? nextVersion,
      ContentHistoryExpandable? expandable,
      GenericLinks? links}) {
    return ContentHistory(
      latest: latest ?? this.latest,
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      previousVersion: previousVersion ?? this.previousVersion,
      contributors: contributors ?? this.contributors,
      nextVersion: nextVersion ?? this.nextVersion,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class ContentHistoryContributors {
  final UsersUserKeys? publishers;

  ContentHistoryContributors({this.publishers});

  factory ContentHistoryContributors.fromJson(Map<String, Object?> json) {
    return ContentHistoryContributors(
      publishers: json[r'publishers'] != null
          ? UsersUserKeys.fromJson(json[r'publishers']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var publishers = this.publishers;

    final json = <String, Object?>{};
    if (publishers != null) {
      json[r'publishers'] = publishers.toJson();
    }
    return json;
  }

  ContentHistoryContributors copyWith({UsersUserKeys? publishers}) {
    return ContentHistoryContributors(
      publishers: publishers ?? this.publishers,
    );
  }
}

class ContentHistoryExpandable {
  final String? lastUpdated;
  final String? previousVersion;
  final String? contributors;
  final String? nextVersion;

  ContentHistoryExpandable(
      {this.lastUpdated,
      this.previousVersion,
      this.contributors,
      this.nextVersion});

  factory ContentHistoryExpandable.fromJson(Map<String, Object?> json) {
    return ContentHistoryExpandable(
      lastUpdated: json[r'lastUpdated'] as String?,
      previousVersion: json[r'previousVersion'] as String?,
      contributors: json[r'contributors'] as String?,
      nextVersion: json[r'nextVersion'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var lastUpdated = this.lastUpdated;
    var previousVersion = this.previousVersion;
    var contributors = this.contributors;
    var nextVersion = this.nextVersion;

    final json = <String, Object?>{};
    if (lastUpdated != null) {
      json[r'lastUpdated'] = lastUpdated;
    }
    if (previousVersion != null) {
      json[r'previousVersion'] = previousVersion;
    }
    if (contributors != null) {
      json[r'contributors'] = contributors;
    }
    if (nextVersion != null) {
      json[r'nextVersion'] = nextVersion;
    }
    return json;
  }

  ContentHistoryExpandable copyWith(
      {String? lastUpdated,
      String? previousVersion,
      String? contributors,
      String? nextVersion}) {
    return ContentHistoryExpandable(
      lastUpdated: lastUpdated ?? this.lastUpdated,
      previousVersion: previousVersion ?? this.previousVersion,
      contributors: contributors ?? this.contributors,
      nextVersion: nextVersion ?? this.nextVersion,
    );
  }
}

class ContentId {
  ContentId();

  factory ContentId.fromJson(Map<String, Object?> json) {
    return ContentId();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ContentLookAndFeel {
  final ScreenLookAndFeel screen;
  final ContainerLookAndFeel container;
  final ContainerLookAndFeel header;
  final ContainerLookAndFeel body;

  ContentLookAndFeel(
      {required this.screen,
      required this.container,
      required this.header,
      required this.body});

  factory ContentLookAndFeel.fromJson(Map<String, Object?> json) {
    return ContentLookAndFeel(
      screen: ScreenLookAndFeel.fromJson(
          json[r'screen'] as Map<String, Object?>? ?? const {}),
      container: ContainerLookAndFeel.fromJson(
          json[r'container'] as Map<String, Object?>? ?? const {}),
      header: ContainerLookAndFeel.fromJson(
          json[r'header'] as Map<String, Object?>? ?? const {}),
      body: ContainerLookAndFeel.fromJson(
          json[r'body'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var screen = this.screen;
    var container = this.container;
    var header = this.header;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'screen'] = screen.toJson();
    json[r'container'] = container.toJson();
    json[r'header'] = header.toJson();
    json[r'body'] = body.toJson();
    return json;
  }

  ContentLookAndFeel copyWith(
      {ScreenLookAndFeel? screen,
      ContainerLookAndFeel? container,
      ContainerLookAndFeel? header,
      ContainerLookAndFeel? body}) {
    return ContentLookAndFeel(
      screen: screen ?? this.screen,
      container: container ?? this.container,
      header: header ?? this.header,
      body: body ?? this.body,
    );
  }
}

/// Metadata object for page, blogpost, comment content
class ContentMetadata {
  final ContentMetadataCurrentuser? currentuser;
  final GenericLinks? properties;
  final Map<String, dynamic>? frontend;
  final LabelArray? labels;

  ContentMetadata(
      {this.currentuser, this.properties, this.frontend, this.labels});

  factory ContentMetadata.fromJson(Map<String, Object?> json) {
    return ContentMetadata(
      currentuser: json[r'currentuser'] != null
          ? ContentMetadataCurrentuser.fromJson(
              json[r'currentuser']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? GenericLinks.fromJson(json[r'properties']! as Map<String, Object?>)
          : null,
      frontend: json[r'frontend'] as Map<String, Object?>?,
      labels: json[r'labels'] != null
          ? LabelArray.fromJson(json[r'labels']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var currentuser = this.currentuser;
    var properties = this.properties;
    var frontend = this.frontend;
    var labels = this.labels;

    final json = <String, Object?>{};
    if (currentuser != null) {
      json[r'currentuser'] = currentuser.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (frontend != null) {
      json[r'frontend'] = frontend;
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    return json;
  }

  ContentMetadata copyWith(
      {ContentMetadataCurrentuser? currentuser,
      GenericLinks? properties,
      Map<String, dynamic>? frontend,
      LabelArray? labels}) {
    return ContentMetadata(
      currentuser: currentuser ?? this.currentuser,
      properties: properties ?? this.properties,
      frontend: frontend ?? this.frontend,
      labels: labels ?? this.labels,
    );
  }
}

class ContentMetadataCurrentuser {
  final ContentMetadataCurrentuserFavourited? favourited;
  final ContentMetadataCurrentuserLastmodified? lastmodified;
  final ContentMetadataCurrentuserLastcontributed? lastcontributed;
  final ContentMetadataCurrentuserViewed? viewed;

  ContentMetadataCurrentuser(
      {this.favourited, this.lastmodified, this.lastcontributed, this.viewed});

  factory ContentMetadataCurrentuser.fromJson(Map<String, Object?> json) {
    return ContentMetadataCurrentuser(
      favourited: json[r'favourited'] != null
          ? ContentMetadataCurrentuserFavourited.fromJson(
              json[r'favourited']! as Map<String, Object?>)
          : null,
      lastmodified: json[r'lastmodified'] != null
          ? ContentMetadataCurrentuserLastmodified.fromJson(
              json[r'lastmodified']! as Map<String, Object?>)
          : null,
      lastcontributed: json[r'lastcontributed'] != null
          ? ContentMetadataCurrentuserLastcontributed.fromJson(
              json[r'lastcontributed']! as Map<String, Object?>)
          : null,
      viewed: json[r'viewed'] != null
          ? ContentMetadataCurrentuserViewed.fromJson(
              json[r'viewed']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var favourited = this.favourited;
    var lastmodified = this.lastmodified;
    var lastcontributed = this.lastcontributed;
    var viewed = this.viewed;

    final json = <String, Object?>{};
    if (favourited != null) {
      json[r'favourited'] = favourited.toJson();
    }
    if (lastmodified != null) {
      json[r'lastmodified'] = lastmodified.toJson();
    }
    if (lastcontributed != null) {
      json[r'lastcontributed'] = lastcontributed.toJson();
    }
    if (viewed != null) {
      json[r'viewed'] = viewed.toJson();
    }
    return json;
  }

  ContentMetadataCurrentuser copyWith(
      {ContentMetadataCurrentuserFavourited? favourited,
      ContentMetadataCurrentuserLastmodified? lastmodified,
      ContentMetadataCurrentuserLastcontributed? lastcontributed,
      ContentMetadataCurrentuserViewed? viewed}) {
    return ContentMetadataCurrentuser(
      favourited: favourited ?? this.favourited,
      lastmodified: lastmodified ?? this.lastmodified,
      lastcontributed: lastcontributed ?? this.lastcontributed,
      viewed: viewed ?? this.viewed,
    );
  }
}

class ContentMetadataCurrentuserFavourited {
  final bool isFavourite;
  final DateTime? favouritedDate;

  ContentMetadataCurrentuserFavourited({bool? isFavourite, this.favouritedDate})
      : isFavourite = isFavourite ?? false;

  factory ContentMetadataCurrentuserFavourited.fromJson(
      Map<String, Object?> json) {
    return ContentMetadataCurrentuserFavourited(
      isFavourite: json[r'isFavourite'] as bool? ?? false,
      favouritedDate:
          DateTime.tryParse(json[r'favouritedDate'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var isFavourite = this.isFavourite;
    var favouritedDate = this.favouritedDate;

    final json = <String, Object?>{};
    json[r'isFavourite'] = isFavourite;
    if (favouritedDate != null) {
      json[r'favouritedDate'] = favouritedDate.toIso8601String();
    }
    return json;
  }

  ContentMetadataCurrentuserFavourited copyWith(
      {bool? isFavourite, DateTime? favouritedDate}) {
    return ContentMetadataCurrentuserFavourited(
      isFavourite: isFavourite ?? this.isFavourite,
      favouritedDate: favouritedDate ?? this.favouritedDate,
    );
  }
}

class ContentMetadataCurrentuserLastcontributed {
  final String? status;
  final DateTime? when;

  ContentMetadataCurrentuserLastcontributed({this.status, this.when});

  factory ContentMetadataCurrentuserLastcontributed.fromJson(
      Map<String, Object?> json) {
    return ContentMetadataCurrentuserLastcontributed(
      status: json[r'status'] as String?,
      when: DateTime.tryParse(json[r'when'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var status = this.status;
    var when = this.when;

    final json = <String, Object?>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (when != null) {
      json[r'when'] = when.toIso8601String();
    }
    return json;
  }

  ContentMetadataCurrentuserLastcontributed copyWith(
      {String? status, DateTime? when}) {
    return ContentMetadataCurrentuserLastcontributed(
      status: status ?? this.status,
      when: when ?? this.when,
    );
  }
}

class ContentMetadataCurrentuserLastmodified {
  final Version? version;
  final String? friendlyLastModified;

  ContentMetadataCurrentuserLastmodified(
      {this.version, this.friendlyLastModified});

  factory ContentMetadataCurrentuserLastmodified.fromJson(
      Map<String, Object?> json) {
    return ContentMetadataCurrentuserLastmodified(
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      friendlyLastModified: json[r'friendlyLastModified'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var friendlyLastModified = this.friendlyLastModified;

    final json = <String, Object?>{};
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (friendlyLastModified != null) {
      json[r'friendlyLastModified'] = friendlyLastModified;
    }
    return json;
  }

  ContentMetadataCurrentuserLastmodified copyWith(
      {Version? version, String? friendlyLastModified}) {
    return ContentMetadataCurrentuserLastmodified(
      version: version ?? this.version,
      friendlyLastModified: friendlyLastModified ?? this.friendlyLastModified,
    );
  }
}

class ContentMetadataCurrentuserViewed {
  final DateTime? lastSeen;
  final String? friendlyLastSeen;

  ContentMetadataCurrentuserViewed({this.lastSeen, this.friendlyLastSeen});

  factory ContentMetadataCurrentuserViewed.fromJson(Map<String, Object?> json) {
    return ContentMetadataCurrentuserViewed(
      lastSeen: DateTime.tryParse(json[r'lastSeen'] as String? ?? ''),
      friendlyLastSeen: json[r'friendlyLastSeen'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var lastSeen = this.lastSeen;
    var friendlyLastSeen = this.friendlyLastSeen;

    final json = <String, Object?>{};
    if (lastSeen != null) {
      json[r'lastSeen'] = lastSeen.toIso8601String();
    }
    if (friendlyLastSeen != null) {
      json[r'friendlyLastSeen'] = friendlyLastSeen;
    }
    return json;
  }

  ContentMetadataCurrentuserViewed copyWith(
      {DateTime? lastSeen, String? friendlyLastSeen}) {
    return ContentMetadataCurrentuserViewed(
      lastSeen: lastSeen ?? this.lastSeen,
      friendlyLastSeen: friendlyLastSeen ?? this.friendlyLastSeen,
    );
  }
}

/// Representation of a page (content)
class ContentPage {
  ContentPage();

  factory ContentPage.fromJson(Map<String, Object?> json) {
    return ContentPage();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// This object represents the request for the content permission check API.
class ContentPermissionRequest {
  final PermissionSubjectWithGroupId subject;

  /// The content permission operation to check.
  final ContentPermissionRequestOperation operation;

  ContentPermissionRequest({required this.subject, required this.operation});

  factory ContentPermissionRequest.fromJson(Map<String, Object?> json) {
    return ContentPermissionRequest(
      subject: PermissionSubjectWithGroupId.fromJson(
          json[r'subject'] as Map<String, Object?>? ?? const {}),
      operation: ContentPermissionRequestOperation.fromValue(
          json[r'operation'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var subject = this.subject;
    var operation = this.operation;

    final json = <String, Object?>{};
    json[r'subject'] = subject.toJson();
    json[r'operation'] = operation.value;
    return json;
  }

  ContentPermissionRequest copyWith(
      {PermissionSubjectWithGroupId? subject,
      ContentPermissionRequestOperation? operation}) {
    return ContentPermissionRequest(
      subject: subject ?? this.subject,
      operation: operation ?? this.operation,
    );
  }
}

class ContentPermissionRequestOperation {
  static const read = ContentPermissionRequestOperation._('read');
  static const update = ContentPermissionRequestOperation._('update');
  static const delete = ContentPermissionRequestOperation._('delete');

  static const values = [
    read,
    update,
    delete,
  ];
  final String value;

  const ContentPermissionRequestOperation._(this.value);

  static ContentPermissionRequestOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentPermissionRequestOperation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentProperty {
  final int id;
  final String key;

  /// The value of the content property. This can be empty or a complex object.
  final Map<String, dynamic> value;
  final ContentPropertyVersion? version;
  final Content? content;
  final GenericLinks links;

  ContentProperty(
      {required this.id,
      required this.key,
      required this.value,
      this.version,
      this.content,
      required this.links});

  factory ContentProperty.fromJson(Map<String, Object?> json) {
    return ContentProperty(
      id: (json[r'id'] as num?)?.toInt() ?? 0,
      key: json[r'key'] as String? ?? '',
      value: json[r'value'] as Map<String, Object?>? ?? {},
      version: json[r'version'] != null
          ? ContentPropertyVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
      content: json[r'content'] != null
          ? Content.fromJson(json[r'content']! as Map<String, Object?>)
          : null,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var value = this.value;
    var version = this.version;
    var content = this.content;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'key'] = key;
    json[r'value'] = value;
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (content != null) {
      json[r'content'] = content.toJson();
    }
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentProperty copyWith(
      {int? id,
      String? key,
      Map<String, dynamic>? value,
      ContentPropertyVersion? version,
      Content? content,
      GenericLinks? links}) {
    return ContentProperty(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
      content: content ?? this.content,
      links: links ?? this.links,
    );
  }
}

class ContentPropertyArray {
  final List<ContentProperty> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  ContentPropertyArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory ContentPropertyArray.fromJson(Map<String, Object?> json) {
    return ContentPropertyArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentPropertyArray copyWith(
      {List<ContentProperty>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return ContentPropertyArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class ContentPropertyCreate {
  /// The key of the new property.
  final String key;
  final PropertyValue value;

  ContentPropertyCreate({required this.key, required this.value});

  factory ContentPropertyCreate.fromJson(Map<String, Object?> json) {
    return ContentPropertyCreate(
      key: json[r'key'] as String? ?? '',
      value: PropertyValue.fromJson(
          json[r'value'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'value'] = value.toJson();
    return json;
  }

  ContentPropertyCreate copyWith({String? key, PropertyValue? value}) {
    return ContentPropertyCreate(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class ContentPropertyCreateNoKey {
  final PropertyValue value;

  ContentPropertyCreateNoKey({required this.value});

  factory ContentPropertyCreateNoKey.fromJson(Map<String, Object?> json) {
    return ContentPropertyCreateNoKey(
      value: PropertyValue.fromJson(
          json[r'value'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    json[r'value'] = value.toJson();
    return json;
  }

  ContentPropertyCreateNoKey copyWith({PropertyValue? value}) {
    return ContentPropertyCreateNoKey(
      value: value ?? this.value,
    );
  }
}

class ContentPropertyUpdate {
  /// The value of the content property. This can be empty or a complex object.
  final Map<String, dynamic> value;

  /// The version number of the property.
  final ContentPropertyUpdateVersion version;

  ContentPropertyUpdate({required this.value, required this.version});

  factory ContentPropertyUpdate.fromJson(Map<String, Object?> json) {
    return ContentPropertyUpdate(
      value: json[r'value'] as Map<String, Object?>? ?? {},
      version: ContentPropertyUpdateVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var version = this.version;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'version'] = version.toJson();
    return json;
  }

  ContentPropertyUpdate copyWith(
      {Map<String, dynamic>? value, ContentPropertyUpdateVersion? version}) {
    return ContentPropertyUpdate(
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

/// The version number of the property.
class ContentPropertyUpdateVersion {
  /// The new version for the updated content property. Set this to the
  /// current version number incremented by one. To get the current
  /// version number, use 'Get content property' and retrieve
  /// `version.number`.
  final int number;

  /// If `minorEdit` is set to 'true', no notification email or activity
  /// stream will be generated for the change.
  final bool minorEdit;

  ContentPropertyUpdateVersion({required this.number, bool? minorEdit})
      : minorEdit = minorEdit ?? false;

  factory ContentPropertyUpdateVersion.fromJson(Map<String, Object?> json) {
    return ContentPropertyUpdateVersion(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      minorEdit: json[r'minorEdit'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var minorEdit = this.minorEdit;

    final json = <String, Object?>{};
    json[r'number'] = number;
    json[r'minorEdit'] = minorEdit;
    return json;
  }

  ContentPropertyUpdateVersion copyWith({int? number, bool? minorEdit}) {
    return ContentPropertyUpdateVersion(
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
    );
  }
}

class ContentPropertyVersion {
  final DateTime when;
  final String message;
  final int number;
  final bool minorEdit;

  ContentPropertyVersion(
      {required this.when,
      required this.message,
      required this.number,
      required this.minorEdit});

  factory ContentPropertyVersion.fromJson(Map<String, Object?> json) {
    return ContentPropertyVersion(
      when: DateTime.tryParse(json[r'when'] as String? ?? '') ?? DateTime(0),
      message: json[r'message'] as String? ?? '',
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      minorEdit: json[r'minorEdit'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var when = this.when;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;

    final json = <String, Object?>{};
    json[r'when'] = when.toIso8601String();
    json[r'message'] = message;
    json[r'number'] = number;
    json[r'minorEdit'] = minorEdit;
    return json;
  }

  ContentPropertyVersion copyWith(
      {DateTime? when, String? message, int? number, bool? minorEdit}) {
    return ContentPropertyVersion(
      when: when ?? this.when,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
    );
  }
}

class ContentRestriction {
  final ContentRestrictionOperation operation;
  final ContentRestrictionRestrictions? restrictions;
  final Content? content;
  final ContentRestrictionExpandable expandable;
  final GenericLinks links;

  ContentRestriction(
      {required this.operation,
      this.restrictions,
      this.content,
      required this.expandable,
      required this.links});

  factory ContentRestriction.fromJson(Map<String, Object?> json) {
    return ContentRestriction(
      operation: ContentRestrictionOperation.fromValue(
          json[r'operation'] as String? ?? ''),
      restrictions: json[r'restrictions'] != null
          ? ContentRestrictionRestrictions.fromJson(
              json[r'restrictions']! as Map<String, Object?>)
          : null,
      content: json[r'content'] != null
          ? Content.fromJson(json[r'content']! as Map<String, Object?>)
          : null,
      expandable: ContentRestrictionExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var operation = this.operation;
    var restrictions = this.restrictions;
    var content = this.content;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'operation'] = operation.value;
    if (restrictions != null) {
      json[r'restrictions'] = restrictions.toJson();
    }
    if (content != null) {
      json[r'content'] = content.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentRestriction copyWith(
      {ContentRestrictionOperation? operation,
      ContentRestrictionRestrictions? restrictions,
      Content? content,
      ContentRestrictionExpandable? expandable,
      GenericLinks? links}) {
    return ContentRestriction(
      operation: operation ?? this.operation,
      restrictions: restrictions ?? this.restrictions,
      content: content ?? this.content,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class ContentRestrictionOperation {
  static const administer = ContentRestrictionOperation._('administer');
  static const copy = ContentRestrictionOperation._('copy');
  static const create = ContentRestrictionOperation._('create');
  static const delete = ContentRestrictionOperation._('delete');
  static const export$ = ContentRestrictionOperation._('export');
  static const move = ContentRestrictionOperation._('move');
  static const purge = ContentRestrictionOperation._('purge');
  static const purgeVersion = ContentRestrictionOperation._('purge_version');
  static const read = ContentRestrictionOperation._('read');
  static const restore = ContentRestrictionOperation._('restore');
  static const update = ContentRestrictionOperation._('update');
  static const use = ContentRestrictionOperation._('use');

  static const values = [
    administer,
    copy,
    create,
    delete,
    export$,
    move,
    purge,
    purgeVersion,
    read,
    restore,
    update,
    use,
  ];
  final String value;

  const ContentRestrictionOperation._(this.value);

  static ContentRestrictionOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentRestrictionOperation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentRestrictionArray {
  final List<ContentRestriction> results;
  final int start;
  final int limit;
  final int size;

  /// This property is used by the UI to figure out whether a set of
  /// restrictions
  /// has changed.
  final String restrictionsHash;
  final GenericLinks links;

  ContentRestrictionArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.restrictionsHash,
      required this.links});

  factory ContentRestrictionArray.fromJson(Map<String, Object?> json) {
    return ContentRestrictionArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentRestriction.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      restrictionsHash: json[r'restrictionsHash'] as String? ?? '',
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var restrictionsHash = this.restrictionsHash;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'restrictionsHash'] = restrictionsHash;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentRestrictionArray copyWith(
      {List<ContentRestriction>? results,
      int? start,
      int? limit,
      int? size,
      String? restrictionsHash,
      GenericLinks? links}) {
    return ContentRestrictionArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      restrictionsHash: restrictionsHash ?? this.restrictionsHash,
      links: links ?? this.links,
    );
  }
}

class ContentRestrictionExpandable {
  final String? restrictions;
  final String? content;

  ContentRestrictionExpandable({this.restrictions, this.content});

  factory ContentRestrictionExpandable.fromJson(Map<String, Object?> json) {
    return ContentRestrictionExpandable(
      restrictions: json[r'restrictions'] as String?,
      content: json[r'content'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var restrictions = this.restrictions;
    var content = this.content;

    final json = <String, Object?>{};
    if (restrictions != null) {
      json[r'restrictions'] = restrictions;
    }
    if (content != null) {
      json[r'content'] = content;
    }
    return json;
  }

  ContentRestrictionExpandable copyWith(
      {String? restrictions, String? content}) {
    return ContentRestrictionExpandable(
      restrictions: restrictions ?? this.restrictions,
      content: content ?? this.content,
    );
  }
}

class ContentRestrictionRestrictions {
  final UserArray? user;
  final GroupArray? group;
  final ContentRestrictionRestrictionsExpandable? expandable;

  ContentRestrictionRestrictions({this.user, this.group, this.expandable});

  factory ContentRestrictionRestrictions.fromJson(Map<String, Object?> json) {
    return ContentRestrictionRestrictions(
      user: json[r'user'] != null
          ? UserArray.fromJson(json[r'user']! as Map<String, Object?>)
          : null,
      group: json[r'group'] != null
          ? GroupArray.fromJson(json[r'group']! as Map<String, Object?>)
          : null,
      expandable: json[r'_expandable'] != null
          ? ContentRestrictionRestrictionsExpandable.fromJson(
              json[r'_expandable']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;
    var expandable = this.expandable;

    final json = <String, Object?>{};
    if (user != null) {
      json[r'user'] = user.toJson();
    }
    if (group != null) {
      json[r'group'] = group.toJson();
    }
    if (expandable != null) {
      json[r'_expandable'] = expandable.toJson();
    }
    return json;
  }

  ContentRestrictionRestrictions copyWith(
      {UserArray? user,
      GroupArray? group,
      ContentRestrictionRestrictionsExpandable? expandable}) {
    return ContentRestrictionRestrictions(
      user: user ?? this.user,
      group: group ?? this.group,
      expandable: expandable ?? this.expandable,
    );
  }
}

class ContentRestrictionRestrictionsExpandable {
  final String? user;
  final String? group;

  ContentRestrictionRestrictionsExpandable({this.user, this.group});

  factory ContentRestrictionRestrictionsExpandable.fromJson(
      Map<String, Object?> json) {
    return ContentRestrictionRestrictionsExpandable(
      user: json[r'user'] as String?,
      group: json[r'group'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;

    final json = <String, Object?>{};
    if (user != null) {
      json[r'user'] = user;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    return json;
  }

  ContentRestrictionRestrictionsExpandable copyWith(
      {String? user, String? group}) {
    return ContentRestrictionRestrictionsExpandable(
      user: user ?? this.user,
      group: group ?? this.group,
    );
  }
}

class ContentRestrictionUpdate {
  /// The restriction operation applied to content.
  final ContentRestrictionUpdateOperation operation;

  /// The users/groups that the restrictions will be applied to. At least one of
  /// `user` or `group` must be specified for this object.
  final ContentRestrictionUpdateRestrictions restrictions;

  ContentRestrictionUpdate(
      {required this.operation, required this.restrictions});

  factory ContentRestrictionUpdate.fromJson(Map<String, Object?> json) {
    return ContentRestrictionUpdate(
      operation: ContentRestrictionUpdateOperation.fromValue(
          json[r'operation'] as String? ?? ''),
      restrictions: ContentRestrictionUpdateRestrictions.fromJson(
          json[r'restrictions'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var operation = this.operation;
    var restrictions = this.restrictions;

    final json = <String, Object?>{};
    json[r'operation'] = operation.value;
    json[r'restrictions'] = restrictions.toJson();
    return json;
  }

  ContentRestrictionUpdate copyWith(
      {ContentRestrictionUpdateOperation? operation,
      ContentRestrictionUpdateRestrictions? restrictions}) {
    return ContentRestrictionUpdate(
      operation: operation ?? this.operation,
      restrictions: restrictions ?? this.restrictions,
    );
  }
}

class ContentRestrictionUpdateOperation {
  static const administer = ContentRestrictionUpdateOperation._('administer');
  static const copy = ContentRestrictionUpdateOperation._('copy');
  static const create = ContentRestrictionUpdateOperation._('create');
  static const delete = ContentRestrictionUpdateOperation._('delete');
  static const export$ = ContentRestrictionUpdateOperation._('export');
  static const move = ContentRestrictionUpdateOperation._('move');
  static const purge = ContentRestrictionUpdateOperation._('purge');
  static const purgeVersion =
      ContentRestrictionUpdateOperation._('purge_version');
  static const read = ContentRestrictionUpdateOperation._('read');
  static const restore = ContentRestrictionUpdateOperation._('restore');
  static const update = ContentRestrictionUpdateOperation._('update');
  static const use = ContentRestrictionUpdateOperation._('use');

  static const values = [
    administer,
    copy,
    create,
    delete,
    export$,
    move,
    purge,
    purgeVersion,
    read,
    restore,
    update,
    use,
  ];
  final String value;

  const ContentRestrictionUpdateOperation._(this.value);

  static ContentRestrictionUpdateOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentRestrictionUpdateOperation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentRestrictionUpdateArray {
  ContentRestrictionUpdateArray();

  factory ContentRestrictionUpdateArray.fromJson(Map<String, Object?> json) {
    return ContentRestrictionUpdateArray();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// The users/groups that the restrictions will be applied to. At least one of
/// `user` or `group` must be specified for this object.
class ContentRestrictionUpdateRestrictions {
  /// The users that the restrictions will be applied to. This array must
  /// have at least one item, otherwise it should be omitted.
  final List<ContentRestrictionUpdateRestrictionsUserItem> user;

  /// The groups that the restrictions will be applied to. This array must
  /// have at least one item, otherwise it should be omitted.
  final List<ContentRestrictionUpdateRestrictionsGroupItem> group;

  ContentRestrictionUpdateRestrictions(
      {List<ContentRestrictionUpdateRestrictionsUserItem>? user,
      List<ContentRestrictionUpdateRestrictionsGroupItem>? group})
      : user = user ?? [],
        group = group ?? [];

  factory ContentRestrictionUpdateRestrictions.fromJson(
      Map<String, Object?> json) {
    return ContentRestrictionUpdateRestrictions(
      user: (json[r'user'] as List<Object?>?)
              ?.map((i) =>
                  ContentRestrictionUpdateRestrictionsUserItem.fromJson(
                      i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      group: (json[r'group'] as List<Object?>?)
              ?.map((i) =>
                  ContentRestrictionUpdateRestrictionsGroupItem.fromJson(
                      i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;

    final json = <String, Object?>{};
    json[r'user'] = user.map((i) => i.toJson()).toList();
    json[r'group'] = group.map((i) => i.toJson()).toList();
    return json;
  }

  ContentRestrictionUpdateRestrictions copyWith(
      {List<ContentRestrictionUpdateRestrictionsUserItem>? user,
      List<ContentRestrictionUpdateRestrictionsGroupItem>? group}) {
    return ContentRestrictionUpdateRestrictions(
      user: user ?? this.user,
      group: group ?? this.group,
    );
  }
}

/// A group that the restriction will be applied to.
class ContentRestrictionUpdateRestrictionsGroupItem {
  /// Set to 'group'.
  final ContentRestrictionUpdateRestrictionsGroupItemType type;

  /// The name of the group.
  final String name;

  ContentRestrictionUpdateRestrictionsGroupItem(
      {required this.type, required this.name});

  factory ContentRestrictionUpdateRestrictionsGroupItem.fromJson(
      Map<String, Object?> json) {
    return ContentRestrictionUpdateRestrictionsGroupItem(
      type: ContentRestrictionUpdateRestrictionsGroupItemType.fromValue(
          json[r'type'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'name'] = name;
    return json;
  }

  ContentRestrictionUpdateRestrictionsGroupItem copyWith(
      {ContentRestrictionUpdateRestrictionsGroupItemType? type, String? name}) {
    return ContentRestrictionUpdateRestrictionsGroupItem(
      type: type ?? this.type,
      name: name ?? this.name,
    );
  }
}

class ContentRestrictionUpdateRestrictionsGroupItemType {
  static const group =
      ContentRestrictionUpdateRestrictionsGroupItemType._('group');

  static const values = [
    group,
  ];
  final String value;

  const ContentRestrictionUpdateRestrictionsGroupItemType._(this.value);

  static ContentRestrictionUpdateRestrictionsGroupItemType fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              ContentRestrictionUpdateRestrictionsGroupItemType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// A user that the restriction will be applied to. Either the `username`
/// or the `userKey` must be specified to identify the user.
class ContentRestrictionUpdateRestrictionsUserItem {
  /// Set to 'known'.
  final ContentRestrictionUpdateRestrictionsUserItemType type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;

  ContentRestrictionUpdateRestrictionsUserItem(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId});

  factory ContentRestrictionUpdateRestrictionsUserItem.fromJson(
      Map<String, Object?> json) {
    return ContentRestrictionUpdateRestrictionsUserItem(
      type: ContentRestrictionUpdateRestrictionsUserItemType.fromValue(
          json[r'type'] as String? ?? ''),
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    return json;
  }

  ContentRestrictionUpdateRestrictionsUserItem copyWith(
      {ContentRestrictionUpdateRestrictionsUserItemType? type,
      String? username,
      String? userKey,
      String? accountId}) {
    return ContentRestrictionUpdateRestrictionsUserItem(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
    );
  }
}

class ContentRestrictionUpdateRestrictionsUserItemType {
  static const known =
      ContentRestrictionUpdateRestrictionsUserItemType._('known');
  static const unknown =
      ContentRestrictionUpdateRestrictionsUserItemType._('unknown');
  static const anonymous =
      ContentRestrictionUpdateRestrictionsUserItemType._('anonymous');
  static const user =
      ContentRestrictionUpdateRestrictionsUserItemType._('user');

  static const values = [
    known,
    unknown,
    anonymous,
    user,
  ];
  final String value;

  const ContentRestrictionUpdateRestrictionsUserItemType._(this.value);

  static ContentRestrictionUpdateRestrictionsUserItemType fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              ContentRestrictionUpdateRestrictionsUserItemType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentRestrictions {
  final ContentRestriction? read;
  final ContentRestriction? update;
  final GenericLinks links;

  ContentRestrictions({this.read, this.update, required this.links});

  factory ContentRestrictions.fromJson(Map<String, Object?> json) {
    return ContentRestrictions(
      read: json[r'read'] != null
          ? ContentRestriction.fromJson(json[r'read']! as Map<String, Object?>)
          : null,
      update: json[r'update'] != null
          ? ContentRestriction.fromJson(
              json[r'update']! as Map<String, Object?>)
          : null,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var read = this.read;
    var update = this.update;
    var links = this.links;

    final json = <String, Object?>{};
    if (read != null) {
      json[r'read'] = read.toJson();
    }
    if (update != null) {
      json[r'update'] = update.toJson();
    }
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentRestrictions copyWith(
      {ContentRestriction? read,
      ContentRestriction? update,
      GenericLinks? links}) {
    return ContentRestrictions(
      read: read ?? this.read,
      update: update ?? this.update,
      links: links ?? this.links,
    );
  }
}

class ContentTemplate {
  final String templateId;
  final String name;
  final String description;
  final List<Label> labels;
  final String templateType;
  final ContentBody? body;
  final ContentTemplateExpandable expandable;
  final GenericLinks links;

  ContentTemplate(
      {required this.templateId,
      required this.name,
      required this.description,
      required this.labels,
      required this.templateType,
      this.body,
      required this.expandable,
      required this.links});

  factory ContentTemplate.fromJson(Map<String, Object?> json) {
    return ContentTemplate(
      templateId: json[r'templateId'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      description: json[r'description'] as String? ?? '',
      labels: (json[r'labels'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      templateType: json[r'templateType'] as String? ?? '',
      body: json[r'body'] != null
          ? ContentBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      expandable: ContentTemplateExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var templateId = this.templateId;
    var name = this.name;
    var description = this.description;
    var labels = this.labels;
    var templateType = this.templateType;
    var body = this.body;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'templateId'] = templateId;
    json[r'name'] = name;
    json[r'description'] = description;
    json[r'labels'] = labels.map((i) => i.toJson()).toList();
    json[r'templateType'] = templateType;
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentTemplate copyWith(
      {String? templateId,
      String? name,
      String? description,
      List<Label>? labels,
      String? templateType,
      ContentBody? body,
      ContentTemplateExpandable? expandable,
      GenericLinks? links}) {
    return ContentTemplate(
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      templateType: templateType ?? this.templateType,
      body: body ?? this.body,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class ContentTemplateArray {
  final List<ContentTemplate> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  ContentTemplateArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory ContentTemplateArray.fromJson(Map<String, Object?> json) {
    return ContentTemplateArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentTemplate.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  ContentTemplateArray copyWith(
      {List<ContentTemplate>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return ContentTemplateArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// This object is used when creating or updating content.
class ContentTemplateBodyCreate {
  final ContentBodyCreate? storage;

  ContentTemplateBodyCreate({this.storage});

  factory ContentTemplateBodyCreate.fromJson(Map<String, Object?> json) {
    return ContentTemplateBodyCreate(
      storage: json[r'storage'] != null
          ? ContentBodyCreate.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    return json;
  }

  ContentTemplateBodyCreate copyWith({ContentBodyCreate? storage}) {
    return ContentTemplateBodyCreate(
      storage: storage ?? this.storage,
    );
  }
}

/// This object is used to create content templates.
class ContentTemplateCreate {
  /// The name of the new template.
  final String name;

  /// The type of the new template. Set to `page`.
  final String templateType;
  final ContentTemplateBodyCreate body;

  /// A description of the new template.
  final String? description;

  /// Labels for the new template.
  final List<Label> labels;

  /// The key for the space of the new template. Only applies to space
  /// templates.
  /// If the spaceKey is not specified, the template will be created as a global
  /// template.
  final ContentTemplateCreateSpace? space;

  ContentTemplateCreate(
      {required this.name,
      required this.templateType,
      required this.body,
      this.description,
      List<Label>? labels,
      this.space})
      : labels = labels ?? [];

  factory ContentTemplateCreate.fromJson(Map<String, Object?> json) {
    return ContentTemplateCreate(
      name: json[r'name'] as String? ?? '',
      templateType: json[r'templateType'] as String? ?? '',
      body: ContentTemplateBodyCreate.fromJson(
          json[r'body'] as Map<String, Object?>? ?? const {}),
      description: json[r'description'] as String?,
      labels: (json[r'labels'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      space: json[r'space'] != null
          ? ContentTemplateCreateSpace.fromJson(
              json[r'space']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var templateType = this.templateType;
    var body = this.body;
    var description = this.description;
    var labels = this.labels;
    var space = this.space;

    final json = <String, Object?>{};
    json[r'name'] = name;
    json[r'templateType'] = templateType;
    json[r'body'] = body.toJson();
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'labels'] = labels.map((i) => i.toJson()).toList();
    if (space != null) {
      json[r'space'] = space.toJson();
    }
    return json;
  }

  ContentTemplateCreate copyWith(
      {String? name,
      String? templateType,
      ContentTemplateBodyCreate? body,
      String? description,
      List<Label>? labels,
      ContentTemplateCreateSpace? space}) {
    return ContentTemplateCreate(
      name: name ?? this.name,
      templateType: templateType ?? this.templateType,
      body: body ?? this.body,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      space: space ?? this.space,
    );
  }
}

/// The key for the space of the new template. Only applies to space templates.
/// If the spaceKey is not specified, the template will be created as a global
/// template.
class ContentTemplateCreateSpace {
  final String key;

  ContentTemplateCreateSpace({required this.key});

  factory ContentTemplateCreateSpace.fromJson(Map<String, Object?> json) {
    return ContentTemplateCreateSpace(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ContentTemplateCreateSpace copyWith({String? key}) {
    return ContentTemplateCreateSpace(
      key: key ?? this.key,
    );
  }
}

class ContentTemplateExpandable {
  final String? body;

  ContentTemplateExpandable({this.body});

  factory ContentTemplateExpandable.fromJson(Map<String, Object?> json) {
    return ContentTemplateExpandable(
      body: json[r'body'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var body = this.body;

    final json = <String, Object?>{};
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  ContentTemplateExpandable copyWith({String? body}) {
    return ContentTemplateExpandable(
      body: body ?? this.body,
    );
  }
}

/// This object is used to update content templates.
class ContentTemplateUpdate {
  /// The ID of the template being updated.
  final String templateId;

  /// The name of the template. Set to the current `name` if this field is
  /// not being updated.
  final String name;

  /// The type of the template. Set to `page`.
  final ContentTemplateUpdateTemplateType templateType;
  final ContentBodyCreate body;

  /// A description of the template.
  final String? description;

  /// Labels for the template.
  final List<Label> labels;

  /// The key for the space of the template. Required if the template is a
  /// space template. Set this to the current `space.key`.
  final ContentTemplateUpdateSpace? space;

  ContentTemplateUpdate(
      {required this.templateId,
      required this.name,
      required this.templateType,
      required this.body,
      this.description,
      List<Label>? labels,
      this.space})
      : labels = labels ?? [];

  factory ContentTemplateUpdate.fromJson(Map<String, Object?> json) {
    return ContentTemplateUpdate(
      templateId: json[r'templateId'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      templateType: ContentTemplateUpdateTemplateType.fromValue(
          json[r'templateType'] as String? ?? ''),
      body: ContentBodyCreate.fromJson(
          json[r'body'] as Map<String, Object?>? ?? const {}),
      description: json[r'description'] as String?,
      labels: (json[r'labels'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      space: json[r'space'] != null
          ? ContentTemplateUpdateSpace.fromJson(
              json[r'space']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var templateId = this.templateId;
    var name = this.name;
    var templateType = this.templateType;
    var body = this.body;
    var description = this.description;
    var labels = this.labels;
    var space = this.space;

    final json = <String, Object?>{};
    json[r'templateId'] = templateId;
    json[r'name'] = name;
    json[r'templateType'] = templateType.value;
    json[r'body'] = body.toJson();
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'labels'] = labels.map((i) => i.toJson()).toList();
    if (space != null) {
      json[r'space'] = space.toJson();
    }
    return json;
  }

  ContentTemplateUpdate copyWith(
      {String? templateId,
      String? name,
      ContentTemplateUpdateTemplateType? templateType,
      ContentBodyCreate? body,
      String? description,
      List<Label>? labels,
      ContentTemplateUpdateSpace? space}) {
    return ContentTemplateUpdate(
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      templateType: templateType ?? this.templateType,
      body: body ?? this.body,
      description: description ?? this.description,
      labels: labels ?? this.labels,
      space: space ?? this.space,
    );
  }
}

class ContentTemplateUpdateTemplateType {
  static const page = ContentTemplateUpdateTemplateType._('page');

  static const values = [
    page,
  ];
  final String value;

  const ContentTemplateUpdateTemplateType._(this.value);

  static ContentTemplateUpdateTemplateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentTemplateUpdateTemplateType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The key for the space of the template. Required if the template is a
/// space template. Set this to the current `space.key`.
class ContentTemplateUpdateSpace {
  final String key;

  ContentTemplateUpdateSpace({required this.key});

  factory ContentTemplateUpdateSpace.fromJson(Map<String, Object?> json) {
    return ContentTemplateUpdateSpace(
      key: json[r'key'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    json[r'key'] = key;
    return json;
  }

  ContentTemplateUpdateSpace copyWith({String? key}) {
    return ContentTemplateUpdateSpace(
      key: key ?? this.key,
    );
  }
}

class ContentUpdate {
  /// The new version for the updated content. Set this to the current version
  /// number incremented by one, unless you are changing the status to 'draft'
  /// which must have a version number of 1.
  ///
  /// To get the current version number, use
  /// [Get content by ID](#api-content-id-get) and retrieve `version.number`.
  final ContentUpdateVersion version;

  /// The updated title of the content. If you are not changing this field, set
  /// this to the current `title`.
  final String title;

  /// The type of content. Set this to the current type of the content.
  final ContentUpdateType type;

  /// The updated status of the content. Note, if you change the status of a
  /// page from
  /// 'current' to 'draft' and it has an existing draft, the existing draft will
  /// be deleted
  /// in favor of the updated page.
  final ContentUpdateStatus? status;

  /// The new parent for the content. Only one parent content 'id' can be
  /// specified.
  final List<ContentUpdateAncestorsItem> ancestors;

  /// The updated body of the content. Does not apply to attachments.
  /// If you are not sure how to generate these formats, you can create a page
  /// in the
  /// Confluence application, retrieve the content using
  /// [Get content](#api-content-get),
  /// and expand the desired content format, e.g. `expand=body.storage`.
  final ContentUpdateBody? body;

  ContentUpdate(
      {required this.version,
      required this.title,
      required this.type,
      this.status,
      List<ContentUpdateAncestorsItem>? ancestors,
      this.body})
      : ancestors = ancestors ?? [];

  factory ContentUpdate.fromJson(Map<String, Object?> json) {
    return ContentUpdate(
      version: ContentUpdateVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
      title: json[r'title'] as String? ?? '',
      type: ContentUpdateType.fromValue(json[r'type'] as String? ?? ''),
      status: json[r'status'] != null
          ? ContentUpdateStatus.fromValue(json[r'status']! as String)
          : null,
      ancestors: (json[r'ancestors'] as List<Object?>?)
              ?.map((i) => ContentUpdateAncestorsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      body: json[r'body'] != null
          ? ContentUpdateBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var title = this.title;
    var type = this.type;
    var status = this.status;
    var ancestors = this.ancestors;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'version'] = version.toJson();
    json[r'title'] = title;
    json[r'type'] = type.value;
    if (status != null) {
      json[r'status'] = status.value;
    }
    json[r'ancestors'] = ancestors.map((i) => i.toJson()).toList();
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    return json;
  }

  ContentUpdate copyWith(
      {ContentUpdateVersion? version,
      String? title,
      ContentUpdateType? type,
      ContentUpdateStatus? status,
      List<ContentUpdateAncestorsItem>? ancestors,
      ContentUpdateBody? body}) {
    return ContentUpdate(
      version: version ?? this.version,
      title: title ?? this.title,
      type: type ?? this.type,
      status: status ?? this.status,
      ancestors: ancestors ?? this.ancestors,
      body: body ?? this.body,
    );
  }
}

class ContentUpdateType {
  static const page = ContentUpdateType._('page');
  static const blogpost = ContentUpdateType._('blogpost');
  static const comment = ContentUpdateType._('comment');
  static const attachment = ContentUpdateType._('attachment');

  static const values = [
    page,
    blogpost,
    comment,
    attachment,
  ];
  final String value;

  const ContentUpdateType._(this.value);

  static ContentUpdateType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentUpdateType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentUpdateStatus {
  static const current = ContentUpdateStatus._('current');
  static const trashed = ContentUpdateStatus._('trashed');
  static const historical = ContentUpdateStatus._('historical');
  static const draft = ContentUpdateStatus._('draft');

  static const values = [
    current,
    trashed,
    historical,
    draft,
  ];
  final String value;

  const ContentUpdateStatus._(this.value);

  static ContentUpdateStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentUpdateStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentUpdateAncestorsItem {
  /// The `id` of the parent content.
  final String id;

  ContentUpdateAncestorsItem({required this.id});

  factory ContentUpdateAncestorsItem.fromJson(Map<String, Object?> json) {
    return ContentUpdateAncestorsItem(
      id: json[r'id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;

    final json = <String, Object?>{};
    json[r'id'] = id;
    return json;
  }

  ContentUpdateAncestorsItem copyWith({String? id}) {
    return ContentUpdateAncestorsItem(
      id: id ?? this.id,
    );
  }
}

/// The updated body of the content. Does not apply to attachments.
/// If you are not sure how to generate these formats, you can create a page in
/// the
/// Confluence application, retrieve the content using
/// [Get content](#api-content-get),
/// and expand the desired content format, e.g. `expand=body.storage`.
class ContentUpdateBody {
  final ContentBodyCreate? view;
  final ContentBodyCreate? exportView;
  final ContentBodyCreate? styledView;
  final ContentBodyCreateStorage? storage;
  final ContentBodyCreate? editor2;
  final ContentBodyCreate? anonymousExportView;

  ContentUpdateBody(
      {this.view,
      this.exportView,
      this.styledView,
      this.storage,
      this.editor2,
      this.anonymousExportView});

  factory ContentUpdateBody.fromJson(Map<String, Object?> json) {
    return ContentUpdateBody(
      view: json[r'view'] != null
          ? ContentBodyCreate.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
      exportView: json[r'export_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'export_view']! as Map<String, Object?>)
          : null,
      styledView: json[r'styled_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'styled_view']! as Map<String, Object?>)
          : null,
      storage: json[r'storage'] != null
          ? ContentBodyCreateStorage.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
      editor2: json[r'editor2'] != null
          ? ContentBodyCreate.fromJson(
              json[r'editor2']! as Map<String, Object?>)
          : null,
      anonymousExportView: json[r'anonymous_export_view'] != null
          ? ContentBodyCreate.fromJson(
              json[r'anonymous_export_view']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var view = this.view;
    var exportView = this.exportView;
    var styledView = this.styledView;
    var storage = this.storage;
    var editor2 = this.editor2;
    var anonymousExportView = this.anonymousExportView;

    final json = <String, Object?>{};
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    if (exportView != null) {
      json[r'export_view'] = exportView.toJson();
    }
    if (styledView != null) {
      json[r'styled_view'] = styledView.toJson();
    }
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (editor2 != null) {
      json[r'editor2'] = editor2.toJson();
    }
    if (anonymousExportView != null) {
      json[r'anonymous_export_view'] = anonymousExportView.toJson();
    }
    return json;
  }

  ContentUpdateBody copyWith(
      {ContentBodyCreate? view,
      ContentBodyCreate? exportView,
      ContentBodyCreate? styledView,
      ContentBodyCreateStorage? storage,
      ContentBodyCreate? editor2,
      ContentBodyCreate? anonymousExportView}) {
    return ContentUpdateBody(
      view: view ?? this.view,
      exportView: exportView ?? this.exportView,
      styledView: styledView ?? this.styledView,
      storage: storage ?? this.storage,
      editor2: editor2 ?? this.editor2,
      anonymousExportView: anonymousExportView ?? this.anonymousExportView,
    );
  }
}

/// The new version for the updated content. Set this to the current version
/// number incremented by one, unless you are changing the status to 'draft'
/// which must have a version number of 1.
///
/// To get the current version number, use
/// [Get content by ID](#api-content-id-get) and retrieve `version.number`.
class ContentUpdateVersion {
  /// The version number.
  final int number;

  ContentUpdateVersion({required this.number});

  factory ContentUpdateVersion.fromJson(Map<String, Object?> json) {
    return ContentUpdateVersion(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;

    final json = <String, Object?>{};
    json[r'number'] = number;
    return json;
  }

  ContentUpdateVersion copyWith({int? number}) {
    return ContentUpdateVersion(
      number: number ?? this.number,
    );
  }
}

class CopyPageHierarchyRequest {
  /// If set to `true`, attachments are copied to the destination page.
  final bool copyAttachments;

  /// If set to `true`, page permissions are copied to the destination page.
  final bool copyPermissions;

  /// If set to `true`, content properties are copied to the destination page.
  final bool copyProperties;

  /// If set to `true`, labels are copied to the destination page.
  final bool copyLabels;

  /// If set to `true`, custom contents are copied to the destination page.
  final bool copyCustomContents;
  final ContentId destinationPageId;
  final CopyPageHierarchyTitleOptions? titleOptions;

  CopyPageHierarchyRequest(
      {bool? copyAttachments,
      bool? copyPermissions,
      bool? copyProperties,
      bool? copyLabels,
      bool? copyCustomContents,
      required this.destinationPageId,
      this.titleOptions})
      : copyAttachments = copyAttachments ?? false,
        copyPermissions = copyPermissions ?? false,
        copyProperties = copyProperties ?? false,
        copyLabels = copyLabels ?? false,
        copyCustomContents = copyCustomContents ?? false;

  factory CopyPageHierarchyRequest.fromJson(Map<String, Object?> json) {
    return CopyPageHierarchyRequest(
      copyAttachments: json[r'copyAttachments'] as bool? ?? false,
      copyPermissions: json[r'copyPermissions'] as bool? ?? false,
      copyProperties: json[r'copyProperties'] as bool? ?? false,
      copyLabels: json[r'copyLabels'] as bool? ?? false,
      copyCustomContents: json[r'copyCustomContents'] as bool? ?? false,
      destinationPageId: ContentId.fromJson(
          json[r'destinationPageId'] as Map<String, Object?>? ?? const {}),
      titleOptions: json[r'titleOptions'] != null
          ? CopyPageHierarchyTitleOptions.fromJson(
              json[r'titleOptions']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var copyAttachments = this.copyAttachments;
    var copyPermissions = this.copyPermissions;
    var copyProperties = this.copyProperties;
    var copyLabels = this.copyLabels;
    var copyCustomContents = this.copyCustomContents;
    var destinationPageId = this.destinationPageId;
    var titleOptions = this.titleOptions;

    final json = <String, Object?>{};
    json[r'copyAttachments'] = copyAttachments;
    json[r'copyPermissions'] = copyPermissions;
    json[r'copyProperties'] = copyProperties;
    json[r'copyLabels'] = copyLabels;
    json[r'copyCustomContents'] = copyCustomContents;
    json[r'destinationPageId'] = destinationPageId.toJson();
    if (titleOptions != null) {
      json[r'titleOptions'] = titleOptions.toJson();
    }
    return json;
  }

  CopyPageHierarchyRequest copyWith(
      {bool? copyAttachments,
      bool? copyPermissions,
      bool? copyProperties,
      bool? copyLabels,
      bool? copyCustomContents,
      ContentId? destinationPageId,
      CopyPageHierarchyTitleOptions? titleOptions}) {
    return CopyPageHierarchyRequest(
      copyAttachments: copyAttachments ?? this.copyAttachments,
      copyPermissions: copyPermissions ?? this.copyPermissions,
      copyProperties: copyProperties ?? this.copyProperties,
      copyLabels: copyLabels ?? this.copyLabels,
      copyCustomContents: copyCustomContents ?? this.copyCustomContents,
      destinationPageId: destinationPageId ?? this.destinationPageId,
      titleOptions: titleOptions ?? this.titleOptions,
    );
  }
}

/// Required for copying page in the same space.
class CopyPageHierarchyTitleOptions {
  final String? prefix;
  final String? replace;
  final String? search;

  CopyPageHierarchyTitleOptions({this.prefix, this.replace, this.search});

  factory CopyPageHierarchyTitleOptions.fromJson(Map<String, Object?> json) {
    return CopyPageHierarchyTitleOptions(
      prefix: json[r'prefix'] as String?,
      replace: json[r'replace'] as String?,
      search: json[r'search'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var prefix = this.prefix;
    var replace = this.replace;
    var search = this.search;

    final json = <String, Object?>{};
    if (prefix != null) {
      json[r'prefix'] = prefix;
    }
    if (replace != null) {
      json[r'replace'] = replace;
    }
    if (search != null) {
      json[r'search'] = search;
    }
    return json;
  }

  CopyPageHierarchyTitleOptions copyWith(
      {String? prefix, String? replace, String? search}) {
    return CopyPageHierarchyTitleOptions(
      prefix: prefix ?? this.prefix,
      replace: replace ?? this.replace,
      search: search ?? this.search,
    );
  }
}

class CopyPageRequest {
  /// If set to `true`, attachments are copied to the destination page.
  final bool copyAttachments;

  /// If set to `true`, page permissions are copied to the destination page.
  final bool copyPermissions;

  /// If set to `true`, content properties are copied to the destination page.
  final bool copyProperties;

  /// If set to `true`, labels are copied to the destination page.
  final bool copyLabels;

  /// If set to `true`, custom contents are copied to the destination page.
  final bool copyCustomContents;
  final CopyPageRequestDestination destination;

  /// If defined, this will replace the title of the destination page.
  final String? pageTitle;

  /// If defined, this will replace the body of the destination page.
  final CopyPageRequestBody? body;

  CopyPageRequest(
      {bool? copyAttachments,
      bool? copyPermissions,
      bool? copyProperties,
      bool? copyLabels,
      bool? copyCustomContents,
      required this.destination,
      this.pageTitle,
      this.body})
      : copyAttachments = copyAttachments ?? false,
        copyPermissions = copyPermissions ?? false,
        copyProperties = copyProperties ?? false,
        copyLabels = copyLabels ?? false,
        copyCustomContents = copyCustomContents ?? false;

  factory CopyPageRequest.fromJson(Map<String, Object?> json) {
    return CopyPageRequest(
      copyAttachments: json[r'copyAttachments'] as bool? ?? false,
      copyPermissions: json[r'copyPermissions'] as bool? ?? false,
      copyProperties: json[r'copyProperties'] as bool? ?? false,
      copyLabels: json[r'copyLabels'] as bool? ?? false,
      copyCustomContents: json[r'copyCustomContents'] as bool? ?? false,
      destination: CopyPageRequestDestination.fromJson(
          json[r'destination'] as Map<String, Object?>? ?? const {}),
      pageTitle: json[r'pageTitle'] as String?,
      body: json[r'body'] != null
          ? CopyPageRequestBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var copyAttachments = this.copyAttachments;
    var copyPermissions = this.copyPermissions;
    var copyProperties = this.copyProperties;
    var copyLabels = this.copyLabels;
    var copyCustomContents = this.copyCustomContents;
    var destination = this.destination;
    var pageTitle = this.pageTitle;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'copyAttachments'] = copyAttachments;
    json[r'copyPermissions'] = copyPermissions;
    json[r'copyProperties'] = copyProperties;
    json[r'copyLabels'] = copyLabels;
    json[r'copyCustomContents'] = copyCustomContents;
    json[r'destination'] = destination.toJson();
    if (pageTitle != null) {
      json[r'pageTitle'] = pageTitle;
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    return json;
  }

  CopyPageRequest copyWith(
      {bool? copyAttachments,
      bool? copyPermissions,
      bool? copyProperties,
      bool? copyLabels,
      bool? copyCustomContents,
      CopyPageRequestDestination? destination,
      String? pageTitle,
      CopyPageRequestBody? body}) {
    return CopyPageRequest(
      copyAttachments: copyAttachments ?? this.copyAttachments,
      copyPermissions: copyPermissions ?? this.copyPermissions,
      copyProperties: copyProperties ?? this.copyProperties,
      copyLabels: copyLabels ?? this.copyLabels,
      copyCustomContents: copyCustomContents ?? this.copyCustomContents,
      destination: destination ?? this.destination,
      pageTitle: pageTitle ?? this.pageTitle,
      body: body ?? this.body,
    );
  }
}

/// If defined, this will replace the body of the destination page.
class CopyPageRequestBody {
  final ContentBodyCreate? storage;
  final ContentBodyCreate? editor2;

  CopyPageRequestBody({this.storage, this.editor2});

  factory CopyPageRequestBody.fromJson(Map<String, Object?> json) {
    return CopyPageRequestBody(
      storage: json[r'storage'] != null
          ? ContentBodyCreate.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
      editor2: json[r'editor2'] != null
          ? ContentBodyCreate.fromJson(
              json[r'editor2']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var editor2 = this.editor2;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (editor2 != null) {
      json[r'editor2'] = editor2.toJson();
    }
    return json;
  }

  CopyPageRequestBody copyWith(
      {ContentBodyCreate? storage, ContentBodyCreate? editor2}) {
    return CopyPageRequestBody(
      storage: storage ?? this.storage,
      editor2: editor2 ?? this.editor2,
    );
  }
}

/// Defines where the page will be copied to, and can be one of the following
/// types.
///
///   - `parent_page`: page will be copied as a child of the specified parent
/// page
///   - `space`: page will be copied to the specified space as a root page on
/// the space
///   - `existing_page`: page will be copied and replace the specified page
class CopyPageRequestDestination {
  final CopyPageRequestDestinationType type;

  /// The space key for `space` type, and content id for `parent_page` and
  /// `existing_page`
  final String value;

  CopyPageRequestDestination({required this.type, required this.value});

  factory CopyPageRequestDestination.fromJson(Map<String, Object?> json) {
    return CopyPageRequestDestination(
      type: CopyPageRequestDestinationType.fromValue(
          json[r'type'] as String? ?? ''),
      value: json[r'value'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var value = this.value;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'value'] = value;
    return json;
  }

  CopyPageRequestDestination copyWith(
      {CopyPageRequestDestinationType? type, String? value}) {
    return CopyPageRequestDestination(
      type: type ?? this.type,
      value: value ?? this.value,
    );
  }
}

class CopyPageRequestDestinationType {
  static const space = CopyPageRequestDestinationType._('space');
  static const existingPage = CopyPageRequestDestinationType._('existing_page');
  static const parentPage = CopyPageRequestDestinationType._('parent_page');

  static const values = [
    space,
    existingPage,
    parentPage,
  ];
  final String value;

  const CopyPageRequestDestinationType._(this.value);

  static CopyPageRequestDestinationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CopyPageRequestDestinationType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class DynamicModulesErrorMessage {
  /// The error message.
  final String message;

  DynamicModulesErrorMessage({required this.message});

  factory DynamicModulesErrorMessage.fromJson(Map<String, Object?> json) {
    return DynamicModulesErrorMessage(
      message: json[r'message'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var message = this.message;

    final json = <String, Object?>{};
    json[r'message'] = message;
    return json;
  }

  DynamicModulesErrorMessage copyWith({String? message}) {
    return DynamicModulesErrorMessage(
      message: message ?? this.message,
    );
  }
}

class Embeddable {
  Embeddable();

  factory Embeddable.fromJson(Map<String, Object?> json) {
    return Embeddable();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class EmbeddedContent {
  final int? entityId;
  final Embeddable? entity;

  EmbeddedContent({this.entityId, this.entity});

  factory EmbeddedContent.fromJson(Map<String, Object?> json) {
    return EmbeddedContent(
      entityId: (json[r'entityId'] as num?)?.toInt(),
      entity: json[r'entity'] != null
          ? Embeddable.fromJson(json[r'entity']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var entityId = this.entityId;
    var entity = this.entity;

    final json = <String, Object?>{};
    if (entityId != null) {
      json[r'entityId'] = entityId;
    }
    if (entity != null) {
      json[r'entity'] = entity.toJson();
    }
    return json;
  }

  EmbeddedContent copyWith({int? entityId, Embeddable? entity}) {
    return EmbeddedContent(
      entityId: entityId ?? this.entityId,
      entity: entity ?? this.entity,
    );
  }
}

class GenericLinks {
  GenericLinks();

  factory GenericLinks.fromJson(Map<String, Object?> json) {
    return GenericLinks();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class Group {
  final GroupType type;
  final String name;
  final String id;
  final GenericLinks links;

  Group(
      {required this.type,
      required this.name,
      required this.id,
      required this.links});

  factory Group.fromJson(Map<String, Object?> json) {
    return Group(
      type: GroupType.fromValue(json[r'type'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
      id: json[r'id'] as String? ?? '',
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var name = this.name;
    var id = this.id;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'name'] = name;
    json[r'id'] = id;
    json[r'_links'] = links.toJson();
    return json;
  }

  Group copyWith(
      {GroupType? type, String? name, String? id, GenericLinks? links}) {
    return Group(
      type: type ?? this.type,
      name: name ?? this.name,
      id: id ?? this.id,
      links: links ?? this.links,
    );
  }
}

class GroupType {
  static const group = GroupType._('group');

  static const values = [
    group,
  ];
  final String value;

  const GroupType._(this.value);

  static GroupType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => GroupType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class GroupArray {
  final List<Group> results;
  final int start;
  final int limit;
  final int size;

  GroupArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size});

  factory GroupArray.fromJson(Map<String, Object?> json) {
    return GroupArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Group.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    return json;
  }

  GroupArray copyWith(
      {List<Group>? results, int? start, int? limit, int? size}) {
    return GroupArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
    );
  }
}

/// Same as GroupArray but with `_links` property.
class GroupArrayWithLinks {
  GroupArrayWithLinks();

  factory GroupArrayWithLinks.fromJson(Map<String, Object?> json) {
    return GroupArrayWithLinks();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class GroupName {
  final String name;

  GroupName({required this.name});

  factory GroupName.fromJson(Map<String, Object?> json) {
    return GroupName(
      name: json[r'name'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;

    final json = <String, Object?>{};
    json[r'name'] = name;
    return json;
  }

  GroupName copyWith({String? name}) {
    return GroupName(
      name: name ?? this.name,
    );
  }
}

class HeaderLookAndFeel {
  final String backgroundColor;
  final ButtonLookAndFeel button;
  final NavigationLookAndFeel primaryNavigation;
  final NavigationLookAndFeel secondaryNavigation;
  final SearchFieldLookAndFeel search;

  HeaderLookAndFeel(
      {required this.backgroundColor,
      required this.button,
      required this.primaryNavigation,
      required this.secondaryNavigation,
      required this.search});

  factory HeaderLookAndFeel.fromJson(Map<String, Object?> json) {
    return HeaderLookAndFeel(
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      button: ButtonLookAndFeel.fromJson(
          json[r'button'] as Map<String, Object?>? ?? const {}),
      primaryNavigation: NavigationLookAndFeel.fromJson(
          json[r'primaryNavigation'] as Map<String, Object?>? ?? const {}),
      secondaryNavigation: NavigationLookAndFeel.fromJson(
          json[r'secondaryNavigation'] as Map<String, Object?>? ?? const {}),
      search: SearchFieldLookAndFeel.fromJson(
          json[r'search'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var backgroundColor = this.backgroundColor;
    var button = this.button;
    var primaryNavigation = this.primaryNavigation;
    var secondaryNavigation = this.secondaryNavigation;
    var search = this.search;

    final json = <String, Object?>{};
    json[r'backgroundColor'] = backgroundColor;
    json[r'button'] = button.toJson();
    json[r'primaryNavigation'] = primaryNavigation.toJson();
    json[r'secondaryNavigation'] = secondaryNavigation.toJson();
    json[r'search'] = search.toJson();
    return json;
  }

  HeaderLookAndFeel copyWith(
      {String? backgroundColor,
      ButtonLookAndFeel? button,
      NavigationLookAndFeel? primaryNavigation,
      NavigationLookAndFeel? secondaryNavigation,
      SearchFieldLookAndFeel? search}) {
    return HeaderLookAndFeel(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      button: button ?? this.button,
      primaryNavigation: primaryNavigation ?? this.primaryNavigation,
      secondaryNavigation: secondaryNavigation ?? this.secondaryNavigation,
      search: search ?? this.search,
    );
  }
}

/// This object represents an icon. If used as a profilePicture, this may be
/// returned as null, depending on the user's privacy setting.
class Icon {
  final String path;
  final int width;
  final int height;
  final bool isDefault;

  Icon(
      {required this.path,
      required this.width,
      required this.height,
      required this.isDefault});

  factory Icon.fromJson(Map<String, Object?> json) {
    return Icon(
      path: json[r'path'] as String? ?? '',
      width: (json[r'width'] as num?)?.toInt() ?? 0,
      height: (json[r'height'] as num?)?.toInt() ?? 0,
      isDefault: json[r'isDefault'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var path = this.path;
    var width = this.width;
    var height = this.height;
    var isDefault = this.isDefault;

    final json = <String, Object?>{};
    json[r'path'] = path;
    json[r'width'] = width;
    json[r'height'] = height;
    json[r'isDefault'] = isDefault;
    return json;
  }

  Icon copyWith({String? path, int? width, int? height, bool? isDefault}) {
    return Icon(
      path: path ?? this.path,
      width: width ?? this.width,
      height: height ?? this.height,
      isDefault: isDefault ?? this.isDefault,
    );
  }
}

class Label {
  final String prefix;
  final String name;
  final String id;
  final String label;

  Label(
      {required this.prefix,
      required this.name,
      required this.id,
      required this.label});

  factory Label.fromJson(Map<String, Object?> json) {
    return Label(
      prefix: json[r'prefix'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      id: json[r'id'] as String? ?? '',
      label: json[r'label'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var prefix = this.prefix;
    var name = this.name;
    var id = this.id;
    var label = this.label;

    final json = <String, Object?>{};
    json[r'prefix'] = prefix;
    json[r'name'] = name;
    json[r'id'] = id;
    json[r'label'] = label;
    return json;
  }

  Label copyWith({String? prefix, String? name, String? id, String? label}) {
    return Label(
      prefix: prefix ?? this.prefix,
      name: name ?? this.name,
      id: id ?? this.id,
      label: label ?? this.label,
    );
  }
}

class LabelArray {
  final List<Label> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  LabelArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory LabelArray.fromJson(Map<String, Object?> json) {
    return LabelArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  LabelArray copyWith(
      {List<Label>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return LabelArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class LabelCreate {
  /// The prefix for the label.
  final LabelCreatePrefix prefix;

  /// The name of the label, which will be shown in the UI.
  final String name;

  LabelCreate({required this.prefix, required this.name});

  factory LabelCreate.fromJson(Map<String, Object?> json) {
    return LabelCreate(
      prefix: LabelCreatePrefix.fromValue(json[r'prefix'] as String? ?? ''),
      name: json[r'name'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var prefix = this.prefix;
    var name = this.name;

    final json = <String, Object?>{};
    json[r'prefix'] = prefix.value;
    json[r'name'] = name;
    return json;
  }

  LabelCreate copyWith({LabelCreatePrefix? prefix, String? name}) {
    return LabelCreate(
      prefix: prefix ?? this.prefix,
      name: name ?? this.name,
    );
  }
}

class LabelCreatePrefix {
  static const global = LabelCreatePrefix._('global');
  static const my = LabelCreatePrefix._('my');
  static const team = LabelCreatePrefix._('team');

  static const values = [
    global,
    my,
    team,
  ];
  final String value;

  const LabelCreatePrefix._(this.value);

  static LabelCreatePrefix fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => LabelCreatePrefix._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class LabelCreateArray {
  LabelCreateArray();

  factory LabelCreateArray.fromJson(Map<String, Object?> json) {
    return LabelCreateArray();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class LabelDetails {
  final Label label;
  final LabeledContentPageResponse? associatedContents;

  LabelDetails({required this.label, this.associatedContents});

  factory LabelDetails.fromJson(Map<String, Object?> json) {
    return LabelDetails(
      label:
          Label.fromJson(json[r'label'] as Map<String, Object?>? ?? const {}),
      associatedContents: json[r'associatedContents'] != null
          ? LabeledContentPageResponse.fromJson(
              json[r'associatedContents']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var label = this.label;
    var associatedContents = this.associatedContents;

    final json = <String, Object?>{};
    json[r'label'] = label.toJson();
    if (associatedContents != null) {
      json[r'associatedContents'] = associatedContents.toJson();
    }
    return json;
  }

  LabelDetails copyWith(
      {Label? label, LabeledContentPageResponse? associatedContents}) {
    return LabelDetails(
      label: label ?? this.label,
      associatedContents: associatedContents ?? this.associatedContents,
    );
  }
}

class LabeledContent {
  final LabeledContentType contentType;
  final int contentId;

  /// Title of the content.
  final String title;

  LabeledContent(
      {required this.contentType,
      required this.contentId,
      required this.title});

  factory LabeledContent.fromJson(Map<String, Object?> json) {
    return LabeledContent(
      contentType: LabeledContentType.fromJson(
          json[r'contentType'] as Map<String, Object?>? ?? const {}),
      contentId: (json[r'contentId'] as num?)?.toInt() ?? 0,
      title: json[r'title'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var contentType = this.contentType;
    var contentId = this.contentId;
    var title = this.title;

    final json = <String, Object?>{};
    json[r'contentType'] = contentType.toJson();
    json[r'contentId'] = contentId;
    json[r'title'] = title;
    return json;
  }

  LabeledContent copyWith(
      {LabeledContentType? contentType, int? contentId, String? title}) {
    return LabeledContent(
      contentType: contentType ?? this.contentType,
      contentId: contentId ?? this.contentId,
      title: title ?? this.title,
    );
  }
}

class LabeledContentPageResponse {
  final List<LabeledContent> results;
  final int? start;
  final int? limit;
  final int size;

  LabeledContentPageResponse(
      {required this.results, this.start, this.limit, required this.size});

  factory LabeledContentPageResponse.fromJson(Map<String, Object?> json) {
    return LabeledContentPageResponse(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => LabeledContent.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'size'] = size;
    return json;
  }

  LabeledContentPageResponse copyWith(
      {List<LabeledContent>? results, int? start, int? limit, int? size}) {
    return LabeledContentPageResponse(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
    );
  }
}

class LabeledContentType {
  LabeledContentType();

  factory LabeledContentType.fromJson(Map<String, Object?> json) {
    return LabeledContentType();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

/// Current status of a long running task
///
/// Status keys:
///
/// - `ERROR_UNKNOWN` - Generic error
/// - `ERROR_LOCK_FAILED` - Could not get the lock on destination space
/// - `ERROR_RELINK` - Error when relink pages/attachments
/// - `ERROR_COPY_PAGE` - Error while copying 1 page
/// - `WARN_RENAME_PAGE` - Warning page is rename during copy
/// - `WARN_IGNORE_COPY_PERMISSION` - Warning could not copy permission
/// - `WARN_IGNORE_COPY_ATTACHMENT` - Warning could not copy attachment
/// - `WARN_IGNORE_DELETE_PAGE` - Warning ignoring delete of a non agreed on
/// page
/// - `STATUS_COPIED_PAGES` - Message total pages are copied
/// - `STATUS_COPYING_PAGES` - Message copy pages
/// - `STATUS_RELINK_PAGES` - Message relink pages/attachments
/// - `STATUS_DELETING_PAGES` - Message delete pages
/// - `STATUS_DELETED_PAGES` - Message total pages are deleted
/// - `STATUS_MOVING_PAGES` - Message move pages
/// - `WARN_IGNORE_VIEW_RESTRICTED` - Permission changed - view restricted
/// - `WARN_IGNORE_EDIT_RESTRICTED` - Permission changed - edit restricted
/// - `INITIALIZING_TASK` - Message when initializing task
/// - `UNKNOWN_STATUS` - Message when status is unknown
class LongTaskStatus {
  final String id;
  final LongTaskStatusName name;
  final int elapsedTime;
  final int percentageComplete;
  final bool successful;
  final List<Message> messages;
  final String? status;
  final List<Message> errors;
  final Map<String, dynamic>? additionalDetails;

  LongTaskStatus(
      {required this.id,
      required this.name,
      required this.elapsedTime,
      required this.percentageComplete,
      required this.successful,
      required this.messages,
      this.status,
      List<Message>? errors,
      this.additionalDetails})
      : errors = errors ?? [];

  factory LongTaskStatus.fromJson(Map<String, Object?> json) {
    return LongTaskStatus(
      id: json[r'id'] as String? ?? '',
      name: LongTaskStatusName.fromJson(
          json[r'name'] as Map<String, Object?>? ?? const {}),
      elapsedTime: (json[r'elapsedTime'] as num?)?.toInt() ?? 0,
      percentageComplete: (json[r'percentageComplete'] as num?)?.toInt() ?? 0,
      successful: json[r'successful'] as bool? ?? false,
      messages: (json[r'messages'] as List<Object?>?)
              ?.map((i) =>
                  Message.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      status: json[r'status'] as String?,
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) =>
                  Message.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      additionalDetails: json[r'additionalDetails'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var elapsedTime = this.elapsedTime;
    var percentageComplete = this.percentageComplete;
    var successful = this.successful;
    var messages = this.messages;
    var status = this.status;
    var errors = this.errors;
    var additionalDetails = this.additionalDetails;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'name'] = name.toJson();
    json[r'elapsedTime'] = elapsedTime;
    json[r'percentageComplete'] = percentageComplete;
    json[r'successful'] = successful;
    json[r'messages'] = messages.map((i) => i.toJson()).toList();
    if (status != null) {
      json[r'status'] = status;
    }
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    if (additionalDetails != null) {
      json[r'additionalDetails'] = additionalDetails;
    }
    return json;
  }

  LongTaskStatus copyWith(
      {String? id,
      LongTaskStatusName? name,
      int? elapsedTime,
      int? percentageComplete,
      bool? successful,
      List<Message>? messages,
      String? status,
      List<Message>? errors,
      Map<String, dynamic>? additionalDetails}) {
    return LongTaskStatus(
      id: id ?? this.id,
      name: name ?? this.name,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      percentageComplete: percentageComplete ?? this.percentageComplete,
      successful: successful ?? this.successful,
      messages: messages ?? this.messages,
      status: status ?? this.status,
      errors: errors ?? this.errors,
      additionalDetails: additionalDetails ?? this.additionalDetails,
    );
  }
}

class LongTaskStatusArray {
  final List<LongTaskStatus> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  LongTaskStatusArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory LongTaskStatusArray.fromJson(Map<String, Object?> json) {
    return LongTaskStatusArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => LongTaskStatus.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  LongTaskStatusArray copyWith(
      {List<LongTaskStatus>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return LongTaskStatusArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class LongTaskStatusName {
  final String key;
  final List<Map<String, dynamic>> args;

  LongTaskStatusName({required this.key, required this.args});

  factory LongTaskStatusName.fromJson(Map<String, Object?> json) {
    return LongTaskStatusName(
      key: json[r'key'] as String? ?? '',
      args: (json[r'args'] as List<Object?>?)
              ?.map((i) => i as Map<String, Object?>? ?? {})
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var args = this.args;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'args'] = args;
    return json;
  }

  LongTaskStatusName copyWith({String? key, List<Map<String, dynamic>>? args}) {
    return LongTaskStatusName(
      key: key ?? this.key,
      args: args ?? this.args,
    );
  }
}

/// Same as LongTaskStatus but with `_links` property.
class LongTaskStatusWithLinks {
  LongTaskStatusWithLinks();

  factory LongTaskStatusWithLinks.fromJson(Map<String, Object?> json) {
    return LongTaskStatusWithLinks();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class LookAndFeel {
  final LookAndFeelHeadings headings;
  final LookAndFeelLinks links;
  final MenusLookAndFeel menus;
  final HeaderLookAndFeel header;
  final ContentLookAndFeel content;
  final LookAndFeelBordersAndDividers bordersAndDividers;

  LookAndFeel(
      {required this.headings,
      required this.links,
      required this.menus,
      required this.header,
      required this.content,
      required this.bordersAndDividers});

  factory LookAndFeel.fromJson(Map<String, Object?> json) {
    return LookAndFeel(
      headings: LookAndFeelHeadings.fromJson(
          json[r'headings'] as Map<String, Object?>? ?? const {}),
      links: LookAndFeelLinks.fromJson(
          json[r'links'] as Map<String, Object?>? ?? const {}),
      menus: MenusLookAndFeel.fromJson(
          json[r'menus'] as Map<String, Object?>? ?? const {}),
      header: HeaderLookAndFeel.fromJson(
          json[r'header'] as Map<String, Object?>? ?? const {}),
      content: ContentLookAndFeel.fromJson(
          json[r'content'] as Map<String, Object?>? ?? const {}),
      bordersAndDividers: LookAndFeelBordersAndDividers.fromJson(
          json[r'bordersAndDividers'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var headings = this.headings;
    var links = this.links;
    var menus = this.menus;
    var header = this.header;
    var content = this.content;
    var bordersAndDividers = this.bordersAndDividers;

    final json = <String, Object?>{};
    json[r'headings'] = headings.toJson();
    json[r'links'] = links.toJson();
    json[r'menus'] = menus.toJson();
    json[r'header'] = header.toJson();
    json[r'content'] = content.toJson();
    json[r'bordersAndDividers'] = bordersAndDividers.toJson();
    return json;
  }

  LookAndFeel copyWith(
      {LookAndFeelHeadings? headings,
      LookAndFeelLinks? links,
      MenusLookAndFeel? menus,
      HeaderLookAndFeel? header,
      ContentLookAndFeel? content,
      LookAndFeelBordersAndDividers? bordersAndDividers}) {
    return LookAndFeel(
      headings: headings ?? this.headings,
      links: links ?? this.links,
      menus: menus ?? this.menus,
      header: header ?? this.header,
      content: content ?? this.content,
      bordersAndDividers: bordersAndDividers ?? this.bordersAndDividers,
    );
  }
}

class LookAndFeelBordersAndDividers {
  final String color;

  LookAndFeelBordersAndDividers({required this.color});

  factory LookAndFeelBordersAndDividers.fromJson(Map<String, Object?> json) {
    return LookAndFeelBordersAndDividers(
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var color = this.color;

    final json = <String, Object?>{};
    json[r'color'] = color;
    return json;
  }

  LookAndFeelBordersAndDividers copyWith({String? color}) {
    return LookAndFeelBordersAndDividers(
      color: color ?? this.color,
    );
  }
}

class LookAndFeelHeadings {
  final String color;

  LookAndFeelHeadings({required this.color});

  factory LookAndFeelHeadings.fromJson(Map<String, Object?> json) {
    return LookAndFeelHeadings(
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var color = this.color;

    final json = <String, Object?>{};
    json[r'color'] = color;
    return json;
  }

  LookAndFeelHeadings copyWith({String? color}) {
    return LookAndFeelHeadings(
      color: color ?? this.color,
    );
  }
}

class LookAndFeelLinks {
  final String color;

  LookAndFeelLinks({required this.color});

  factory LookAndFeelLinks.fromJson(Map<String, Object?> json) {
    return LookAndFeelLinks(
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var color = this.color;

    final json = <String, Object?>{};
    json[r'color'] = color;
    return json;
  }

  LookAndFeelLinks copyWith({String? color}) {
    return LookAndFeelLinks(
      color: color ?? this.color,
    );
  }
}

/// Look and feel selection
class LookAndFeelSelection {
  /// The key of the space for which the look and feel settings will be
  /// set.
  final String spaceKey;
  final LookAndFeelSelectionLookAndFeelType lookAndFeelType;

  LookAndFeelSelection({required this.spaceKey, required this.lookAndFeelType});

  factory LookAndFeelSelection.fromJson(Map<String, Object?> json) {
    return LookAndFeelSelection(
      spaceKey: json[r'spaceKey'] as String? ?? '',
      lookAndFeelType: LookAndFeelSelectionLookAndFeelType.fromValue(
          json[r'lookAndFeelType'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var spaceKey = this.spaceKey;
    var lookAndFeelType = this.lookAndFeelType;

    final json = <String, Object?>{};
    json[r'spaceKey'] = spaceKey;
    json[r'lookAndFeelType'] = lookAndFeelType.value;
    return json;
  }

  LookAndFeelSelection copyWith(
      {String? spaceKey,
      LookAndFeelSelectionLookAndFeelType? lookAndFeelType}) {
    return LookAndFeelSelection(
      spaceKey: spaceKey ?? this.spaceKey,
      lookAndFeelType: lookAndFeelType ?? this.lookAndFeelType,
    );
  }
}

class LookAndFeelSelectionLookAndFeelType {
  static const global = LookAndFeelSelectionLookAndFeelType._('global');
  static const custom = LookAndFeelSelectionLookAndFeelType._('custom');
  static const theme = LookAndFeelSelectionLookAndFeelType._('theme');

  static const values = [
    global,
    custom,
    theme,
  ];
  final String value;

  const LookAndFeelSelectionLookAndFeelType._(this.value);

  static LookAndFeelSelectionLookAndFeelType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => LookAndFeelSelectionLookAndFeelType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class LookAndFeelSettings {
  final LookAndFeelSettingsSelected selected;
  final LookAndFeel global;
  final LookAndFeel? theme;
  final LookAndFeel custom;

  LookAndFeelSettings(
      {required this.selected,
      required this.global,
      this.theme,
      required this.custom});

  factory LookAndFeelSettings.fromJson(Map<String, Object?> json) {
    return LookAndFeelSettings(
      selected: LookAndFeelSettingsSelected.fromValue(
          json[r'selected'] as String? ?? ''),
      global: LookAndFeel.fromJson(
          json[r'global'] as Map<String, Object?>? ?? const {}),
      theme: json[r'theme'] != null
          ? LookAndFeel.fromJson(json[r'theme']! as Map<String, Object?>)
          : null,
      custom: LookAndFeel.fromJson(
          json[r'custom'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var selected = this.selected;
    var global = this.global;
    var theme = this.theme;
    var custom = this.custom;

    final json = <String, Object?>{};
    json[r'selected'] = selected.value;
    json[r'global'] = global.toJson();
    if (theme != null) {
      json[r'theme'] = theme.toJson();
    }
    json[r'custom'] = custom.toJson();
    return json;
  }

  LookAndFeelSettings copyWith(
      {LookAndFeelSettingsSelected? selected,
      LookAndFeel? global,
      LookAndFeel? theme,
      LookAndFeel? custom}) {
    return LookAndFeelSettings(
      selected: selected ?? this.selected,
      global: global ?? this.global,
      theme: theme ?? this.theme,
      custom: custom ?? this.custom,
    );
  }
}

class LookAndFeelSettingsSelected {
  static const global = LookAndFeelSettingsSelected._('global');
  static const custom = LookAndFeelSettingsSelected._('custom');

  static const values = [
    global,
    custom,
  ];
  final String value;

  const LookAndFeelSettingsSelected._(this.value);

  static LookAndFeelSettingsSelected fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => LookAndFeelSettingsSelected._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Look and feel settings returned after an update.
class LookAndFeelUpdated {
  LookAndFeelUpdated();

  factory LookAndFeelUpdated.fromJson(Map<String, Object?> json) {
    return LookAndFeelUpdated();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class MacroInstance {
  final String? name;
  final String? body;
  final Map<String, dynamic>? parameters;
  final GenericLinks? links;

  MacroInstance({this.name, this.body, this.parameters, this.links});

  factory MacroInstance.fromJson(Map<String, Object?> json) {
    return MacroInstance(
      name: json[r'name'] as String?,
      body: json[r'body'] as String?,
      parameters: json[r'parameters'] as Map<String, Object?>?,
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var body = this.body;
    var parameters = this.parameters;
    var links = this.links;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (parameters != null) {
      json[r'parameters'] = parameters;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  MacroInstance copyWith(
      {String? name,
      String? body,
      Map<String, dynamic>? parameters,
      GenericLinks? links}) {
    return MacroInstance(
      name: name ?? this.name,
      body: body ?? this.body,
      parameters: parameters ?? this.parameters,
      links: links ?? this.links,
    );
  }
}

class MenusLookAndFeel {
  final MenusLookAndFeelHoverOrFocus hoverOrFocus;
  final String color;

  MenusLookAndFeel({required this.hoverOrFocus, required this.color});

  factory MenusLookAndFeel.fromJson(Map<String, Object?> json) {
    return MenusLookAndFeel(
      hoverOrFocus: MenusLookAndFeelHoverOrFocus.fromJson(
          json[r'hoverOrFocus'] as Map<String, Object?>? ?? const {}),
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var hoverOrFocus = this.hoverOrFocus;
    var color = this.color;

    final json = <String, Object?>{};
    json[r'hoverOrFocus'] = hoverOrFocus.toJson();
    json[r'color'] = color;
    return json;
  }

  MenusLookAndFeel copyWith(
      {MenusLookAndFeelHoverOrFocus? hoverOrFocus, String? color}) {
    return MenusLookAndFeel(
      hoverOrFocus: hoverOrFocus ?? this.hoverOrFocus,
      color: color ?? this.color,
    );
  }
}

class MenusLookAndFeelHoverOrFocus {
  final String backgroundColor;

  MenusLookAndFeelHoverOrFocus({required this.backgroundColor});

  factory MenusLookAndFeelHoverOrFocus.fromJson(Map<String, Object?> json) {
    return MenusLookAndFeelHoverOrFocus(
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var backgroundColor = this.backgroundColor;

    final json = <String, Object?>{};
    json[r'backgroundColor'] = backgroundColor;
    return json;
  }

  MenusLookAndFeelHoverOrFocus copyWith({String? backgroundColor}) {
    return MenusLookAndFeelHoverOrFocus(
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }
}

class Message {
  final String translation;
  final List<Map<String, dynamic>> args;

  Message({required this.translation, required this.args});

  factory Message.fromJson(Map<String, Object?> json) {
    return Message(
      translation: json[r'translation'] as String? ?? '',
      args: (json[r'args'] as List<Object?>?)
              ?.map((i) => i as Map<String, Object?>? ?? {})
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var translation = this.translation;
    var args = this.args;

    final json = <String, Object?>{};
    json[r'translation'] = translation;
    json[r'args'] = args;
    return json;
  }

  Message copyWith({String? translation, List<Map<String, dynamic>>? args}) {
    return Message(
      translation: translation ?? this.translation,
      args: args ?? this.args,
    );
  }
}

class MigratedUser {
  final String? username;
  final String? key;
  final String? accountId;

  MigratedUser({this.username, this.key, this.accountId});

  factory MigratedUser.fromJson(Map<String, Object?> json) {
    return MigratedUser(
      username: json[r'username'] as String?,
      key: json[r'key'] as String?,
      accountId: json[r'accountId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var username = this.username;
    var key = this.key;
    var accountId = this.accountId;

    final json = <String, Object?>{};
    if (username != null) {
      json[r'username'] = username;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    return json;
  }

  MigratedUser copyWith({String? username, String? key, String? accountId}) {
    return MigratedUser(
      username: username ?? this.username,
      key: key ?? this.key,
      accountId: accountId ?? this.accountId,
    );
  }
}

class MigratedUserArray {
  final List<MigratedUser> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  MigratedUserArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory MigratedUserArray.fromJson(Map<String, Object?> json) {
    return MigratedUserArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  MigratedUser.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  MigratedUserArray copyWith(
      {List<MigratedUser>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return MigratedUserArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class NavigationLookAndFeel {
  final String color;
  final NavigationLookAndFeelHoverOrFocus hoverOrFocus;

  NavigationLookAndFeel({required this.color, required this.hoverOrFocus});

  factory NavigationLookAndFeel.fromJson(Map<String, Object?> json) {
    return NavigationLookAndFeel(
      color: json[r'color'] as String? ?? '',
      hoverOrFocus: NavigationLookAndFeelHoverOrFocus.fromJson(
          json[r'hoverOrFocus'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var color = this.color;
    var hoverOrFocus = this.hoverOrFocus;

    final json = <String, Object?>{};
    json[r'color'] = color;
    json[r'hoverOrFocus'] = hoverOrFocus.toJson();
    return json;
  }

  NavigationLookAndFeel copyWith(
      {String? color, NavigationLookAndFeelHoverOrFocus? hoverOrFocus}) {
    return NavigationLookAndFeel(
      color: color ?? this.color,
      hoverOrFocus: hoverOrFocus ?? this.hoverOrFocus,
    );
  }
}

class NavigationLookAndFeelHoverOrFocus {
  final String backgroundColor;
  final String color;

  NavigationLookAndFeelHoverOrFocus(
      {required this.backgroundColor, required this.color});

  factory NavigationLookAndFeelHoverOrFocus.fromJson(
      Map<String, Object?> json) {
    return NavigationLookAndFeelHoverOrFocus(
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var backgroundColor = this.backgroundColor;
    var color = this.color;

    final json = <String, Object?>{};
    json[r'backgroundColor'] = backgroundColor;
    json[r'color'] = color;
    return json;
  }

  NavigationLookAndFeelHoverOrFocus copyWith(
      {String? backgroundColor, String? color}) {
    return NavigationLookAndFeelHoverOrFocus(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
    );
  }
}

/// An operation and the target entity that it applies to, e.g. create page.
class OperationCheckResult {
  /// The operation itself.
  final OperationCheckResultOperation operation;

  /// The space or content type that the operation applies to.
  final OperationCheckResultTargetType targetType;

  OperationCheckResult({required this.operation, required this.targetType});

  factory OperationCheckResult.fromJson(Map<String, Object?> json) {
    return OperationCheckResult(
      operation: OperationCheckResultOperation.fromValue(
          json[r'operation'] as String? ?? ''),
      targetType: OperationCheckResultTargetType.fromValue(
          json[r'targetType'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var operation = this.operation;
    var targetType = this.targetType;

    final json = <String, Object?>{};
    json[r'operation'] = operation.value;
    json[r'targetType'] = targetType.value;
    return json;
  }

  OperationCheckResult copyWith(
      {OperationCheckResultOperation? operation,
      OperationCheckResultTargetType? targetType}) {
    return OperationCheckResult(
      operation: operation ?? this.operation,
      targetType: targetType ?? this.targetType,
    );
  }
}

class OperationCheckResultOperation {
  static const administer = OperationCheckResultOperation._('administer');
  static const copy = OperationCheckResultOperation._('copy');
  static const create = OperationCheckResultOperation._('create');
  static const delete = OperationCheckResultOperation._('delete');
  static const export$ = OperationCheckResultOperation._('export');
  static const move = OperationCheckResultOperation._('move');
  static const purge = OperationCheckResultOperation._('purge');
  static const purgeVersion = OperationCheckResultOperation._('purge_version');
  static const read = OperationCheckResultOperation._('read');
  static const restore = OperationCheckResultOperation._('restore');
  static const update = OperationCheckResultOperation._('update');
  static const use = OperationCheckResultOperation._('use');

  static const values = [
    administer,
    copy,
    create,
    delete,
    export$,
    move,
    purge,
    purgeVersion,
    read,
    restore,
    update,
    use,
  ];
  final String value;

  const OperationCheckResultOperation._(this.value);

  static OperationCheckResultOperation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => OperationCheckResultOperation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class OperationCheckResultTargetType {
  static const application = OperationCheckResultTargetType._('application');
  static const page = OperationCheckResultTargetType._('page');
  static const blogpost = OperationCheckResultTargetType._('blogpost');
  static const comment = OperationCheckResultTargetType._('comment');
  static const attachment = OperationCheckResultTargetType._('attachment');
  static const space = OperationCheckResultTargetType._('space');

  static const values = [
    application,
    page,
    blogpost,
    comment,
    attachment,
    space,
  ];
  final String value;

  const OperationCheckResultTargetType._(this.value);

  static OperationCheckResultTargetType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => OperationCheckResultTargetType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// This object represents the response for the content permission check API. If
/// the user or group does not have
/// permissions, the following errors may be returned:
///
/// - Group does not have permission to the space
/// - Group does not have permission to the content
/// - User is not allowed to use Confluence
/// - User does not have permission to the space
/// - User does not have permission to the content
/// - Anonymous users are not allowed to use Confluence
/// - Anonymous user does not have permission to the space
/// - Anonymous user does not have permission to the content
class PermissionCheckResponse {
  final bool hasPermission;
  final List<Message> errors;

  PermissionCheckResponse({required this.hasPermission, List<Message>? errors})
      : errors = errors ?? [];

  factory PermissionCheckResponse.fromJson(Map<String, Object?> json) {
    return PermissionCheckResponse(
      hasPermission: json[r'hasPermission'] as bool? ?? false,
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) =>
                  Message.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var hasPermission = this.hasPermission;
    var errors = this.errors;

    final json = <String, Object?>{};
    json[r'hasPermission'] = hasPermission;
    json[r'errors'] = errors.map((i) => i.toJson()).toList();
    return json;
  }

  PermissionCheckResponse copyWith(
      {bool? hasPermission, List<Message>? errors}) {
    return PermissionCheckResponse(
      hasPermission: hasPermission ?? this.hasPermission,
      errors: errors ?? this.errors,
    );
  }
}

/// The user or group that the permission applies to.
class PermissionSubject {
  final PermissionSubjectType type;

  /// for `type=user`, identifier should be user's accountId or `anonymous` for
  /// anonymous users
  ///
  /// for `type=group`, identifier should be name of the group or groupId
  final String identifier;

  PermissionSubject({required this.type, required this.identifier});

  factory PermissionSubject.fromJson(Map<String, Object?> json) {
    return PermissionSubject(
      type: PermissionSubjectType.fromValue(json[r'type'] as String? ?? ''),
      identifier: json[r'identifier'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var identifier = this.identifier;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'identifier'] = identifier;
    return json;
  }

  PermissionSubject copyWith(
      {PermissionSubjectType? type, String? identifier}) {
    return PermissionSubject(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }
}

class PermissionSubjectType {
  static const user = PermissionSubjectType._('user');
  static const group = PermissionSubjectType._('group');

  static const values = [
    user,
    group,
  ];
  final String value;

  const PermissionSubjectType._(this.value);

  static PermissionSubjectType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PermissionSubjectType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The user or group that the permission applies to.
class PermissionSubjectWithGroupId {
  final PermissionSubjectWithGroupIdType type;

  /// for `type=user`, identifier should be user's accountId or `anonymous` for
  /// anonymous users
  ///
  /// for `type=group`, identifier should be ID of the group
  final String identifier;

  PermissionSubjectWithGroupId({required this.type, required this.identifier});

  factory PermissionSubjectWithGroupId.fromJson(Map<String, Object?> json) {
    return PermissionSubjectWithGroupId(
      type: PermissionSubjectWithGroupIdType.fromValue(
          json[r'type'] as String? ?? ''),
      identifier: json[r'identifier'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var identifier = this.identifier;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    json[r'identifier'] = identifier;
    return json;
  }

  PermissionSubjectWithGroupId copyWith(
      {PermissionSubjectWithGroupIdType? type, String? identifier}) {
    return PermissionSubjectWithGroupId(
      type: type ?? this.type,
      identifier: identifier ?? this.identifier,
    );
  }
}

class PermissionSubjectWithGroupIdType {
  static const user = PermissionSubjectWithGroupIdType._('user');
  static const group = PermissionSubjectWithGroupIdType._('group');

  static const values = [
    user,
    group,
  ];
  final String value;

  const PermissionSubjectWithGroupIdType._(this.value);

  static PermissionSubjectWithGroupIdType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PermissionSubjectWithGroupIdType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The value of the property. This can be empty or a complex object.
/// For example,
/// ```
/// "value": {
///   "example1": "value",
///   "example2": true,
///   "example3": 123
/// }
/// ```
class PropertyValue {
  PropertyValue();

  factory PropertyValue.fromJson(Map<String, Object?> json) {
    return PropertyValue();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class Relation {
  final String name;
  final RelationData? relationData;
  final Map<String, dynamic>? source;
  final Map<String, dynamic>? target;
  final RelationExpandable expandable;
  final GenericLinks links;

  Relation(
      {required this.name,
      this.relationData,
      this.source,
      this.target,
      required this.expandable,
      required this.links});

  factory Relation.fromJson(Map<String, Object?> json) {
    return Relation(
      name: json[r'name'] as String? ?? '',
      relationData: json[r'relationData'] != null
          ? RelationData.fromJson(
              json[r'relationData']! as Map<String, Object?>)
          : null,
      source: json[r'source'] as Map<String, Object?>?,
      target: json[r'target'] as Map<String, Object?>?,
      expandable: RelationExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var relationData = this.relationData;
    var source = this.source;
    var target = this.target;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'name'] = name;
    if (relationData != null) {
      json[r'relationData'] = relationData.toJson();
    }
    if (source != null) {
      json[r'source'] = source;
    }
    if (target != null) {
      json[r'target'] = target;
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  Relation copyWith(
      {String? name,
      RelationData? relationData,
      Map<String, dynamic>? source,
      Map<String, dynamic>? target,
      RelationExpandable? expandable,
      GenericLinks? links}) {
    return Relation(
      name: name ?? this.name,
      relationData: relationData ?? this.relationData,
      source: source ?? this.source,
      target: target ?? this.target,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class RelationArray {
  final List<Relation> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  RelationArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory RelationArray.fromJson(Map<String, Object?> json) {
    return RelationArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Relation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  RelationArray copyWith(
      {List<Relation>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return RelationArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class RelationData {
  final User? createdBy;
  final DateTime? createdDate;
  final String? friendlyCreatedDate;

  RelationData({this.createdBy, this.createdDate, this.friendlyCreatedDate});

  factory RelationData.fromJson(Map<String, Object?> json) {
    return RelationData(
      createdBy: json[r'createdBy'] != null
          ? User.fromJson(json[r'createdBy']! as Map<String, Object?>)
          : null,
      createdDate: DateTime.tryParse(json[r'createdDate'] as String? ?? ''),
      friendlyCreatedDate: json[r'friendlyCreatedDate'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var createdBy = this.createdBy;
    var createdDate = this.createdDate;
    var friendlyCreatedDate = this.friendlyCreatedDate;

    final json = <String, Object?>{};
    if (createdBy != null) {
      json[r'createdBy'] = createdBy.toJson();
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate.toIso8601String();
    }
    if (friendlyCreatedDate != null) {
      json[r'friendlyCreatedDate'] = friendlyCreatedDate;
    }
    return json;
  }

  RelationData copyWith(
      {User? createdBy, DateTime? createdDate, String? friendlyCreatedDate}) {
    return RelationData(
      createdBy: createdBy ?? this.createdBy,
      createdDate: createdDate ?? this.createdDate,
      friendlyCreatedDate: friendlyCreatedDate ?? this.friendlyCreatedDate,
    );
  }
}

class RelationExpandable {
  final String relationData;
  final String source;
  final String target;

  RelationExpandable(
      {required this.relationData, required this.source, required this.target});

  factory RelationExpandable.fromJson(Map<String, Object?> json) {
    return RelationExpandable(
      relationData: json[r'relationData'] as String? ?? '',
      source: json[r'source'] as String? ?? '',
      target: json[r'target'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var relationData = this.relationData;
    var source = this.source;
    var target = this.target;

    final json = <String, Object?>{};
    json[r'relationData'] = relationData;
    json[r'source'] = source;
    json[r'target'] = target;
    return json;
  }

  RelationExpandable copyWith(
      {String? relationData, String? source, String? target}) {
    return RelationExpandable(
      relationData: relationData ?? this.relationData,
      source: source ?? this.source,
      target: target ?? this.target,
    );
  }
}

class RetentionPeriod {
  /// The number of units for the retention period.
  final int number;

  /// The unit of time that the retention period is measured in.
  final RetentionPeriodUnits units;

  RetentionPeriod({required this.number, required this.units});

  factory RetentionPeriod.fromJson(Map<String, Object?> json) {
    return RetentionPeriod(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      units: RetentionPeriodUnits.fromValue(json[r'units'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var units = this.units;

    final json = <String, Object?>{};
    json[r'number'] = number;
    json[r'units'] = units.value;
    return json;
  }

  RetentionPeriod copyWith({int? number, RetentionPeriodUnits? units}) {
    return RetentionPeriod(
      number: number ?? this.number,
      units: units ?? this.units,
    );
  }
}

class RetentionPeriodUnits {
  static const nanos = RetentionPeriodUnits._('NANOS');
  static const micros = RetentionPeriodUnits._('MICROS');
  static const millis = RetentionPeriodUnits._('MILLIS');
  static const seconds = RetentionPeriodUnits._('SECONDS');
  static const minutes = RetentionPeriodUnits._('MINUTES');
  static const hours = RetentionPeriodUnits._('HOURS');
  static const halfDays = RetentionPeriodUnits._('HALF_DAYS');
  static const days = RetentionPeriodUnits._('DAYS');
  static const weeks = RetentionPeriodUnits._('WEEKS');
  static const months = RetentionPeriodUnits._('MONTHS');
  static const years = RetentionPeriodUnits._('YEARS');
  static const decades = RetentionPeriodUnits._('DECADES');
  static const centuries = RetentionPeriodUnits._('CENTURIES');
  static const millennia = RetentionPeriodUnits._('MILLENNIA');
  static const eras = RetentionPeriodUnits._('ERAS');
  static const forever = RetentionPeriodUnits._('FOREVER');

  static const values = [
    nanos,
    micros,
    millis,
    seconds,
    minutes,
    hours,
    halfDays,
    days,
    weeks,
    months,
    years,
    decades,
    centuries,
    millennia,
    eras,
    forever,
  ];
  final String value;

  const RetentionPeriodUnits._(this.value);

  static RetentionPeriodUnits fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => RetentionPeriodUnits._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ScreenLookAndFeel {
  final String background;
  final String backgroundColor;
  final String backgroundImage;
  final String backgroundSize;
  final String gutterTop;
  final String gutterRight;
  final String gutterBottom;
  final String gutterLeft;

  ScreenLookAndFeel(
      {required this.background,
      required this.backgroundColor,
      required this.backgroundImage,
      required this.backgroundSize,
      required this.gutterTop,
      required this.gutterRight,
      required this.gutterBottom,
      required this.gutterLeft});

  factory ScreenLookAndFeel.fromJson(Map<String, Object?> json) {
    return ScreenLookAndFeel(
      background: json[r'background'] as String? ?? '',
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      backgroundImage: json[r'backgroundImage'] as String? ?? '',
      backgroundSize: json[r'backgroundSize'] as String? ?? '',
      gutterTop: json[r'gutterTop'] as String? ?? '',
      gutterRight: json[r'gutterRight'] as String? ?? '',
      gutterBottom: json[r'gutterBottom'] as String? ?? '',
      gutterLeft: json[r'gutterLeft'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var background = this.background;
    var backgroundColor = this.backgroundColor;
    var backgroundImage = this.backgroundImage;
    var backgroundSize = this.backgroundSize;
    var gutterTop = this.gutterTop;
    var gutterRight = this.gutterRight;
    var gutterBottom = this.gutterBottom;
    var gutterLeft = this.gutterLeft;

    final json = <String, Object?>{};
    json[r'background'] = background;
    json[r'backgroundColor'] = backgroundColor;
    json[r'backgroundImage'] = backgroundImage;
    json[r'backgroundSize'] = backgroundSize;
    json[r'gutterTop'] = gutterTop;
    json[r'gutterRight'] = gutterRight;
    json[r'gutterBottom'] = gutterBottom;
    json[r'gutterLeft'] = gutterLeft;
    return json;
  }

  ScreenLookAndFeel copyWith(
      {String? background,
      String? backgroundColor,
      String? backgroundImage,
      String? backgroundSize,
      String? gutterTop,
      String? gutterRight,
      String? gutterBottom,
      String? gutterLeft}) {
    return ScreenLookAndFeel(
      background: background ?? this.background,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      backgroundImage: backgroundImage ?? this.backgroundImage,
      backgroundSize: backgroundSize ?? this.backgroundSize,
      gutterTop: gutterTop ?? this.gutterTop,
      gutterRight: gutterRight ?? this.gutterRight,
      gutterBottom: gutterBottom ?? this.gutterBottom,
      gutterLeft: gutterLeft ?? this.gutterLeft,
    );
  }
}

class SearchFieldLookAndFeel {
  final String backgroundColor;
  final String color;

  SearchFieldLookAndFeel({required this.backgroundColor, required this.color});

  factory SearchFieldLookAndFeel.fromJson(Map<String, Object?> json) {
    return SearchFieldLookAndFeel(
      backgroundColor: json[r'backgroundColor'] as String? ?? '',
      color: json[r'color'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var backgroundColor = this.backgroundColor;
    var color = this.color;

    final json = <String, Object?>{};
    json[r'backgroundColor'] = backgroundColor;
    json[r'color'] = color;
    return json;
  }

  SearchFieldLookAndFeel copyWith({String? backgroundColor, String? color}) {
    return SearchFieldLookAndFeel(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      color: color ?? this.color,
    );
  }
}

class SearchPageResponseSearchResult {
  final List<SearchResult> results;
  final int start;
  final int limit;
  final int size;
  final int totalSize;
  final String cqlQuery;
  final int searchDuration;
  final GenericLinks links;

  SearchPageResponseSearchResult(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.totalSize,
      required this.cqlQuery,
      required this.searchDuration,
      required this.links});

  factory SearchPageResponseSearchResult.fromJson(Map<String, Object?> json) {
    return SearchPageResponseSearchResult(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  SearchResult.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      totalSize: (json[r'totalSize'] as num?)?.toInt() ?? 0,
      cqlQuery: json[r'cqlQuery'] as String? ?? '',
      searchDuration: (json[r'searchDuration'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var totalSize = this.totalSize;
    var cqlQuery = this.cqlQuery;
    var searchDuration = this.searchDuration;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'totalSize'] = totalSize;
    json[r'cqlQuery'] = cqlQuery;
    json[r'searchDuration'] = searchDuration;
    json[r'_links'] = links.toJson();
    return json;
  }

  SearchPageResponseSearchResult copyWith(
      {List<SearchResult>? results,
      int? start,
      int? limit,
      int? size,
      int? totalSize,
      String? cqlQuery,
      int? searchDuration,
      GenericLinks? links}) {
    return SearchPageResponseSearchResult(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      totalSize: totalSize ?? this.totalSize,
      cqlQuery: cqlQuery ?? this.cqlQuery,
      searchDuration: searchDuration ?? this.searchDuration,
      links: links ?? this.links,
    );
  }
}

class SearchResult {
  final Content content;
  final String title;
  final String excerpt;
  final String url;
  final ContainerSummary resultParentContainer;
  final ContainerSummary resultGlobalContainer;
  final List<Breadcrumb> breadcrumbs;
  final String entityType;
  final String iconCssClass;
  final DateTime lastModified;
  final String friendlyLastModified;

  SearchResult(
      {required this.content,
      required this.title,
      required this.excerpt,
      required this.url,
      required this.resultParentContainer,
      required this.resultGlobalContainer,
      required this.breadcrumbs,
      required this.entityType,
      required this.iconCssClass,
      required this.lastModified,
      required this.friendlyLastModified});

  factory SearchResult.fromJson(Map<String, Object?> json) {
    return SearchResult(
      content: Content.fromJson(
          json[r'content'] as Map<String, Object?>? ?? const {}),
      title: json[r'title'] as String? ?? '',
      excerpt: json[r'excerpt'] as String? ?? '',
      url: json[r'url'] as String? ?? '',
      resultParentContainer: ContainerSummary.fromJson(
          json[r'resultParentContainer'] as Map<String, Object?>? ?? const {}),
      resultGlobalContainer: ContainerSummary.fromJson(
          json[r'resultGlobalContainer'] as Map<String, Object?>? ?? const {}),
      breadcrumbs: (json[r'breadcrumbs'] as List<Object?>?)
              ?.map((i) =>
                  Breadcrumb.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      entityType: json[r'entityType'] as String? ?? '',
      iconCssClass: json[r'iconCssClass'] as String? ?? '',
      lastModified: DateTime.tryParse(json[r'lastModified'] as String? ?? '') ??
          DateTime(0),
      friendlyLastModified: json[r'friendlyLastModified'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var content = this.content;
    var title = this.title;
    var excerpt = this.excerpt;
    var url = this.url;
    var resultParentContainer = this.resultParentContainer;
    var resultGlobalContainer = this.resultGlobalContainer;
    var breadcrumbs = this.breadcrumbs;
    var entityType = this.entityType;
    var iconCssClass = this.iconCssClass;
    var lastModified = this.lastModified;
    var friendlyLastModified = this.friendlyLastModified;

    final json = <String, Object?>{};
    json[r'content'] = content.toJson();
    json[r'title'] = title;
    json[r'excerpt'] = excerpt;
    json[r'url'] = url;
    json[r'resultParentContainer'] = resultParentContainer.toJson();
    json[r'resultGlobalContainer'] = resultGlobalContainer.toJson();
    json[r'breadcrumbs'] = breadcrumbs.map((i) => i.toJson()).toList();
    json[r'entityType'] = entityType;
    json[r'iconCssClass'] = iconCssClass;
    json[r'lastModified'] = lastModified.toIso8601String();
    json[r'friendlyLastModified'] = friendlyLastModified;
    return json;
  }

  SearchResult copyWith(
      {Content? content,
      String? title,
      String? excerpt,
      String? url,
      ContainerSummary? resultParentContainer,
      ContainerSummary? resultGlobalContainer,
      List<Breadcrumb>? breadcrumbs,
      String? entityType,
      String? iconCssClass,
      DateTime? lastModified,
      String? friendlyLastModified}) {
    return SearchResult(
      content: content ?? this.content,
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      url: url ?? this.url,
      resultParentContainer:
          resultParentContainer ?? this.resultParentContainer,
      resultGlobalContainer:
          resultGlobalContainer ?? this.resultGlobalContainer,
      breadcrumbs: breadcrumbs ?? this.breadcrumbs,
      entityType: entityType ?? this.entityType,
      iconCssClass: iconCssClass ?? this.iconCssClass,
      lastModified: lastModified ?? this.lastModified,
      friendlyLastModified: friendlyLastModified ?? this.friendlyLastModified,
    );
  }
}

class Space {
  final int id;
  final String key;
  final String name;
  final Icon? icon;
  final SpaceDescription? description;
  final Content? homepage;
  final String type;
  final SpaceMetadata? metadata;
  final List<OperationCheckResult> operations;
  final List<SpacePermission> permissions;
  final String status;
  final SpaceSettings? settings;
  final Theme? theme;
  final LookAndFeel? lookAndFeel;
  final SpaceHistory? history;
  final SpaceExpandable expandable;
  final GenericLinks links;

  Space(
      {required this.id,
      required this.key,
      required this.name,
      this.icon,
      this.description,
      this.homepage,
      required this.type,
      this.metadata,
      List<OperationCheckResult>? operations,
      List<SpacePermission>? permissions,
      required this.status,
      this.settings,
      this.theme,
      this.lookAndFeel,
      this.history,
      required this.expandable,
      required this.links})
      : operations = operations ?? [],
        permissions = permissions ?? [];

  factory Space.fromJson(Map<String, Object?> json) {
    return Space(
      id: (json[r'id'] as num?)?.toInt() ?? 0,
      key: json[r'key'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      icon: json[r'icon'] != null
          ? Icon.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      homepage: json[r'homepage'] != null
          ? Content.fromJson(json[r'homepage']! as Map<String, Object?>)
          : null,
      type: json[r'type'] as String? ?? '',
      metadata: json[r'metadata'] != null
          ? SpaceMetadata.fromJson(json[r'metadata']! as Map<String, Object?>)
          : null,
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      permissions: (json[r'permissions'] as List<Object?>?)
              ?.map((i) => SpacePermission.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      status: json[r'status'] as String? ?? '',
      settings: json[r'settings'] != null
          ? SpaceSettings.fromJson(json[r'settings']! as Map<String, Object?>)
          : null,
      theme: json[r'theme'] != null
          ? Theme.fromJson(json[r'theme']! as Map<String, Object?>)
          : null,
      lookAndFeel: json[r'lookAndFeel'] != null
          ? LookAndFeel.fromJson(json[r'lookAndFeel']! as Map<String, Object?>)
          : null,
      history: json[r'history'] != null
          ? SpaceHistory.fromJson(json[r'history']! as Map<String, Object?>)
          : null,
      expandable: SpaceExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var icon = this.icon;
    var description = this.description;
    var homepage = this.homepage;
    var type = this.type;
    var metadata = this.metadata;
    var operations = this.operations;
    var permissions = this.permissions;
    var status = this.status;
    var settings = this.settings;
    var theme = this.theme;
    var lookAndFeel = this.lookAndFeel;
    var history = this.history;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'key'] = key;
    json[r'name'] = name;
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    if (homepage != null) {
      json[r'homepage'] = homepage.toJson();
    }
    json[r'type'] = type;
    if (metadata != null) {
      json[r'metadata'] = metadata.toJson();
    }
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    json[r'permissions'] = permissions.map((i) => i.toJson()).toList();
    json[r'status'] = status;
    if (settings != null) {
      json[r'settings'] = settings.toJson();
    }
    if (theme != null) {
      json[r'theme'] = theme.toJson();
    }
    if (lookAndFeel != null) {
      json[r'lookAndFeel'] = lookAndFeel.toJson();
    }
    if (history != null) {
      json[r'history'] = history.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  Space copyWith(
      {int? id,
      String? key,
      String? name,
      Icon? icon,
      SpaceDescription? description,
      Content? homepage,
      String? type,
      SpaceMetadata? metadata,
      List<OperationCheckResult>? operations,
      List<SpacePermission>? permissions,
      String? status,
      SpaceSettings? settings,
      Theme? theme,
      LookAndFeel? lookAndFeel,
      SpaceHistory? history,
      SpaceExpandable? expandable,
      GenericLinks? links}) {
    return Space(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      description: description ?? this.description,
      homepage: homepage ?? this.homepage,
      type: type ?? this.type,
      metadata: metadata ?? this.metadata,
      operations: operations ?? this.operations,
      permissions: permissions ?? this.permissions,
      status: status ?? this.status,
      settings: settings ?? this.settings,
      theme: theme ?? this.theme,
      lookAndFeel: lookAndFeel ?? this.lookAndFeel,
      history: history ?? this.history,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class SpaceArray {
  final List<Space> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  SpaceArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory SpaceArray.fromJson(Map<String, Object?> json) {
    return SpaceArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Space.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  SpaceArray copyWith(
      {List<Space>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return SpaceArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// This is the request object used when creating a new space.
class SpaceCreate {
  /// The key for the new space. Format: See [Space
  /// keys](https://confluence.atlassian.com/x/lqNMMQ).
  final String key;

  /// The name of the new space.
  final String name;
  final SpaceDescriptionCreate? description;

  /// The permissions for the new space. If no permissions are provided, the
  /// [Confluence default space permissions](https://confluence.atlassian.com/x/UAgzKw#CreateaSpace-Spacepermissions)
  /// are applied. Note that if permissions are provided, the space is
  /// created with only the provided set of permissions, not
  /// including the default space permissions. Space permissions
  /// can be modified after creation using the space permissions
  /// endpoints, and a private space can be created using the
  /// create private space endpoint.
  final List<SpacePermission> permissions;

  SpaceCreate(
      {required this.key,
      required this.name,
      this.description,
      List<SpacePermission>? permissions})
      : permissions = permissions ?? [];

  factory SpaceCreate.fromJson(Map<String, Object?> json) {
    return SpaceCreate(
      key: json[r'key'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      description: json[r'description'] != null
          ? SpaceDescriptionCreate.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      permissions: (json[r'permissions'] as List<Object?>?)
              ?.map((i) => SpacePermission.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var name = this.name;
    var description = this.description;
    var permissions = this.permissions;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    json[r'permissions'] = permissions.map((i) => i.toJson()).toList();
    return json;
  }

  SpaceCreate copyWith(
      {String? key,
      String? name,
      SpaceDescriptionCreate? description,
      List<SpacePermission>? permissions}) {
    return SpaceCreate(
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
      permissions: permissions ?? this.permissions,
    );
  }
}

class SpaceDescription {
  final String value;
  final SpaceDescriptionRepresentation representation;
  final List<Map<String, dynamic>> embeddedContent;

  SpaceDescription(
      {required this.value,
      required this.representation,
      required this.embeddedContent});

  factory SpaceDescription.fromJson(Map<String, Object?> json) {
    return SpaceDescription(
      value: json[r'value'] as String? ?? '',
      representation: SpaceDescriptionRepresentation.fromValue(
          json[r'representation'] as String? ?? ''),
      embeddedContent: (json[r'embeddedContent'] as List<Object?>?)
              ?.map((i) => i as Map<String, Object?>? ?? {})
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var representation = this.representation;
    var embeddedContent = this.embeddedContent;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'representation'] = representation.value;
    json[r'embeddedContent'] = embeddedContent;
    return json;
  }

  SpaceDescription copyWith(
      {String? value,
      SpaceDescriptionRepresentation? representation,
      List<Map<String, dynamic>>? embeddedContent}) {
    return SpaceDescription(
      value: value ?? this.value,
      representation: representation ?? this.representation,
      embeddedContent: embeddedContent ?? this.embeddedContent,
    );
  }
}

class SpaceDescriptionRepresentation {
  static const plain = SpaceDescriptionRepresentation._('plain');
  static const view = SpaceDescriptionRepresentation._('view');

  static const values = [
    plain,
    view,
  ];
  final String value;

  const SpaceDescriptionRepresentation._(this.value);

  static SpaceDescriptionRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpaceDescriptionRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The description of the new/updated space. Note, only the 'plain'
/// representation
/// can be used for the description when creating or updating a space.
class SpaceDescriptionCreate {
  final SpaceDescriptionCreatePlain plain;

  SpaceDescriptionCreate({required this.plain});

  factory SpaceDescriptionCreate.fromJson(Map<String, Object?> json) {
    return SpaceDescriptionCreate(
      plain: SpaceDescriptionCreatePlain.fromJson(
          json[r'plain'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var plain = this.plain;

    final json = <String, Object?>{};
    json[r'plain'] = plain.toJson();
    return json;
  }

  SpaceDescriptionCreate copyWith({SpaceDescriptionCreatePlain? plain}) {
    return SpaceDescriptionCreate(
      plain: plain ?? this.plain,
    );
  }
}

class SpaceDescriptionCreatePlain {
  /// The space description.
  final String? value;

  /// Set to 'plain'.
  final String? representation;

  SpaceDescriptionCreatePlain({this.value, this.representation});

  factory SpaceDescriptionCreatePlain.fromJson(Map<String, Object?> json) {
    return SpaceDescriptionCreatePlain(
      value: json[r'value'] as String?,
      representation: json[r'representation'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var representation = this.representation;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (representation != null) {
      json[r'representation'] = representation;
    }
    return json;
  }

  SpaceDescriptionCreatePlain copyWith(
      {String? value, String? representation}) {
    return SpaceDescriptionCreatePlain(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class SpaceExpandable {
  final String? settings;
  final String? metadata;
  final String? operations;
  final String? lookAndFeel;
  final String? permissions;
  final String? icon;
  final String? description;
  final String? theme;
  final String? history;
  final String? homepage;

  SpaceExpandable(
      {this.settings,
      this.metadata,
      this.operations,
      this.lookAndFeel,
      this.permissions,
      this.icon,
      this.description,
      this.theme,
      this.history,
      this.homepage});

  factory SpaceExpandable.fromJson(Map<String, Object?> json) {
    return SpaceExpandable(
      settings: json[r'settings'] as String?,
      metadata: json[r'metadata'] as String?,
      operations: json[r'operations'] as String?,
      lookAndFeel: json[r'lookAndFeel'] as String?,
      permissions: json[r'permissions'] as String?,
      icon: json[r'icon'] as String?,
      description: json[r'description'] as String?,
      theme: json[r'theme'] as String?,
      history: json[r'history'] as String?,
      homepage: json[r'homepage'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var settings = this.settings;
    var metadata = this.metadata;
    var operations = this.operations;
    var lookAndFeel = this.lookAndFeel;
    var permissions = this.permissions;
    var icon = this.icon;
    var description = this.description;
    var theme = this.theme;
    var history = this.history;
    var homepage = this.homepage;

    final json = <String, Object?>{};
    if (settings != null) {
      json[r'settings'] = settings;
    }
    if (metadata != null) {
      json[r'metadata'] = metadata;
    }
    if (operations != null) {
      json[r'operations'] = operations;
    }
    if (lookAndFeel != null) {
      json[r'lookAndFeel'] = lookAndFeel;
    }
    if (permissions != null) {
      json[r'permissions'] = permissions;
    }
    if (icon != null) {
      json[r'icon'] = icon;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (theme != null) {
      json[r'theme'] = theme;
    }
    if (history != null) {
      json[r'history'] = history;
    }
    if (homepage != null) {
      json[r'homepage'] = homepage;
    }
    return json;
  }

  SpaceExpandable copyWith(
      {String? settings,
      String? metadata,
      String? operations,
      String? lookAndFeel,
      String? permissions,
      String? icon,
      String? description,
      String? theme,
      String? history,
      String? homepage}) {
    return SpaceExpandable(
      settings: settings ?? this.settings,
      metadata: metadata ?? this.metadata,
      operations: operations ?? this.operations,
      lookAndFeel: lookAndFeel ?? this.lookAndFeel,
      permissions: permissions ?? this.permissions,
      icon: icon ?? this.icon,
      description: description ?? this.description,
      theme: theme ?? this.theme,
      history: history ?? this.history,
      homepage: homepage ?? this.homepage,
    );
  }
}

class SpaceHistory {
  final DateTime createdDate;

  SpaceHistory({required this.createdDate});

  factory SpaceHistory.fromJson(Map<String, Object?> json) {
    return SpaceHistory(
      createdDate: DateTime.tryParse(json[r'createdDate'] as String? ?? '') ??
          DateTime(0),
    );
  }

  Map<String, Object?> toJson() {
    var createdDate = this.createdDate;

    final json = <String, Object?>{};
    json[r'createdDate'] = createdDate.toIso8601String();
    return json;
  }

  SpaceHistory copyWith({DateTime? createdDate}) {
    return SpaceHistory(
      createdDate: createdDate ?? this.createdDate,
    );
  }
}

class SpaceMetadata {
  final LabelArray labels;

  SpaceMetadata({required this.labels});

  factory SpaceMetadata.fromJson(Map<String, Object?> json) {
    return SpaceMetadata(
      labels: LabelArray.fromJson(
          json[r'labels'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var labels = this.labels;

    final json = <String, Object?>{};
    json[r'labels'] = labels.toJson();
    return json;
  }

  SpaceMetadata copyWith({LabelArray? labels}) {
    return SpaceMetadata(
      labels: labels ?? this.labels,
    );
  }
}

/// This object represents a permission for given space. Permissions consist of
/// at least one operation object with an accompanying subjects object.
///
/// The following combinations of `operation` and `targetType` values are
/// valid for the `operation` object:
///
///   - 'create': 'page', 'blogpost', 'comment', 'attachment'
///   - 'read': 'space'
///   - 'delete': 'page', 'blogpost', 'comment', 'attachment'
///   - 'export': 'space'
///   - 'administer': 'space'
class SpacePermission {
  /// The users and/or groups that the permission applies to.
  final SpacePermissionSubjects subjects;
  final OperationCheckResult operation;

  /// Grant anonymous users permission to use the operation.
  final bool anonymousAccess;

  /// Grants access to unlicensed users from JIRA Service Desk when used
  /// with the 'read space' operation.
  final bool unlicensedAccess;

  SpacePermission(
      {required this.subjects,
      required this.operation,
      required this.anonymousAccess,
      required this.unlicensedAccess});

  factory SpacePermission.fromJson(Map<String, Object?> json) {
    return SpacePermission(
      subjects: SpacePermissionSubjects.fromJson(
          json[r'subjects'] as Map<String, Object?>? ?? const {}),
      operation: OperationCheckResult.fromJson(
          json[r'operation'] as Map<String, Object?>? ?? const {}),
      anonymousAccess: json[r'anonymousAccess'] as bool? ?? false,
      unlicensedAccess: json[r'unlicensedAccess'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var subjects = this.subjects;
    var operation = this.operation;
    var anonymousAccess = this.anonymousAccess;
    var unlicensedAccess = this.unlicensedAccess;

    final json = <String, Object?>{};
    json[r'subjects'] = subjects.toJson();
    json[r'operation'] = operation.toJson();
    json[r'anonymousAccess'] = anonymousAccess;
    json[r'unlicensedAccess'] = unlicensedAccess;
    return json;
  }

  SpacePermission copyWith(
      {SpacePermissionSubjects? subjects,
      OperationCheckResult? operation,
      bool? anonymousAccess,
      bool? unlicensedAccess}) {
    return SpacePermission(
      subjects: subjects ?? this.subjects,
      operation: operation ?? this.operation,
      anonymousAccess: anonymousAccess ?? this.anonymousAccess,
      unlicensedAccess: unlicensedAccess ?? this.unlicensedAccess,
    );
  }
}

/// The users and/or groups that the permission applies to.
class SpacePermissionSubjects {
  final SpacePermissionSubjectsUser? user;
  final SpacePermissionSubjectsGroup? group;
  final SpacePermissionSubjectsExpandable expandable;

  SpacePermissionSubjects({this.user, this.group, required this.expandable});

  factory SpacePermissionSubjects.fromJson(Map<String, Object?> json) {
    return SpacePermissionSubjects(
      user: json[r'user'] != null
          ? SpacePermissionSubjectsUser.fromJson(
              json[r'user']! as Map<String, Object?>)
          : null,
      group: json[r'group'] != null
          ? SpacePermissionSubjectsGroup.fromJson(
              json[r'group']! as Map<String, Object?>)
          : null,
      expandable: SpacePermissionSubjectsExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;
    var expandable = this.expandable;

    final json = <String, Object?>{};
    if (user != null) {
      json[r'user'] = user.toJson();
    }
    if (group != null) {
      json[r'group'] = group.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    return json;
  }

  SpacePermissionSubjects copyWith(
      {SpacePermissionSubjectsUser? user,
      SpacePermissionSubjectsGroup? group,
      SpacePermissionSubjectsExpandable? expandable}) {
    return SpacePermissionSubjects(
      user: user ?? this.user,
      group: group ?? this.group,
      expandable: expandable ?? this.expandable,
    );
  }
}

class SpacePermissionSubjectsExpandable {
  final String? user;
  final String? group;

  SpacePermissionSubjectsExpandable({this.user, this.group});

  factory SpacePermissionSubjectsExpandable.fromJson(
      Map<String, Object?> json) {
    return SpacePermissionSubjectsExpandable(
      user: json[r'user'] as String?,
      group: json[r'group'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var user = this.user;
    var group = this.group;

    final json = <String, Object?>{};
    if (user != null) {
      json[r'user'] = user;
    }
    if (group != null) {
      json[r'group'] = group;
    }
    return json;
  }

  SpacePermissionSubjectsExpandable copyWith({String? user, String? group}) {
    return SpacePermissionSubjectsExpandable(
      user: user ?? this.user,
      group: group ?? this.group,
    );
  }
}

class SpacePermissionSubjectsGroup {
  final List<Group> results;
  final int size;

  SpacePermissionSubjectsGroup({required this.results, required this.size});

  factory SpacePermissionSubjectsGroup.fromJson(Map<String, Object?> json) {
    return SpacePermissionSubjectsGroup(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Group.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'size'] = size;
    return json;
  }

  SpacePermissionSubjectsGroup copyWith({List<Group>? results, int? size}) {
    return SpacePermissionSubjectsGroup(
      results: results ?? this.results,
      size: size ?? this.size,
    );
  }
}

class SpacePermissionSubjectsUser {
  final List<User> results;
  final int size;

  SpacePermissionSubjectsUser({required this.results, required this.size});

  factory SpacePermissionSubjectsUser.fromJson(Map<String, Object?> json) {
    return SpacePermissionSubjectsUser(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => User.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'size'] = size;
    return json;
  }

  SpacePermissionSubjectsUser copyWith({List<User>? results, int? size}) {
    return SpacePermissionSubjectsUser(
      results: results ?? this.results,
      size: size ?? this.size,
    );
  }
}

/// This object represents a single space permission. Permissions consist of
/// at least one operation object with an accompanying subjects object.
///
/// The following combinations of `operation.key` and `operation.target` values
/// are
/// valid for the `operation` object:
/// ``` bash
/// 'create': 'page', 'blogpost', 'comment', 'attachment'
/// 'read': 'space'
/// 'delete': 'page', 'blogpost', 'comment', 'attachment'
/// 'export': 'space'
/// 'administer': 'space'
/// ```
class SpacePermissionV2 {
  final int? id;
  final PermissionSubject subject;
  final SpacePermissionV2Operation operation;
  final GenericLinks? links;

  SpacePermissionV2(
      {this.id, required this.subject, required this.operation, this.links});

  factory SpacePermissionV2.fromJson(Map<String, Object?> json) {
    return SpacePermissionV2(
      id: (json[r'id'] as num?)?.toInt(),
      subject: PermissionSubject.fromJson(
          json[r'subject'] as Map<String, Object?>? ?? const {}),
      operation: SpacePermissionV2Operation.fromJson(
          json[r'operation'] as Map<String, Object?>? ?? const {}),
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var subject = this.subject;
    var operation = this.operation;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'subject'] = subject.toJson();
    json[r'operation'] = operation.toJson();
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpacePermissionV2 copyWith(
      {int? id,
      PermissionSubject? subject,
      SpacePermissionV2Operation? operation,
      GenericLinks? links}) {
    return SpacePermissionV2(
      id: id ?? this.id,
      subject: subject ?? this.subject,
      operation: operation ?? this.operation,
      links: links ?? this.links,
    );
  }
}

class SpacePermissionV2Operation {
  final SpacePermissionV2OperationKey key;

  /// The space or content type that the operation applies to.
  final SpacePermissionV2OperationTarget target;

  SpacePermissionV2Operation({required this.key, required this.target});

  factory SpacePermissionV2Operation.fromJson(Map<String, Object?> json) {
    return SpacePermissionV2Operation(
      key: SpacePermissionV2OperationKey.fromValue(
          json[r'key'] as String? ?? ''),
      target: SpacePermissionV2OperationTarget.fromValue(
          json[r'target'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var target = this.target;

    final json = <String, Object?>{};
    json[r'key'] = key.value;
    json[r'target'] = target.value;
    return json;
  }

  SpacePermissionV2Operation copyWith(
      {SpacePermissionV2OperationKey? key,
      SpacePermissionV2OperationTarget? target}) {
    return SpacePermissionV2Operation(
      key: key ?? this.key,
      target: target ?? this.target,
    );
  }
}

class SpacePermissionV2OperationKey {
  static const administer = SpacePermissionV2OperationKey._('administer');
  static const copy = SpacePermissionV2OperationKey._('copy');
  static const create = SpacePermissionV2OperationKey._('create');
  static const delete = SpacePermissionV2OperationKey._('delete');
  static const export$ = SpacePermissionV2OperationKey._('export');
  static const move = SpacePermissionV2OperationKey._('move');
  static const purge = SpacePermissionV2OperationKey._('purge');
  static const purgeVersion = SpacePermissionV2OperationKey._('purge_version');
  static const read = SpacePermissionV2OperationKey._('read');
  static const restore = SpacePermissionV2OperationKey._('restore');
  static const update = SpacePermissionV2OperationKey._('update');
  static const use = SpacePermissionV2OperationKey._('use');

  static const values = [
    administer,
    copy,
    create,
    delete,
    export$,
    move,
    purge,
    purgeVersion,
    read,
    restore,
    update,
    use,
  ];
  final String value;

  const SpacePermissionV2OperationKey._(this.value);

  static SpacePermissionV2OperationKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpacePermissionV2OperationKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpacePermissionV2OperationTarget {
  static const page = SpacePermissionV2OperationTarget._('page');
  static const blogpost = SpacePermissionV2OperationTarget._('blogpost');
  static const comment = SpacePermissionV2OperationTarget._('comment');
  static const attachment = SpacePermissionV2OperationTarget._('attachment');
  static const space = SpacePermissionV2OperationTarget._('space');

  static const values = [
    page,
    blogpost,
    comment,
    attachment,
    space,
  ];
  final String value;

  const SpacePermissionV2OperationTarget._(this.value);

  static SpacePermissionV2OperationTarget fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpacePermissionV2OperationTarget._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// This is the request object used when creating a new private space.
class SpacePrivateCreate {
  /// The key for the new space. Format: See [Space
  /// keys](https://confluence.atlassian.com/x/lqNMMQ).
  final String key;

  /// The name of the new space.
  final String name;
  final SpaceDescriptionCreate? description;

  SpacePrivateCreate({required this.key, required this.name, this.description});

  factory SpacePrivateCreate.fromJson(Map<String, Object?> json) {
    return SpacePrivateCreate(
      key: json[r'key'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      description: json[r'description'] != null
          ? SpaceDescriptionCreate.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var name = this.name;
    var description = this.description;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'name'] = name;
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    return json;
  }

  SpacePrivateCreate copyWith(
      {String? key, String? name, SpaceDescriptionCreate? description}) {
    return SpacePrivateCreate(
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}

class SpaceProperty {
  final int id;
  final String key;
  final Map<String, dynamic> value;
  final SpacePropertyVersion? version;
  final Space? space;
  final SpacePropertyExpandable expandable;

  SpaceProperty(
      {required this.id,
      required this.key,
      required this.value,
      this.version,
      this.space,
      required this.expandable});

  factory SpaceProperty.fromJson(Map<String, Object?> json) {
    return SpaceProperty(
      id: (json[r'id'] as num?)?.toInt() ?? 0,
      key: json[r'key'] as String? ?? '',
      value: json[r'value'] as Map<String, Object?>? ?? {},
      version: json[r'version'] != null
          ? SpacePropertyVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
      space: json[r'space'] != null
          ? Space.fromJson(json[r'space']! as Map<String, Object?>)
          : null,
      expandable: SpacePropertyExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var value = this.value;
    var version = this.version;
    var space = this.space;
    var expandable = this.expandable;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'key'] = key;
    json[r'value'] = value;
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (space != null) {
      json[r'space'] = space.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    return json;
  }

  SpaceProperty copyWith(
      {int? id,
      String? key,
      Map<String, dynamic>? value,
      SpacePropertyVersion? version,
      Space? space,
      SpacePropertyExpandable? expandable}) {
    return SpaceProperty(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
      space: space ?? this.space,
      expandable: expandable ?? this.expandable,
    );
  }
}

class SpacePropertyArray {
  final List<SpaceProperty> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  SpacePropertyArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory SpacePropertyArray.fromJson(Map<String, Object?> json) {
    return SpacePropertyArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => SpaceProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  SpacePropertyArray copyWith(
      {List<SpaceProperty>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return SpacePropertyArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class SpacePropertyCreate {
  /// The key of the new property.
  final String key;
  final PropertyValue value;

  SpacePropertyCreate({required this.key, required this.value});

  factory SpacePropertyCreate.fromJson(Map<String, Object?> json) {
    return SpacePropertyCreate(
      key: json[r'key'] as String? ?? '',
      value: PropertyValue.fromJson(
          json[r'value'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;

    final json = <String, Object?>{};
    json[r'key'] = key;
    json[r'value'] = value.toJson();
    return json;
  }

  SpacePropertyCreate copyWith({String? key, PropertyValue? value}) {
    return SpacePropertyCreate(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class SpacePropertyCreateNoKey {
  final PropertyValue value;

  SpacePropertyCreateNoKey({required this.value});

  factory SpacePropertyCreateNoKey.fromJson(Map<String, Object?> json) {
    return SpacePropertyCreateNoKey(
      value: PropertyValue.fromJson(
          json[r'value'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    json[r'value'] = value.toJson();
    return json;
  }

  SpacePropertyCreateNoKey copyWith({PropertyValue? value}) {
    return SpacePropertyCreateNoKey(
      value: value ?? this.value,
    );
  }
}

class SpacePropertyExpandable {
  final String? version;
  final String? space;

  SpacePropertyExpandable({this.version, this.space});

  factory SpacePropertyExpandable.fromJson(Map<String, Object?> json) {
    return SpacePropertyExpandable(
      version: json[r'version'] as String?,
      space: json[r'space'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var space = this.space;

    final json = <String, Object?>{};
    if (version != null) {
      json[r'version'] = version;
    }
    if (space != null) {
      json[r'space'] = space;
    }
    return json;
  }

  SpacePropertyExpandable copyWith({String? version, String? space}) {
    return SpacePropertyExpandable(
      version: version ?? this.version,
      space: space ?? this.space,
    );
  }
}

class SpacePropertyUpdate {
  /// The value of the property.
  final Map<String, dynamic> value;

  /// The version number of the property.
  final SpacePropertyUpdateVersion version;

  SpacePropertyUpdate({required this.value, required this.version});

  factory SpacePropertyUpdate.fromJson(Map<String, Object?> json) {
    return SpacePropertyUpdate(
      value: json[r'value'] as Map<String, Object?>? ?? {},
      version: SpacePropertyUpdateVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var version = this.version;

    final json = <String, Object?>{};
    json[r'value'] = value;
    json[r'version'] = version.toJson();
    return json;
  }

  SpacePropertyUpdate copyWith(
      {Map<String, dynamic>? value, SpacePropertyUpdateVersion? version}) {
    return SpacePropertyUpdate(
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

/// The version number of the property.
class SpacePropertyUpdateVersion {
  /// The new version for the updated space property. Set this to the
  /// current version number incremented by one. To get the current
  /// version number, use 'Get space property' and retrieve
  /// `version.number`.
  final int number;

  /// If `minorEdit` is set to 'true', no notification email or activity
  /// stream will be generated for the change.
  final bool minorEdit;

  SpacePropertyUpdateVersion({required this.number, bool? minorEdit})
      : minorEdit = minorEdit ?? false;

  factory SpacePropertyUpdateVersion.fromJson(Map<String, Object?> json) {
    return SpacePropertyUpdateVersion(
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      minorEdit: json[r'minorEdit'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var minorEdit = this.minorEdit;

    final json = <String, Object?>{};
    json[r'number'] = number;
    json[r'minorEdit'] = minorEdit;
    return json;
  }

  SpacePropertyUpdateVersion copyWith({int? number, bool? minorEdit}) {
    return SpacePropertyUpdateVersion(
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
    );
  }
}

class SpacePropertyVersion {
  final DateTime when;
  final String message;
  final int number;
  final bool minorEdit;

  SpacePropertyVersion(
      {required this.when,
      required this.message,
      required this.number,
      required this.minorEdit});

  factory SpacePropertyVersion.fromJson(Map<String, Object?> json) {
    return SpacePropertyVersion(
      when: DateTime.tryParse(json[r'when'] as String? ?? '') ?? DateTime(0),
      message: json[r'message'] as String? ?? '',
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      minorEdit: json[r'minorEdit'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var when = this.when;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;

    final json = <String, Object?>{};
    json[r'when'] = when.toIso8601String();
    json[r'message'] = message;
    json[r'number'] = number;
    json[r'minorEdit'] = minorEdit;
    return json;
  }

  SpacePropertyVersion copyWith(
      {DateTime? when, String? message, int? number, bool? minorEdit}) {
    return SpacePropertyVersion(
      when: when ?? this.when,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
    );
  }
}

class SpaceSettings {
  /// Defines whether an override for the space home should be used. This is
  /// used in conjunction with a space theme provided by an app. For
  /// example, if this property is set to true, a theme can display a page
  /// other than the space homepage when users visit the root URL for a
  /// space. This property allows apps to provide content-only theming
  /// without overriding the space home.
  final bool routeOverrideEnabled;
  final GenericLinks links;

  SpaceSettings({required this.routeOverrideEnabled, required this.links});

  factory SpaceSettings.fromJson(Map<String, Object?> json) {
    return SpaceSettings(
      routeOverrideEnabled: json[r'routeOverrideEnabled'] as bool? ?? false,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var routeOverrideEnabled = this.routeOverrideEnabled;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'routeOverrideEnabled'] = routeOverrideEnabled;
    json[r'_links'] = links.toJson();
    return json;
  }

  SpaceSettings copyWith({bool? routeOverrideEnabled, GenericLinks? links}) {
    return SpaceSettings(
      routeOverrideEnabled: routeOverrideEnabled ?? this.routeOverrideEnabled,
      links: links ?? this.links,
    );
  }
}

class SpaceSettingsUpdate {
  /// Defines whether an override for the space home should be used. This is
  /// used in conjunction with a space theme provided by an app. For
  /// example, if this property is set to true, a theme can display a page
  /// other than the space homepage when users visit the root URL for a
  /// space. This property allows apps to provide content-only theming
  /// without overriding the space home.
  final bool routeOverrideEnabled;

  SpaceSettingsUpdate({bool? routeOverrideEnabled})
      : routeOverrideEnabled = routeOverrideEnabled ?? false;

  factory SpaceSettingsUpdate.fromJson(Map<String, Object?> json) {
    return SpaceSettingsUpdate(
      routeOverrideEnabled: json[r'routeOverrideEnabled'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var routeOverrideEnabled = this.routeOverrideEnabled;

    final json = <String, Object?>{};
    json[r'routeOverrideEnabled'] = routeOverrideEnabled;
    return json;
  }

  SpaceSettingsUpdate copyWith({bool? routeOverrideEnabled}) {
    return SpaceSettingsUpdate(
      routeOverrideEnabled: routeOverrideEnabled ?? this.routeOverrideEnabled,
    );
  }
}

class SpaceUpdate {
  /// The name of the space.
  final String? name;
  final SpaceDescriptionCreate? description;

  /// The page to set as the homepage of the space.
  final SpaceUpdateHomepage? homepage;

  SpaceUpdate({this.name, this.description, this.homepage});

  factory SpaceUpdate.fromJson(Map<String, Object?> json) {
    return SpaceUpdate(
      name: json[r'name'] as String?,
      description: json[r'description'] != null
          ? SpaceDescriptionCreate.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      homepage: json[r'homepage'] != null
          ? SpaceUpdateHomepage.fromJson(
              json[r'homepage']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var description = this.description;
    var homepage = this.homepage;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    if (homepage != null) {
      json[r'homepage'] = homepage.toJson();
    }
    return json;
  }

  SpaceUpdate copyWith(
      {String? name,
      SpaceDescriptionCreate? description,
      SpaceUpdateHomepage? homepage}) {
    return SpaceUpdate(
      name: name ?? this.name,
      description: description ?? this.description,
      homepage: homepage ?? this.homepage,
    );
  }
}

/// The page to set as the homepage of the space.
class SpaceUpdateHomepage {
  /// The ID of the page.
  final String id;

  SpaceUpdateHomepage({required this.id});

  factory SpaceUpdateHomepage.fromJson(Map<String, Object?> json) {
    return SpaceUpdateHomepage(
      id: json[r'id'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;

    final json = <String, Object?>{};
    json[r'id'] = id;
    return json;
  }

  SpaceUpdateHomepage copyWith({String? id}) {
    return SpaceUpdateHomepage(
      id: id ?? this.id,
    );
  }
}

class SpaceWatch {
  final String type;
  final SpaceWatchUser watcher;
  final String? contentId;
  final String spaceKey;

  SpaceWatch(
      {required this.type,
      required this.watcher,
      this.contentId,
      required this.spaceKey});

  factory SpaceWatch.fromJson(Map<String, Object?> json) {
    return SpaceWatch(
      type: json[r'type'] as String? ?? '',
      watcher: SpaceWatchUser.fromJson(
          json[r'watcher'] as Map<String, Object?>? ?? const {}),
      contentId: json[r'contentId'] as String?,
      spaceKey: json[r'spaceKey'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var watcher = this.watcher;
    var contentId = this.contentId;
    var spaceKey = this.spaceKey;

    final json = <String, Object?>{};
    json[r'type'] = type;
    json[r'watcher'] = watcher.toJson();
    if (contentId != null) {
      json[r'contentId'] = contentId;
    }
    json[r'spaceKey'] = spaceKey;
    return json;
  }

  SpaceWatch copyWith(
      {String? type,
      SpaceWatchUser? watcher,
      String? contentId,
      String? spaceKey}) {
    return SpaceWatch(
      type: type ?? this.type,
      watcher: watcher ?? this.watcher,
      contentId: contentId ?? this.contentId,
      spaceKey: spaceKey ?? this.spaceKey,
    );
  }
}

class SpaceWatchArray {
  final List<SpaceWatch> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks? links;

  SpaceWatchArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      this.links});

  factory SpaceWatchArray.fromJson(Map<String, Object?> json) {
    return SpaceWatchArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  SpaceWatch.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceWatchArray copyWith(
      {List<SpaceWatch>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return SpaceWatchArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// This essentially the same as the `User` object, but no `_links` property and
/// no `_expandable` property (therefore, different required fields).
class SpaceWatchUser {
  final String type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;
  final Icon profilePicture;
  final String displayName;
  final List<OperationCheckResult> operations;
  final UserDetails? details;
  final String accountType;
  final String email;
  final String publicName;

  SpaceWatchUser(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId,
      required this.profilePicture,
      required this.displayName,
      List<OperationCheckResult>? operations,
      this.details,
      required this.accountType,
      required this.email,
      required this.publicName})
      : operations = operations ?? [];

  factory SpaceWatchUser.fromJson(Map<String, Object?> json) {
    return SpaceWatchUser(
      type: json[r'type'] as String? ?? '',
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
      profilePicture: Icon.fromJson(
          json[r'profilePicture'] as Map<String, Object?>? ?? const {}),
      displayName: json[r'displayName'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      details: json[r'details'] != null
          ? UserDetails.fromJson(json[r'details']! as Map<String, Object?>)
          : null,
      accountType: json[r'accountType'] as String? ?? '',
      email: json[r'email'] as String? ?? '',
      publicName: json[r'publicName'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;
    var profilePicture = this.profilePicture;
    var displayName = this.displayName;
    var operations = this.operations;
    var details = this.details;
    var accountType = this.accountType;
    var email = this.email;
    var publicName = this.publicName;

    final json = <String, Object?>{};
    json[r'type'] = type;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    json[r'profilePicture'] = profilePicture.toJson();
    json[r'displayName'] = displayName;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    if (details != null) {
      json[r'details'] = details.toJson();
    }
    json[r'accountType'] = accountType;
    json[r'email'] = email;
    json[r'publicName'] = publicName;
    return json;
  }

  SpaceWatchUser copyWith(
      {String? type,
      String? username,
      String? userKey,
      String? accountId,
      Icon? profilePicture,
      String? displayName,
      List<OperationCheckResult>? operations,
      UserDetails? details,
      String? accountType,
      String? email,
      String? publicName}) {
    return SpaceWatchUser(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
      profilePicture: profilePicture ?? this.profilePicture,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      details: details ?? this.details,
      accountType: accountType ?? this.accountType,
      email: email ?? this.email,
      publicName: publicName ?? this.publicName,
    );
  }
}

class SuperBatchWebResources {
  final SuperBatchWebResourcesUris? uris;
  final SuperBatchWebResourcesTags? tags;
  final String? metatags;

  SuperBatchWebResources({this.uris, this.tags, this.metatags});

  factory SuperBatchWebResources.fromJson(Map<String, Object?> json) {
    return SuperBatchWebResources(
      uris: json[r'uris'] != null
          ? SuperBatchWebResourcesUris.fromJson(
              json[r'uris']! as Map<String, Object?>)
          : null,
      tags: json[r'tags'] != null
          ? SuperBatchWebResourcesTags.fromJson(
              json[r'tags']! as Map<String, Object?>)
          : null,
      metatags: json[r'metatags'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var uris = this.uris;
    var tags = this.tags;
    var metatags = this.metatags;

    final json = <String, Object?>{};
    if (uris != null) {
      json[r'uris'] = uris.toJson();
    }
    if (tags != null) {
      json[r'tags'] = tags.toJson();
    }
    if (metatags != null) {
      json[r'metatags'] = metatags;
    }
    return json;
  }

  SuperBatchWebResources copyWith(
      {SuperBatchWebResourcesUris? uris,
      SuperBatchWebResourcesTags? tags,
      String? metatags}) {
    return SuperBatchWebResources(
      uris: uris ?? this.uris,
      tags: tags ?? this.tags,
      metatags: metatags ?? this.metatags,
    );
  }
}

class SuperBatchWebResourcesTags {
  final String? all;
  final String? css;
  final String? data;
  final String? js;

  SuperBatchWebResourcesTags({this.all, this.css, this.data, this.js});

  factory SuperBatchWebResourcesTags.fromJson(Map<String, Object?> json) {
    return SuperBatchWebResourcesTags(
      all: json[r'all'] as String?,
      css: json[r'css'] as String?,
      data: json[r'data'] as String?,
      js: json[r'js'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var all = this.all;
    var css = this.css;
    var data = this.data;
    var js = this.js;

    final json = <String, Object?>{};
    if (all != null) {
      json[r'all'] = all;
    }
    if (css != null) {
      json[r'css'] = css;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    if (js != null) {
      json[r'js'] = js;
    }
    return json;
  }

  SuperBatchWebResourcesTags copyWith(
      {String? all, String? css, String? data, String? js}) {
    return SuperBatchWebResourcesTags(
      all: all ?? this.all,
      css: css ?? this.css,
      data: data ?? this.data,
      js: js ?? this.js,
    );
  }
}

class SuperBatchWebResourcesUris {
  final String? all;
  final String? css;
  final String? js;

  SuperBatchWebResourcesUris({this.all, this.css, this.js});

  factory SuperBatchWebResourcesUris.fromJson(Map<String, Object?> json) {
    return SuperBatchWebResourcesUris(
      all: json[r'all'] as String?,
      css: json[r'css'] as String?,
      js: json[r'js'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var all = this.all;
    var css = this.css;
    var js = this.js;

    final json = <String, Object?>{};
    if (all != null) {
      json[r'all'] = all;
    }
    if (css != null) {
      json[r'css'] = css;
    }
    if (js != null) {
      json[r'js'] = js;
    }
    return json;
  }

  SuperBatchWebResourcesUris copyWith({String? all, String? css, String? js}) {
    return SuperBatchWebResourcesUris(
      all: all ?? this.all,
      css: css ?? this.css,
      js: js ?? this.js,
    );
  }
}

class SystemInfoEntity {
  final String cloudId;
  final String commitHash;
  final String? baseUrl;
  final String? edition;
  final String? siteTitle;
  final String? defaultLocale;

  SystemInfoEntity(
      {required this.cloudId,
      required this.commitHash,
      this.baseUrl,
      this.edition,
      this.siteTitle,
      this.defaultLocale});

  factory SystemInfoEntity.fromJson(Map<String, Object?> json) {
    return SystemInfoEntity(
      cloudId: json[r'cloudId'] as String? ?? '',
      commitHash: json[r'commitHash'] as String? ?? '',
      baseUrl: json[r'baseUrl'] as String?,
      edition: json[r'edition'] as String?,
      siteTitle: json[r'siteTitle'] as String?,
      defaultLocale: json[r'defaultLocale'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var cloudId = this.cloudId;
    var commitHash = this.commitHash;
    var baseUrl = this.baseUrl;
    var edition = this.edition;
    var siteTitle = this.siteTitle;
    var defaultLocale = this.defaultLocale;

    final json = <String, Object?>{};
    json[r'cloudId'] = cloudId;
    json[r'commitHash'] = commitHash;
    if (baseUrl != null) {
      json[r'baseUrl'] = baseUrl;
    }
    if (edition != null) {
      json[r'edition'] = edition;
    }
    if (siteTitle != null) {
      json[r'siteTitle'] = siteTitle;
    }
    if (defaultLocale != null) {
      json[r'defaultLocale'] = defaultLocale;
    }
    return json;
  }

  SystemInfoEntity copyWith(
      {String? cloudId,
      String? commitHash,
      String? baseUrl,
      String? edition,
      String? siteTitle,
      String? defaultLocale}) {
    return SystemInfoEntity(
      cloudId: cloudId ?? this.cloudId,
      commitHash: commitHash ?? this.commitHash,
      baseUrl: baseUrl ?? this.baseUrl,
      edition: edition ?? this.edition,
      siteTitle: siteTitle ?? this.siteTitle,
      defaultLocale: defaultLocale ?? this.defaultLocale,
    );
  }
}

class Task {
  final int globalId;
  final int id;
  final int contentId;
  final String status;
  final String? title;
  final String? description;
  final String? body;
  final String creator;
  final String? assignee;
  final String? completeUser;
  final int createDate;
  final int? dueDate;
  final int? updateDate;
  final int? completeDate;

  Task(
      {required this.globalId,
      required this.id,
      required this.contentId,
      required this.status,
      this.title,
      this.description,
      this.body,
      required this.creator,
      this.assignee,
      this.completeUser,
      required this.createDate,
      this.dueDate,
      this.updateDate,
      this.completeDate});

  factory Task.fromJson(Map<String, Object?> json) {
    return Task(
      globalId: (json[r'globalId'] as num?)?.toInt() ?? 0,
      id: (json[r'id'] as num?)?.toInt() ?? 0,
      contentId: (json[r'contentId'] as num?)?.toInt() ?? 0,
      status: json[r'status'] as String? ?? '',
      title: json[r'title'] as String?,
      description: json[r'description'] as String?,
      body: json[r'body'] as String?,
      creator: json[r'creator'] as String? ?? '',
      assignee: json[r'assignee'] as String?,
      completeUser: json[r'completeUser'] as String?,
      createDate: (json[r'createDate'] as num?)?.toInt() ?? 0,
      dueDate: (json[r'dueDate'] as num?)?.toInt(),
      updateDate: (json[r'updateDate'] as num?)?.toInt(),
      completeDate: (json[r'completeDate'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var globalId = this.globalId;
    var id = this.id;
    var contentId = this.contentId;
    var status = this.status;
    var title = this.title;
    var description = this.description;
    var body = this.body;
    var creator = this.creator;
    var assignee = this.assignee;
    var completeUser = this.completeUser;
    var createDate = this.createDate;
    var dueDate = this.dueDate;
    var updateDate = this.updateDate;
    var completeDate = this.completeDate;

    final json = <String, Object?>{};
    json[r'globalId'] = globalId;
    json[r'id'] = id;
    json[r'contentId'] = contentId;
    json[r'status'] = status;
    if (title != null) {
      json[r'title'] = title;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    json[r'creator'] = creator;
    if (assignee != null) {
      json[r'assignee'] = assignee;
    }
    if (completeUser != null) {
      json[r'completeUser'] = completeUser;
    }
    json[r'createDate'] = createDate;
    if (dueDate != null) {
      json[r'dueDate'] = dueDate;
    }
    if (updateDate != null) {
      json[r'updateDate'] = updateDate;
    }
    if (completeDate != null) {
      json[r'completeDate'] = completeDate;
    }
    return json;
  }

  Task copyWith(
      {int? globalId,
      int? id,
      int? contentId,
      String? status,
      String? title,
      String? description,
      String? body,
      String? creator,
      String? assignee,
      String? completeUser,
      int? createDate,
      int? dueDate,
      int? updateDate,
      int? completeDate}) {
    return Task(
      globalId: globalId ?? this.globalId,
      id: id ?? this.id,
      contentId: contentId ?? this.contentId,
      status: status ?? this.status,
      title: title ?? this.title,
      description: description ?? this.description,
      body: body ?? this.body,
      creator: creator ?? this.creator,
      assignee: assignee ?? this.assignee,
      completeUser: completeUser ?? this.completeUser,
      createDate: createDate ?? this.createDate,
      dueDate: dueDate ?? this.dueDate,
      updateDate: updateDate ?? this.updateDate,
      completeDate: completeDate ?? this.completeDate,
    );
  }
}

class TaskPageResponse {
  final List<Task> results;
  final int start;
  final int limit;
  final int size;

  TaskPageResponse(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size});

  factory TaskPageResponse.fromJson(Map<String, Object?> json) {
    return TaskPageResponse(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Task.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    return json;
  }

  TaskPageResponse copyWith(
      {List<Task>? results, int? start, int? limit, int? size}) {
    return TaskPageResponse(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
    );
  }
}

class Theme {
  Theme();

  factory Theme.fromJson(Map<String, Object?> json) {
    return Theme();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ThemeArray {
  final List<ThemeNoLinks> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  ThemeArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory ThemeArray.fromJson(Map<String, Object?> json) {
    return ThemeArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  ThemeNoLinks.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  ThemeArray copyWith(
      {List<ThemeNoLinks>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return ThemeArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// Theme object without links. Used in ThemeArray.
class ThemeNoLinks {
  final String themeKey;
  final String name;
  final String description;
  final Icon icon;

  ThemeNoLinks(
      {required this.themeKey,
      required this.name,
      required this.description,
      required this.icon});

  factory ThemeNoLinks.fromJson(Map<String, Object?> json) {
    return ThemeNoLinks(
      themeKey: json[r'themeKey'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      description: json[r'description'] as String? ?? '',
      icon: Icon.fromJson(json[r'icon'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var themeKey = this.themeKey;
    var name = this.name;
    var description = this.description;
    var icon = this.icon;

    final json = <String, Object?>{};
    json[r'themeKey'] = themeKey;
    json[r'name'] = name;
    json[r'description'] = description;
    json[r'icon'] = icon.toJson();
    return json;
  }

  ThemeNoLinks copyWith(
      {String? themeKey, String? name, String? description, Icon? icon}) {
    return ThemeNoLinks(
      themeKey: themeKey ?? this.themeKey,
      name: name ?? this.name,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }
}

class ThemeUpdate {
  /// The key of the theme to be set as the space theme.
  final String themeKey;

  ThemeUpdate({required this.themeKey});

  factory ThemeUpdate.fromJson(Map<String, Object?> json) {
    return ThemeUpdate(
      themeKey: json[r'themeKey'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var themeKey = this.themeKey;

    final json = <String, Object?>{};
    json[r'themeKey'] = themeKey;
    return json;
  }

  ThemeUpdate copyWith({String? themeKey}) {
    return ThemeUpdate(
      themeKey: themeKey ?? this.themeKey,
    );
  }
}

class User {
  final UserType type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;

  /// The account type of the user, may return empty string if unavailable.
  final UserAccountType accountType;

  /// The email address of the user. Depending on the user's privacy setting,
  /// this may return an empty string.
  final String email;

  /// The public name or nickname of the user. Will always contain a value.
  final String publicName;
  final Icon profilePicture;

  /// The display name of the user. Depending on the user's privacy setting,
  /// this may be the same as publicName.
  final String displayName;
  final List<OperationCheckResult> operations;
  final UserDetails? details;
  final Space? personalSpace;
  final UserExpandable expandable;
  final GenericLinks links;

  User(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId,
      required this.accountType,
      required this.email,
      required this.publicName,
      required this.profilePicture,
      required this.displayName,
      List<OperationCheckResult>? operations,
      this.details,
      this.personalSpace,
      required this.expandable,
      required this.links})
      : operations = operations ?? [];

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      type: UserType.fromValue(json[r'type'] as String? ?? ''),
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
      accountType:
          UserAccountType.fromValue(json[r'accountType'] as String? ?? ''),
      email: json[r'email'] as String? ?? '',
      publicName: json[r'publicName'] as String? ?? '',
      profilePicture: Icon.fromJson(
          json[r'profilePicture'] as Map<String, Object?>? ?? const {}),
      displayName: json[r'displayName'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      details: json[r'details'] != null
          ? UserDetails.fromJson(json[r'details']! as Map<String, Object?>)
          : null,
      personalSpace: json[r'personalSpace'] != null
          ? Space.fromJson(json[r'personalSpace']! as Map<String, Object?>)
          : null,
      expandable: UserExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;
    var accountType = this.accountType;
    var email = this.email;
    var publicName = this.publicName;
    var profilePicture = this.profilePicture;
    var displayName = this.displayName;
    var operations = this.operations;
    var details = this.details;
    var personalSpace = this.personalSpace;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'type'] = type.value;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    json[r'accountType'] = accountType.value;
    json[r'email'] = email;
    json[r'publicName'] = publicName;
    json[r'profilePicture'] = profilePicture.toJson();
    json[r'displayName'] = displayName;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    if (details != null) {
      json[r'details'] = details.toJson();
    }
    if (personalSpace != null) {
      json[r'personalSpace'] = personalSpace.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  User copyWith(
      {UserType? type,
      String? username,
      String? userKey,
      String? accountId,
      UserAccountType? accountType,
      String? email,
      String? publicName,
      Icon? profilePicture,
      String? displayName,
      List<OperationCheckResult>? operations,
      UserDetails? details,
      Space? personalSpace,
      UserExpandable? expandable,
      GenericLinks? links}) {
    return User(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
      accountType: accountType ?? this.accountType,
      email: email ?? this.email,
      publicName: publicName ?? this.publicName,
      profilePicture: profilePicture ?? this.profilePicture,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      details: details ?? this.details,
      personalSpace: personalSpace ?? this.personalSpace,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class UserType {
  static const known = UserType._('known');
  static const unknown = UserType._('unknown');
  static const anonymous = UserType._('anonymous');
  static const user = UserType._('user');

  static const values = [
    known,
    unknown,
    anonymous,
    user,
  ];
  final String value;

  const UserType._(this.value);

  static UserType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => UserType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class UserAccountType {
  static const atlassian = UserAccountType._('atlassian');
  static const appIfThisUserIsABotUserCreatedOnBehalfOfAnAtlassianApp =
      UserAccountType._(
          'app (if this user is a bot user created on behalf of an Atlassian app)');

  static const values = [
    atlassian,
    appIfThisUserIsABotUserCreatedOnBehalfOfAnAtlassianApp,
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

class UserAnonymous {
  final String type;
  final Icon profilePicture;
  final String displayName;
  final List<OperationCheckResult> operations;
  final UserAnonymousExpandable expandable;
  final GenericLinks links;

  UserAnonymous(
      {required this.type,
      required this.profilePicture,
      required this.displayName,
      List<OperationCheckResult>? operations,
      required this.expandable,
      required this.links})
      : operations = operations ?? [];

  factory UserAnonymous.fromJson(Map<String, Object?> json) {
    return UserAnonymous(
      type: json[r'type'] as String? ?? '',
      profilePicture: Icon.fromJson(
          json[r'profilePicture'] as Map<String, Object?>? ?? const {}),
      displayName: json[r'displayName'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expandable: UserAnonymousExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var profilePicture = this.profilePicture;
    var displayName = this.displayName;
    var operations = this.operations;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'type'] = type;
    json[r'profilePicture'] = profilePicture.toJson();
    json[r'displayName'] = displayName;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  UserAnonymous copyWith(
      {String? type,
      Icon? profilePicture,
      String? displayName,
      List<OperationCheckResult>? operations,
      UserAnonymousExpandable? expandable,
      GenericLinks? links}) {
    return UserAnonymous(
      type: type ?? this.type,
      profilePicture: profilePicture ?? this.profilePicture,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class UserAnonymousExpandable {
  final String? operations;

  UserAnonymousExpandable({this.operations});

  factory UserAnonymousExpandable.fromJson(Map<String, Object?> json) {
    return UserAnonymousExpandable(
      operations: json[r'operations'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var operations = this.operations;

    final json = <String, Object?>{};
    if (operations != null) {
      json[r'operations'] = operations;
    }
    return json;
  }

  UserAnonymousExpandable copyWith({String? operations}) {
    return UserAnonymousExpandable(
      operations: operations ?? this.operations,
    );
  }
}

class UserArray {
  final List<User> results;
  final int start;
  final int limit;
  final int size;

  UserArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size});

  factory UserArray.fromJson(Map<String, Object?> json) {
    return UserArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => User.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    return json;
  }

  UserArray copyWith({List<User>? results, int? start, int? limit, int? size}) {
    return UserArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
    );
  }
}

/// Same as UserArray but with `_links` property.
class UserArrayWithLinks {
  UserArrayWithLinks();

  factory UserArrayWithLinks.fromJson(Map<String, Object?> json) {
    return UserArrayWithLinks();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class UserDetails {
  final UserDetailsBusiness? business;
  final UserDetailsPersonal? personal;

  UserDetails({this.business, this.personal});

  factory UserDetails.fromJson(Map<String, Object?> json) {
    return UserDetails(
      business: json[r'business'] != null
          ? UserDetailsBusiness.fromJson(
              json[r'business']! as Map<String, Object?>)
          : null,
      personal: json[r'personal'] != null
          ? UserDetailsPersonal.fromJson(
              json[r'personal']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var business = this.business;
    var personal = this.personal;

    final json = <String, Object?>{};
    if (business != null) {
      json[r'business'] = business.toJson();
    }
    if (personal != null) {
      json[r'personal'] = personal.toJson();
    }
    return json;
  }

  UserDetails copyWith(
      {UserDetailsBusiness? business, UserDetailsPersonal? personal}) {
    return UserDetails(
      business: business ?? this.business,
      personal: personal ?? this.personal,
    );
  }
}

class UserDetailsBusiness {
  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? position;

  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? department;

  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? location;

  UserDetailsBusiness({this.position, this.department, this.location});

  factory UserDetailsBusiness.fromJson(Map<String, Object?> json) {
    return UserDetailsBusiness(
      position: json[r'position'] as String?,
      department: json[r'department'] as String?,
      location: json[r'location'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var position = this.position;
    var department = this.department;
    var location = this.location;

    final json = <String, Object?>{};
    if (position != null) {
      json[r'position'] = position;
    }
    if (department != null) {
      json[r'department'] = department;
    }
    if (location != null) {
      json[r'location'] = location;
    }
    return json;
  }

  UserDetailsBusiness copyWith(
      {String? position, String? department, String? location}) {
    return UserDetailsBusiness(
      position: position ?? this.position,
      department: department ?? this.department,
      location: location ?? this.location,
    );
  }
}

class UserDetailsPersonal {
  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? phone;

  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? im;

  /// This property has been deprecated due to privacy changes. There is no
  /// replacement. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? website;

  /// This property has been deprecated due to privacy changes. Use the
  /// `User.email` property instead. See the
  /// [migration guide](https://developer.atlassian.com/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? email;

  UserDetailsPersonal({this.phone, this.im, this.website, this.email});

  factory UserDetailsPersonal.fromJson(Map<String, Object?> json) {
    return UserDetailsPersonal(
      phone: json[r'phone'] as String?,
      im: json[r'im'] as String?,
      website: json[r'website'] as String?,
      email: json[r'email'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var phone = this.phone;
    var im = this.im;
    var website = this.website;
    var email = this.email;

    final json = <String, Object?>{};
    if (phone != null) {
      json[r'phone'] = phone;
    }
    if (im != null) {
      json[r'im'] = im;
    }
    if (website != null) {
      json[r'website'] = website;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    return json;
  }

  UserDetailsPersonal copyWith(
      {String? phone, String? im, String? website, String? email}) {
    return UserDetailsPersonal(
      phone: phone ?? this.phone,
      im: im ?? this.im,
      website: website ?? this.website,
      email: email ?? this.email,
    );
  }
}

class UserExpandable {
  final String? operations;
  final String? details;
  final String? personalSpace;

  UserExpandable({this.operations, this.details, this.personalSpace});

  factory UserExpandable.fromJson(Map<String, Object?> json) {
    return UserExpandable(
      operations: json[r'operations'] as String?,
      details: json[r'details'] as String?,
      personalSpace: json[r'personalSpace'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var operations = this.operations;
    var details = this.details;
    var personalSpace = this.personalSpace;

    final json = <String, Object?>{};
    if (operations != null) {
      json[r'operations'] = operations;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    if (personalSpace != null) {
      json[r'personalSpace'] = personalSpace;
    }
    return json;
  }

  UserExpandable copyWith(
      {String? operations, String? details, String? personalSpace}) {
    return UserExpandable(
      operations: operations ?? this.operations,
      details: details ?? this.details,
      personalSpace: personalSpace ?? this.personalSpace,
    );
  }
}

class UserWatch {
  final bool watching;

  UserWatch({required this.watching});

  factory UserWatch.fromJson(Map<String, Object?> json) {
    return UserWatch(
      watching: json[r'watching'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var watching = this.watching;

    final json = <String, Object?>{};
    json[r'watching'] = watching;
    return json;
  }

  UserWatch copyWith({bool? watching}) {
    return UserWatch(
      watching: watching ?? this.watching,
    );
  }
}

class UsersUserKeys {
  final List<User> users;
  final List<String> userKeys;
  final GenericLinks? links;

  UsersUserKeys({required this.users, required this.userKeys, this.links});

  factory UsersUserKeys.fromJson(Map<String, Object?> json) {
    return UsersUserKeys(
      users: (json[r'users'] as List<Object?>?)
              ?.map(
                  (i) => User.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      userKeys: (json[r'userKeys'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? GenericLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var users = this.users;
    var userKeys = this.userKeys;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'users'] = users.map((i) => i.toJson()).toList();
    json[r'userKeys'] = userKeys;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  UsersUserKeys copyWith(
      {List<User>? users, List<String>? userKeys, GenericLinks? links}) {
    return UsersUserKeys(
      users: users ?? this.users,
      userKeys: userKeys ?? this.userKeys,
      links: links ?? this.links,
    );
  }
}

class Version {
  final User by;
  final DateTime when;
  final String friendlyWhen;
  final String message;
  final int number;
  final bool minorEdit;
  final Content? content;
  final UsersUserKeys? collaborators;
  final VersionExpandable expandable;
  final GenericLinks links;

  Version(
      {required this.by,
      required this.when,
      required this.friendlyWhen,
      required this.message,
      required this.number,
      required this.minorEdit,
      this.content,
      this.collaborators,
      required this.expandable,
      required this.links});

  factory Version.fromJson(Map<String, Object?> json) {
    return Version(
      by: User.fromJson(json[r'by'] as Map<String, Object?>? ?? const {}),
      when: DateTime.tryParse(json[r'when'] as String? ?? '') ?? DateTime(0),
      friendlyWhen: json[r'friendlyWhen'] as String? ?? '',
      message: json[r'message'] as String? ?? '',
      number: (json[r'number'] as num?)?.toInt() ?? 0,
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      content: json[r'content'] != null
          ? Content.fromJson(json[r'content']! as Map<String, Object?>)
          : null,
      collaborators: json[r'collaborators'] != null
          ? UsersUserKeys.fromJson(
              json[r'collaborators']! as Map<String, Object?>)
          : null,
      expandable: VersionExpandable.fromJson(
          json[r'_expandable'] as Map<String, Object?>? ?? const {}),
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var by = this.by;
    var when = this.when;
    var friendlyWhen = this.friendlyWhen;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var content = this.content;
    var collaborators = this.collaborators;
    var expandable = this.expandable;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'by'] = by.toJson();
    json[r'when'] = when.toIso8601String();
    json[r'friendlyWhen'] = friendlyWhen;
    json[r'message'] = message;
    json[r'number'] = number;
    json[r'minorEdit'] = minorEdit;
    if (content != null) {
      json[r'content'] = content.toJson();
    }
    if (collaborators != null) {
      json[r'collaborators'] = collaborators.toJson();
    }
    json[r'_expandable'] = expandable.toJson();
    json[r'_links'] = links.toJson();
    return json;
  }

  Version copyWith(
      {User? by,
      DateTime? when,
      String? friendlyWhen,
      String? message,
      int? number,
      bool? minorEdit,
      Content? content,
      UsersUserKeys? collaborators,
      VersionExpandable? expandable,
      GenericLinks? links}) {
    return Version(
      by: by ?? this.by,
      when: when ?? this.when,
      friendlyWhen: friendlyWhen ?? this.friendlyWhen,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      content: content ?? this.content,
      collaborators: collaborators ?? this.collaborators,
      expandable: expandable ?? this.expandable,
      links: links ?? this.links,
    );
  }
}

class VersionArray {
  final List<Version> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  VersionArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory VersionArray.fromJson(Map<String, Object?> json) {
    return VersionArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  VersionArray copyWith(
      {List<Version>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return VersionArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

class VersionExpandable {
  final String content;
  final String collaborators;

  VersionExpandable({required this.content, required this.collaborators});

  factory VersionExpandable.fromJson(Map<String, Object?> json) {
    return VersionExpandable(
      content: json[r'content'] as String? ?? '',
      collaborators: json[r'collaborators'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var content = this.content;
    var collaborators = this.collaborators;

    final json = <String, Object?>{};
    json[r'content'] = content;
    json[r'collaborators'] = collaborators;
    return json;
  }

  VersionExpandable copyWith({String? content, String? collaborators}) {
    return VersionExpandable(
      content: content ?? this.content,
      collaborators: collaborators ?? this.collaborators,
    );
  }
}

class VersionRestore {
  /// Set to 'restore'.
  final VersionRestoreOperationKey operationKey;
  final VersionRestoreParams params;

  VersionRestore({required this.operationKey, required this.params});

  factory VersionRestore.fromJson(Map<String, Object?> json) {
    return VersionRestore(
      operationKey: VersionRestoreOperationKey.fromValue(
          json[r'operationKey'] as String? ?? ''),
      params: VersionRestoreParams.fromJson(
          json[r'params'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var operationKey = this.operationKey;
    var params = this.params;

    final json = <String, Object?>{};
    json[r'operationKey'] = operationKey.value;
    json[r'params'] = params.toJson();
    return json;
  }

  VersionRestore copyWith(
      {VersionRestoreOperationKey? operationKey,
      VersionRestoreParams? params}) {
    return VersionRestore(
      operationKey: operationKey ?? this.operationKey,
      params: params ?? this.params,
    );
  }
}

class VersionRestoreOperationKey {
  static const restore = VersionRestoreOperationKey._('restore');

  static const values = [
    restore,
  ];
  final String value;

  const VersionRestoreOperationKey._(this.value);

  static VersionRestoreOperationKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => VersionRestoreOperationKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class VersionRestoreParams {
  /// The version number to be restored.
  final int versionNumber;

  /// Description for the version.
  final String message;

  VersionRestoreParams({required this.versionNumber, required this.message});

  factory VersionRestoreParams.fromJson(Map<String, Object?> json) {
    return VersionRestoreParams(
      versionNumber: (json[r'versionNumber'] as num?)?.toInt() ?? 0,
      message: json[r'message'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var versionNumber = this.versionNumber;
    var message = this.message;

    final json = <String, Object?>{};
    json[r'versionNumber'] = versionNumber;
    json[r'message'] = message;
    return json;
  }

  VersionRestoreParams copyWith({int? versionNumber, String? message}) {
    return VersionRestoreParams(
      versionNumber: versionNumber ?? this.versionNumber,
      message: message ?? this.message,
    );
  }
}

class Watch {
  final String type;
  final WatchUser watcher;
  final String contentId;

  Watch({required this.type, required this.watcher, required this.contentId});

  factory Watch.fromJson(Map<String, Object?> json) {
    return Watch(
      type: json[r'type'] as String? ?? '',
      watcher: WatchUser.fromJson(
          json[r'watcher'] as Map<String, Object?>? ?? const {}),
      contentId: json[r'contentId'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var watcher = this.watcher;
    var contentId = this.contentId;

    final json = <String, Object?>{};
    json[r'type'] = type;
    json[r'watcher'] = watcher.toJson();
    json[r'contentId'] = contentId;
    return json;
  }

  Watch copyWith({String? type, WatchUser? watcher, String? contentId}) {
    return Watch(
      type: type ?? this.type,
      watcher: watcher ?? this.watcher,
      contentId: contentId ?? this.contentId,
    );
  }
}

class WatchArray {
  final List<Watch> results;
  final int start;
  final int limit;
  final int size;
  final GenericLinks links;

  WatchArray(
      {required this.results,
      required this.start,
      required this.limit,
      required this.size,
      required this.links});

  factory WatchArray.fromJson(Map<String, Object?> json) {
    return WatchArray(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Watch.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      start: (json[r'start'] as num?)?.toInt() ?? 0,
      limit: (json[r'limit'] as num?)?.toInt() ?? 0,
      size: (json[r'size'] as num?)?.toInt() ?? 0,
      links: GenericLinks.fromJson(
          json[r'_links'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var start = this.start;
    var limit = this.limit;
    var size = this.size;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    json[r'start'] = start;
    json[r'limit'] = limit;
    json[r'size'] = size;
    json[r'_links'] = links.toJson();
    return json;
  }

  WatchArray copyWith(
      {List<Watch>? results,
      int? start,
      int? limit,
      int? size,
      GenericLinks? links}) {
    return WatchArray(
      results: results ?? this.results,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      links: links ?? this.links,
    );
  }
}

/// This essentially the same as the `User` object, but no `_links` property and
/// no `_expandable` property (therefore, different required fields).
class WatchUser {
  final String type;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? username;

  /// This property is no longer available and will be removed from the
  /// documentation soon.
  /// Use `accountId` instead.
  /// See the
  /// [deprecation notice](/cloud/confluence/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? userKey;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products.
  /// For example, `384093:32b4d9w0-f6a5-3535-11a3-9c8c88d10192`.
  final String accountId;
  final Icon profilePicture;
  final String displayName;
  final List<OperationCheckResult> operations;
  final UserDetails details;

  WatchUser(
      {required this.type,
      this.username,
      this.userKey,
      required this.accountId,
      required this.profilePicture,
      required this.displayName,
      required this.operations,
      required this.details});

  factory WatchUser.fromJson(Map<String, Object?> json) {
    return WatchUser(
      type: json[r'type'] as String? ?? '',
      username: json[r'username'] as String?,
      userKey: json[r'userKey'] as String?,
      accountId: json[r'accountId'] as String? ?? '',
      profilePicture: Icon.fromJson(
          json[r'profilePicture'] as Map<String, Object?>? ?? const {}),
      displayName: json[r'displayName'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => OperationCheckResult.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      details: UserDetails.fromJson(
          json[r'details'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var username = this.username;
    var userKey = this.userKey;
    var accountId = this.accountId;
    var profilePicture = this.profilePicture;
    var displayName = this.displayName;
    var operations = this.operations;
    var details = this.details;

    final json = <String, Object?>{};
    json[r'type'] = type;
    if (username != null) {
      json[r'username'] = username;
    }
    if (userKey != null) {
      json[r'userKey'] = userKey;
    }
    json[r'accountId'] = accountId;
    json[r'profilePicture'] = profilePicture.toJson();
    json[r'displayName'] = displayName;
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    json[r'details'] = details.toJson();
    return json;
  }

  WatchUser copyWith(
      {String? type,
      String? username,
      String? userKey,
      String? accountId,
      Icon? profilePicture,
      String? displayName,
      List<OperationCheckResult>? operations,
      UserDetails? details}) {
    return WatchUser(
      type: type ?? this.type,
      username: username ?? this.username,
      userKey: userKey ?? this.userKey,
      accountId: accountId ?? this.accountId,
      profilePicture: profilePicture ?? this.profilePicture,
      displayName: displayName ?? this.displayName,
      operations: operations ?? this.operations,
      details: details ?? this.details,
    );
  }
}

class WebResourceDependencies {
  final List<String> keys;
  final List<String> contexts;
  final WebResourceDependenciesUris? uris;
  final WebResourceDependenciesTags? tags;
  final SuperBatchWebResources? superbatch;

  WebResourceDependencies(
      {List<String>? keys,
      List<String>? contexts,
      this.uris,
      this.tags,
      this.superbatch})
      : keys = keys ?? [],
        contexts = contexts ?? [];

  factory WebResourceDependencies.fromJson(Map<String, Object?> json) {
    return WebResourceDependencies(
      keys: (json[r'keys'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      contexts: (json[r'contexts'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      uris: json[r'uris'] != null
          ? WebResourceDependenciesUris.fromJson(
              json[r'uris']! as Map<String, Object?>)
          : null,
      tags: json[r'tags'] != null
          ? WebResourceDependenciesTags.fromJson(
              json[r'tags']! as Map<String, Object?>)
          : null,
      superbatch: json[r'superbatch'] != null
          ? SuperBatchWebResources.fromJson(
              json[r'superbatch']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var keys = this.keys;
    var contexts = this.contexts;
    var uris = this.uris;
    var tags = this.tags;
    var superbatch = this.superbatch;

    final json = <String, Object?>{};
    json[r'keys'] = keys;
    json[r'contexts'] = contexts;
    if (uris != null) {
      json[r'uris'] = uris.toJson();
    }
    if (tags != null) {
      json[r'tags'] = tags.toJson();
    }
    if (superbatch != null) {
      json[r'superbatch'] = superbatch.toJson();
    }
    return json;
  }

  WebResourceDependencies copyWith(
      {List<String>? keys,
      List<String>? contexts,
      WebResourceDependenciesUris? uris,
      WebResourceDependenciesTags? tags,
      SuperBatchWebResources? superbatch}) {
    return WebResourceDependencies(
      keys: keys ?? this.keys,
      contexts: contexts ?? this.contexts,
      uris: uris ?? this.uris,
      tags: tags ?? this.tags,
      superbatch: superbatch ?? this.superbatch,
    );
  }
}

class WebResourceDependenciesTags {
  final String? all;
  final String? css;
  final String? data;
  final String? js;

  WebResourceDependenciesTags({this.all, this.css, this.data, this.js});

  factory WebResourceDependenciesTags.fromJson(Map<String, Object?> json) {
    return WebResourceDependenciesTags(
      all: json[r'all'] as String?,
      css: json[r'css'] as String?,
      data: json[r'data'] as String?,
      js: json[r'js'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var all = this.all;
    var css = this.css;
    var data = this.data;
    var js = this.js;

    final json = <String, Object?>{};
    if (all != null) {
      json[r'all'] = all;
    }
    if (css != null) {
      json[r'css'] = css;
    }
    if (data != null) {
      json[r'data'] = data;
    }
    if (js != null) {
      json[r'js'] = js;
    }
    return json;
  }

  WebResourceDependenciesTags copyWith(
      {String? all, String? css, String? data, String? js}) {
    return WebResourceDependenciesTags(
      all: all ?? this.all,
      css: css ?? this.css,
      data: data ?? this.data,
      js: js ?? this.js,
    );
  }
}

class WebResourceDependenciesUris {
  final String? all;
  final String? css;
  final String? js;

  WebResourceDependenciesUris({this.all, this.css, this.js});

  factory WebResourceDependenciesUris.fromJson(Map<String, Object?> json) {
    return WebResourceDependenciesUris(
      all: json[r'all'] as String?,
      css: json[r'css'] as String?,
      js: json[r'js'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var all = this.all;
    var css = this.css;
    var js = this.js;

    final json = <String, Object?>{};
    if (all != null) {
      json[r'all'] = all;
    }
    if (css != null) {
      json[r'css'] = css;
    }
    if (js != null) {
      json[r'js'] = js;
    }
    return json;
  }

  WebResourceDependenciesUris copyWith({String? all, String? css, String? js}) {
    return WebResourceDependenciesUris(
      all: all ?? this.all,
      css: css ?? this.css,
      js: js ?? this.js,
    );
  }
}
