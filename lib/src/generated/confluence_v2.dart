// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: provide_deprecation_message

class ConfluenceV2Api {
  final ApiClient _client;

  ConfluenceV2Api(this._client);

  late final ancestors = AncestorsApi(_client);

  late final attachment = AttachmentApi(_client);

  late final blogPost = BlogPostApi(_client);

  late final children = ChildrenApi(_client);

  late final classificationLevel = ClassificationLevelApi(_client);

  late final comment = CommentApi(_client);

  late final content = ContentApi(_client);

  late final contentProperties = ContentPropertiesApi(_client);

  late final customContent = CustomContentApi(_client);

  late final dataPolicies = DataPoliciesApi(_client);

  late final database = DatabaseApi(_client);

  late final folder = FolderApi(_client);

  late final label = LabelApi(_client);

  late final like = LikeApi(_client);

  late final operation = OperationApi(_client);

  late final page = PageApi(_client);

  late final smartLink = SmartLinkApi(_client);

  late final space = SpaceApi(_client);

  late final spacePermissions = SpacePermissionsApi(_client);

  late final spaceProperties = SpacePropertiesApi(_client);

  late final task = TaskApi(_client);

  late final user = UserApi(_client);

  late final version = VersionApi(_client);

  late final whiteboard = WhiteboardApi(_client);

  void close() => _client.close();
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class AncestorsApi {
  final ApiClient _client;

  AncestorsApi(this._client);

  /// Returns all ancestors for a given whiteboard by ID in top-to-bottom order
  /// (that is, the highest ancestor is the first
  /// item in the response payload). The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available by calling this endpoint with the ID of first ancestor
  /// in the response payload.
  ///
  /// This endpoint returns minimal information about each ancestor. To fetch
  /// more details, use a related endpoint, such
  /// as
  /// [Get whiteboard by id](https://developer.atlassian.com/cloud/confluence/rest/v2/api-group-whiteboard/#api-whiteboards-id-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Permission to view the whiteboard and its corresponding space
  Future<MultiEntityResult<Ancestor>> getWhiteboardAncestors(
      {required int id, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'whiteboards/{id}/ancestors',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Ancestor.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all ancestors for a given database by ID in top-to-bottom order
  /// (that is, the highest ancestor is the first
  /// item in the response payload). The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available by calling this endpoint with the ID of first ancestor
  /// in the response payload.
  ///
  /// This endpoint returns minimal information about each ancestor. To fetch
  /// more details, use a related endpoint, such
  /// as
  /// [Get database by id](https://developer.atlassian.com/cloud/confluence/rest/v2/api-group-database/#api-databases-id-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Permission to view the database and its corresponding space
  Future<MultiEntityResult<Ancestor>> getDatabaseAncestors(
      {required int id, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'databases/{id}/ancestors',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Ancestor.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all ancestors for a given Smart Link in the content tree by ID in
  /// top-to-bottom order (that is, the highest ancestor is
  /// the first item in the response payload). The number of results is limited
  /// by the `limit` parameter and additional results
  /// (if available) will be available by calling this endpoint with the ID of
  /// first ancestor in the response payload.
  ///
  /// This endpoint returns minimal information about each ancestor. To fetch
  /// more details, use a related endpoint, such
  /// as
  /// [Get Smart Link in the content tree by id](https://developer.atlassian.com/cloud/confluence/rest/v2/api-group-smart-link/#api-embeds-id-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Permission to view the Smart Link in the content tree and its
  /// corresponding space
  Future<MultiEntityResult<Ancestor>> getSmartLinkAncestors(
      {required int id, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'embeds/{id}/ancestors',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Ancestor.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all ancestors for a given folder by ID in top-to-bottom order
  /// (that is, the highest ancestor is
  /// the first item in the response payload). The number of results is limited
  /// by the `limit` parameter and additional results
  /// (if available) will be available by calling this endpoint with the ID of
  /// first ancestor in the response payload.
  ///
  /// This endpoint returns minimal information about each ancestor. To fetch
  /// more details, use a related endpoint, such
  /// as
  /// [Get folder by id](https://developer.atlassian.com/cloud/confluence/rest/v2/api-group-smart-link/#api-folders-id-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Permission to view the folder and its corresponding space
  Future<MultiEntityResult<Ancestor>> getFolderAncestors(
      {required int id, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'folders/{id}/ancestors',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Ancestor.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all ancestors for a given page by ID in top-to-bottom order (that
  /// is, the highest ancestor is the first
  /// item in the response payload). The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available by calling this endpoint with the ID of first ancestor
  /// in the response payload.
  ///
  /// This endpoint returns minimal information about each ancestor. To fetch
  /// more details, use a related endpoint, such
  /// as
  /// [Get page by id](https://developer.atlassian.com/cloud/confluence/rest/v2/api-group-page/#api-pages-id-get).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<MultiEntityResult<Ancestor>> getPageAncestors(
      {required int id, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/ancestors',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Ancestor.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class AttachmentApi {
  final ApiClient _client;

  AttachmentApi(this._client);

  /// Returns all attachments. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the container of the attachment.
  Future<MultiEntityResult<AttachmentBulk>> getAttachments(
      {String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'attachments',
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (mediaType != null) 'mediaType': mediaType,
          if (filename != null) 'filename': filename,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => AttachmentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns a specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment's container.
  Future<dynamic> getAttachmentById(
      {required String id,
      int? version,
      bool? includeLabels,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeVersions,
      bool? includeVersion}) async {
    return await _client.send(
      'get',
      'attachments/{id}',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (version != null) 'version': '$version',
        if (includeLabels != null) 'include-labels': '$includeLabels',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
      },
    );
  }

  /// Delete an attachment by id.
  ///
  /// Deleting an attachment moves the attachment to the trash, where it can be
  /// restored later. To permanently delete an attachment (or "purge" it),
  /// the endpoint must be called on a **trashed** attachment with the following
  /// param `purge=true`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the container of the attachment.
  /// Permission to delete attachments in the space.
  /// Permission to administer the space (if attempting to purge).
  Future<void> deleteAttachment({required int id, bool? purge}) async {
    await _client.send(
      'delete',
      'attachments/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (purge != null) 'purge': '$purge',
      },
    );
  }

  /// Returns the attachments of specific blog post. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  Future<MultiEntityResult<AttachmentBulk>> getBlogpostAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/attachments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (mediaType != null) 'mediaType': mediaType,
          if (filename != null) 'filename': filename,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => AttachmentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the attachments of specific custom content. The number of results
  /// is limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the custom content and its corresponding
  /// space.
  Future<MultiEntityResult<AttachmentBulk>> getCustomContentAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{id}/attachments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (mediaType != null) 'mediaType': mediaType,
          if (filename != null) 'filename': filename,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => AttachmentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the attachments of specified label. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment and its corresponding space.
  Future<MultiEntityResult<AttachmentBulk>> getLabelAttachments(
      {required int id, String? sort, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'labels/{id}/attachments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => AttachmentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the attachments of specific page. The number of results is limited
  /// by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<AttachmentBulk>> getPageAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/attachments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (mediaType != null) 'mediaType': mediaType,
          if (filename != null) 'filename': filename,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => AttachmentBulk.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class BlogPostApi {
  final ApiClient _client;

  BlogPostApi(this._client);

  /// Returns all blog posts. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only blog posts that the user has permission to view will be returned.
  Future<MultiEntityResult<BlogPostBulk>> getBlogPosts(
      {List<int>? id,
      List<int>? spaceId,
      String? sort,
      List<String>? status,
      String? title,
      String? bodyFormat,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts',
        queryParameters: {
          if (id != null) 'id': id.map((e) => '$e').join(','),
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (sort != null) 'sort': sort,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (title != null) 'title': title,
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => BlogPostBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new blog post in the space specified by the spaceId.
  ///
  /// By default this will create the blog post as a non-draft, unless the
  /// status is specified as draft.
  /// If creating a non-draft, the title must not be empty.
  ///
  /// Currently only supports the storage representation specified in the
  /// body.representation enums below
  Future<dynamic> createBlogPost(
      {bool? private, required BlogPostCreateRequest body}) async {
    return await _client.send(
      'post',
      'blogposts',
      queryParameters: {
        if (private != null) 'private': '$private',
      },
      body: body.toJson(),
    );
  }

  /// Returns a specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space.
  Future<dynamic> getBlogPostById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      List<String>? status,
      int? version,
      bool? includeLabels,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeLikes,
      bool? includeVersions,
      bool? includeVersion,
      bool? includeFavoritedByCurrentUserStatus}) async {
    return await _client.send(
      'get',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (status != null) 'status': status.map((e) => e).join(','),
        if (version != null) 'version': '$version',
        if (includeLabels != null) 'include-labels': '$includeLabels',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeLikes != null) 'include-likes': '$includeLikes',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
        if (includeFavoritedByCurrentUserStatus != null)
          'include-favorited-by-current-user-status':
              '$includeFavoritedByCurrentUserStatus',
      },
    );
  }

  /// Update a blog post by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space. Permission
  /// to update blog posts in the space.
  Future<dynamic> updateBlogPost(
      {required int id, required BlogPostUpdateRequest body}) async {
    return await _client.send(
      'put',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Delete a blog post by id.
  ///
  /// By default this will delete blog posts that are non-drafts. To delete a
  /// blog post that is a draft, the endpoint must be called on a
  /// draft with the following param `draft=true`. Discarded drafts are not sent
  /// to the trash and are permanently deleted.
  ///
  /// Deleting a blog post that is not a draft moves the blog post to the trash,
  /// where it can be restored later.
  /// To permanently delete a blog post (or "purge" it), the endpoint must be
  /// called on a **trashed** blog post with the following param `purge=true`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space.
  /// Permission to delete blog posts in the space.
  /// Permission to administer the space (if attempting to purge).
  Future<void> deleteBlogPost(
      {required int id, bool? purge, bool? draft}) async {
    await _client.send(
      'delete',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (purge != null) 'purge': '$purge',
        if (draft != null) 'draft': '$draft',
      },
    );
  }

  /// Returns the blogposts of specified label. The number of results is limited
  /// by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<BlogPostBulk>> getLabelBlogPosts(
      {required int id,
      List<int>? spaceId,
      String? bodyFormat,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'labels/{id}/blogposts',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => BlogPostBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all blog posts in a space. The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// view the space.
  /// Only blog posts that the user has permission to view will be returned.
  Future<MultiEntityResult<BlogPostBulk>> getBlogPostsInSpace(
      {required int id,
      String? sort,
      List<String>? status,
      String? title,
      String? bodyFormat,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/blogposts',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (sort != null) 'sort': sort,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (title != null) 'title': title,
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => BlogPostBulk.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class ChildrenApi {
  final ApiClient _client;

  ChildrenApi(this._client);

  /// Returns all child pages for given page id. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only pages that the user has permission to view will be returned.
  Future<MultiEntityResult<ChildPage>> getChildPages(
      {required int id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/children',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => ChildPage.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all child custom content for given custom content id. The number
  /// of results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only custom content that the user has permission to view will be returned.
  Future<MultiEntityResult<ChildCustomContent>> getChildCustomContent(
      {required int id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{id}/children',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => ChildCustomContent.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class ClassificationLevelApi {
  final ApiClient _client;

  ClassificationLevelApi(this._client);

  /// Returns a list of
  /// [classification levels](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  ///
  /// available.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission).
  Future<List<ClassificationLevel>> getClassificationLevels() async {
    return (await _client.send(
      'get',
      'classification-levels',
    ) as List<Object?>)
        .map((i) => ClassificationLevel.fromJson(
            i as Map<String, Object?>? ?? const {}))
        .toList();
  }

  /// Returns the
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/)
  ///
  /// for a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the space.
  Future<ClassificationLevel> getSpaceDefaultClassificationLevel(int id) async {
    return ClassificationLevel.fromJson(await _client.send(
      'get',
      'spaces/{id}/classification-level/default',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Update the
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/)
  ///
  /// for a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and 'Admin' permission for the space.
  Future<void> putSpaceDefaultClassificationLevel(
      {required int id,
      required SpaceDefaultClassificationLevelUpdateRequest body}) async {
    await _client.send(
      'put',
      'spaces/{id}/classification-level/default',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Returns the
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/)
  ///
  /// for a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and 'Admin' permission for the space.
  Future<void> deleteSpaceDefaultClassificationLevel(int id) async {
    await _client.send(
      'delete',
      'spaces/{id}/classification-level/default',
      pathParameters: {
        'id': '$id',
      },
    );
  }

  /// Returns the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the page.
  /// 'Permission to edit the page is required if trying to view classification
  /// level for a draft.
  Future<ClassificationLevel> getPageClassificationLevel(
      {required int id, String? status}) async {
    return ClassificationLevel.fromJson(await _client.send(
      'get',
      'pages/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (status != null) 'status': status,
      },
    ));
  }

  /// Updates the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to edit the page.
  Future<void> putPageClassificationLevel(
      {required int id,
      required ContentClassificationLevelUpdateRequest body}) async {
    await _client.send(
      'put',
      'pages/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Resets the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific page for the space
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the page.
  Future<void> postPageClassificationLevel(
      {required int id,
      required ContentClassificationLevelDeleteRequest body}) async {
    await _client.send(
      'post',
      'pages/{id}/classification-level/reset',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Returns the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the blog post.
  /// 'Permission to edit the blog post is required if trying to view
  /// classification level for a draft.
  Future<ClassificationLevel> getBlogPostClassificationLevel(
      {required int id, String? status}) async {
    return ClassificationLevel.fromJson(await _client.send(
      'get',
      'blogposts/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (status != null) 'status': status,
      },
    ));
  }

  /// Updates the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to edit the blog post.
  Future<void> putBlogPostClassificationLevel(
      {required int id,
      required ContentClassificationLevelUpdateRequest body}) async {
    await _client.send(
      'put',
      'blogposts/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Resets the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific blog post for the space
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the blog post.
  Future<void> postBlogPostClassificationLevel(
      {required int id,
      required ContentClassificationLevelDeleteRequest body}) async {
    await _client.send(
      'post',
      'blogposts/{id}/classification-level/reset',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Returns the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the whiteboard.
  Future<ClassificationLevel> getWhiteboardClassificationLevel(int id) async {
    return ClassificationLevel.fromJson(await _client.send(
      'get',
      'whiteboards/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Updates the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to edit the whiteboard.
  Future<void> putWhiteboardClassificationLevel(
      {required int id,
      required LiveEditContentClassificationLevelUpdateRequest body}) async {
    await _client.send(
      'put',
      'whiteboards/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Resets the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific whiteboard for the space
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the whiteboard.
  Future<void> postWhiteboardClassificationLevel(
      {required int id,
      required LiveEditContentClassificationLevelResetRequest body}) async {
    await _client.send(
      'post',
      'whiteboards/{id}/classification-level/reset',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Returns the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the database.
  Future<ClassificationLevel> getDatabaseClassificationLevel(int id) async {
    return ClassificationLevel.fromJson(await _client.send(
      'get',
      'databases/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Updates the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to edit the database.
  Future<void> putDatabaseClassificationLevel(
      {required int id,
      required LiveEditContentClassificationLevelUpdateRequest body}) async {
    await _client.send(
      'put',
      'databases/{id}/classification-level',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Resets the
  /// [classification level](https://developer.atlassian.com/cloud/admin/dlp/rest/intro/#Classification%20level)
  /// for a specific database for the space
  /// [default classification level](https://support.atlassian.com/security-and-access-policies/docs/what-is-a-default-classification-level/).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// 'Permission to access the Confluence site ('Can use' global permission)
  /// and permission to view the database.
  Future<void> postDatabaseClassificationLevel(
      {required int id,
      required LiveEditContentClassificationLevelResetRequest body}) async {
    await _client.send(
      'post',
      'databases/{id}/classification-level/reset',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class CommentApi {
  final ApiClient _client;

  CommentApi(this._client);

  /// Returns the comments of the specific attachment.
  /// The number of results is limited by the `limit` parameter and additional
  /// results (if available) will be available through
  /// the `next` URL present in the `Link` response header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment and its corresponding containers.
  Future<MultiEntityResult<AttachmentCommentModel>> getAttachmentComments(
      {required String id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort,
      int? version}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'attachments/{id}/footer-comments',
        pathParameters: {
          'id': id,
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
          if (version != null) 'version': '$version',
        },
      ),
      reviver: (v) =>
          AttachmentCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the comments of the specific custom content.
  /// The number of results is limited by the `limit` parameter and additional
  /// results (if available) will be available through
  /// the `next` URL present in the `Link` response header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content and its corresponding containers.
  Future<MultiEntityResult<CustomContentCommentModel>> getCustomContentComments(
      {required int id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{id}/footer-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) =>
          CustomContentCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the root footer comments of specific page. The number of results
  /// is limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<PageCommentModel>> getPageFooterComments(
      {required int id,
      String? bodyFormat,
      List<String>? status,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/footer-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => PageCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the root inline comments of specific page. The number of results
  /// is limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<PageInlineCommentModel>> getPageInlineComments(
      {required int id,
      String? bodyFormat,
      List<String>? status,
      List<String>? resolutionStatus,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/inline-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (resolutionStatus != null)
            'resolution-status': resolutionStatus.map((e) => e).join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) =>
          PageInlineCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the root footer comments of specific blog post. The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  Future<MultiEntityResult<BlogPostCommentModel>> getBlogPostFooterComments(
      {required int id,
      String? bodyFormat,
      List<String>? status,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/footer-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => BlogPostCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the root inline comments of specific blog post. The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  Future<MultiEntityResult<BlogPostInlineCommentModel>>
      getBlogPostInlineComments(
          {required int id,
          String? bodyFormat,
          List<String>? status,
          List<String>? resolutionStatus,
          String? sort,
          String? cursor,
          int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/inline-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (resolutionStatus != null)
            'resolution-status': resolutionStatus.map((e) => e).join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) =>
          BlogPostInlineCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all footer comments. The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the container and its corresponding
  /// space.
  Future<MultiEntityResult<FooterCommentModel>> getFooterComments(
      {String? bodyFormat, String? sort, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'footer-comments',
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => FooterCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Create a footer comment.
  ///
  /// The footer comment can be made against several locations:
  /// - at the top level (specifying pageId or blogPostId in the request body)
  /// - as a reply (specifying parentCommentId in the request body)
  /// - against an attachment (note: this is different than the comments added
  /// via the attachment properties page on the UI, which are referred to as
  /// version comments)
  /// - against a custom content
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<dynamic> createFooterComment(
      {required CreateFooterCommentModel body}) async {
    return await _client.send(
      'post',
      'footer-comments',
      body: body.toJson(),
    );
  }

  /// Retrieves a footer comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the container and its corresponding
  /// space.
  Future<dynamic> getFooterCommentById(
      {required int commentId,
      String? bodyFormat,
      int? version,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeLikes,
      bool? includeVersions,
      bool? includeVersion}) async {
    return await _client.send(
      'get',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeLikes != null) 'include-likes': '$includeLikes',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
      },
    );
  }

  /// Update a footer comment. This can be used to update the body text of a
  /// comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<FooterCommentModel> updateFooterComment(
      {required int commentId, required UpdateFooterCommentModel body}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'put',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a footer comment. This is a permanent deletion and cannot be
  /// reverted.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to delete comments in the space.
  Future<void> deleteFooterComment(int commentId) async {
    await _client.send(
      'delete',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
    );
  }

  /// Returns the children footer comments of specific comment. The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<ChildrenCommentModel>> getFooterCommentChildren(
      {required int id,
      String? bodyFormat,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'footer-comments/{id}/children',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ChildrenCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all inline comments. The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<InlineCommentModel>> getInlineComments(
      {String? bodyFormat, String? sort, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'inline-comments',
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => InlineCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Create an inline comment. This can be at the top level (specifying pageId
  /// or blogPostId in the request body)
  /// or as a reply (specifying parentCommentId in the request body). Note the
  /// inlineCommentProperties object in the
  /// request body is used to select the text the inline comment should be tied
  /// to. This is what determines the text
  /// highlighting when viewing a page in Confluence.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<dynamic> createInlineComment(
      {required CreateInlineCommentModel body}) async {
    return await _client.send(
      'post',
      'inline-comments',
      body: body.toJson(),
    );
  }

  /// Retrieves an inline comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  Future<dynamic> getInlineCommentById(
      {required int commentId,
      String? bodyFormat,
      int? version,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeLikes,
      bool? includeVersions,
      bool? includeVersion}) async {
    return await _client.send(
      'get',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeLikes != null) 'include-likes': '$includeLikes',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
      },
    );
  }

  /// Update an inline comment. This can be used to update the body text of a
  /// comment and/or to resolve the comment
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<dynamic> updateInlineComment(
      {required int commentId, required UpdateInlineCommentModel body}) async {
    return await _client.send(
      'put',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      body: body.toJson(),
    );
  }

  /// Deletes an inline comment. This is a permanent deletion and cannot be
  /// reverted.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to delete comments in the space.
  Future<void> deleteInlineComment(int commentId) async {
    await _client.send(
      'delete',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
    );
  }

  /// Returns the children inline comments of specific comment. The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<InlineCommentChildrenModel>>
      getInlineCommentChildren(
          {required int id,
          String? bodyFormat,
          String? sort,
          String? cursor,
          int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'inline-comments/{id}/children',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) =>
          InlineCommentChildrenModel.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class ContentApi {
  final ApiClient _client;

  ContentApi(this._client);

  /// Converts a list of content ids into their associated content types. This
  /// is useful for users migrating from v1 to v2
  /// who may have stored just content ids without their associated type. This
  /// will return types as they should be used in v2.
  /// Notably, this will return `inline-comment` for inline comments and
  /// `footer-comment` for footer comments, which is distinct from them
  /// both being represented by `comment` in v1.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the requested content. Any content that the user does
  /// not have permission to view or does not exist will map to `null` in the
  /// response.
  Future<ContentIdToContentTypeResponse> convertContentIdsToContentTypes(
      {required ContentIdToContentTypeRequest body}) async {
    return ContentIdToContentTypeResponse.fromJson(await _client.send(
      'post',
      'content/convert-ids-to-types',
      body: body.toJson(),
    ));
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class ContentPropertiesApi {
  final ApiClient _client;

  ContentPropertiesApi(this._client);

  /// Retrieves all Content Properties tied to a specified attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment.
  Future<MultiEntityResult<ContentProperty>> getAttachmentContentProperties(
      {required String attachmentId,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'attachments/{attachment-id}/properties',
        pathParameters: {
          'attachment-id': attachmentId,
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for an attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the attachment.
  Future<ContentProperty> createAttachmentProperty(
      {required String attachmentId,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'attachments/{attachment-id}/properties',
      pathParameters: {
        'attachment-id': attachmentId,
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment.
  Future<ContentProperty> getAttachmentContentPropertiesById(
      {required String attachmentId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'attachments/{attachment-id}/properties/{property-id}',
      pathParameters: {
        'attachment-id': attachmentId,
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for attachment by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the attachment.
  Future<ContentProperty> updateAttachmentPropertyById(
      {required String attachmentId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'attachments/{attachment-id}/properties/{property-id}',
      pathParameters: {
        'attachment-id': attachmentId,
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for an attachment by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to attachment the page.
  Future<void> deleteAttachmentPropertyById(
      {required String attachmentId, required int propertyId}) async {
    await _client.send(
      'delete',
      'attachments/{attachment-id}/properties/{property-id}',
      pathParameters: {
        'attachment-id': attachmentId,
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves all Content Properties tied to a specified blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post.
  Future<MultiEntityResult<ContentProperty>> getBlogpostContentProperties(
      {required int blogpostId,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{blogpost-id}/properties',
        pathParameters: {
          'blogpost-id': '$blogpostId',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new property for a blogpost.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the blog post.
  Future<ContentProperty> createBlogpostProperty(
      {required int blogpostId,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'blogposts/{blogpost-id}/properties',
      pathParameters: {
        'blogpost-id': '$blogpostId',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post.
  Future<ContentProperty> getBlogpostContentPropertiesById(
      {required int blogpostId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'blogposts/{blogpost-id}/properties/{property-id}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for blog post by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the blog post.
  Future<ContentProperty> updateBlogpostPropertyById(
      {required int blogpostId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'blogposts/{blogpost-id}/properties/{property-id}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a blogpost by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the blog post.
  Future<void> deleteBlogpostPropertyById(
      {required int blogpostId, required int propertyId}) async {
    await _client.send(
      'delete',
      'blogposts/{blogpost-id}/properties/{property-id}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content.
  Future<MultiEntityResult<ContentProperty>> getCustomContentContentProperties(
      {required int customContentId,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{custom-content-id}/properties',
        pathParameters: {
          'custom-content-id': '$customContentId',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a piece of custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the custom content.
  Future<ContentProperty> createCustomContentProperty(
      {required int customContentId,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'custom-content/{custom-content-id}/properties',
      pathParameters: {
        'custom-content-id': '$customContentId',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page.
  Future<ContentProperty> getCustomContentContentPropertiesById(
      {required int customContentId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'custom-content/{custom-content-id}/properties/{property-id}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a piece of custom content by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the custom content.
  Future<ContentProperty> updateCustomContentPropertyById(
      {required int customContentId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'custom-content/{custom-content-id}/properties/{property-id}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a piece of custom content by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the custom content.
  Future<void> deleteCustomContentPropertyById(
      {required int customContentId, required int propertyId}) async {
    await _client.send(
      'delete',
      'custom-content/{custom-content-id}/properties/{property-id}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page.
  Future<MultiEntityResult<ContentProperty>> getPageContentProperties(
      {required int pageId,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{page-id}/properties',
        pathParameters: {
          'page-id': '$pageId',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the page.
  Future<ContentProperty> createPageProperty(
      {required int pageId, required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'pages/{page-id}/properties',
      pathParameters: {
        'page-id': '$pageId',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page.
  Future<ContentProperty> getPageContentPropertiesById(
      {required int pageId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'pages/{page-id}/properties/{property-id}',
      pathParameters: {
        'page-id': '$pageId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a page by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the page.
  Future<ContentProperty> updatePagePropertyById(
      {required int pageId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'pages/{page-id}/properties/{property-id}',
      pathParameters: {
        'page-id': '$pageId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a page by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the page.
  Future<void> deletePagePropertyById(
      {required int pageId, required int propertyId}) async {
    await _client.send(
      'delete',
      'pages/{page-id}/properties/{property-id}',
      pathParameters: {
        'page-id': '$pageId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the whiteboard.
  Future<MultiEntityResult<ContentProperty>> getWhiteboardContentProperties(
      {required int id,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'whiteboards/{id}/properties',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the whiteboard.
  Future<ContentProperty> createWhiteboardProperty(
      {required int id, required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'whiteboards/{id}/properties',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the whiteboard.
  Future<ContentProperty> getWhiteboardContentPropertiesById(
      {required int whiteboardId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'whiteboards/{whiteboard-id}/properties/{property-id}',
      pathParameters: {
        'whiteboard-id': '$whiteboardId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a whiteboard by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the whiteboard.
  Future<ContentProperty> updateWhiteboardPropertyById(
      {required int whiteboardId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'whiteboards/{whiteboard-id}/properties/{property-id}',
      pathParameters: {
        'whiteboard-id': '$whiteboardId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a whiteboard by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the whiteboard.
  Future<void> deleteWhiteboardPropertyById(
      {required int whiteboardId, required int propertyId}) async {
    await _client.send(
      'delete',
      'whiteboards/{whiteboard-id}/properties/{property-id}',
      pathParameters: {
        'whiteboard-id': '$whiteboardId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the database.
  Future<MultiEntityResult<ContentProperty>> getDatabaseContentProperties(
      {required int id,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'databases/{id}/properties',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the database.
  Future<ContentProperty> createDatabaseProperty(
      {required int id, required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'databases/{id}/properties',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the database.
  Future<ContentProperty> getDatabaseContentPropertiesById(
      {required int databaseId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'databases/{database-id}/properties/{property-id}',
      pathParameters: {
        'database-id': '$databaseId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a database by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the database.
  Future<ContentProperty> updateDatabasePropertyById(
      {required int databaseId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'databases/{database-id}/properties/{property-id}',
      pathParameters: {
        'database-id': '$databaseId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a database by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the database.
  Future<void> deleteDatabasePropertyById(
      {required int databaseId, required int propertyId}) async {
    await _client.send(
      'delete',
      'databases/{database-id}/properties/{property-id}',
      pathParameters: {
        'database-id': '$databaseId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified Smart Link in the content
  /// tree.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the Smart Link in the content tree.
  Future<MultiEntityResult<ContentProperty>> getSmartLinkContentProperties(
      {required int id,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'embeds/{id}/properties',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a Smart Link in the content tree.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the Smart Link in the content tree.
  Future<ContentProperty> createSmartLinkProperty(
      {required int id, required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'embeds/{id}/properties',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified Smart Link in the content tree.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the Smart Link in the content tree.
  Future<ContentProperty> getSmartLinkContentPropertiesById(
      {required int embedId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'embeds/{embed-id}/properties/{property-id}',
      pathParameters: {
        'embed-id': '$embedId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a Smart Link in the content tree by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the Smart Link in the content tree.
  Future<ContentProperty> updateSmartLinkPropertyById(
      {required int embedId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'embeds/{embed-id}/properties/{property-id}',
      pathParameters: {
        'embed-id': '$embedId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a Smart Link in the content tree by its id.
  ///
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the Smart Link in the content tree.
  Future<void> deleteSmartLinkPropertyById(
      {required int embedId, required int propertyId}) async {
    await _client.send(
      'delete',
      'embeds/{embed-id}/properties/{property-id}',
      pathParameters: {
        'embed-id': '$embedId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties tied to a specified folder.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the folder.
  Future<MultiEntityResult<ContentProperty>> getFolderContentProperties(
      {required int id,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'folders/{id}/properties',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a folder.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the folder.
  Future<ContentProperty> createFolderProperty(
      {required int id, required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'folders/{id}/properties',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified folder.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the folder.
  Future<ContentProperty> getFolderContentPropertiesById(
      {required int folderId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'folders/{folder-id}/properties/{property-id}',
      pathParameters: {
        'folder-id': '$folderId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a folder by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the folder.
  Future<ContentProperty> updateFolderPropertyById(
      {required int folderId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'folders/{folder-id}/properties/{property-id}',
      pathParameters: {
        'folder-id': '$folderId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a folder by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the folder.
  Future<void> deleteFolderPropertyById(
      {required int folderId, required int propertyId}) async {
    await _client.send(
      'delete',
      'folders/{folder-id}/properties/{property-id}',
      pathParameters: {
        'folder-id': '$folderId',
        'property-id': '$propertyId',
      },
    );
  }

  /// Retrieves Content Properties attached to a specified comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the comment.
  Future<MultiEntityResult<ContentProperty>> getCommentContentProperties(
      {required int commentId,
      String? key,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'comments/{comment-id}/properties',
        pathParameters: {
          'comment-id': '$commentId',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new content property for a comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to update the comment.
  Future<ContentProperty> createCommentProperty(
      {required int commentId,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'comments/{comment-id}/properties',
      pathParameters: {
        'comment-id': '$commentId',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a specific Content Property by ID that is attached to a
  /// specified comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the comment.
  Future<ContentProperty> getCommentContentPropertiesById(
      {required int commentId, required int propertyId}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'comments/{comment-id}/properties/{property-id}',
      pathParameters: {
        'comment-id': '$commentId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a content property for a comment by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the comment.
  Future<ContentProperty> updateCommentPropertyById(
      {required int commentId,
      required int propertyId,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'comments/{comment-id}/properties/{property-id}',
      pathParameters: {
        'comment-id': '$commentId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a content property for a comment by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the comment.
  Future<void> deleteCommentPropertyById(
      {required int commentId, required int propertyId}) async {
    await _client.send(
      'delete',
      'comments/{comment-id}/properties/{property-id}',
      pathParameters: {
        'comment-id': '$commentId',
        'property-id': '$propertyId',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class CustomContentApi {
  final ApiClient _client;

  CustomContentApi(this._client);

  /// Returns all custom content for a given type within a given blogpost. The
  /// number of results is limited by the `limit` parameter and additional
  /// results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom content
  /// (blog post), and the corresponding space.
  Future<MultiEntityResult<CustomContentBulk>> getCustomContentByTypeInBlogPost(
      {required int id,
      required String type,
      String? sort,
      String? cursor,
      int? limit,
      String? bodyFormat}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/custom-content',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          'type': type,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (bodyFormat != null) 'body-format': bodyFormat,
        },
      ),
      reviver: (v) => CustomContentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all custom content for a given type. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom
  /// content, and the corresponding space (if different from the container).
  Future<MultiEntityResult<CustomContentBulk>> getCustomContentByType(
      {required String type,
      List<int>? id,
      List<int>? spaceId,
      String? sort,
      String? cursor,
      int? limit,
      String? bodyFormat}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content',
        queryParameters: {
          'type': type,
          if (id != null) 'id': id.map((e) => '$e').join(','),
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (bodyFormat != null) 'body-format': bodyFormat,
        },
      ),
      reviver: (v) => CustomContentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new custom content in the given space, page, blogpost or other
  /// custom content.
  ///
  /// Only one of `spaceId`, `pageId`, `blogPostId`, or `customContentId` is
  /// required in the request body.
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create custom content in the space.
  Future<dynamic> createCustomContent(
      {required CustomContentCreateRequest body}) async {
    return await _client.send(
      'post',
      'custom-content',
      body: body.toJson(),
    );
  }

  /// Returns a specific piece of custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom
  /// content, and the corresponding space (if different from the container).
  Future<dynamic> getCustomContentById(
      {required int id,
      String? bodyFormat,
      int? version,
      bool? includeLabels,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeVersions,
      bool? includeVersion}) async {
    return await _client.send(
      'get',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (includeLabels != null) 'include-labels': '$includeLabels',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
      },
    );
  }

  /// Update a custom content by id.
  ///
  /// `spaceId` is always required and maximum one of `pageId`, `blogPostId`, or
  /// `customContentId` is allowed in the request body.
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to update custom content in the space.
  Future<dynamic> updateCustomContent(
      {required int id, required CustomContentUpdateRequest body}) async {
    return await _client.send(
      'put',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Delete a custom content by id.
  ///
  /// Deleting a custom content will either move it to the trash or permanently
  /// delete it (purge it), depending on the apiSupport.
  /// To permanently delete a **trashed** custom content, the endpoint must be
  /// called with the following param `purge=true`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  /// Permission to delete custom content in the space.
  /// Permission to administer the space (if attempting to purge).
  Future<void> deleteCustomContent({required int id, bool? purge}) async {
    await _client.send(
      'delete',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (purge != null) 'purge': '$purge',
      },
    );
  }

  /// Returns all custom content for a given type within a given page. The
  /// number of results is limited by the `limit` parameter and additional
  /// results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom content
  /// (page), and the corresponding space.
  Future<MultiEntityResult<CustomContentBulk>> getCustomContentByTypeInPage(
      {required int id,
      required String type,
      String? sort,
      String? cursor,
      int? limit,
      String? bodyFormat}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/custom-content',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          'type': type,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (bodyFormat != null) 'body-format': bodyFormat,
        },
      ),
      reviver: (v) => CustomContentBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all custom content for a given type within a given space. The
  /// number of results is limited by the `limit` parameter and additional
  /// results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content and the corresponding space.
  Future<MultiEntityResult<CustomContentBulk>> getCustomContentByTypeInSpace(
      {required int id,
      required String type,
      String? cursor,
      int? limit,
      String? bodyFormat}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/custom-content',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          'type': type,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (bodyFormat != null) 'body-format': bodyFormat,
        },
      ),
      reviver: (v) => CustomContentBulk.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class DataPoliciesApi {
  final ApiClient _client;

  DataPoliciesApi(this._client);

  /// Returns data policy metadata for the workspace.
  ///
  /// **[Permissions](#permissions) required:**
  /// Only apps can make this request.
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<DataPolicyMetadata> getDataPolicyMetadata() async {
    return DataPolicyMetadata.fromJson(await _client.send(
      'get',
      'data-policies/metadata',
    ));
  }

  /// Returns all spaces. The results will be sorted by id ascending. The number
  /// of results is limited by the `limit` parameter and
  /// additional results (if available) will be available through the `next` URL
  /// present in the `Link` response header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Only apps can make this request.
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only spaces that the app has permission to view will be returned.
  Future<MultiEntityResult<DataPolicySpace>> getDataPolicySpaces(
      {List<int>? ids,
      List<String>? keys,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'data-policies/spaces',
        queryParameters: {
          if (ids != null) 'ids': ids.map((e) => '$e').join(','),
          if (keys != null) 'keys': keys.map((e) => e).join(','),
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => DataPolicySpace.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class DatabaseApi {
  final ApiClient _client;

  DatabaseApi(this._client);

  /// Creates a database in the space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space. Permission to create a
  /// database in the space.
  Future<dynamic> createDatabase(
      {bool? private, required DatabaseCreateRequest body}) async {
    return await _client.send(
      'post',
      'databases',
      queryParameters: {
        if (private != null) 'private': '$private',
      },
      body: body.toJson(),
    );
  }

  /// Returns a specific database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the database and its corresponding space.
  Future<dynamic> getDatabaseById(int id) async {
    return await _client.send(
      'get',
      'databases/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }

  /// Delete a database by id.
  ///
  /// Deleting a database moves the database to the trash, where it can be
  /// restored later
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the database and its corresponding space.
  /// Permission to delete databases in the space.
  Future<void> deleteDatabase(int id) async {
    await _client.send(
      'delete',
      'databases/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class FolderApi {
  final ApiClient _client;

  FolderApi(this._client);

  /// Creates a folder in the space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space. Permission to create a folder
  /// in the space.
  Future<dynamic> createFolder({required FolderCreateRequest body}) async {
    return await _client.send(
      'post',
      'folders',
      body: body.toJson(),
    );
  }

  /// Returns a specific folder.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the folder and its corresponding space.
  Future<dynamic> getFolderById(int id) async {
    return await _client.send(
      'get',
      'folders/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }

  /// Delete a folder by id.
  ///
  /// Deleting a folder moves the folder to the trash, where it can be restored
  /// later
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the folder and its corresponding space.
  /// Permission to delete folders in the space.
  Future<void> deleteFolder(int id) async {
    await _client.send(
      'delete',
      'folders/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class LabelApi {
  final ApiClient _client;

  LabelApi(this._client);

  /// Returns the labels of specific attachment. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the attachment and its
  /// corresponding space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getAttachmentLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'attachments/{id}/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the labels of specific blog post. The number of results is limited
  /// by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getBlogPostLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the labels for a specific piece of custom content. The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content and its corresponding space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getCustomContentLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{id}/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all labels. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getLabels(
      {List<int>? labelId,
      List<String>? prefix,
      String? cursor,
      String? sort,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'labels',
        queryParameters: {
          if (labelId != null) 'label-id': labelId.map((e) => '$e').join(','),
          if (prefix != null) 'prefix': prefix.map((e) => e).join(','),
          if (cursor != null) 'cursor': cursor,
          if (sort != null) 'sort': sort,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the labels of specific page. The number of results is limited by
  /// the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getPageLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the labels of specific space. The number of results is limited by
  /// the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getSpaceLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the labels of space content (pages, blogposts etc). The number of
  /// results is limited by the `limit` parameter and additional results (if
  /// available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  /// Only labels that the user has permission to view will be returned.
  Future<MultiEntityResult<Label>> getSpaceContentLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/content/labels',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (prefix != null) 'prefix': prefix,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Label.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class LikeApi {
  final ApiClient _client;

  LikeApi(this._client);

  /// Returns the count of likes of specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  Future<Map<String, dynamic>> getBlogPostLikeCount(int id) async {
    return await _client.send(
      'get',
      'blogposts/{id}/likes/count',
      pathParameters: {
        'id': '$id',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the account IDs of likes of specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the blog post and its corresponding
  /// space.
  Future<MultiEntityResult<Like>> getBlogPostLikeUsers(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/likes/users',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Like.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the count of likes of specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<Map<String, dynamic>> getPageLikeCount(int id) async {
    return await _client.send(
      'get',
      'pages/{id}/likes/count',
      pathParameters: {
        'id': '$id',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the account IDs of likes of specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<Like>> getPageLikeUsers(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/likes/users',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Like.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the count of likes of specific footer comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page/blogpost and its corresponding
  /// space.
  Future<Map<String, dynamic>> getFooterLikeCount(int id) async {
    return await _client.send(
      'get',
      'footer-comments/{id}/likes/count',
      pathParameters: {
        'id': '$id',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the account IDs of likes of specific footer comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page/blogpost and its corresponding
  /// space.
  Future<MultiEntityResult<Like>> getFooterLikeUsers(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'footer-comments/{id}/likes/users',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Like.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the count of likes of specific inline comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page/blogpost and its corresponding
  /// space.
  Future<Map<String, dynamic>> getInlineLikeCount(int id) async {
    return await _client.send(
      'get',
      'inline-comments/{id}/likes/count',
      pathParameters: {
        'id': '$id',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the account IDs of likes of specific inline comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page/blogpost and its corresponding
  /// space.
  Future<MultiEntityResult<Like>> getInlineLikeUsers(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'inline-comments/{id}/likes/users',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Like.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class OperationApi {
  final ApiClient _client;

  OperationApi(this._client);

  /// Returns the permitted operations on specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the attachment and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getAttachmentOperations(String id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'attachments/{id}/operations',
      pathParameters: {
        'id': id,
      },
    ));
  }

  /// Returns the permitted operations on specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the blog post and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getBlogPostOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'blogposts/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the custom content and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getCustomContentOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'custom-content/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the page and its corresponding
  /// space.
  Future<PermittedOperationsResponse> getPageOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'pages/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the whiteboard and its corresponding space.
  Future<PermittedOperationsResponse> getWhiteboardOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'whiteboards/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific database.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the database and its corresponding space.
  Future<PermittedOperationsResponse> getDatabaseOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'databases/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific Smart Link in the content
  /// tree.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the Smart Link in the content tree and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getSmartLinkOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'embeds/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific folder.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the folder and its corresponding space.
  Future<PermittedOperationsResponse> getFolderOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'folders/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space.
  Future<PermittedOperationsResponse> getSpaceOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'spaces/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific footer comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the footer comment and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getFooterCommentOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'footer-comments/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }

  /// Returns the permitted operations on specific inline comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the parent content of the inline comment and its
  /// corresponding space.
  Future<PermittedOperationsResponse> getInlineCommentOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'inline-comments/{id}/operations',
      pathParameters: {
        'id': '$id',
      },
    ));
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class PageApi {
  final ApiClient _client;

  PageApi(this._client);

  /// Returns the pages of specified label. The number of results is limited by
  /// the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<PageBulk>> getLabelPages(
      {required int id,
      List<int>? spaceId,
      String? bodyFormat,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'labels/{id}/pages',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => PageBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns all pages. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only pages that the user has permission to view will be returned.
  Future<MultiEntityResult<PageBulk>> getPages(
      {List<int>? id,
      List<int>? spaceId,
      String? sort,
      List<String>? status,
      String? title,
      String? bodyFormat,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages',
        queryParameters: {
          if (id != null) 'id': id.map((e) => '$e').join(','),
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (sort != null) 'sort': sort,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (title != null) 'title': title,
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => PageBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a page in the space.
  ///
  /// Pages are created as published by default unless specified as a draft in
  /// the status field. If creating a published page, the title must be
  /// specified.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space. Permission to create a page in
  /// the space.
  Future<dynamic> createPage(
      {bool? embedded,
      bool? private,
      bool? rootLevel,
      required PageCreateRequest body}) async {
    return await _client.send(
      'post',
      'pages',
      queryParameters: {
        if (embedded != null) 'embedded': '$embedded',
        if (private != null) 'private': '$private',
        if (rootLevel != null) 'root-level': '$rootLevel',
      },
      body: body.toJson(),
    );
  }

  /// Returns a specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space.
  Future<dynamic> getPageById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      List<String>? status,
      int? version,
      bool? includeLabels,
      bool? includeProperties,
      bool? includeOperations,
      bool? includeLikes,
      bool? includeVersions,
      bool? includeVersion,
      bool? includeFavoritedByCurrentUserStatus}) async {
    return await _client.send(
      'get',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (status != null) 'status': status.map((e) => e).join(','),
        if (version != null) 'version': '$version',
        if (includeLabels != null) 'include-labels': '$includeLabels',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeLikes != null) 'include-likes': '$includeLikes',
        if (includeVersions != null) 'include-versions': '$includeVersions',
        if (includeVersion != null) 'include-version': '$includeVersion',
        if (includeFavoritedByCurrentUserStatus != null)
          'include-favorited-by-current-user-status':
              '$includeFavoritedByCurrentUserStatus',
      },
    );
  }

  /// Update a page by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space. Permission to
  /// update pages in the space.
  Future<dynamic> updatePage(
      {required int id, required PageUpdateRequest body}) async {
    return await _client.send(
      'put',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      body: body.toJson(),
    );
  }

  /// Delete a page by id.
  ///
  /// By default this will delete pages that are non-drafts. To delete a page
  /// that is a draft, the endpoint must be called on a
  /// draft with the following param `draft=true`. Discarded drafts are not sent
  /// to the trash and are permanently deleted.
  ///
  /// Deleting a page moves the page to the trash, where it can be restored
  /// later. To permanently delete a page (or "purge" it),
  /// the endpoint must be called on a **trashed** page with the following param
  /// `purge=true`.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space.
  /// Permission to delete pages in the space.
  /// Permission to administer the space (if attempting to purge).
  Future<void> deletePage({required int id, bool? purge, bool? draft}) async {
    await _client.send(
      'delete',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (purge != null) 'purge': '$purge',
        if (draft != null) 'draft': '$draft',
      },
    );
  }

  /// Returns all pages in a space. The number of results is limited by the
  /// `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'View' permission for the space.
  /// Only pages that the user has permission to view will be returned.
  Future<MultiEntityResult<PageBulk>> getPagesInSpace(
      {required int id,
      String? depth,
      String? sort,
      List<String>? status,
      String? title,
      String? bodyFormat,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/pages',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (depth != null) 'depth': depth,
          if (sort != null) 'sort': sort,
          if (status != null) 'status': status.map((e) => e).join(','),
          if (title != null) 'title': title,
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => PageBulk.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class SmartLinkApi {
  final ApiClient _client;

  SmartLinkApi(this._client);

  /// Creates a Smart Link in the content tree in the space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space. Permission to create a Smart
  /// Link in the content tree in the space.
  Future<dynamic> createSmartLink(
      {required SmartLinkCreateRequest body}) async {
    return await _client.send(
      'post',
      'embeds',
      body: body.toJson(),
    );
  }

  /// Returns a specific Smart Link in the content tree.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the Smart Link in the content tree and its
  /// corresponding space.
  Future<dynamic> getSmartLinkById(int id) async {
    return await _client.send(
      'get',
      'embeds/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }

  /// Delete a Smart Link in the content tree by id.
  ///
  /// Deleting a Smart Link in the content tree moves the Smart Link to the
  /// trash, where it can be restored later
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the Smart Link in the content tree and its
  /// corresponding space.
  /// Permission to delete Smart Links in the content tree in the space.
  Future<void> deleteSmartLink(int id) async {
    await _client.send(
      'delete',
      'embeds/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class SpaceApi {
  final ApiClient _client;

  SpaceApi(this._client);

  /// Returns all spaces. The results will be sorted by id ascending. The number
  /// of results is limited by the `limit` parameter and
  /// additional results (if available) will be available through the `next` URL
  /// present in the `Link` response header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only spaces that the user has permission to view will be returned.
  Future<MultiEntityResult<SpaceBulk>> getSpaces(
      {List<int>? ids,
      List<String>? keys,
      String? type,
      String? status,
      List<String>? labels,
      String? favoritedBy,
      String? notFavoritedBy,
      String? sort,
      String? descriptionFormat,
      bool? includeIcon,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces',
        queryParameters: {
          if (ids != null) 'ids': ids.map((e) => '$e').join(','),
          if (keys != null) 'keys': keys.map((e) => e).join(','),
          if (type != null) 'type': type,
          if (status != null) 'status': status,
          if (labels != null) 'labels': labels.map((e) => e).join(','),
          if (favoritedBy != null) 'favorited-by': favoritedBy,
          if (notFavoritedBy != null) 'not-favorited-by': notFavoritedBy,
          if (sort != null) 'sort': sort,
          if (descriptionFormat != null)
            'description-format': descriptionFormat,
          if (includeIcon != null) 'include-icon': '$includeIcon',
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => SpaceBulk.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  Future<dynamic> getSpaceById(
      {required int id,
      String? descriptionFormat,
      bool? includeIcon,
      bool? includeOperations,
      bool? includeProperties,
      bool? includePermissions,
      bool? includeLabels}) async {
    return await _client.send(
      'get',
      'spaces/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (descriptionFormat != null) 'description-format': descriptionFormat,
        if (includeIcon != null) 'include-icon': '$includeIcon',
        if (includeOperations != null)
          'include-operations': '$includeOperations',
        if (includeProperties != null)
          'include-properties': '$includeProperties',
        if (includePermissions != null)
          'include-permissions': '$includePermissions',
        if (includeLabels != null) 'include-labels': '$includeLabels',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class SpacePermissionsApi {
  final ApiClient _client;

  SpacePermissionsApi(this._client);

  /// Returns space permissions for a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  Future<MultiEntityResult<SpacePermission>> getSpacePermissions(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{id}/permissions',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => SpacePermission.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class SpacePropertiesApi {
  final ApiClient _client;

  SpacePropertiesApi(this._client);

  /// Returns all properties for the given space. Space properties are a
  /// key-value storage associated with a space.
  /// The limit parameter specifies the maximum number of results returned in a
  /// single response. Use the `link` response header
  /// to paginate through additional results.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'View' permission for the space.
  Future<MultiEntityResult<SpaceProperty>> getSpaceProperties(
      {required int spaceId, String? key, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'spaces/{space-id}/properties',
        pathParameters: {
          'space-id': '$spaceId',
        },
        queryParameters: {
          if (key != null) 'key': key,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => SpaceProperty.fromJson(v as Map<String, Object?>),
    );
  }

  /// Creates a new space property.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'Admin' permission for the space.
  Future<SpaceProperty> createSpaceProperty(
      {required int spaceId, required SpacePropertyCreateRequest body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'post',
      'spaces/{space-id}/properties',
      pathParameters: {
        'space-id': '$spaceId',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieve a space property by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'View' permission for the space.
  Future<SpaceProperty> getSpacePropertyById(
      {required int spaceId, required int propertyId}) async {
    return SpaceProperty.fromJson(await _client.send(
      'get',
      'spaces/{space-id}/properties/{property-id}',
      pathParameters: {
        'space-id': '$spaceId',
        'property-id': '$propertyId',
      },
    ));
  }

  /// Update a space property by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'Admin' permission for the space.
  Future<SpaceProperty> updateSpacePropertyById(
      {required int spaceId,
      required int propertyId,
      required SpacePropertyUpdateRequest body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'put',
      'spaces/{space-id}/properties/{property-id}',
      pathParameters: {
        'space-id': '$spaceId',
        'property-id': '$propertyId',
      },
      body: body.toJson(),
    ));
  }

  /// Deletes a space property by its id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission) and
  /// 'Admin' permission for the space.
  Future<void> deleteSpacePropertyById(
      {required int spaceId, required int propertyId}) async {
    await _client.send(
      'delete',
      'spaces/{space-id}/properties/{property-id}',
      pathParameters: {
        'space-id': '$spaceId',
        'property-id': '$propertyId',
      },
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class TaskApi {
  final ApiClient _client;

  TaskApi(this._client);

  /// Returns all tasks. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only tasks that the user has permission to view will be returned.
  Future<MultiEntityResult<Task>> getTasks(
      {String? bodyFormat,
      bool? includeBlankTasks,
      String? status,
      List<int>? taskId,
      List<int>? spaceId,
      List<int>? pageId,
      List<int>? blogpostId,
      List<String>? createdBy,
      List<String>? assignedTo,
      List<String>? completedBy,
      int? createdAtFrom,
      int? createdAtTo,
      int? dueAtFrom,
      int? dueAtTo,
      int? completedAtFrom,
      int? completedAtTo,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'tasks',
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (includeBlankTasks != null)
            'include-blank-tasks': '$includeBlankTasks',
          if (status != null) 'status': status,
          if (taskId != null) 'task-id': taskId.map((e) => '$e').join(','),
          if (spaceId != null) 'space-id': spaceId.map((e) => '$e').join(','),
          if (pageId != null) 'page-id': pageId.map((e) => '$e').join(','),
          if (blogpostId != null)
            'blogpost-id': blogpostId.map((e) => '$e').join(','),
          if (createdBy != null)
            'created-by': createdBy.map((e) => e).join(','),
          if (assignedTo != null)
            'assigned-to': assignedTo.map((e) => e).join(','),
          if (completedBy != null)
            'completed-by': completedBy.map((e) => e).join(','),
          if (createdAtFrom != null) 'created-at-from': '$createdAtFrom',
          if (createdAtTo != null) 'created-at-to': '$createdAtTo',
          if (dueAtFrom != null) 'due-at-from': '$dueAtFrom',
          if (dueAtTo != null) 'due-at-to': '$dueAtTo',
          if (completedAtFrom != null) 'completed-at-from': '$completedAtFrom',
          if (completedAtTo != null) 'completed-at-to': '$completedAtTo',
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
        },
      ),
      reviver: (v) => Task.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns a specific task.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the containing page or blog post and its corresponding
  /// space.
  Future<Task> getTaskById({required int id, String? bodyFormat}) async {
    return Task.fromJson(await _client.send(
      'get',
      'tasks/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
      },
    ));
  }

  /// Update a task by id. This endpoint currently only supports updating task
  /// status.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the containing page or blog post and view its
  /// corresponding space.
  Future<Task> updateTask(
      {required int id,
      String? bodyFormat,
      required TaskUpdateRequest body}) async {
    return Task.fromJson(await _client.send(
      'put',
      'tasks/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
      },
      body: body.toJson(),
    ));
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class UserApi {
  final ApiClient _client;

  UserApi(this._client);

  /// Returns user details for the ids provided in the request body.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// The user must be able to view user profiles in the Confluence site.
  Future<MultiEntityResult<User>> createBulkUserLookup(
      {required BulkUsersRequest body}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'post',
        'users-bulk',
        body: body.toJson(),
      ),
      reviver: (v) => User.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the list of emails from the input list that do not have access to
  /// site.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Map<String, dynamic>> checkAccessByEmail(
      {required CheckAccessOrInviteByEmailRequest body}) async {
    return await _client.send(
      'post',
      'user/access/check-access-by-email',
      body: body.toJson(),
    ) as Map<String, Object?>;
  }

  /// Invite a list of emails to the site.
  ///
  /// Ignores all invalid emails and no action is taken for the emails that
  /// already have access to the site.
  ///
  /// <b>NOTE:</b> This API is asynchronous and may take some time to complete.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<void> inviteByEmail(
      {required CheckAccessOrInviteByEmailRequest body}) async {
    await _client.send(
      'post',
      'user/access/invite-by-email',
      body: body.toJson(),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class VersionApi {
  final ApiClient _client;

  VersionApi(this._client);

  /// Returns the versions of specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment and its corresponding space.
  Future<MultiEntityResult<AttachmentVersion>> getAttachmentVersions(
      {required String id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'attachments/{id}/versions',
        pathParameters: {
          'id': id,
        },
        queryParameters: {
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => AttachmentVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified attachment and version number.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment.
  Future<DetailedVersion> getAttachmentVersionDetails(
      {required String attachmentId, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'attachments/{attachment-id}/versions/{version-number}',
      pathParameters: {
        'attachment-id': attachmentId,
        'version-number': '$versionNumber',
      },
    ));
  }

  /// Returns the versions of specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space.
  Future<MultiEntityResult<BlogPostVersion>> getBlogPostVersions(
      {required int id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/versions',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => BlogPostVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified blog post and version number.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post.
  Future<DetailedVersion> getBlogPostVersionDetails(
      {required int blogpostId, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'blogposts/{blogpost-id}/versions/{version-number}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'version-number': '$versionNumber',
      },
    ));
  }

  /// Returns the versions of specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space.
  Future<MultiEntityResult<PageVersion>> getPageVersions(
      {required int id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/versions',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => PageVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified page and version number.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page.
  Future<DetailedVersion> getPageVersionDetails(
      {required int pageId, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'pages/{page-id}/versions/{version-number}',
      pathParameters: {
        'page-id': '$pageId',
        'version-number': '$versionNumber',
      },
    ));
  }

  /// Returns the versions of specific custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content and its corresponding page and
  /// space.
  Future<MultiEntityResult<CustomContentVersion>> getCustomContentVersions(
      {required int customContentId,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'custom-content/{custom-content-id}/versions',
        pathParameters: {
          'custom-content-id': '$customContentId',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => CustomContentVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified custom content and version
  /// number.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page.
  Future<DetailedVersion> getCustomContentVersionDetails(
      {required int customContentId, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'custom-content/{custom-content-id}/versions/{version-number}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'version-number': '$versionNumber',
      },
    ));
  }

  /// Retrieves the versions of the specified footer comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blog post and its
  /// corresponding space.
  Future<MultiEntityResult<CommentVersion>> getFooterCommentVersions(
      {required int id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'footer-comments/{id}/versions',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => CommentVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified footer comment version.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blog post and its
  /// corresponding space.
  Future<DetailedVersion> getFooterCommentVersionDetails(
      {required int id, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'footer-comments/{id}/versions/{version-number}',
      pathParameters: {
        'id': '$id',
        'version-number': '$versionNumber',
      },
    ));
  }

  /// Retrieves the versions of the specified inline comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blog post and its
  /// corresponding space.
  Future<MultiEntityResult<CommentVersion>> getInlineCommentVersions(
      {required int id,
      String? bodyFormat,
      String? cursor,
      int? limit,
      String? sort}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'inline-comments/{id}/versions',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (sort != null) 'sort': sort,
        },
      ),
      reviver: (v) => CommentVersion.fromJson(v as Map<String, Object?>),
    );
  }

  /// Retrieves version details for the specified inline comment version.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blog post and its
  /// corresponding space.
  Future<DetailedVersion> getInlineCommentVersionDetails(
      {required int id, required int versionNumber}) async {
    return DetailedVersion.fromJson(await _client.send(
      'get',
      'inline-comments/{id}/versions/{version-number}',
      pathParameters: {
        'id': '$id',
        'version-number': '$versionNumber',
      },
    ));
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class WhiteboardApi {
  final ApiClient _client;

  WhiteboardApi(this._client);

  /// Creates a whiteboard in the space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the corresponding space. Permission to create a
  /// whiteboard in the space.
  Future<dynamic> createWhiteboard(
      {bool? private, required WhiteboardCreateRequest body}) async {
    return await _client.send(
      'post',
      'whiteboards',
      queryParameters: {
        if (private != null) 'private': '$private',
      },
      body: body.toJson(),
    );
  }

  /// Returns a specific whiteboard.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the whiteboard and its corresponding space.
  Future<dynamic> getWhiteboardById(int id) async {
    return await _client.send(
      'get',
      'whiteboards/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }

  /// Delete a whiteboard by id.
  ///
  /// Deleting a whiteboard moves the whiteboard to the trash, where it can be
  /// restored later
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the whiteboard and its corresponding space.
  /// Permission to delete whiteboards in the space.
  Future<void> deleteWhiteboard(int id) async {
    await _client.send(
      'delete',
      'whiteboards/{id}',
      pathParameters: {
        'id': '$id',
      },
    );
  }
}

class AccountStatus {
  static const active = AccountStatus._('active');
  static const inactive = AccountStatus._('inactive');
  static const closed = AccountStatus._('closed');
  static const unknown = AccountStatus._('unknown');

  static const values = [
    active,
    inactive,
    closed,
    unknown,
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
  static const app = AccountType._('app');
  static const customer = AccountType._('customer');
  static const unknown = AccountType._('unknown');

  static const values = [
    atlassian,
    app,
    customer,
    unknown,
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

class AncestorType {
  static const page = AncestorType._('page');
  static const whiteboard = AncestorType._('whiteboard');
  static const database = AncestorType._('database');
  static const embed = AncestorType._('embed');
  static const folder = AncestorType._('folder');

  static const values = [
    page,
    whiteboard,
    database,
    embed,
    folder,
  ];
  final String value;

  const AncestorType._(this.value);

  static AncestorType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => AncestorType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class AttachmentSortOrder {
  static const createdDate = AttachmentSortOrder._('created-date');
  static const createdDateDesc = AttachmentSortOrder._('-created-date');
  static const modifiedDate = AttachmentSortOrder._('modified-date');
  static const modifiedDateDesc = AttachmentSortOrder._('-modified-date');

  static const values = [
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const AttachmentSortOrder._(this.value);

  static AttachmentSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => AttachmentSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlogPostContentStatus {
  static const current = BlogPostContentStatus._('current');
  static const draft = BlogPostContentStatus._('draft');
  static const historical = BlogPostContentStatus._('historical');
  static const trashed = BlogPostContentStatus._('trashed');
  static const deleted = BlogPostContentStatus._('deleted');
  static const any = BlogPostContentStatus._('any');

  static const values = [
    current,
    draft,
    historical,
    trashed,
    deleted,
    any,
  ];
  final String value;

  const BlogPostContentStatus._(this.value);

  static BlogPostContentStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BlogPostContentStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlogPostSortOrder {
  static const id = BlogPostSortOrder._('id');
  static const idDesc = BlogPostSortOrder._('-id');
  static const createdDate = BlogPostSortOrder._('created-date');
  static const createdDateDesc = BlogPostSortOrder._('-created-date');
  static const modifiedDate = BlogPostSortOrder._('modified-date');
  static const modifiedDateDesc = BlogPostSortOrder._('-modified-date');

  static const values = [
    id,
    idDesc,
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const BlogPostSortOrder._(this.value);

  static BlogPostSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BlogPostSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ChildCustomContentSortOrder {
  static const createdDate = ChildCustomContentSortOrder._('created-date');
  static const createdDateDesc = ChildCustomContentSortOrder._('-created-date');
  static const id = ChildCustomContentSortOrder._('id');
  static const idDesc = ChildCustomContentSortOrder._('-id');
  static const modifiedDate = ChildCustomContentSortOrder._('modified-date');
  static const modifiedDateDesc =
      ChildCustomContentSortOrder._('-modified-date');

  static const values = [
    createdDate,
    createdDateDesc,
    id,
    idDesc,
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const ChildCustomContentSortOrder._(this.value);

  static ChildCustomContentSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ChildCustomContentSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ChildPageSortOrder {
  static const createdDate = ChildPageSortOrder._('created-date');
  static const createdDateDesc = ChildPageSortOrder._('-created-date');
  static const id = ChildPageSortOrder._('id');
  static const idDesc = ChildPageSortOrder._('-id');
  static const childPosition = ChildPageSortOrder._('child-position');
  static const childPositionDesc = ChildPageSortOrder._('-child-position');
  static const modifiedDate = ChildPageSortOrder._('modified-date');
  static const modifiedDateDesc = ChildPageSortOrder._('-modified-date');

  static const values = [
    createdDate,
    createdDateDesc,
    id,
    idDesc,
    childPosition,
    childPositionDesc,
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const ChildPageSortOrder._(this.value);

  static ChildPageSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ChildPageSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ClassificationLevelColor {
  static const red = ClassificationLevelColor._('RED');
  static const redBold = ClassificationLevelColor._('RED_BOLD');
  static const orange = ClassificationLevelColor._('ORANGE');
  static const yellow = ClassificationLevelColor._('YELLOW');
  static const green = ClassificationLevelColor._('GREEN');
  static const blue = ClassificationLevelColor._('BLUE');
  static const navy = ClassificationLevelColor._('NAVY');
  static const teal = ClassificationLevelColor._('TEAL');
  static const purple = ClassificationLevelColor._('PURPLE');
  static const grey = ClassificationLevelColor._('GREY');
  static const lime = ClassificationLevelColor._('LIME');

  static const values = [
    red,
    redBold,
    orange,
    yellow,
    green,
    blue,
    navy,
    teal,
    purple,
    grey,
    lime,
  ];
  final String value;

  const ClassificationLevelColor._(this.value);

  static ClassificationLevelColor fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ClassificationLevelColor._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ClassificationLevelStatus {
  static const draft = ClassificationLevelStatus._('DRAFT');
  static const published = ClassificationLevelStatus._('PUBLISHED');
  static const archived = ClassificationLevelStatus._('ARCHIVED');

  static const values = [
    draft,
    published,
    archived,
  ];
  final String value;

  const ClassificationLevelStatus._(this.value);

  static ClassificationLevelStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ClassificationLevelStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CommentSortOrder {
  static const createdDate = CommentSortOrder._('created-date');
  static const createdDateDesc = CommentSortOrder._('-created-date');
  static const modifiedDate = CommentSortOrder._('modified-date');
  static const modifiedDateDesc = CommentSortOrder._('-modified-date');

  static const values = [
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const CommentSortOrder._(this.value);

  static CommentSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CommentSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentPropertySortOrder {
  static const key = ContentPropertySortOrder._('key');
  static const keyDesc = ContentPropertySortOrder._('-key');

  static const values = [
    key,
    keyDesc,
  ];
  final String value;

  const ContentPropertySortOrder._(this.value);

  static ContentPropertySortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentPropertySortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentStatus {
  static const current = ContentStatus._('current');
  static const draft = ContentStatus._('draft');
  static const archived = ContentStatus._('archived');
  static const historical = ContentStatus._('historical');
  static const trashed = ContentStatus._('trashed');
  static const deleted = ContentStatus._('deleted');
  static const any = ContentStatus._('any');

  static const values = [
    current,
    draft,
    archived,
    historical,
    trashed,
    deleted,
    any,
  ];
  final String value;

  const ContentStatus._(this.value);

  static ContentStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentBodyRepresentation {
  static const raw = CustomContentBodyRepresentation._('raw');
  static const storage = CustomContentBodyRepresentation._('storage');
  static const atlasDocFormat =
      CustomContentBodyRepresentation._('atlas_doc_format');

  static const values = [
    raw,
    storage,
    atlasDocFormat,
  ];
  final String value;

  const CustomContentBodyRepresentation._(this.value);

  static CustomContentBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentBodyRepresentationSingle {
  static const raw = CustomContentBodyRepresentationSingle._('raw');
  static const storage = CustomContentBodyRepresentationSingle._('storage');
  static const atlasDocFormat =
      CustomContentBodyRepresentationSingle._('atlas_doc_format');
  static const view = CustomContentBodyRepresentationSingle._('view');
  static const exportView =
      CustomContentBodyRepresentationSingle._('export_view');
  static const anonymousExportView =
      CustomContentBodyRepresentationSingle._('anonymous_export_view');

  static const values = [
    raw,
    storage,
    atlasDocFormat,
    view,
    exportView,
    anonymousExportView,
  ];
  final String value;

  const CustomContentBodyRepresentationSingle._(this.value);

  static CustomContentBodyRepresentationSingle fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentBodyRepresentationSingle._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentSortOrder {
  static const id = CustomContentSortOrder._('id');
  static const idDesc = CustomContentSortOrder._('-id');
  static const createdDate = CustomContentSortOrder._('created-date');
  static const createdDateDesc = CustomContentSortOrder._('-created-date');
  static const modifiedDate = CustomContentSortOrder._('modified-date');
  static const modifiedDateDesc = CustomContentSortOrder._('-modified-date');
  static const title = CustomContentSortOrder._('title');
  static const titleDesc = CustomContentSortOrder._('-title');

  static const values = [
    id,
    idDesc,
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
    title,
    titleDesc,
  ];
  final String value;

  const CustomContentSortOrder._(this.value);

  static CustomContentSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class InlineCommentResolutionStatus {
  static const open = InlineCommentResolutionStatus._('open');
  static const reopened = InlineCommentResolutionStatus._('reopened');
  static const resolved = InlineCommentResolutionStatus._('resolved');
  static const dangling = InlineCommentResolutionStatus._('dangling');

  static const values = [
    open,
    reopened,
    resolved,
    dangling,
  ];
  final String value;

  const InlineCommentResolutionStatus._(this.value);

  static InlineCommentResolutionStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => InlineCommentResolutionStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class LabelSortOrder {
  static const createdDate = LabelSortOrder._('created-date');
  static const createdDateDesc = LabelSortOrder._('-created-date');
  static const id = LabelSortOrder._('id');
  static const idDesc = LabelSortOrder._('-id');
  static const name = LabelSortOrder._('name');
  static const nameDesc = LabelSortOrder._('-name');

  static const values = [
    createdDate,
    createdDateDesc,
    id,
    idDesc,
    name,
    nameDesc,
  ];
  final String value;

  const LabelSortOrder._(this.value);

  static LabelSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => LabelSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class OnlyArchivedAndCurrentContentStatus {
  static const current = OnlyArchivedAndCurrentContentStatus._('current');
  static const archived = OnlyArchivedAndCurrentContentStatus._('archived');

  static const values = [
    current,
    archived,
  ];
  final String value;

  const OnlyArchivedAndCurrentContentStatus._(this.value);

  static OnlyArchivedAndCurrentContentStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => OnlyArchivedAndCurrentContentStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PageSortOrder {
  static const id = PageSortOrder._('id');
  static const idDesc = PageSortOrder._('-id');
  static const createdDate = PageSortOrder._('created-date');
  static const createdDateDesc = PageSortOrder._('-created-date');
  static const modifiedDate = PageSortOrder._('modified-date');
  static const modifiedDateDesc = PageSortOrder._('-modified-date');
  static const title = PageSortOrder._('title');
  static const titleDesc = PageSortOrder._('-title');

  static const values = [
    id,
    idDesc,
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
    title,
    titleDesc,
  ];
  final String value;

  const PageSortOrder._(this.value);

  static PageSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PageSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ParentContentType {
  static const page = ParentContentType._('page');
  static const whiteboard = ParentContentType._('whiteboard');
  static const database = ParentContentType._('database');
  static const embed = ParentContentType._('embed');
  static const folder = ParentContentType._('folder');

  static const values = [
    page,
    whiteboard,
    database,
    embed,
    folder,
  ];
  final String value;

  const ParentContentType._(this.value);

  static ParentContentType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ParentContentType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PrimaryBodyRepresentation {
  static const storage = PrimaryBodyRepresentation._('storage');
  static const atlasDocFormat = PrimaryBodyRepresentation._('atlas_doc_format');

  static const values = [
    storage,
    atlasDocFormat,
  ];
  final String value;

  const PrimaryBodyRepresentation._(this.value);

  static PrimaryBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PrimaryBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PrimaryBodyRepresentationSingle {
  static const storage = PrimaryBodyRepresentationSingle._('storage');
  static const atlasDocFormat =
      PrimaryBodyRepresentationSingle._('atlas_doc_format');
  static const view = PrimaryBodyRepresentationSingle._('view');
  static const exportView = PrimaryBodyRepresentationSingle._('export_view');
  static const anonymousExportView =
      PrimaryBodyRepresentationSingle._('anonymous_export_view');
  static const styledView = PrimaryBodyRepresentationSingle._('styled_view');
  static const editor = PrimaryBodyRepresentationSingle._('editor');

  static const values = [
    storage,
    atlasDocFormat,
    view,
    exportView,
    anonymousExportView,
    styledView,
    editor,
  ];
  final String value;

  const PrimaryBodyRepresentationSingle._(this.value);

  static PrimaryBodyRepresentationSingle fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PrimaryBodyRepresentationSingle._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpaceDescriptionBodyRepresentation {
  static const plain = SpaceDescriptionBodyRepresentation._('plain');
  static const view = SpaceDescriptionBodyRepresentation._('view');

  static const values = [
    plain,
    view,
  ];
  final String value;

  const SpaceDescriptionBodyRepresentation._(this.value);

  static SpaceDescriptionBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpaceDescriptionBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpaceSortOrder {
  static const id = SpaceSortOrder._('id');
  static const idDesc = SpaceSortOrder._('-id');
  static const key = SpaceSortOrder._('key');
  static const keyDesc = SpaceSortOrder._('-key');
  static const name = SpaceSortOrder._('name');
  static const nameDesc = SpaceSortOrder._('-name');

  static const values = [
    id,
    idDesc,
    key,
    keyDesc,
    name,
    nameDesc,
  ];
  final String value;

  const SpaceSortOrder._(this.value);

  static SpaceSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpaceSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpaceStatus {
  static const current = SpaceStatus._('current');
  static const archived = SpaceStatus._('archived');

  static const values = [
    current,
    archived,
  ];
  final String value;

  const SpaceStatus._(this.value);

  static SpaceStatus fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => SpaceStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpaceType {
  static const global = SpaceType._('global');
  static const collaboration = SpaceType._('collaboration');
  static const knowledgeBase = SpaceType._('knowledge_base');
  static const personal = SpaceType._('personal');

  static const values = [
    global,
    collaboration,
    knowledgeBase,
    personal,
  ];
  final String value;

  const SpaceType._(this.value);

  static SpaceType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => SpaceType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class VersionSortOrder {
  static const modifiedDate = VersionSortOrder._('modified-date');
  static const modifiedDateDesc = VersionSortOrder._('-modified-date');

  static const values = [
    modifiedDate,
    modifiedDateDesc,
  ];
  final String value;

  const VersionSortOrder._(this.value);

  static VersionSortOrder fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => VersionSortOrder._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class AbstractPageLinks {
  /// Web UI link of the content.
  final String? webui;

  /// Edit UI link of the content.
  final String? editui;

  /// Web UI link of the content.
  final String? tinyui;

  AbstractPageLinks({this.webui, this.editui, this.tinyui});

  factory AbstractPageLinks.fromJson(Map<String, Object?> json) {
    return AbstractPageLinks(
      webui: json[r'webui'] as String?,
      editui: json[r'editui'] as String?,
      tinyui: json[r'tinyui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;
    var editui = this.editui;
    var tinyui = this.tinyui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    if (editui != null) {
      json[r'editui'] = editui;
    }
    if (tinyui != null) {
      json[r'tinyui'] = tinyui;
    }
    return json;
  }

  AbstractPageLinks copyWith({String? webui, String? editui, String? tinyui}) {
    return AbstractPageLinks(
      webui: webui ?? this.webui,
      editui: editui ?? this.editui,
      tinyui: tinyui ?? this.tinyui,
    );
  }
}

class Ancestor {
  /// ID of the ancestor
  final String? id;
  final String? type;

  Ancestor({this.id, this.type});

  factory Ancestor.fromJson(Map<String, Object?> json) {
    return Ancestor(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  Ancestor copyWith({String? id, String? type}) {
    return Ancestor(
      id: id ?? this.id,
      type: type ?? this.type,
    );
  }
}

class AttachmentBulk {
  /// ID of the attachment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// Date and time when the attachment was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the attachment has a container that is a
  /// page.
  final String? pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the attachment has a container that is a
  /// blog post.
  final String? blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the attachment has a container that is
  /// custom content.
  final String? customContentId;

  /// Media Type for the attachment.
  final String? mediaType;

  /// Media Type description for the attachment.
  final String? mediaTypeDescription;

  /// Comment for the attachment.
  final String? comment;

  /// File ID of the attachment. This is the ID referenced in `atlas_doc_format`
  /// bodies and is distinct from the attachment ID.
  final String? fileId;

  /// File size of the attachment.
  final int? fileSize;

  /// WebUI link of the attachment.
  final String? webuiLink;

  /// Download link of the attachment.
  final String? downloadLink;
  final Version? version;
  final AttachmentLinks? links;

  AttachmentBulk(
      {this.id,
      this.status,
      this.title,
      this.createdAt,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      this.mediaType,
      this.mediaTypeDescription,
      this.comment,
      this.fileId,
      this.fileSize,
      this.webuiLink,
      this.downloadLink,
      this.version,
      this.links});

  factory AttachmentBulk.fromJson(Map<String, Object?> json) {
    return AttachmentBulk(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      mediaType: json[r'mediaType'] as String?,
      mediaTypeDescription: json[r'mediaTypeDescription'] as String?,
      comment: json[r'comment'] as String?,
      fileId: json[r'fileId'] as String?,
      fileSize: (json[r'fileSize'] as num?)?.toInt(),
      webuiLink: json[r'webuiLink'] as String?,
      downloadLink: json[r'downloadLink'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? AttachmentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var createdAt = this.createdAt;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var mediaType = this.mediaType;
    var mediaTypeDescription = this.mediaTypeDescription;
    var comment = this.comment;
    var fileId = this.fileId;
    var fileSize = this.fileSize;
    var webuiLink = this.webuiLink;
    var downloadLink = this.downloadLink;
    var version = this.version;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (mediaType != null) {
      json[r'mediaType'] = mediaType;
    }
    if (mediaTypeDescription != null) {
      json[r'mediaTypeDescription'] = mediaTypeDescription;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (fileId != null) {
      json[r'fileId'] = fileId;
    }
    if (fileSize != null) {
      json[r'fileSize'] = fileSize;
    }
    if (webuiLink != null) {
      json[r'webuiLink'] = webuiLink;
    }
    if (downloadLink != null) {
      json[r'downloadLink'] = downloadLink;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentBulk copyWith(
      {String? id,
      String? status,
      String? title,
      DateTime? createdAt,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? mediaType,
      String? mediaTypeDescription,
      String? comment,
      String? fileId,
      int? fileSize,
      String? webuiLink,
      String? downloadLink,
      Version? version,
      AttachmentLinks? links}) {
    return AttachmentBulk(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      mediaType: mediaType ?? this.mediaType,
      mediaTypeDescription: mediaTypeDescription ?? this.mediaTypeDescription,
      comment: comment ?? this.comment,
      fileId: fileId ?? this.fileId,
      fileSize: fileSize ?? this.fileSize,
      webuiLink: webuiLink ?? this.webuiLink,
      downloadLink: downloadLink ?? this.downloadLink,
      version: version ?? this.version,
      links: links ?? this.links,
    );
  }
}

class AttachmentCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the attachment containing the comment.
  final String? attachmentId;
  final Version? version;
  final BodySingle? body;
  final CommentLinks? links;

  AttachmentCommentModel(
      {this.id,
      this.status,
      this.title,
      this.attachmentId,
      this.version,
      this.body,
      this.links});

  factory AttachmentCommentModel.fromJson(Map<String, Object?> json) {
    return AttachmentCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      attachmentId: json[r'attachmentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var attachmentId = this.attachmentId;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? attachmentId,
      Version? version,
      BodySingle? body,
      CommentLinks? links}) {
    return AttachmentCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      attachmentId: attachmentId ?? this.attachmentId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class AttachmentLinks {
  /// Web UI link of the content.
  final String? webui;

  /// Download link of the content.
  final String? download;

  AttachmentLinks({this.webui, this.download});

  factory AttachmentLinks.fromJson(Map<String, Object?> json) {
    return AttachmentLinks(
      webui: json[r'webui'] as String?,
      download: json[r'download'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;
    var download = this.download;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    if (download != null) {
      json[r'download'] = download;
    }
    return json;
  }

  AttachmentLinks copyWith({String? webui, String? download}) {
    return AttachmentLinks(
      webui: webui ?? this.webui,
      download: download ?? this.download,
    );
  }
}

class AttachmentSingle {
  /// ID of the attachment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// Date and time when the attachment was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the attachment has a container that is a
  /// page.
  final String? pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the attachment has a container that is a
  /// blog post.
  final String? blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the attachment has a container that is
  /// custom content.
  final String? customContentId;

  /// Media Type for the attachment.
  final String? mediaType;

  /// Media Type description for the attachment.
  final String? mediaTypeDescription;

  /// Comment for the attachment.
  final String? comment;

  /// File ID of the attachment. This is the ID referenced in `atlas_doc_format`
  /// bodies and is distinct from the attachment ID.
  final String? fileId;

  /// File size of the attachment.
  final int? fileSize;

  /// WebUI link of the attachment.
  final String? webuiLink;

  /// Download link of the attachment.
  final String? downloadLink;
  final Version? version;
  final AttachmentSingleLabels? labels;
  final AttachmentSingleProperties? properties;
  final AttachmentSingleOperations? operations;
  final AttachmentSingleVersions? versions;
  final AttachmentLinks? links;

  AttachmentSingle(
      {this.id,
      this.status,
      this.title,
      this.createdAt,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      this.mediaType,
      this.mediaTypeDescription,
      this.comment,
      this.fileId,
      this.fileSize,
      this.webuiLink,
      this.downloadLink,
      this.version,
      this.labels,
      this.properties,
      this.operations,
      this.versions,
      this.links});

  factory AttachmentSingle.fromJson(Map<String, Object?> json) {
    return AttachmentSingle(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      mediaType: json[r'mediaType'] as String?,
      mediaTypeDescription: json[r'mediaTypeDescription'] as String?,
      comment: json[r'comment'] as String?,
      fileId: json[r'fileId'] as String?,
      fileSize: (json[r'fileSize'] as num?)?.toInt(),
      webuiLink: json[r'webuiLink'] as String?,
      downloadLink: json[r'downloadLink'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      labels: json[r'labels'] != null
          ? AttachmentSingleLabels.fromJson(
              json[r'labels']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? AttachmentSingleProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? AttachmentSingleOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? AttachmentSingleVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? AttachmentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var createdAt = this.createdAt;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var mediaType = this.mediaType;
    var mediaTypeDescription = this.mediaTypeDescription;
    var comment = this.comment;
    var fileId = this.fileId;
    var fileSize = this.fileSize;
    var webuiLink = this.webuiLink;
    var downloadLink = this.downloadLink;
    var version = this.version;
    var labels = this.labels;
    var properties = this.properties;
    var operations = this.operations;
    var versions = this.versions;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (mediaType != null) {
      json[r'mediaType'] = mediaType;
    }
    if (mediaTypeDescription != null) {
      json[r'mediaTypeDescription'] = mediaTypeDescription;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (fileId != null) {
      json[r'fileId'] = fileId;
    }
    if (fileSize != null) {
      json[r'fileSize'] = fileSize;
    }
    if (webuiLink != null) {
      json[r'webuiLink'] = webuiLink;
    }
    if (downloadLink != null) {
      json[r'downloadLink'] = downloadLink;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentSingle copyWith(
      {String? id,
      String? status,
      String? title,
      DateTime? createdAt,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? mediaType,
      String? mediaTypeDescription,
      String? comment,
      String? fileId,
      int? fileSize,
      String? webuiLink,
      String? downloadLink,
      Version? version,
      AttachmentSingleLabels? labels,
      AttachmentSingleProperties? properties,
      AttachmentSingleOperations? operations,
      AttachmentSingleVersions? versions,
      AttachmentLinks? links}) {
    return AttachmentSingle(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      mediaType: mediaType ?? this.mediaType,
      mediaTypeDescription: mediaTypeDescription ?? this.mediaTypeDescription,
      comment: comment ?? this.comment,
      fileId: fileId ?? this.fileId,
      fileSize: fileSize ?? this.fileSize,
      webuiLink: webuiLink ?? this.webuiLink,
      downloadLink: downloadLink ?? this.downloadLink,
      version: version ?? this.version,
      labels: labels ?? this.labels,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      versions: versions ?? this.versions,
      links: links ?? this.links,
    );
  }
}

class AttachmentSingleLabels {
  final List<Label> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  AttachmentSingleLabels({List<Label>? results, this.meta, this.links})
      : results = results ?? [];

  factory AttachmentSingleLabels.fromJson(Map<String, Object?> json) {
    return AttachmentSingleLabels(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentSingleLabels copyWith(
      {List<Label>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return AttachmentSingleLabels(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class AttachmentSingleOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  AttachmentSingleOperations({List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory AttachmentSingleOperations.fromJson(Map<String, Object?> json) {
    return AttachmentSingleOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentSingleOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return AttachmentSingleOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class AttachmentSingleProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  AttachmentSingleProperties(
      {List<ContentProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory AttachmentSingleProperties.fromJson(Map<String, Object?> json) {
    return AttachmentSingleProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentSingleProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return AttachmentSingleProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class AttachmentSingleVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  AttachmentSingleVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory AttachmentSingleVersions.fromJson(Map<String, Object?> json) {
    return AttachmentSingleVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentSingleVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return AttachmentSingleVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class AttachmentVersion {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;
  final VersionedEntity? attachment;

  AttachmentVersion(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId,
      this.attachment})
      : minorEdit = minorEdit ?? false;

  factory AttachmentVersion.fromJson(Map<String, Object?> json) {
    return AttachmentVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
      attachment: json[r'attachment'] != null
          ? VersionedEntity.fromJson(
              json[r'attachment']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;
    var attachment = this.attachment;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (attachment != null) {
      json[r'attachment'] = attachment.toJson();
    }
    return json;
  }

  AttachmentVersion copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId,
      VersionedEntity? attachment}) {
    return AttachmentVersion(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
      attachment: attachment ?? this.attachment,
    );
  }
}

class BlogPostBodyWrite {
  /// Type of content representation used for the value field.
  final BlogPostBodyWriteRepresentation? representation;

  /// Body of the blog post, in the format found in the representation field.
  final String? value;

  BlogPostBodyWrite({this.representation, this.value});

  factory BlogPostBodyWrite.fromJson(Map<String, Object?> json) {
    return BlogPostBodyWrite(
      representation: json[r'representation'] != null
          ? BlogPostBodyWriteRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var representation = this.representation;
    var value = this.value;

    final json = <String, Object?>{};
    if (representation != null) {
      json[r'representation'] = representation.value;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  BlogPostBodyWrite copyWith(
      {BlogPostBodyWriteRepresentation? representation, String? value}) {
    return BlogPostBodyWrite(
      representation: representation ?? this.representation,
      value: value ?? this.value,
    );
  }
}

class BlogPostBodyWriteRepresentation {
  static const storage = BlogPostBodyWriteRepresentation._('storage');
  static const atlasDocFormat =
      BlogPostBodyWriteRepresentation._('atlas_doc_format');
  static const wiki = BlogPostBodyWriteRepresentation._('wiki');

  static const values = [
    storage,
    atlasDocFormat,
    wiki,
  ];
  final String value;

  const BlogPostBodyWriteRepresentation._(this.value);

  static BlogPostBodyWriteRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BlogPostBodyWriteRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlogPostBulk {
  /// ID of the blog post.
  final String? id;
  final String? status;

  /// Title of the blog post.
  final String? title;

  /// ID of the space the blog post is in.
  final String? spaceId;

  /// The account ID of the user who created this blog post originally.
  final String? authorId;

  /// Date and time when the blog post was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodyBulk? body;
  final AbstractPageLinks? links;

  BlogPostBulk(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.authorId,
      this.createdAt,
      this.version,
      this.body,
      this.links});

  factory BlogPostBulk.fromJson(Map<String, Object?> json) {
    return BlogPostBulk(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? AbstractPageLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostBulk copyWith(
      {String? id,
      String? status,
      String? title,
      String? spaceId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      BodyBulk? body,
      AbstractPageLinks? links}) {
    return BlogPostBulk(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class BlogPostCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post the comment is in.
  final String? blogPostId;
  final Version? version;
  final BodyBulk? body;
  final CommentLinks? links;

  BlogPostCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.version,
      this.body,
      this.links});

  factory BlogPostCommentModel.fromJson(Map<String, Object?> json) {
    return BlogPostCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var blogPostId = this.blogPostId;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? blogPostId,
      Version? version,
      BodyBulk? body,
      CommentLinks? links}) {
    return BlogPostCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class BlogPostCreateRequest {
  /// ID of the space
  final String spaceId;

  /// The status of the blog post, specifies if the blog post will be created as
  /// a new blog post or a draft
  final BlogPostCreateRequestStatus? status;

  /// Title of the blog post, required if creating non-draft.
  final String? title;
  final dynamic body;

  BlogPostCreateRequest(
      {required this.spaceId, this.status, this.title, this.body});

  factory BlogPostCreateRequest.fromJson(Map<String, Object?> json) {
    return BlogPostCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      status: json[r'status'] != null
          ? BlogPostCreateRequestStatus.fromValue(json[r'status']! as String)
          : null,
      title: json[r'title'] as String?,
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var status = this.status;
    var title = this.title;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  BlogPostCreateRequest copyWith(
      {String? spaceId,
      BlogPostCreateRequestStatus? status,
      String? title,
      dynamic body}) {
    return BlogPostCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      status: status ?? this.status,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

class BlogPostCreateRequestStatus {
  static const current = BlogPostCreateRequestStatus._('current');
  static const draft = BlogPostCreateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const BlogPostCreateRequestStatus._(this.value);

  static BlogPostCreateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BlogPostCreateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlogPostInlineCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post the comment is in.
  final String? blogPostId;
  final Version? version;
  final BodyBulk? body;
  final String? resolutionStatus;
  final InlineCommentProperties? properties;
  final CommentLinks? links;

  BlogPostInlineCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.version,
      this.body,
      this.resolutionStatus,
      this.properties,
      this.links});

  factory BlogPostInlineCommentModel.fromJson(Map<String, Object?> json) {
    return BlogPostInlineCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var blogPostId = this.blogPostId;
    var version = this.version;
    var body = this.body;
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostInlineCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? blogPostId,
      Version? version,
      BodyBulk? body,
      String? resolutionStatus,
      InlineCommentProperties? properties,
      CommentLinks? links}) {
    return BlogPostInlineCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      version: version ?? this.version,
      body: body ?? this.body,
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
      links: links ?? this.links,
    );
  }
}

/// Body of the blog post. Only one body format should be specified as the
/// property
/// for this object, e.g. `storage`.
class BlogPostNestedBodyWrite {
  final BlogPostBodyWrite? storage;
  final BlogPostBodyWrite? atlasDocFormat;
  final BlogPostBodyWrite? wiki;

  BlogPostNestedBodyWrite({this.storage, this.atlasDocFormat, this.wiki});

  factory BlogPostNestedBodyWrite.fromJson(Map<String, Object?> json) {
    return BlogPostNestedBodyWrite(
      storage: json[r'storage'] != null
          ? BlogPostBodyWrite.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BlogPostBodyWrite.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      wiki: json[r'wiki'] != null
          ? BlogPostBodyWrite.fromJson(json[r'wiki']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var wiki = this.wiki;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (wiki != null) {
      json[r'wiki'] = wiki.toJson();
    }
    return json;
  }

  BlogPostNestedBodyWrite copyWith(
      {BlogPostBodyWrite? storage,
      BlogPostBodyWrite? atlasDocFormat,
      BlogPostBodyWrite? wiki}) {
    return BlogPostNestedBodyWrite(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      wiki: wiki ?? this.wiki,
    );
  }
}

class BlogPostSingle {
  /// ID of the blog post.
  final String? id;
  final String? status;

  /// Title of the blog post.
  final String? title;

  /// ID of the space the blog post is in.
  final String? spaceId;

  /// The account ID of the user who created this blog post originally.
  final String? authorId;

  /// Date and time when the blog post was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodySingle? body;
  final BlogPostSingleLabels? labels;
  final BlogPostSingleProperties? properties;
  final BlogPostSingleOperations? operations;
  final BlogPostSingleLikes? likes;
  final BlogPostSingleVersions? versions;

  /// Whether the blog post has been favorited by the current user.
  final bool isFavoritedByCurrentUser;
  final AbstractPageLinks? links;

  BlogPostSingle(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.authorId,
      this.createdAt,
      this.version,
      this.body,
      this.labels,
      this.properties,
      this.operations,
      this.likes,
      this.versions,
      bool? isFavoritedByCurrentUser,
      this.links})
      : isFavoritedByCurrentUser = isFavoritedByCurrentUser ?? false;

  factory BlogPostSingle.fromJson(Map<String, Object?> json) {
    return BlogPostSingle(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      labels: json[r'labels'] != null
          ? BlogPostSingleLabels.fromJson(
              json[r'labels']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? BlogPostSingleProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? BlogPostSingleOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      likes: json[r'likes'] != null
          ? BlogPostSingleLikes.fromJson(
              json[r'likes']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? BlogPostSingleVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      isFavoritedByCurrentUser:
          json[r'isFavoritedByCurrentUser'] as bool? ?? false,
      links: json[r'_links'] != null
          ? AbstractPageLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;
    var labels = this.labels;
    var properties = this.properties;
    var operations = this.operations;
    var likes = this.likes;
    var versions = this.versions;
    var isFavoritedByCurrentUser = this.isFavoritedByCurrentUser;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (likes != null) {
      json[r'likes'] = likes.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    json[r'isFavoritedByCurrentUser'] = isFavoritedByCurrentUser;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingle copyWith(
      {String? id,
      String? status,
      String? title,
      String? spaceId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      BodySingle? body,
      BlogPostSingleLabels? labels,
      BlogPostSingleProperties? properties,
      BlogPostSingleOperations? operations,
      BlogPostSingleLikes? likes,
      BlogPostSingleVersions? versions,
      bool? isFavoritedByCurrentUser,
      AbstractPageLinks? links}) {
    return BlogPostSingle(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      labels: labels ?? this.labels,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      likes: likes ?? this.likes,
      versions: versions ?? this.versions,
      isFavoritedByCurrentUser:
          isFavoritedByCurrentUser ?? this.isFavoritedByCurrentUser,
      links: links ?? this.links,
    );
  }
}

class BlogPostSingleLabels {
  final List<Label> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  BlogPostSingleLabels({List<Label>? results, this.meta, this.links})
      : results = results ?? [];

  factory BlogPostSingleLabels.fromJson(Map<String, Object?> json) {
    return BlogPostSingleLabels(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingleLabels copyWith(
      {List<Label>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return BlogPostSingleLabels(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class BlogPostSingleLikes {
  final List<Like> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  BlogPostSingleLikes({List<Like>? results, this.meta, this.links})
      : results = results ?? [];

  factory BlogPostSingleLikes.fromJson(Map<String, Object?> json) {
    return BlogPostSingleLikes(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Like.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingleLikes copyWith(
      {List<Like>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return BlogPostSingleLikes(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class BlogPostSingleOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  BlogPostSingleOperations({List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory BlogPostSingleOperations.fromJson(Map<String, Object?> json) {
    return BlogPostSingleOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingleOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return BlogPostSingleOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class BlogPostSingleProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  BlogPostSingleProperties(
      {List<ContentProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory BlogPostSingleProperties.fromJson(Map<String, Object?> json) {
    return BlogPostSingleProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingleProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return BlogPostSingleProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class BlogPostSingleVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  BlogPostSingleVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory BlogPostSingleVersions.fromJson(Map<String, Object?> json) {
    return BlogPostSingleVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  BlogPostSingleVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return BlogPostSingleVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class BlogPostUpdateRequest {
  /// Id of the blog post.
  final String id;

  /// The updated status of the blog post.
  ///
  /// Note, if you change the status of a blog post from 'current' to 'draft'
  /// and it has an existing draft, the existing draft will be deleted in favor
  /// of the updated draft.
  /// Additionally, this endpoint can be used to restore a 'trashed' or
  /// 'deleted' blog post to 'current' status. For restoration, blog post
  /// contents will not be updated and only the blog post status will be
  /// changed.
  final BlogPostUpdateRequestStatus status;

  /// Title of the blog post.
  final String title;

  /// ID of the containing space.
  ///
  /// This currently **does not support moving the blog post to a different
  /// space**.
  final String? spaceId;
  final dynamic body;
  final BlogPostUpdateRequestVersion version;

  BlogPostUpdateRequest(
      {required this.id,
      required this.status,
      required this.title,
      this.spaceId,
      required this.body,
      required this.version});

  factory BlogPostUpdateRequest.fromJson(Map<String, Object?> json) {
    return BlogPostUpdateRequest(
      id: json[r'id'] as String? ?? '',
      status: BlogPostUpdateRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
      title: json[r'title'] as String? ?? '',
      spaceId: json[r'spaceId'] as String?,
      body: json[r'body'],
      version: BlogPostUpdateRequestVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var body = this.body;
    var version = this.version;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'status'] = status.value;
    json[r'title'] = title;
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    json[r'body'] = body;
    json[r'version'] = version.toJson();
    return json;
  }

  BlogPostUpdateRequest copyWith(
      {String? id,
      BlogPostUpdateRequestStatus? status,
      String? title,
      String? spaceId,
      dynamic body,
      BlogPostUpdateRequestVersion? version}) {
    return BlogPostUpdateRequest(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      body: body ?? this.body,
      version: version ?? this.version,
    );
  }
}

class BlogPostUpdateRequestStatus {
  static const current = BlogPostUpdateRequestStatus._('current');
  static const draft = BlogPostUpdateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const BlogPostUpdateRequestStatus._(this.value);

  static BlogPostUpdateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BlogPostUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BlogPostUpdateRequestVersion {
  /// The new version number of the updated blog post.
  /// Set this to the current version number plus one, unless you are updating
  /// the status to 'draft' which requires a version number of 1.
  ///
  /// If you don't know the current version number, use Get blog post by id.
  final int? number;

  /// An optional message to be stored with the version.
  final String? message;

  BlogPostUpdateRequestVersion({this.number, this.message});

  factory BlogPostUpdateRequestVersion.fromJson(Map<String, Object?> json) {
    return BlogPostUpdateRequestVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  BlogPostUpdateRequestVersion copyWith({int? number, String? message}) {
    return BlogPostUpdateRequestVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class BlogPostVersion {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;
  final VersionedEntity? blogpost;

  BlogPostVersion(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId,
      this.blogpost})
      : minorEdit = minorEdit ?? false;

  factory BlogPostVersion.fromJson(Map<String, Object?> json) {
    return BlogPostVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
      blogpost: json[r'blogpost'] != null
          ? VersionedEntity.fromJson(json[r'blogpost']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;
    var blogpost = this.blogpost;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (blogpost != null) {
      json[r'blogpost'] = blogpost.toJson();
    }
    return json;
  }

  BlogPostVersion copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId,
      VersionedEntity? blogpost}) {
    return BlogPostVersion(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
      blogpost: blogpost ?? this.blogpost,
    );
  }
}

/// Contains fields for each representation type requested.
class BodyBulk {
  final BodyType? storage;
  final BodyType? atlasDocFormat;

  BodyBulk({this.storage, this.atlasDocFormat});

  factory BodyBulk.fromJson(Map<String, Object?> json) {
    return BodyBulk(
      storage: json[r'storage'] != null
          ? BodyType.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BodyType.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    return json;
  }

  BodyBulk copyWith({BodyType? storage, BodyType? atlasDocFormat}) {
    return BodyBulk(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
    );
  }
}

/// Contains fields for each representation type requested.
class BodySingle {
  final BodyType? storage;
  final BodyType? atlasDocFormat;
  final BodyType? view;

  BodySingle({this.storage, this.atlasDocFormat, this.view});

  factory BodySingle.fromJson(Map<String, Object?> json) {
    return BodySingle(
      storage: json[r'storage'] != null
          ? BodyType.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BodyType.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      view: json[r'view'] != null
          ? BodyType.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var view = this.view;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    return json;
  }

  BodySingle copyWith(
      {BodyType? storage, BodyType? atlasDocFormat, BodyType? view}) {
    return BodySingle(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      view: view ?? this.view,
    );
  }
}

class BodyType {
  /// Type of content representation used for the value field.
  final String? representation;

  /// Body of the content, in the format found in the representation field.
  final String? value;

  BodyType({this.representation, this.value});

  factory BodyType.fromJson(Map<String, Object?> json) {
    return BodyType(
      representation: json[r'representation'] as String?,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var representation = this.representation;
    var value = this.value;

    final json = <String, Object?>{};
    if (representation != null) {
      json[r'representation'] = representation;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  BodyType copyWith({String? representation, String? value}) {
    return BodyType(
      representation: representation ?? this.representation,
      value: value ?? this.value,
    );
  }
}

class BulkUsersRequest {
  /// List of accountIds to retrieve user info for.
  final List<String> accountIds;

  BulkUsersRequest({required this.accountIds});

  factory BulkUsersRequest.fromJson(Map<String, Object?> json) {
    return BulkUsersRequest(
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var accountIds = this.accountIds;

    final json = <String, Object?>{};
    json[r'accountIds'] = accountIds;
    return json;
  }

  BulkUsersRequest copyWith({List<String>? accountIds}) {
    return BulkUsersRequest(
      accountIds: accountIds ?? this.accountIds,
    );
  }
}

class CheckAccessOrInviteByEmailRequest {
  /// List of emails to check access to site.
  final List<String> emails;

  CheckAccessOrInviteByEmailRequest({required this.emails});

  factory CheckAccessOrInviteByEmailRequest.fromJson(
      Map<String, Object?> json) {
    return CheckAccessOrInviteByEmailRequest(
      emails: (json[r'emails'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var emails = this.emails;

    final json = <String, Object?>{};
    json[r'emails'] = emails;
    return json;
  }

  CheckAccessOrInviteByEmailRequest copyWith({List<String>? emails}) {
    return CheckAccessOrInviteByEmailRequest(
      emails: emails ?? this.emails,
    );
  }
}

class ChildCustomContent {
  /// ID of the child custom content.
  final String? id;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// Custom content type.
  final String? type;

  /// ID of the space the custom content is in.
  final String? spaceId;

  ChildCustomContent(
      {this.id, this.status, this.title, this.type, this.spaceId});

  factory ChildCustomContent.fromJson(Map<String, Object?> json) {
    return ChildCustomContent(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      type: json[r'type'] as String?,
      spaceId: json[r'spaceId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var type = this.type;
    var spaceId = this.spaceId;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    return json;
  }

  ChildCustomContent copyWith(
      {String? id,
      String? status,
      String? title,
      String? type,
      String? spaceId}) {
    return ChildCustomContent(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      type: type ?? this.type,
      spaceId: spaceId ?? this.spaceId,
    );
  }
}

class ChildPage {
  /// ID of the page.
  final String? id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  final String? spaceId;

  /// Position of child page within the given parent page tree.
  final int? childPosition;

  ChildPage(
      {this.id, this.status, this.title, this.spaceId, this.childPosition});

  factory ChildPage.fromJson(Map<String, Object?> json) {
    return ChildPage(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      childPosition: (json[r'childPosition'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var childPosition = this.childPosition;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (childPosition != null) {
      json[r'childPosition'] = childPosition;
    }
    return json;
  }

  ChildPage copyWith(
      {String? id,
      String? status,
      String? title,
      String? spaceId,
      int? childPosition}) {
    return ChildPage(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      childPosition: childPosition ?? this.childPosition,
    );
  }
}

class ChildrenCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the parent comment the child comment is in.
  final String? parentCommentId;
  final Version? version;
  final BodyBulk? body;
  final CommentLinks? links;

  ChildrenCommentModel(
      {this.id,
      this.status,
      this.title,
      this.parentCommentId,
      this.version,
      this.body,
      this.links});

  factory ChildrenCommentModel.fromJson(Map<String, Object?> json) {
    return ChildrenCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var parentCommentId = this.parentCommentId;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  ChildrenCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? parentCommentId,
      Version? version,
      BodyBulk? body,
      CommentLinks? links}) {
    return ChildrenCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

/// A unit of
/// [data classification](https://support.atlassian.com/security-and-access-policies/docs/what-is-data-classification/)
/// defined by an organiation.
/// A classification level may be associated with specific storage and handling
/// requirements or expectations.
class ClassificationLevel {
  /// The ID of the classification level.
  final String? id;

  /// The status of the classification level.
  final String? status;

  /// The order of the classification level object.
  final num? order;

  /// The name of the classification level object.
  final String? name;

  /// The description of the classification level object.
  final String? description;

  /// The guideline of the classification level object.
  final String? guideline;

  /// The color of the classification level object.
  final String? color;

  ClassificationLevel(
      {this.id,
      this.status,
      this.order,
      this.name,
      this.description,
      this.guideline,
      this.color});

  factory ClassificationLevel.fromJson(Map<String, Object?> json) {
    return ClassificationLevel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      order: json[r'order'] as num?,
      name: json[r'name'] as String?,
      description: json[r'description'] as String?,
      guideline: json[r'guideline'] as String?,
      color: json[r'color'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var order = this.order;
    var name = this.name;
    var description = this.description;
    var guideline = this.guideline;
    var color = this.color;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (order != null) {
      json[r'order'] = order;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (guideline != null) {
      json[r'guideline'] = guideline;
    }
    if (color != null) {
      json[r'color'] = color;
    }
    return json;
  }

  ClassificationLevel copyWith(
      {String? id,
      String? status,
      num? order,
      String? name,
      String? description,
      String? guideline,
      String? color}) {
    return ClassificationLevel(
      id: id ?? this.id,
      status: status ?? this.status,
      order: order ?? this.order,
      name: name ?? this.name,
      description: description ?? this.description,
      guideline: guideline ?? this.guideline,
      color: color ?? this.color,
    );
  }
}

class CommentBodyWrite {
  /// Type of content representation used for the value field.
  final CommentBodyWriteRepresentation? representation;

  /// Body of the comment, in the format found in the representation field.
  final String? value;

  CommentBodyWrite({this.representation, this.value});

  factory CommentBodyWrite.fromJson(Map<String, Object?> json) {
    return CommentBodyWrite(
      representation: json[r'representation'] != null
          ? CommentBodyWriteRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var representation = this.representation;
    var value = this.value;

    final json = <String, Object?>{};
    if (representation != null) {
      json[r'representation'] = representation.value;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  CommentBodyWrite copyWith(
      {CommentBodyWriteRepresentation? representation, String? value}) {
    return CommentBodyWrite(
      representation: representation ?? this.representation,
      value: value ?? this.value,
    );
  }
}

class CommentBodyWriteRepresentation {
  static const storage = CommentBodyWriteRepresentation._('storage');
  static const atlasDocFormat =
      CommentBodyWriteRepresentation._('atlas_doc_format');
  static const wiki = CommentBodyWriteRepresentation._('wiki');

  static const values = [
    storage,
    atlasDocFormat,
    wiki,
  ];
  final String value;

  const CommentBodyWriteRepresentation._(this.value);

  static CommentBodyWriteRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CommentBodyWriteRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CommentLinks {
  /// Web UI link of the content.
  final String? webui;

  CommentLinks({this.webui});

  factory CommentLinks.fromJson(Map<String, Object?> json) {
    return CommentLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  CommentLinks copyWith({String? webui}) {
    return CommentLinks(
      webui: webui ?? this.webui,
    );
  }
}

/// Body of the comment. Only one body format should be specified as the
/// property
/// for this object, e.g. `storage`.
class CommentNestedBodyWrite {
  final CommentBodyWrite? storage;
  final CommentBodyWrite? atlasDocFormat;
  final CommentBodyWrite? wiki;

  CommentNestedBodyWrite({this.storage, this.atlasDocFormat, this.wiki});

  factory CommentNestedBodyWrite.fromJson(Map<String, Object?> json) {
    return CommentNestedBodyWrite(
      storage: json[r'storage'] != null
          ? CommentBodyWrite.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? CommentBodyWrite.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      wiki: json[r'wiki'] != null
          ? CommentBodyWrite.fromJson(json[r'wiki']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var wiki = this.wiki;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (wiki != null) {
      json[r'wiki'] = wiki.toJson();
    }
    return json;
  }

  CommentNestedBodyWrite copyWith(
      {CommentBodyWrite? storage,
      CommentBodyWrite? atlasDocFormat,
      CommentBodyWrite? wiki}) {
    return CommentNestedBodyWrite(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      wiki: wiki ?? this.wiki,
    );
  }
}

class CommentVersion {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;
  final VersionedEntity? comment;

  CommentVersion(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId,
      this.comment})
      : minorEdit = minorEdit ?? false;

  factory CommentVersion.fromJson(Map<String, Object?> json) {
    return CommentVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
      comment: json[r'comment'] != null
          ? VersionedEntity.fromJson(json[r'comment']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;
    var comment = this.comment;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    return json;
  }

  CommentVersion copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId,
      VersionedEntity? comment}) {
    return CommentVersion(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
      comment: comment ?? this.comment,
    );
  }
}

class ContentClassificationLevelDeleteRequest {
  /// Status of the content.
  final ContentClassificationLevelDeleteRequestStatus status;

  ContentClassificationLevelDeleteRequest({required this.status});

  factory ContentClassificationLevelDeleteRequest.fromJson(
      Map<String, Object?> json) {
    return ContentClassificationLevelDeleteRequest(
      status: ContentClassificationLevelDeleteRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var status = this.status;

    final json = <String, Object?>{};
    json[r'status'] = status.value;
    return json;
  }

  ContentClassificationLevelDeleteRequest copyWith(
      {ContentClassificationLevelDeleteRequestStatus? status}) {
    return ContentClassificationLevelDeleteRequest(
      status: status ?? this.status,
    );
  }
}

class ContentClassificationLevelDeleteRequestStatus {
  static const current =
      ContentClassificationLevelDeleteRequestStatus._('current');
  static const draft = ContentClassificationLevelDeleteRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const ContentClassificationLevelDeleteRequestStatus._(this.value);

  static ContentClassificationLevelDeleteRequestStatus fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentClassificationLevelDeleteRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentClassificationLevelUpdateRequest {
  /// The ID of the classification level.
  final String id;

  /// Status of the content.
  final ContentClassificationLevelUpdateRequestStatus status;

  ContentClassificationLevelUpdateRequest(
      {required this.id, required this.status});

  factory ContentClassificationLevelUpdateRequest.fromJson(
      Map<String, Object?> json) {
    return ContentClassificationLevelUpdateRequest(
      id: json[r'id'] as String? ?? '',
      status: ContentClassificationLevelUpdateRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'status'] = status.value;
    return json;
  }

  ContentClassificationLevelUpdateRequest copyWith(
      {String? id, ContentClassificationLevelUpdateRequestStatus? status}) {
    return ContentClassificationLevelUpdateRequest(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }
}

class ContentClassificationLevelUpdateRequestStatus {
  static const current =
      ContentClassificationLevelUpdateRequestStatus._('current');
  static const draft = ContentClassificationLevelUpdateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const ContentClassificationLevelUpdateRequestStatus._(this.value);

  static ContentClassificationLevelUpdateRequestStatus fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ContentClassificationLevelUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ContentIdToContentTypeRequest {
  /// The content ids to convert. They may be provided as strings or numbers.
  final List<dynamic> contentIds;

  ContentIdToContentTypeRequest({required this.contentIds});

  factory ContentIdToContentTypeRequest.fromJson(Map<String, Object?> json) {
    return ContentIdToContentTypeRequest(
      contentIds:
          (json[r'contentIds'] as List<Object?>?)?.map((i) => i).toList() ?? [],
    );
  }

  Map<String, Object?> toJson() {
    var contentIds = this.contentIds;

    final json = <String, Object?>{};
    json[r'contentIds'] = contentIds;
    return json;
  }

  ContentIdToContentTypeRequest copyWith({List<dynamic>? contentIds}) {
    return ContentIdToContentTypeRequest(
      contentIds: contentIds ?? this.contentIds,
    );
  }
}

class ContentIdToContentTypeResponse {
  /// JSON object containing all requested content ids as keys and their
  /// associated content types as the values.
  /// Duplicate content ids in the request will be returned under a single key
  /// in the response. For built-in content
  /// types, the enumerations are as specified. Custom content ids will be
  /// mapped to their associated type.
  final Map<String, dynamic>? results;

  ContentIdToContentTypeResponse({this.results});

  factory ContentIdToContentTypeResponse.fromJson(Map<String, Object?> json) {
    return ContentIdToContentTypeResponse(
      results: json[r'results'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;

    final json = <String, Object?>{};
    if (results != null) {
      json[r'results'] = results;
    }
    return json;
  }

  ContentIdToContentTypeResponse copyWith({Map<String, dynamic>? results}) {
    return ContentIdToContentTypeResponse(
      results: results ?? this.results,
    );
  }
}

class ContentProperty {
  /// ID of the property
  final String? id;

  /// Key of the property
  final String? key;

  /// Value of the property. Must be a valid JSON value.
  final dynamic value;
  final Version? version;

  ContentProperty({this.id, this.key, this.value, this.version});

  factory ContentProperty.fromJson(Map<String, Object?> json) {
    return ContentProperty(
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      value: json[r'value'],
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var value = this.value;
    var version = this.version;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    return json;
  }

  ContentProperty copyWith(
      {String? id, String? key, dynamic value, Version? version}) {
    return ContentProperty(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

class ContentPropertyCreateRequest {
  /// Key of the content property
  final String? key;

  /// Value of the content property.
  final dynamic value;

  ContentPropertyCreateRequest({this.key, this.value});

  factory ContentPropertyCreateRequest.fromJson(Map<String, Object?> json) {
    return ContentPropertyCreateRequest(
      key: json[r'key'] as String?,
      value: json[r'value'],
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  ContentPropertyCreateRequest copyWith({String? key, dynamic value}) {
    return ContentPropertyCreateRequest(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class ContentPropertyUpdateRequest {
  /// Key of the content property
  final String? key;

  /// Value of the content property.
  final dynamic value;

  /// New version number and associated message
  final ContentPropertyUpdateRequestVersion? version;

  ContentPropertyUpdateRequest({this.key, this.value, this.version});

  factory ContentPropertyUpdateRequest.fromJson(Map<String, Object?> json) {
    return ContentPropertyUpdateRequest(
      key: json[r'key'] as String?,
      value: json[r'value'],
      version: json[r'version'] != null
          ? ContentPropertyUpdateRequestVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;
    var version = this.version;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    return json;
  }

  ContentPropertyUpdateRequest copyWith(
      {String? key,
      dynamic value,
      ContentPropertyUpdateRequestVersion? version}) {
    return ContentPropertyUpdateRequest(
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

/// New version number and associated message
class ContentPropertyUpdateRequestVersion {
  /// Version number of the new version. Should be 1 more than the current
  /// version number.
  final int? number;

  /// Message to be associated with the new version.
  final String? message;

  ContentPropertyUpdateRequestVersion({this.number, this.message});

  factory ContentPropertyUpdateRequestVersion.fromJson(
      Map<String, Object?> json) {
    return ContentPropertyUpdateRequestVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  ContentPropertyUpdateRequestVersion copyWith({int? number, String? message}) {
    return ContentPropertyUpdateRequestVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class CreateFooterCommentModel {
  /// ID of the containing blog post, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final String? blogPostId;

  /// ID of the containing page, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final String? pageId;

  /// ID of the parent comment, if intending to create a reply. Do not provide
  /// if creating a top level comment.
  final String? parentCommentId;

  /// ID of the attachment, if intending to create a comment against an
  /// attachment.
  final String? attachmentId;

  /// ID of the custom content, if intending to create a comment against a
  /// custom content.
  final String? customContentId;
  final dynamic body;

  CreateFooterCommentModel(
      {this.blogPostId,
      this.pageId,
      this.parentCommentId,
      this.attachmentId,
      this.customContentId,
      this.body});

  factory CreateFooterCommentModel.fromJson(Map<String, Object?> json) {
    return CreateFooterCommentModel(
      blogPostId: json[r'blogPostId'] as String?,
      pageId: json[r'pageId'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      attachmentId: json[r'attachmentId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
    var parentCommentId = this.parentCommentId;
    var attachmentId = this.attachmentId;
    var customContentId = this.customContentId;
    var body = this.body;

    final json = <String, Object?>{};
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  CreateFooterCommentModel copyWith(
      {String? blogPostId,
      String? pageId,
      String? parentCommentId,
      String? attachmentId,
      String? customContentId,
      dynamic body}) {
    return CreateFooterCommentModel(
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      attachmentId: attachmentId ?? this.attachmentId,
      customContentId: customContentId ?? this.customContentId,
      body: body ?? this.body,
    );
  }
}

class CreateInlineCommentModel {
  /// ID of the containing blog post, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final String? blogPostId;

  /// ID of the containing page, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final String? pageId;

  /// ID of the parent comment, if intending to create a reply. Do not provide
  /// if creating a top level comment.
  final String? parentCommentId;
  final dynamic body;

  /// Object describing the text to highlight on the page/blog post. Only
  /// applicable for top level inline comments (not replies) and required in
  /// that case.
  final CreateInlineCommentModelInlineCommentProperties?
      inlineCommentProperties;

  CreateInlineCommentModel(
      {this.blogPostId,
      this.pageId,
      this.parentCommentId,
      this.body,
      this.inlineCommentProperties});

  factory CreateInlineCommentModel.fromJson(Map<String, Object?> json) {
    return CreateInlineCommentModel(
      blogPostId: json[r'blogPostId'] as String?,
      pageId: json[r'pageId'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      body: json[r'body'],
      inlineCommentProperties: json[r'inlineCommentProperties'] != null
          ? CreateInlineCommentModelInlineCommentProperties.fromJson(
              json[r'inlineCommentProperties']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
    var parentCommentId = this.parentCommentId;
    var body = this.body;
    var inlineCommentProperties = this.inlineCommentProperties;

    final json = <String, Object?>{};
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (inlineCommentProperties != null) {
      json[r'inlineCommentProperties'] = inlineCommentProperties.toJson();
    }
    return json;
  }

  CreateInlineCommentModel copyWith(
      {String? blogPostId,
      String? pageId,
      String? parentCommentId,
      dynamic body,
      CreateInlineCommentModelInlineCommentProperties?
          inlineCommentProperties}) {
    return CreateInlineCommentModel(
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      body: body ?? this.body,
      inlineCommentProperties:
          inlineCommentProperties ?? this.inlineCommentProperties,
    );
  }
}

/// Object describing the text to highlight on the page/blog post. Only
/// applicable for top level inline comments (not replies) and required in that
/// case.
class CreateInlineCommentModelInlineCommentProperties {
  /// The text to highlight
  final String? textSelection;

  /// The number of matches for the selected text on the page (should be
  /// strictly greater than textSelectionMatchIndex)
  final int? textSelectionMatchCount;

  /// The match index to highlight. This is zero-based. E.g. if you have 3
  /// occurrences of "hello world" on a page
  /// and you want to highlight the second occurrence, you should pass 1 for
  /// textSelectionMatchIndex and 3 for textSelectionMatchCount.
  final int? textSelectionMatchIndex;

  CreateInlineCommentModelInlineCommentProperties(
      {this.textSelection,
      this.textSelectionMatchCount,
      this.textSelectionMatchIndex});

  factory CreateInlineCommentModelInlineCommentProperties.fromJson(
      Map<String, Object?> json) {
    return CreateInlineCommentModelInlineCommentProperties(
      textSelection: json[r'textSelection'] as String?,
      textSelectionMatchCount:
          (json[r'textSelectionMatchCount'] as num?)?.toInt(),
      textSelectionMatchIndex:
          (json[r'textSelectionMatchIndex'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var textSelection = this.textSelection;
    var textSelectionMatchCount = this.textSelectionMatchCount;
    var textSelectionMatchIndex = this.textSelectionMatchIndex;

    final json = <String, Object?>{};
    if (textSelection != null) {
      json[r'textSelection'] = textSelection;
    }
    if (textSelectionMatchCount != null) {
      json[r'textSelectionMatchCount'] = textSelectionMatchCount;
    }
    if (textSelectionMatchIndex != null) {
      json[r'textSelectionMatchIndex'] = textSelectionMatchIndex;
    }
    return json;
  }

  CreateInlineCommentModelInlineCommentProperties copyWith(
      {String? textSelection,
      int? textSelectionMatchCount,
      int? textSelectionMatchIndex}) {
    return CreateInlineCommentModelInlineCommentProperties(
      textSelection: textSelection ?? this.textSelection,
      textSelectionMatchCount:
          textSelectionMatchCount ?? this.textSelectionMatchCount,
      textSelectionMatchIndex:
          textSelectionMatchIndex ?? this.textSelectionMatchIndex,
    );
  }
}

/// Contains fields for each representation type requested.
class CustomContentBodyBulk {
  final BodyType? raw;
  final BodyType? storage;
  final BodyType? atlasDocFormat;

  CustomContentBodyBulk({this.raw, this.storage, this.atlasDocFormat});

  factory CustomContentBodyBulk.fromJson(Map<String, Object?> json) {
    return CustomContentBodyBulk(
      raw: json[r'raw'] != null
          ? BodyType.fromJson(json[r'raw']! as Map<String, Object?>)
          : null,
      storage: json[r'storage'] != null
          ? BodyType.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BodyType.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var raw = this.raw;
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;

    final json = <String, Object?>{};
    if (raw != null) {
      json[r'raw'] = raw.toJson();
    }
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    return json;
  }

  CustomContentBodyBulk copyWith(
      {BodyType? raw, BodyType? storage, BodyType? atlasDocFormat}) {
    return CustomContentBodyBulk(
      raw: raw ?? this.raw,
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
    );
  }
}

/// Contains fields for each representation type requested.
class CustomContentBodySingle {
  final BodyType? raw;
  final BodyType? storage;
  final BodyType? atlasDocFormat;
  final BodyType? view;

  CustomContentBodySingle(
      {this.raw, this.storage, this.atlasDocFormat, this.view});

  factory CustomContentBodySingle.fromJson(Map<String, Object?> json) {
    return CustomContentBodySingle(
      raw: json[r'raw'] != null
          ? BodyType.fromJson(json[r'raw']! as Map<String, Object?>)
          : null,
      storage: json[r'storage'] != null
          ? BodyType.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BodyType.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      view: json[r'view'] != null
          ? BodyType.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var raw = this.raw;
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var view = this.view;

    final json = <String, Object?>{};
    if (raw != null) {
      json[r'raw'] = raw.toJson();
    }
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    return json;
  }

  CustomContentBodySingle copyWith(
      {BodyType? raw,
      BodyType? storage,
      BodyType? atlasDocFormat,
      BodyType? view}) {
    return CustomContentBodySingle(
      raw: raw ?? this.raw,
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      view: view ?? this.view,
    );
  }
}

class CustomContentBodyWrite {
  /// Type of content representation used for the value field.
  final CustomContentBodyWriteRepresentation? representation;

  /// Body of the custom content, in the format found in the representation
  /// field.
  final String? value;

  CustomContentBodyWrite({this.representation, this.value});

  factory CustomContentBodyWrite.fromJson(Map<String, Object?> json) {
    return CustomContentBodyWrite(
      representation: json[r'representation'] != null
          ? CustomContentBodyWriteRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var representation = this.representation;
    var value = this.value;

    final json = <String, Object?>{};
    if (representation != null) {
      json[r'representation'] = representation.value;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  CustomContentBodyWrite copyWith(
      {CustomContentBodyWriteRepresentation? representation, String? value}) {
    return CustomContentBodyWrite(
      representation: representation ?? this.representation,
      value: value ?? this.value,
    );
  }
}

class CustomContentBodyWriteRepresentation {
  static const storage = CustomContentBodyWriteRepresentation._('storage');
  static const atlasDocFormat =
      CustomContentBodyWriteRepresentation._('atlas_doc_format');
  static const raw = CustomContentBodyWriteRepresentation._('raw');

  static const values = [
    storage,
    atlasDocFormat,
    raw,
  ];
  final String value;

  const CustomContentBodyWriteRepresentation._(this.value);

  static CustomContentBodyWriteRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentBodyWriteRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentBulk {
  /// ID of the custom content.
  final String? id;

  /// The type of custom content.
  final String? type;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// ID of the space the custom content is in.
  ///
  /// Note: This is always returned, regardless of if the custom content has a
  /// container that is a space.
  final String? spaceId;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a page.
  final String? pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a blog post.
  final String? blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// custom content.
  final String? customContentId;

  /// The account ID of the user who created this custom content originally.
  final String? authorId;

  /// Date and time when the custom content was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final CustomContentBodyBulk? body;
  final CustomContentLinks? links;

  CustomContentBulk(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      this.authorId,
      this.createdAt,
      this.version,
      this.body,
      this.links});

  factory CustomContentBulk.fromJson(Map<String, Object?> json) {
    return CustomContentBulk(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? CustomContentBodyBulk.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CustomContentLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentBulk copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      CustomContentBodyBulk? body,
      CustomContentLinks? links}) {
    return CustomContentBulk(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class CustomContentCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the custom content containing the comment.
  final String? customContentId;
  final Version? version;
  final BodySingle? body;
  final CommentLinks? links;

  CustomContentCommentModel(
      {this.id,
      this.status,
      this.title,
      this.customContentId,
      this.version,
      this.body,
      this.links});

  factory CustomContentCommentModel.fromJson(Map<String, Object?> json) {
    return CustomContentCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      customContentId: json[r'customContentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var customContentId = this.customContentId;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? customContentId,
      Version? version,
      BodySingle? body,
      CommentLinks? links}) {
    return CustomContentCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      customContentId: customContentId ?? this.customContentId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class CustomContentCreateRequest {
  /// Type of custom content.
  final String type;

  /// The status of the custom content.
  final CustomContentCreateRequestStatus? status;

  /// ID of the containing space.
  final String? spaceId;

  /// ID of the containing page.
  final String? pageId;

  /// ID of the containing Blog Post.
  final String? blogPostId;

  /// ID of the containing custom content.
  final String? customContentId;

  /// Title of the custom content.
  final String title;
  final dynamic body;

  CustomContentCreateRequest(
      {required this.type,
      this.status,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      required this.title,
      required this.body});

  factory CustomContentCreateRequest.fromJson(Map<String, Object?> json) {
    return CustomContentCreateRequest(
      type: json[r'type'] as String? ?? '',
      status: json[r'status'] != null
          ? CustomContentCreateRequestStatus.fromValue(
              json[r'status']! as String)
          : null,
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      title: json[r'title'] as String? ?? '',
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var status = this.status;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var title = this.title;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'type'] = type;
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    json[r'title'] = title;
    json[r'body'] = body;
    return json;
  }

  CustomContentCreateRequest copyWith(
      {String? type,
      CustomContentCreateRequestStatus? status,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? title,
      dynamic body}) {
    return CustomContentCreateRequest(
      type: type ?? this.type,
      status: status ?? this.status,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}

class CustomContentCreateRequestStatus {
  static const current = CustomContentCreateRequestStatus._('current');

  static const values = [
    current,
  ];
  final String value;

  const CustomContentCreateRequestStatus._(this.value);

  static CustomContentCreateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentCreateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentLinks {
  /// Web UI link of the content.
  final String? webui;

  CustomContentLinks({this.webui});

  factory CustomContentLinks.fromJson(Map<String, Object?> json) {
    return CustomContentLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  CustomContentLinks copyWith({String? webui}) {
    return CustomContentLinks(
      webui: webui ?? this.webui,
    );
  }
}

/// Body of the custom content. Only one body format should be specified as the
/// property
/// for this object, e.g. `storage`.
class CustomContentNestedBodyWrite {
  final CustomContentBodyWrite? storage;
  final CustomContentBodyWrite? atlasDocFormat;
  final CustomContentBodyWrite? raw;

  CustomContentNestedBodyWrite({this.storage, this.atlasDocFormat, this.raw});

  factory CustomContentNestedBodyWrite.fromJson(Map<String, Object?> json) {
    return CustomContentNestedBodyWrite(
      storage: json[r'storage'] != null
          ? CustomContentBodyWrite.fromJson(
              json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? CustomContentBodyWrite.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      raw: json[r'raw'] != null
          ? CustomContentBodyWrite.fromJson(
              json[r'raw']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var raw = this.raw;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (raw != null) {
      json[r'raw'] = raw.toJson();
    }
    return json;
  }

  CustomContentNestedBodyWrite copyWith(
      {CustomContentBodyWrite? storage,
      CustomContentBodyWrite? atlasDocFormat,
      CustomContentBodyWrite? raw}) {
    return CustomContentNestedBodyWrite(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      raw: raw ?? this.raw,
    );
  }
}

class CustomContentSingle {
  /// ID of the custom content.
  final String? id;

  /// The type of custom content.
  final String? type;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// ID of the space the custom content is in.
  ///
  /// Note: This is always returned, regardless of if the custom content has a
  /// container that is a space.
  final String? spaceId;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a page.
  final String? pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a blog post.
  final String? blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// custom content.
  final String? customContentId;

  /// The account ID of the user who created this custom content originally.
  final String? authorId;

  /// Date and time when the custom content was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final CustomContentSingleLabels? labels;
  final CustomContentSingleProperties? properties;
  final CustomContentSingleOperations? operations;
  final CustomContentSingleVersions? versions;
  final CustomContentBodySingle? body;
  final CustomContentLinks? links;

  CustomContentSingle(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      this.authorId,
      this.createdAt,
      this.version,
      this.labels,
      this.properties,
      this.operations,
      this.versions,
      this.body,
      this.links});

  factory CustomContentSingle.fromJson(Map<String, Object?> json) {
    return CustomContentSingle(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      labels: json[r'labels'] != null
          ? CustomContentSingleLabels.fromJson(
              json[r'labels']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? CustomContentSingleProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? CustomContentSingleOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? CustomContentSingleVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? CustomContentBodySingle.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CustomContentLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var version = this.version;
    var labels = this.labels;
    var properties = this.properties;
    var operations = this.operations;
    var versions = this.versions;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentSingle copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      CustomContentSingleLabels? labels,
      CustomContentSingleProperties? properties,
      CustomContentSingleOperations? operations,
      CustomContentSingleVersions? versions,
      CustomContentBodySingle? body,
      CustomContentLinks? links}) {
    return CustomContentSingle(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      labels: labels ?? this.labels,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      versions: versions ?? this.versions,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class CustomContentSingleLabels {
  final List<Label> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  CustomContentSingleLabels({List<Label>? results, this.meta, this.links})
      : results = results ?? [];

  factory CustomContentSingleLabels.fromJson(Map<String, Object?> json) {
    return CustomContentSingleLabels(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentSingleLabels copyWith(
      {List<Label>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return CustomContentSingleLabels(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class CustomContentSingleOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  CustomContentSingleOperations(
      {List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory CustomContentSingleOperations.fromJson(Map<String, Object?> json) {
    return CustomContentSingleOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentSingleOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return CustomContentSingleOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class CustomContentSingleProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  CustomContentSingleProperties(
      {List<ContentProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory CustomContentSingleProperties.fromJson(Map<String, Object?> json) {
    return CustomContentSingleProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentSingleProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return CustomContentSingleProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class CustomContentSingleVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  CustomContentSingleVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory CustomContentSingleVersions.fromJson(Map<String, Object?> json) {
    return CustomContentSingleVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomContentSingleVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return CustomContentSingleVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class CustomContentUpdateRequest {
  /// Id of custom content.
  final String id;

  /// Type of custom content.
  final String type;

  /// The status of the custom content.
  final CustomContentUpdateRequestStatus status;

  /// ID of the containing space.
  final String? spaceId;

  /// ID of the containing page.
  final String? pageId;

  /// ID of the containing Blog Post.
  final String? blogPostId;

  /// ID of the containing custom content.
  final String? customContentId;

  /// Title of the custom content.
  final String title;
  final dynamic body;
  final CustomContentUpdateRequestVersion version;

  CustomContentUpdateRequest(
      {required this.id,
      required this.type,
      required this.status,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      this.customContentId,
      required this.title,
      required this.body,
      required this.version});

  factory CustomContentUpdateRequest.fromJson(Map<String, Object?> json) {
    return CustomContentUpdateRequest(
      id: json[r'id'] as String? ?? '',
      type: json[r'type'] as String? ?? '',
      status: CustomContentUpdateRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      title: json[r'title'] as String? ?? '',
      body: json[r'body'],
      version: CustomContentUpdateRequestVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var customContentId = this.customContentId;
    var title = this.title;
    var body = this.body;
    var version = this.version;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'type'] = type;
    json[r'status'] = status.value;
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    json[r'title'] = title;
    json[r'body'] = body;
    json[r'version'] = version.toJson();
    return json;
  }

  CustomContentUpdateRequest copyWith(
      {String? id,
      String? type,
      CustomContentUpdateRequestStatus? status,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      String? customContentId,
      String? title,
      dynamic body,
      CustomContentUpdateRequestVersion? version}) {
    return CustomContentUpdateRequest(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      customContentId: customContentId ?? this.customContentId,
      title: title ?? this.title,
      body: body ?? this.body,
      version: version ?? this.version,
    );
  }
}

class CustomContentUpdateRequestStatus {
  static const current = CustomContentUpdateRequestStatus._('current');

  static const values = [
    current,
  ];
  final String value;

  const CustomContentUpdateRequestStatus._(this.value);

  static CustomContentUpdateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomContentUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomContentUpdateRequestVersion {
  /// The version number, must be incremented by one.
  final int? number;

  /// An optional message to be stored with the version.
  final String? message;

  CustomContentUpdateRequestVersion({this.number, this.message});

  factory CustomContentUpdateRequestVersion.fromJson(
      Map<String, Object?> json) {
    return CustomContentUpdateRequestVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  CustomContentUpdateRequestVersion copyWith({int? number, String? message}) {
    return CustomContentUpdateRequestVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class CustomContentVersion {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;
  final VersionedEntity? custom;

  CustomContentVersion(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId,
      this.custom})
      : minorEdit = minorEdit ?? false;

  factory CustomContentVersion.fromJson(Map<String, Object?> json) {
    return CustomContentVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
      custom: json[r'custom'] != null
          ? VersionedEntity.fromJson(json[r'custom']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;
    var custom = this.custom;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (custom != null) {
      json[r'custom'] = custom.toJson();
    }
    return json;
  }

  CustomContentVersion copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId,
      VersionedEntity? custom}) {
    return CustomContentVersion(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
      custom: custom ?? this.custom,
    );
  }
}

/// Details about data policies.
class DataPolicyMetadata {
  /// Whether the workspace contains any content blocked for (inaccessible to)
  /// the requesting client application.
  final bool anyContentBlocked;

  DataPolicyMetadata({bool? anyContentBlocked})
      : anyContentBlocked = anyContentBlocked ?? false;

  factory DataPolicyMetadata.fromJson(Map<String, Object?> json) {
    return DataPolicyMetadata(
      anyContentBlocked: json[r'anyContentBlocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var anyContentBlocked = this.anyContentBlocked;

    final json = <String, Object?>{};
    json[r'anyContentBlocked'] = anyContentBlocked;
    return json;
  }

  DataPolicyMetadata copyWith({bool? anyContentBlocked}) {
    return DataPolicyMetadata(
      anyContentBlocked: anyContentBlocked ?? this.anyContentBlocked,
    );
  }
}

class DataPolicySpace {
  /// ID of the space.
  final String? id;

  /// Key of the space.
  final String? key;

  /// Name of the space.
  final String? name;
  final SpaceDescription? description;
  final DataPolicySpaceDataPolicy? dataPolicy;
  final SpaceIcon? icon;
  final SpaceLinks? links;

  DataPolicySpace(
      {this.id,
      this.key,
      this.name,
      this.description,
      this.dataPolicy,
      this.icon,
      this.links});

  factory DataPolicySpace.fromJson(Map<String, Object?> json) {
    return DataPolicySpace(
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      dataPolicy: json[r'dataPolicy'] != null
          ? DataPolicySpaceDataPolicy.fromJson(
              json[r'dataPolicy']! as Map<String, Object?>)
          : null,
      icon: json[r'icon'] != null
          ? SpaceIcon.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? SpaceLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var description = this.description;
    var dataPolicy = this.dataPolicy;
    var icon = this.icon;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    if (dataPolicy != null) {
      json[r'dataPolicy'] = dataPolicy.toJson();
    }
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  DataPolicySpace copyWith(
      {String? id,
      String? key,
      String? name,
      SpaceDescription? description,
      DataPolicySpaceDataPolicy? dataPolicy,
      SpaceIcon? icon,
      SpaceLinks? links}) {
    return DataPolicySpace(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      description: description ?? this.description,
      dataPolicy: dataPolicy ?? this.dataPolicy,
      icon: icon ?? this.icon,
      links: links ?? this.links,
    );
  }
}

class DataPolicySpaceDataPolicy {
  /// Whether the space contains any content blocked for (inaccessible to) the
  /// requesting client application.
  final bool anyContentBlocked;

  DataPolicySpaceDataPolicy({bool? anyContentBlocked})
      : anyContentBlocked = anyContentBlocked ?? false;

  factory DataPolicySpaceDataPolicy.fromJson(Map<String, Object?> json) {
    return DataPolicySpaceDataPolicy(
      anyContentBlocked: json[r'anyContentBlocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var anyContentBlocked = this.anyContentBlocked;

    final json = <String, Object?>{};
    json[r'anyContentBlocked'] = anyContentBlocked;
    return json;
  }

  DataPolicySpaceDataPolicy copyWith({bool? anyContentBlocked}) {
    return DataPolicySpaceDataPolicy(
      anyContentBlocked: anyContentBlocked ?? this.anyContentBlocked,
    );
  }
}

class DatabaseCreateRequest {
  /// ID of the space.
  final String spaceId;

  /// Title of the database.
  final String? title;

  /// The parent content ID of the database.
  final String? parentId;

  DatabaseCreateRequest({required this.spaceId, this.title, this.parentId});

  factory DatabaseCreateRequest.fromJson(Map<String, Object?> json) {
    return DatabaseCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var title = this.title;
    var parentId = this.parentId;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    return json;
  }

  DatabaseCreateRequest copyWith(
      {String? spaceId, String? title, String? parentId}) {
    return DatabaseCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
    );
  }
}

class DatabaseLinks {
  /// Web UI link of the content.
  final String? webui;

  DatabaseLinks({this.webui});

  factory DatabaseLinks.fromJson(Map<String, Object?> json) {
    return DatabaseLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  DatabaseLinks copyWith({String? webui}) {
    return DatabaseLinks(
      webui: webui ?? this.webui,
    );
  }
}

class DatabaseSingle {
  /// ID of the database.
  final String? id;

  /// The content type of the object.
  final String? type;
  final String? status;

  /// Title of the database.
  final String? title;

  /// ID of the parent content, or null if there is no parent content.
  final String? parentId;
  final String? parentType;

  /// Position of the database within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this database originally.
  final String? authorId;

  /// The account ID of the user who owns this database.
  final String? ownerId;

  /// Date and time when the database was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final DatabaseLinks? links;

  DatabaseSingle(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.createdAt,
      this.version,
      this.links});

  factory DatabaseSingle.fromJson(Map<String, Object?> json) {
    return DatabaseSingle(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? DatabaseLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var createdAt = this.createdAt;
    var version = this.version;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  DatabaseSingle copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      DateTime? createdAt,
      Version? version,
      DatabaseLinks? links}) {
    return DatabaseSingle(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      links: links ?? this.links,
    );
  }
}

class DetailedVersion {
  /// The current version number.
  final int? number;

  /// The account ID of the user who created this version.
  final String? authorId;

  /// Message associated with the current version.
  final String? message;

  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// Describes if the content type is modified in this version (e.g. page to
  /// blog)
  final bool contentTypeModified;

  /// The account IDs of users that collaborated on this version.
  final List<String> collaborators;

  /// The version number of the version prior to this current content update.
  final int? prevVersion;

  /// The version number of the version after this current content update.
  final int? nextVersion;

  DetailedVersion(
      {this.number,
      this.authorId,
      this.message,
      this.createdAt,
      bool? minorEdit,
      bool? contentTypeModified,
      List<String>? collaborators,
      this.prevVersion,
      this.nextVersion})
      : minorEdit = minorEdit ?? false,
        contentTypeModified = contentTypeModified ?? false,
        collaborators = collaborators ?? [];

  factory DetailedVersion.fromJson(Map<String, Object?> json) {
    return DetailedVersion(
      number: (json[r'number'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      message: json[r'message'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      contentTypeModified: json[r'contentTypeModified'] as bool? ?? false,
      collaborators: (json[r'collaborators'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      prevVersion: (json[r'prevVersion'] as num?)?.toInt(),
      nextVersion: (json[r'nextVersion'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var authorId = this.authorId;
    var message = this.message;
    var createdAt = this.createdAt;
    var minorEdit = this.minorEdit;
    var contentTypeModified = this.contentTypeModified;
    var collaborators = this.collaborators;
    var prevVersion = this.prevVersion;
    var nextVersion = this.nextVersion;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    json[r'minorEdit'] = minorEdit;
    json[r'contentTypeModified'] = contentTypeModified;
    json[r'collaborators'] = collaborators;
    if (prevVersion != null) {
      json[r'prevVersion'] = prevVersion;
    }
    if (nextVersion != null) {
      json[r'nextVersion'] = nextVersion;
    }
    return json;
  }

  DetailedVersion copyWith(
      {int? number,
      String? authorId,
      String? message,
      DateTime? createdAt,
      bool? minorEdit,
      bool? contentTypeModified,
      List<String>? collaborators,
      int? prevVersion,
      int? nextVersion}) {
    return DetailedVersion(
      number: number ?? this.number,
      authorId: authorId ?? this.authorId,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
      minorEdit: minorEdit ?? this.minorEdit,
      contentTypeModified: contentTypeModified ?? this.contentTypeModified,
      collaborators: collaborators ?? this.collaborators,
      prevVersion: prevVersion ?? this.prevVersion,
      nextVersion: nextVersion ?? this.nextVersion,
    );
  }
}

class FolderCreateRequest {
  /// ID of the space.
  final String spaceId;

  /// Title of the folder.
  final String? title;

  /// The parent content ID of the folder.
  final String? parentId;

  FolderCreateRequest({required this.spaceId, this.title, this.parentId});

  factory FolderCreateRequest.fromJson(Map<String, Object?> json) {
    return FolderCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var title = this.title;
    var parentId = this.parentId;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    return json;
  }

  FolderCreateRequest copyWith(
      {String? spaceId, String? title, String? parentId}) {
    return FolderCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
    );
  }
}

class FolderLinks {
  /// Web UI link of the content.
  final String? webui;

  FolderLinks({this.webui});

  factory FolderLinks.fromJson(Map<String, Object?> json) {
    return FolderLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  FolderLinks copyWith({String? webui}) {
    return FolderLinks(
      webui: webui ?? this.webui,
    );
  }
}

class FolderSingle {
  /// ID of the folder.
  final String? id;

  /// The content type of the object.
  final String? type;
  final String? status;

  /// Title of the folder.
  final String? title;

  /// ID of the parent content, or null if there is no parent content.
  final String? parentId;
  final String? parentType;

  /// Position of the folder within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this folder.
  final String? authorId;

  /// The account ID of the user who owns this folder.
  final String? ownerId;

  /// Date and time when the folder was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final FolderLinks? links;

  FolderSingle(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.createdAt,
      this.version,
      this.links});

  factory FolderSingle.fromJson(Map<String, Object?> json) {
    return FolderSingle(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? FolderLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var createdAt = this.createdAt;
    var version = this.version;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FolderSingle copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      DateTime? createdAt,
      Version? version,
      FolderLinks? links}) {
    return FolderSingle(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      links: links ?? this.links,
    );
  }
}

class FooterCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  final String? blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  final String? pageId;

  /// ID of the attachment containing the comment if the comment is on an
  /// attachment.
  final String? attachmentId;

  /// ID of the custom content containing the comment if the comment is on a
  /// custom content.
  final String? customContentId;

  /// ID of the parent comment if the comment is a reply.
  final String? parentCommentId;
  final Version? version;
  final FooterCommentModelProperties? properties;
  final FooterCommentModelOperations? operations;
  final FooterCommentModelLikes? likes;
  final FooterCommentModelVersions? versions;
  final BodySingle? body;
  final CommentLinks? links;

  FooterCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.pageId,
      this.attachmentId,
      this.customContentId,
      this.parentCommentId,
      this.version,
      this.properties,
      this.operations,
      this.likes,
      this.versions,
      this.body,
      this.links});

  factory FooterCommentModel.fromJson(Map<String, Object?> json) {
    return FooterCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      pageId: json[r'pageId'] as String?,
      attachmentId: json[r'attachmentId'] as String?,
      customContentId: json[r'customContentId'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? FooterCommentModelProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? FooterCommentModelOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      likes: json[r'likes'] != null
          ? FooterCommentModelLikes.fromJson(
              json[r'likes']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? FooterCommentModelVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
    var attachmentId = this.attachmentId;
    var customContentId = this.customContentId;
    var parentCommentId = this.parentCommentId;
    var version = this.version;
    var properties = this.properties;
    var operations = this.operations;
    var likes = this.likes;
    var versions = this.versions;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (attachmentId != null) {
      json[r'attachmentId'] = attachmentId;
    }
    if (customContentId != null) {
      json[r'customContentId'] = customContentId;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (likes != null) {
      json[r'likes'] = likes.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? blogPostId,
      String? pageId,
      String? attachmentId,
      String? customContentId,
      String? parentCommentId,
      Version? version,
      FooterCommentModelProperties? properties,
      FooterCommentModelOperations? operations,
      FooterCommentModelLikes? likes,
      FooterCommentModelVersions? versions,
      BodySingle? body,
      CommentLinks? links}) {
    return FooterCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      attachmentId: attachmentId ?? this.attachmentId,
      customContentId: customContentId ?? this.customContentId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      likes: likes ?? this.likes,
      versions: versions ?? this.versions,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class FooterCommentModelLikes {
  final List<Like> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  FooterCommentModelLikes({List<Like>? results, this.meta, this.links})
      : results = results ?? [];

  factory FooterCommentModelLikes.fromJson(Map<String, Object?> json) {
    return FooterCommentModelLikes(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Like.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModelLikes copyWith(
      {List<Like>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return FooterCommentModelLikes(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class FooterCommentModelOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  FooterCommentModelOperations(
      {List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory FooterCommentModelOperations.fromJson(Map<String, Object?> json) {
    return FooterCommentModelOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModelOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return FooterCommentModelOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class FooterCommentModelProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  FooterCommentModelProperties(
      {List<ContentProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory FooterCommentModelProperties.fromJson(Map<String, Object?> json) {
    return FooterCommentModelProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModelProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return FooterCommentModelProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class FooterCommentModelVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  FooterCommentModelVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory FooterCommentModelVersions.fromJson(Map<String, Object?> json) {
    return FooterCommentModelVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModelVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return FooterCommentModelVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

/// This object represents an icon. If used as a profilePicture, this may be
/// returned as null, depending on the user's privacy setting.
class Icon {
  final String path;
  final bool isDefault;

  Icon({required this.path, required this.isDefault});

  factory Icon.fromJson(Map<String, Object?> json) {
    return Icon(
      path: json[r'path'] as String? ?? '',
      isDefault: json[r'isDefault'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var path = this.path;
    var isDefault = this.isDefault;

    final json = <String, Object?>{};
    json[r'path'] = path;
    json[r'isDefault'] = isDefault;
    return json;
  }

  Icon copyWith({String? path, bool? isDefault}) {
    return Icon(
      path: path ?? this.path,
      isDefault: isDefault ?? this.isDefault,
    );
  }
}

class InlineCommentChildrenModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the parent comment the child comment is in.
  final String? parentCommentId;
  final Version? version;
  final BodyBulk? body;
  final String? resolutionStatus;
  final InlineCommentProperties? properties;
  final CommentLinks? links;

  InlineCommentChildrenModel(
      {this.id,
      this.status,
      this.title,
      this.parentCommentId,
      this.version,
      this.body,
      this.resolutionStatus,
      this.properties,
      this.links});

  factory InlineCommentChildrenModel.fromJson(Map<String, Object?> json) {
    return InlineCommentChildrenModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var parentCommentId = this.parentCommentId;
    var version = this.version;
    var body = this.body;
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentChildrenModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? parentCommentId,
      Version? version,
      BodyBulk? body,
      String? resolutionStatus,
      InlineCommentProperties? properties,
      CommentLinks? links}) {
    return InlineCommentChildrenModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
      links: links ?? this.links,
    );
  }
}

class InlineCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  final String? blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  final String? pageId;

  /// ID of the parent comment if the comment is a reply.
  final String? parentCommentId;
  final Version? version;
  final BodySingle? body;

  /// Atlassian Account ID of last person who modified the resolve state of the
  /// comment. Null until comment is resolved or reopened.
  final String? resolutionLastModifierId;

  /// Timestamp of the last modification to the comment's resolution status.
  /// Null until comment is resolved or reopened.
  final DateTime? resolutionLastModifiedAt;
  final String? resolutionStatus;
  final InlineCommentModelProperties? properties;
  final InlineCommentModelOperations? operations;
  final InlineCommentModelLikes? likes;
  final InlineCommentModelVersions? versions;
  final CommentLinks? links;

  InlineCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.pageId,
      this.parentCommentId,
      this.version,
      this.body,
      this.resolutionLastModifierId,
      this.resolutionLastModifiedAt,
      this.resolutionStatus,
      this.properties,
      this.operations,
      this.likes,
      this.versions,
      this.links});

  factory InlineCommentModel.fromJson(Map<String, Object?> json) {
    return InlineCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      pageId: json[r'pageId'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      resolutionLastModifierId: json[r'resolutionLastModifierId'] as String?,
      resolutionLastModifiedAt:
          DateTime.tryParse(json[r'resolutionLastModifiedAt'] as String? ?? ''),
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentModelProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? InlineCommentModelOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      likes: json[r'likes'] != null
          ? InlineCommentModelLikes.fromJson(
              json[r'likes']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? InlineCommentModelVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
    var parentCommentId = this.parentCommentId;
    var version = this.version;
    var body = this.body;
    var resolutionLastModifierId = this.resolutionLastModifierId;
    var resolutionLastModifiedAt = this.resolutionLastModifiedAt;
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;
    var operations = this.operations;
    var likes = this.likes;
    var versions = this.versions;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (parentCommentId != null) {
      json[r'parentCommentId'] = parentCommentId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (resolutionLastModifierId != null) {
      json[r'resolutionLastModifierId'] = resolutionLastModifierId;
    }
    if (resolutionLastModifiedAt != null) {
      json[r'resolutionLastModifiedAt'] =
          resolutionLastModifiedAt.toIso8601String();
    }
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (likes != null) {
      json[r'likes'] = likes.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? blogPostId,
      String? pageId,
      String? parentCommentId,
      Version? version,
      BodySingle? body,
      String? resolutionLastModifierId,
      DateTime? resolutionLastModifiedAt,
      String? resolutionStatus,
      InlineCommentModelProperties? properties,
      InlineCommentModelOperations? operations,
      InlineCommentModelLikes? likes,
      InlineCommentModelVersions? versions,
      CommentLinks? links}) {
    return InlineCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
      resolutionLastModifierId:
          resolutionLastModifierId ?? this.resolutionLastModifierId,
      resolutionLastModifiedAt:
          resolutionLastModifiedAt ?? this.resolutionLastModifiedAt,
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      likes: likes ?? this.likes,
      versions: versions ?? this.versions,
      links: links ?? this.links,
    );
  }
}

class InlineCommentModelLikes {
  final List<Like> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  InlineCommentModelLikes({List<Like>? results, this.meta, this.links})
      : results = results ?? [];

  factory InlineCommentModelLikes.fromJson(Map<String, Object?> json) {
    return InlineCommentModelLikes(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Like.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentModelLikes copyWith(
      {List<Like>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return InlineCommentModelLikes(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class InlineCommentModelOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  InlineCommentModelOperations(
      {List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory InlineCommentModelOperations.fromJson(Map<String, Object?> json) {
    return InlineCommentModelOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentModelOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return InlineCommentModelOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class InlineCommentModelProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  /// Property value used to reference the highlighted element in DOM.
  final String? inlineMarkerRef;

  /// Text that is highlighted.
  final String? inlineOriginalSelection;

  InlineCommentModelProperties(
      {List<ContentProperty>? results,
      this.meta,
      this.links,
      this.inlineMarkerRef,
      this.inlineOriginalSelection})
      : results = results ?? [];

  factory InlineCommentModelProperties.fromJson(Map<String, Object?> json) {
    return InlineCommentModelProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
      inlineMarkerRef: json[r'inlineMarkerRef'] as String?,
      inlineOriginalSelection: json[r'inlineOriginalSelection'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;
    var inlineMarkerRef = this.inlineMarkerRef;
    var inlineOriginalSelection = this.inlineOriginalSelection;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (inlineMarkerRef != null) {
      json[r'inlineMarkerRef'] = inlineMarkerRef;
    }
    if (inlineOriginalSelection != null) {
      json[r'inlineOriginalSelection'] = inlineOriginalSelection;
    }
    return json;
  }

  InlineCommentModelProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links,
      String? inlineMarkerRef,
      String? inlineOriginalSelection}) {
    return InlineCommentModelProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
      inlineMarkerRef: inlineMarkerRef ?? this.inlineMarkerRef,
      inlineOriginalSelection:
          inlineOriginalSelection ?? this.inlineOriginalSelection,
    );
  }
}

class InlineCommentModelVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  InlineCommentModelVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory InlineCommentModelVersions.fromJson(Map<String, Object?> json) {
    return InlineCommentModelVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentModelVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return InlineCommentModelVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class InlineCommentProperties {
  /// Property value used to reference the highlighted element in DOM.
  final String? inlineMarkerRef;

  /// Text that is highlighted.
  final String? inlineOriginalSelection;

  InlineCommentProperties({this.inlineMarkerRef, this.inlineOriginalSelection});

  factory InlineCommentProperties.fromJson(Map<String, Object?> json) {
    return InlineCommentProperties(
      inlineMarkerRef: json[r'inlineMarkerRef'] as String?,
      inlineOriginalSelection: json[r'inlineOriginalSelection'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var inlineMarkerRef = this.inlineMarkerRef;
    var inlineOriginalSelection = this.inlineOriginalSelection;

    final json = <String, Object?>{};
    if (inlineMarkerRef != null) {
      json[r'inlineMarkerRef'] = inlineMarkerRef;
    }
    if (inlineOriginalSelection != null) {
      json[r'inlineOriginalSelection'] = inlineOriginalSelection;
    }
    return json;
  }

  InlineCommentProperties copyWith(
      {String? inlineMarkerRef, String? inlineOriginalSelection}) {
    return InlineCommentProperties(
      inlineMarkerRef: inlineMarkerRef ?? this.inlineMarkerRef,
      inlineOriginalSelection:
          inlineOriginalSelection ?? this.inlineOriginalSelection,
    );
  }
}

class Label {
  /// ID of the label.
  final String? id;

  /// Name of the label.
  final String? name;

  /// Prefix of the label.
  final String? prefix;

  Label({this.id, this.name, this.prefix});

  factory Label.fromJson(Map<String, Object?> json) {
    return Label(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      prefix: json[r'prefix'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var prefix = this.prefix;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (prefix != null) {
      json[r'prefix'] = prefix;
    }
    return json;
  }

  Label copyWith({String? id, String? name, String? prefix}) {
    return Label(
      id: id ?? this.id,
      name: name ?? this.name,
      prefix: prefix ?? this.prefix,
    );
  }
}

class Like {
  /// Account ID.
  final String? accountId;

  Like({this.accountId});

  factory Like.fromJson(Map<String, Object?> json) {
    return Like(
      accountId: json[r'accountId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;

    final json = <String, Object?>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    return json;
  }

  Like copyWith({String? accountId}) {
    return Like(
      accountId: accountId ?? this.accountId,
    );
  }
}

class LiveEditContentClassificationLevelResetRequest {
  /// Status of the content.
  final LiveEditContentClassificationLevelResetRequestStatus status;

  LiveEditContentClassificationLevelResetRequest({required this.status});

  factory LiveEditContentClassificationLevelResetRequest.fromJson(
      Map<String, Object?> json) {
    return LiveEditContentClassificationLevelResetRequest(
      status: LiveEditContentClassificationLevelResetRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var status = this.status;

    final json = <String, Object?>{};
    json[r'status'] = status.value;
    return json;
  }

  LiveEditContentClassificationLevelResetRequest copyWith(
      {LiveEditContentClassificationLevelResetRequestStatus? status}) {
    return LiveEditContentClassificationLevelResetRequest(
      status: status ?? this.status,
    );
  }
}

class LiveEditContentClassificationLevelResetRequestStatus {
  static const current =
      LiveEditContentClassificationLevelResetRequestStatus._('current');

  static const values = [
    current,
  ];
  final String value;

  const LiveEditContentClassificationLevelResetRequestStatus._(this.value);

  static LiveEditContentClassificationLevelResetRequestStatus fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              LiveEditContentClassificationLevelResetRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class LiveEditContentClassificationLevelUpdateRequest {
  /// The ID of the classification level.
  final String id;

  /// Status of the content.
  final LiveEditContentClassificationLevelUpdateRequestStatus status;

  LiveEditContentClassificationLevelUpdateRequest(
      {required this.id, required this.status});

  factory LiveEditContentClassificationLevelUpdateRequest.fromJson(
      Map<String, Object?> json) {
    return LiveEditContentClassificationLevelUpdateRequest(
      id: json[r'id'] as String? ?? '',
      status: LiveEditContentClassificationLevelUpdateRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'status'] = status.value;
    return json;
  }

  LiveEditContentClassificationLevelUpdateRequest copyWith(
      {String? id,
      LiveEditContentClassificationLevelUpdateRequestStatus? status}) {
    return LiveEditContentClassificationLevelUpdateRequest(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }
}

class LiveEditContentClassificationLevelUpdateRequestStatus {
  static const current =
      LiveEditContentClassificationLevelUpdateRequestStatus._('current');

  static const values = [
    current,
  ];
  final String value;

  const LiveEditContentClassificationLevelUpdateRequestStatus._(this.value);

  static LiveEditContentClassificationLevelUpdateRequestStatus fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              LiveEditContentClassificationLevelUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class MultiEntityLinks {
  /// Used for pagination. Contains the relative URL for the next set of
  /// results, using a cursor query parameter.
  /// This property will not be present if there is no additional data
  /// available.
  final String? next;

  /// Base url of the Confluence site.
  final String? base;

  MultiEntityLinks({this.next, this.base});

  factory MultiEntityLinks.fromJson(Map<String, Object?> json) {
    return MultiEntityLinks(
      next: json[r'next'] as String?,
      base: json[r'base'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var next = this.next;
    var base = this.base;

    final json = <String, Object?>{};
    if (next != null) {
      json[r'next'] = next;
    }
    if (base != null) {
      json[r'base'] = base;
    }
    return json;
  }

  MultiEntityLinks copyWith({String? next, String? base}) {
    return MultiEntityLinks(
      next: next ?? this.next,
      base: base ?? this.base,
    );
  }
}

class Operation {
  /// The type of operation.
  final String? operation;

  /// The type of entity the operation type targets.
  final String? targetType;

  Operation({this.operation, this.targetType});

  factory Operation.fromJson(Map<String, Object?> json) {
    return Operation(
      operation: json[r'operation'] as String?,
      targetType: json[r'targetType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var operation = this.operation;
    var targetType = this.targetType;

    final json = <String, Object?>{};
    if (operation != null) {
      json[r'operation'] = operation;
    }
    if (targetType != null) {
      json[r'targetType'] = targetType;
    }
    return json;
  }

  Operation copyWith({String? operation, String? targetType}) {
    return Operation(
      operation: operation ?? this.operation,
      targetType: targetType ?? this.targetType,
    );
  }
}

class OptionalFieldLinks {
  /// A relative URL that can be used to fetch results beyond what this include
  /// parameter retrieves.
  final String? self;

  OptionalFieldLinks({this.self});

  factory OptionalFieldLinks.fromJson(Map<String, Object?> json) {
    return OptionalFieldLinks(
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  OptionalFieldLinks copyWith({String? self}) {
    return OptionalFieldLinks(
      self: self ?? this.self,
    );
  }
}

class OptionalFieldMeta {
  /// Indicates if there are more available results that can be fetched.
  final bool hasMore;

  /// A token that can be used in the query parameter of the endpoint returned
  /// in the `_links` property to retrieve the next set of results.
  final String? cursor;

  OptionalFieldMeta({bool? hasMore, this.cursor}) : hasMore = hasMore ?? false;

  factory OptionalFieldMeta.fromJson(Map<String, Object?> json) {
    return OptionalFieldMeta(
      hasMore: json[r'hasMore'] as bool? ?? false,
      cursor: json[r'cursor'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var hasMore = this.hasMore;
    var cursor = this.cursor;

    final json = <String, Object?>{};
    json[r'hasMore'] = hasMore;
    if (cursor != null) {
      json[r'cursor'] = cursor;
    }
    return json;
  }

  OptionalFieldMeta copyWith({bool? hasMore, String? cursor}) {
    return OptionalFieldMeta(
      hasMore: hasMore ?? this.hasMore,
      cursor: cursor ?? this.cursor,
    );
  }
}

class PageBodyWrite {
  /// Type of content representation used for the value field.
  final PageBodyWriteRepresentation? representation;

  /// Body of the page, in the format found in the representation field.
  final String? value;

  PageBodyWrite({this.representation, this.value});

  factory PageBodyWrite.fromJson(Map<String, Object?> json) {
    return PageBodyWrite(
      representation: json[r'representation'] != null
          ? PageBodyWriteRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var representation = this.representation;
    var value = this.value;

    final json = <String, Object?>{};
    if (representation != null) {
      json[r'representation'] = representation.value;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  PageBodyWrite copyWith(
      {PageBodyWriteRepresentation? representation, String? value}) {
    return PageBodyWrite(
      representation: representation ?? this.representation,
      value: value ?? this.value,
    );
  }
}

class PageBodyWriteRepresentation {
  static const storage = PageBodyWriteRepresentation._('storage');
  static const atlasDocFormat =
      PageBodyWriteRepresentation._('atlas_doc_format');
  static const wiki = PageBodyWriteRepresentation._('wiki');

  static const values = [
    storage,
    atlasDocFormat,
    wiki,
  ];
  final String value;

  const PageBodyWriteRepresentation._(this.value);

  static PageBodyWriteRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PageBodyWriteRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PageBulk {
  /// ID of the page.
  final String? id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  final String? spaceId;

  /// ID of the parent page, or null if there is no parent page.
  final String? parentId;
  final String? parentType;

  /// Position of child page within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this page originally.
  final String? authorId;

  /// The account ID of the user who owns this page.
  final String? ownerId;

  /// The account ID of the user who owned this page previously, or null if
  /// there is no previous owner.
  final String? lastOwnerId;

  /// Date and time when the page was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodyBulk? body;
  final AbstractPageLinks? links;

  PageBulk(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.lastOwnerId,
      this.createdAt,
      this.version,
      this.body,
      this.links});

  factory PageBulk.fromJson(Map<String, Object?> json) {
    return PageBulk(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      lastOwnerId: json[r'lastOwnerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? AbstractPageLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var lastOwnerId = this.lastOwnerId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (lastOwnerId != null) {
      json[r'lastOwnerId'] = lastOwnerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageBulk copyWith(
      {String? id,
      String? status,
      String? title,
      String? spaceId,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      String? lastOwnerId,
      DateTime? createdAt,
      Version? version,
      BodyBulk? body,
      AbstractPageLinks? links}) {
    return PageBulk(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      lastOwnerId: lastOwnerId ?? this.lastOwnerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class PageCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the page the comment is in.
  final String? pageId;
  final Version? version;
  final BodyBulk? body;
  final CommentLinks? links;

  PageCommentModel(
      {this.id,
      this.status,
      this.title,
      this.pageId,
      this.version,
      this.body,
      this.links});

  factory PageCommentModel.fromJson(Map<String, Object?> json) {
    return PageCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      pageId: json[r'pageId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var pageId = this.pageId;
    var version = this.version;
    var body = this.body;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? pageId,
      Version? version,
      BodyBulk? body,
      CommentLinks? links}) {
    return PageCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      pageId: pageId ?? this.pageId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class PageCreateRequest {
  /// ID of the space.
  final String spaceId;

  /// The status of the page, published or draft.
  final PageCreateRequestStatus? status;

  /// Title of the page, required if page status is not draft.
  final String? title;

  /// The parent content ID of the page. If the `root-level` query parameter is
  /// set to false and a value is
  /// not supplied for this parameter, then the space homepage's ID will be
  /// used. If the `root-level` query
  /// parameter is set to true, then a value may not be supplied for this
  /// parameter.
  final String? parentId;
  final dynamic body;

  PageCreateRequest(
      {required this.spaceId,
      this.status,
      this.title,
      this.parentId,
      this.body});

  factory PageCreateRequest.fromJson(Map<String, Object?> json) {
    return PageCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      status: json[r'status'] != null
          ? PageCreateRequestStatus.fromValue(json[r'status']! as String)
          : null,
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var status = this.status;
    var title = this.title;
    var parentId = this.parentId;
    var body = this.body;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  PageCreateRequest copyWith(
      {String? spaceId,
      PageCreateRequestStatus? status,
      String? title,
      String? parentId,
      dynamic body}) {
    return PageCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      status: status ?? this.status,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      body: body ?? this.body,
    );
  }
}

class PageCreateRequestStatus {
  static const current = PageCreateRequestStatus._('current');
  static const draft = PageCreateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const PageCreateRequestStatus._(this.value);

  static PageCreateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PageCreateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PageInlineCommentModel {
  /// ID of the comment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the page the comment is in.
  final String? pageId;
  final Version? version;
  final BodyBulk? body;
  final String? resolutionStatus;
  final InlineCommentProperties? properties;
  final CommentLinks? links;

  PageInlineCommentModel(
      {this.id,
      this.status,
      this.title,
      this.pageId,
      this.version,
      this.body,
      this.resolutionStatus,
      this.properties,
      this.links});

  factory PageInlineCommentModel.fromJson(Map<String, Object?> json) {
    return PageInlineCommentModel(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      pageId: json[r'pageId'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? CommentLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var pageId = this.pageId;
    var version = this.version;
    var body = this.body;
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageInlineCommentModel copyWith(
      {String? id,
      String? status,
      String? title,
      String? pageId,
      Version? version,
      BodyBulk? body,
      String? resolutionStatus,
      InlineCommentProperties? properties,
      CommentLinks? links}) {
    return PageInlineCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      pageId: pageId ?? this.pageId,
      version: version ?? this.version,
      body: body ?? this.body,
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
      links: links ?? this.links,
    );
  }
}

/// Body of the page. Only one body format should be specified as the property
/// for this object, e.g. `storage`.
class PageNestedBodyWrite {
  final PageBodyWrite? storage;
  final PageBodyWrite? atlasDocFormat;
  final PageBodyWrite? wiki;

  PageNestedBodyWrite({this.storage, this.atlasDocFormat, this.wiki});

  factory PageNestedBodyWrite.fromJson(Map<String, Object?> json) {
    return PageNestedBodyWrite(
      storage: json[r'storage'] != null
          ? PageBodyWrite.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? PageBodyWrite.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
      wiki: json[r'wiki'] != null
          ? PageBodyWrite.fromJson(json[r'wiki']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;
    var wiki = this.wiki;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    if (wiki != null) {
      json[r'wiki'] = wiki.toJson();
    }
    return json;
  }

  PageNestedBodyWrite copyWith(
      {PageBodyWrite? storage,
      PageBodyWrite? atlasDocFormat,
      PageBodyWrite? wiki}) {
    return PageNestedBodyWrite(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
      wiki: wiki ?? this.wiki,
    );
  }
}

class PageSingle {
  /// ID of the page.
  final String? id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  final String? spaceId;

  /// ID of the parent page, or null if there is no parent page.
  final String? parentId;
  final String? parentType;

  /// Position of child page within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this page originally.
  final String? authorId;

  /// The account ID of the user who owns this page.
  final String? ownerId;

  /// The account ID of the user who owned this page previously, or null if
  /// there is no previous owner.
  final String? lastOwnerId;

  /// Date and time when the page was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodySingle? body;
  final PageSingleLabels? labels;
  final PageSingleProperties? properties;
  final PageSingleOperations? operations;
  final PageSingleLikes? likes;
  final PageSingleVersions? versions;

  /// Whether the page has been favorited by the current user.
  final bool isFavoritedByCurrentUser;
  final AbstractPageLinks? links;

  PageSingle(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.lastOwnerId,
      this.createdAt,
      this.version,
      this.body,
      this.labels,
      this.properties,
      this.operations,
      this.likes,
      this.versions,
      bool? isFavoritedByCurrentUser,
      this.links})
      : isFavoritedByCurrentUser = isFavoritedByCurrentUser ?? false;

  factory PageSingle.fromJson(Map<String, Object?> json) {
    return PageSingle(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      lastOwnerId: json[r'lastOwnerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      labels: json[r'labels'] != null
          ? PageSingleLabels.fromJson(json[r'labels']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? PageSingleProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? PageSingleOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      likes: json[r'likes'] != null
          ? PageSingleLikes.fromJson(json[r'likes']! as Map<String, Object?>)
          : null,
      versions: json[r'versions'] != null
          ? PageSingleVersions.fromJson(
              json[r'versions']! as Map<String, Object?>)
          : null,
      isFavoritedByCurrentUser:
          json[r'isFavoritedByCurrentUser'] as bool? ?? false,
      links: json[r'_links'] != null
          ? AbstractPageLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var lastOwnerId = this.lastOwnerId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;
    var labels = this.labels;
    var properties = this.properties;
    var operations = this.operations;
    var likes = this.likes;
    var versions = this.versions;
    var isFavoritedByCurrentUser = this.isFavoritedByCurrentUser;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (lastOwnerId != null) {
      json[r'lastOwnerId'] = lastOwnerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (likes != null) {
      json[r'likes'] = likes.toJson();
    }
    if (versions != null) {
      json[r'versions'] = versions.toJson();
    }
    json[r'isFavoritedByCurrentUser'] = isFavoritedByCurrentUser;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingle copyWith(
      {String? id,
      String? status,
      String? title,
      String? spaceId,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      String? lastOwnerId,
      DateTime? createdAt,
      Version? version,
      BodySingle? body,
      PageSingleLabels? labels,
      PageSingleProperties? properties,
      PageSingleOperations? operations,
      PageSingleLikes? likes,
      PageSingleVersions? versions,
      bool? isFavoritedByCurrentUser,
      AbstractPageLinks? links}) {
    return PageSingle(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      lastOwnerId: lastOwnerId ?? this.lastOwnerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      labels: labels ?? this.labels,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      likes: likes ?? this.likes,
      versions: versions ?? this.versions,
      isFavoritedByCurrentUser:
          isFavoritedByCurrentUser ?? this.isFavoritedByCurrentUser,
      links: links ?? this.links,
    );
  }
}

class PageSingleLabels {
  final List<Label> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  PageSingleLabels({List<Label>? results, this.meta, this.links})
      : results = results ?? [];

  factory PageSingleLabels.fromJson(Map<String, Object?> json) {
    return PageSingleLabels(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingleLabels copyWith(
      {List<Label>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return PageSingleLabels(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PageSingleLikes {
  final List<Like> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  PageSingleLikes({List<Like>? results, this.meta, this.links})
      : results = results ?? [];

  factory PageSingleLikes.fromJson(Map<String, Object?> json) {
    return PageSingleLikes(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Like.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingleLikes copyWith(
      {List<Like>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return PageSingleLikes(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PageSingleOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  PageSingleOperations({List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory PageSingleOperations.fromJson(Map<String, Object?> json) {
    return PageSingleOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingleOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return PageSingleOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PageSingleProperties {
  final List<ContentProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  PageSingleProperties({List<ContentProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory PageSingleProperties.fromJson(Map<String, Object?> json) {
    return PageSingleProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => ContentProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingleProperties copyWith(
      {List<ContentProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return PageSingleProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PageSingleVersions {
  final List<Version> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  PageSingleVersions({List<Version>? results, this.meta, this.links})
      : results = results ?? [];

  factory PageSingleVersions.fromJson(Map<String, Object?> json) {
    return PageSingleVersions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Version.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PageSingleVersions copyWith(
      {List<Version>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return PageSingleVersions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class PageUpdateRequest {
  /// Id of the page.
  final String id;

  /// The updated status of the page.
  ///
  /// Note, if you change the status of a page from 'current' to 'draft' and it
  /// has an existing draft, the existing draft will be deleted in favor of the
  /// updated draft.
  /// Additionally, this endpoint can be used to restore a 'trashed' or
  /// 'deleted' page to 'current' status. For restoration, page contents will
  /// not be updated and only the page status will be changed.
  final PageUpdateRequestStatus status;

  /// Title of the page.
  final String title;

  /// ID of the containing space.
  ///
  /// This currently **does not support moving the page to a different space**.
  final dynamic spaceId;

  /// ID of the parent page.
  ///
  /// This allows the page to be moved under a different parent within the same
  /// space.
  final dynamic parentId;

  /// Account ID of the page owner.
  ///
  /// This allows page ownership to be transferred to another user.
  final dynamic ownerId;
  final dynamic body;
  final PageUpdateRequestVersion version;

  PageUpdateRequest(
      {required this.id,
      required this.status,
      required this.title,
      this.spaceId,
      this.parentId,
      this.ownerId,
      required this.body,
      required this.version});

  factory PageUpdateRequest.fromJson(Map<String, Object?> json) {
    return PageUpdateRequest(
      id: json[r'id'] as String? ?? '',
      status:
          PageUpdateRequestStatus.fromValue(json[r'status'] as String? ?? ''),
      title: json[r'title'] as String? ?? '',
      spaceId: json[r'spaceId'],
      parentId: json[r'parentId'],
      ownerId: json[r'ownerId'],
      body: json[r'body'],
      version: PageUpdateRequestVersion.fromJson(
          json[r'version'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var parentId = this.parentId;
    var ownerId = this.ownerId;
    var body = this.body;
    var version = this.version;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'status'] = status.value;
    json[r'title'] = title;
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    json[r'body'] = body;
    json[r'version'] = version.toJson();
    return json;
  }

  PageUpdateRequest copyWith(
      {String? id,
      PageUpdateRequestStatus? status,
      String? title,
      dynamic spaceId,
      dynamic parentId,
      dynamic ownerId,
      dynamic body,
      PageUpdateRequestVersion? version}) {
    return PageUpdateRequest(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      parentId: parentId ?? this.parentId,
      ownerId: ownerId ?? this.ownerId,
      body: body ?? this.body,
      version: version ?? this.version,
    );
  }
}

class PageUpdateRequestStatus {
  static const current = PageUpdateRequestStatus._('current');
  static const draft = PageUpdateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const PageUpdateRequestStatus._(this.value);

  static PageUpdateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => PageUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class PageUpdateRequestVersion {
  /// The new version of the updated page.
  /// Set this to the current version number plus one, unless you are updating
  /// the status to 'draft' which requires a version number of 1.
  ///
  /// If you don't know the current version number, use Get page by id.
  final int? number;

  /// An optional message to be stored with the version.
  final String? message;

  PageUpdateRequestVersion({this.number, this.message});

  factory PageUpdateRequestVersion.fromJson(Map<String, Object?> json) {
    return PageUpdateRequestVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  PageUpdateRequestVersion copyWith({int? number, String? message}) {
    return PageUpdateRequestVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class PageVersion {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;
  final VersionedEntity? page;

  PageVersion(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId,
      this.page})
      : minorEdit = minorEdit ?? false;

  factory PageVersion.fromJson(Map<String, Object?> json) {
    return PageVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
      page: json[r'page'] != null
          ? VersionedEntity.fromJson(json[r'page']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;
    var page = this.page;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (page != null) {
      json[r'page'] = page.toJson();
    }
    return json;
  }

  PageVersion copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId,
      VersionedEntity? page}) {
    return PageVersion(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
      page: page ?? this.page,
    );
  }
}

/// The list of operations permitted on entity.
class PermittedOperationsResponse {
  final List<Operation> operations;

  PermittedOperationsResponse({List<Operation>? operations})
      : operations = operations ?? [];

  factory PermittedOperationsResponse.fromJson(Map<String, Object?> json) {
    return PermittedOperationsResponse(
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var operations = this.operations;

    final json = <String, Object?>{};
    json[r'operations'] = operations.map((i) => i.toJson()).toList();
    return json;
  }

  PermittedOperationsResponse copyWith({List<Operation>? operations}) {
    return PermittedOperationsResponse(
      operations: operations ?? this.operations,
    );
  }
}

class SmartLinkCreateRequest {
  /// ID of the space.
  final String spaceId;

  /// Title of the Smart Link in the content tree.
  final String? title;

  /// The parent content ID of the Smart Link in the content tree.
  final String? parentId;

  /// The URL that the Smart Link in the content tree should be populated with.
  final String? embedUrl;

  SmartLinkCreateRequest(
      {required this.spaceId, this.title, this.parentId, this.embedUrl});

  factory SmartLinkCreateRequest.fromJson(Map<String, Object?> json) {
    return SmartLinkCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      embedUrl: json[r'embedUrl'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var title = this.title;
    var parentId = this.parentId;
    var embedUrl = this.embedUrl;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (embedUrl != null) {
      json[r'embedUrl'] = embedUrl;
    }
    return json;
  }

  SmartLinkCreateRequest copyWith(
      {String? spaceId, String? title, String? parentId, String? embedUrl}) {
    return SmartLinkCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      embedUrl: embedUrl ?? this.embedUrl,
    );
  }
}

class SmartLinkLinks {
  /// Web UI link of the content.
  final String? webui;

  SmartLinkLinks({this.webui});

  factory SmartLinkLinks.fromJson(Map<String, Object?> json) {
    return SmartLinkLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  SmartLinkLinks copyWith({String? webui}) {
    return SmartLinkLinks(
      webui: webui ?? this.webui,
    );
  }
}

class SmartLinkSingle {
  /// ID of the Smart Link in the content tree.
  final String? id;

  /// The content type of the object.
  final String? type;
  final String? status;

  /// Title of the Smart Link in the content tree.
  final String? title;

  /// ID of the parent content, or null if there is no parent content.
  final String? parentId;
  final String? parentType;

  /// Position of the Smart Link within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this Smart Link in the content tree
  /// originally.
  final String? authorId;

  /// The account ID of the user who owns this Smart Link in the content tree.
  final String? ownerId;

  /// Date and time when the Smart Link in the content tree was created. In
  /// format "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// The embedded URL of the Smart Link. If the Smart Link does not have an
  /// embedded URL, this property will not be included in the response.
  final String? embedUrl;
  final Version? version;
  final SmartLinkLinks? links;

  SmartLinkSingle(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.createdAt,
      this.embedUrl,
      this.version,
      this.links});

  factory SmartLinkSingle.fromJson(Map<String, Object?> json) {
    return SmartLinkSingle(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      embedUrl: json[r'embedUrl'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? SmartLinkLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var createdAt = this.createdAt;
    var embedUrl = this.embedUrl;
    var version = this.version;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (embedUrl != null) {
      json[r'embedUrl'] = embedUrl;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SmartLinkSingle copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      DateTime? createdAt,
      String? embedUrl,
      Version? version,
      SmartLinkLinks? links}) {
    return SmartLinkSingle(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      createdAt: createdAt ?? this.createdAt,
      embedUrl: embedUrl ?? this.embedUrl,
      version: version ?? this.version,
      links: links ?? this.links,
    );
  }
}

class SpaceBulk {
  /// ID of the space.
  final String? id;

  /// Key of the space.
  final String? key;

  /// Name of the space.
  final String? name;
  final String? type;
  final String? status;

  /// The account ID of the user who created this space originally.
  final String? authorId;

  /// Date and time when the space was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// ID of the space's homepage.
  final String? homepageId;
  final SpaceDescription? description;
  final SpaceIcon? icon;
  final SpaceLinks? links;

  SpaceBulk(
      {this.id,
      this.key,
      this.name,
      this.type,
      this.status,
      this.authorId,
      this.createdAt,
      this.homepageId,
      this.description,
      this.icon,
      this.links});

  factory SpaceBulk.fromJson(Map<String, Object?> json) {
    return SpaceBulk(
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      homepageId: json[r'homepageId'] as String?,
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      icon: json[r'icon'] != null
          ? SpaceIcon.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? SpaceLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var type = this.type;
    var status = this.status;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var homepageId = this.homepageId;
    var description = this.description;
    var icon = this.icon;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (homepageId != null) {
      json[r'homepageId'] = homepageId;
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceBulk copyWith(
      {String? id,
      String? key,
      String? name,
      String? type,
      String? status,
      String? authorId,
      DateTime? createdAt,
      String? homepageId,
      SpaceDescription? description,
      SpaceIcon? icon,
      SpaceLinks? links}) {
    return SpaceBulk(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      homepageId: homepageId ?? this.homepageId,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      links: links ?? this.links,
    );
  }
}

class SpaceDefaultClassificationLevelUpdateRequest {
  /// The ID of the classification level.
  final String id;

  /// Status of the content.
  final SpaceDefaultClassificationLevelUpdateRequestStatus status;

  SpaceDefaultClassificationLevelUpdateRequest(
      {required this.id, required this.status});

  factory SpaceDefaultClassificationLevelUpdateRequest.fromJson(
      Map<String, Object?> json) {
    return SpaceDefaultClassificationLevelUpdateRequest(
      id: json[r'id'] as String? ?? '',
      status: SpaceDefaultClassificationLevelUpdateRequestStatus.fromValue(
          json[r'status'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'id'] = id;
    json[r'status'] = status.value;
    return json;
  }

  SpaceDefaultClassificationLevelUpdateRequest copyWith(
      {String? id,
      SpaceDefaultClassificationLevelUpdateRequestStatus? status}) {
    return SpaceDefaultClassificationLevelUpdateRequest(
      id: id ?? this.id,
      status: status ?? this.status,
    );
  }
}

class SpaceDefaultClassificationLevelUpdateRequestStatus {
  static const current =
      SpaceDefaultClassificationLevelUpdateRequestStatus._('current');
  static const draft =
      SpaceDefaultClassificationLevelUpdateRequestStatus._('draft');

  static const values = [
    current,
    draft,
  ];
  final String value;

  const SpaceDefaultClassificationLevelUpdateRequestStatus._(this.value);

  static SpaceDefaultClassificationLevelUpdateRequestStatus fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              SpaceDefaultClassificationLevelUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Contains fields for each representation type requested.
class SpaceDescription {
  final BodyType? plain;
  final BodyType? view;

  SpaceDescription({this.plain, this.view});

  factory SpaceDescription.fromJson(Map<String, Object?> json) {
    return SpaceDescription(
      plain: json[r'plain'] != null
          ? BodyType.fromJson(json[r'plain']! as Map<String, Object?>)
          : null,
      view: json[r'view'] != null
          ? BodyType.fromJson(json[r'view']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var plain = this.plain;
    var view = this.view;

    final json = <String, Object?>{};
    if (plain != null) {
      json[r'plain'] = plain.toJson();
    }
    if (view != null) {
      json[r'view'] = view.toJson();
    }
    return json;
  }

  SpaceDescription copyWith({BodyType? plain, BodyType? view}) {
    return SpaceDescription(
      plain: plain ?? this.plain,
      view: view ?? this.view,
    );
  }
}

/// The icon of the space
class SpaceIcon {
  /// The path (relative to base URL) at which the space's icon can be
  /// retrieved. The format should be like `/wiki/download/...` or
  /// `/wiki/aa-avatar/...`
  final String? path;

  /// The path (relative to base URL) that can be used to retrieve a link to
  /// download the space icon. 3LO apps should use this link instead of the
  /// value provided
  /// in the `path` property to retrieve the icon.
  ///
  /// Currently this field is only returned for `global` spaces and not
  /// `personal` spaces.
  final String? apiDownloadLink;

  SpaceIcon({this.path, this.apiDownloadLink});

  factory SpaceIcon.fromJson(Map<String, Object?> json) {
    return SpaceIcon(
      path: json[r'path'] as String?,
      apiDownloadLink: json[r'apiDownloadLink'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var path = this.path;
    var apiDownloadLink = this.apiDownloadLink;

    final json = <String, Object?>{};
    if (path != null) {
      json[r'path'] = path;
    }
    if (apiDownloadLink != null) {
      json[r'apiDownloadLink'] = apiDownloadLink;
    }
    return json;
  }

  SpaceIcon copyWith({String? path, String? apiDownloadLink}) {
    return SpaceIcon(
      path: path ?? this.path,
      apiDownloadLink: apiDownloadLink ?? this.apiDownloadLink,
    );
  }
}

class SpaceLinks {
  /// Web UI link of the space.
  final String? webui;

  SpaceLinks({this.webui});

  factory SpaceLinks.fromJson(Map<String, Object?> json) {
    return SpaceLinks(
      webui: json[r'webui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    return json;
  }

  SpaceLinks copyWith({String? webui}) {
    return SpaceLinks(
      webui: webui ?? this.webui,
    );
  }
}

class SpacePermission {
  /// ID of the space permission.
  final String? id;

  /// The entity the space permissions corresponds to.
  final SpacePermissionPrincipal? principal;

  /// The operation the space permission corresponds to.
  final SpacePermissionOperation? operation;

  SpacePermission({this.id, this.principal, this.operation});

  factory SpacePermission.fromJson(Map<String, Object?> json) {
    return SpacePermission(
      id: json[r'id'] as String?,
      principal: json[r'principal'] != null
          ? SpacePermissionPrincipal.fromJson(
              json[r'principal']! as Map<String, Object?>)
          : null,
      operation: json[r'operation'] != null
          ? SpacePermissionOperation.fromJson(
              json[r'operation']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var principal = this.principal;
    var operation = this.operation;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (principal != null) {
      json[r'principal'] = principal.toJson();
    }
    if (operation != null) {
      json[r'operation'] = operation.toJson();
    }
    return json;
  }

  SpacePermission copyWith(
      {String? id,
      SpacePermissionPrincipal? principal,
      SpacePermissionOperation? operation}) {
    return SpacePermission(
      id: id ?? this.id,
      principal: principal ?? this.principal,
      operation: operation ?? this.operation,
    );
  }
}

/// The operation the space permission corresponds to.
class SpacePermissionOperation {
  /// The type of operation.
  final SpacePermissionOperationKey? key;

  /// The type of entity the operation type targets.
  final SpacePermissionOperationTargetType? targetType;

  SpacePermissionOperation({this.key, this.targetType});

  factory SpacePermissionOperation.fromJson(Map<String, Object?> json) {
    return SpacePermissionOperation(
      key: json[r'key'] != null
          ? SpacePermissionOperationKey.fromValue(json[r'key']! as String)
          : null,
      targetType: json[r'targetType'] != null
          ? SpacePermissionOperationTargetType.fromValue(
              json[r'targetType']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var targetType = this.targetType;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key.value;
    }
    if (targetType != null) {
      json[r'targetType'] = targetType.value;
    }
    return json;
  }

  SpacePermissionOperation copyWith(
      {SpacePermissionOperationKey? key,
      SpacePermissionOperationTargetType? targetType}) {
    return SpacePermissionOperation(
      key: key ?? this.key,
      targetType: targetType ?? this.targetType,
    );
  }
}

class SpacePermissionOperationKey {
  static const use = SpacePermissionOperationKey._('use');
  static const create = SpacePermissionOperationKey._('create');
  static const read = SpacePermissionOperationKey._('read');
  static const update = SpacePermissionOperationKey._('update');
  static const delete = SpacePermissionOperationKey._('delete');
  static const copy = SpacePermissionOperationKey._('copy');
  static const move = SpacePermissionOperationKey._('move');
  static const export$ = SpacePermissionOperationKey._('export');
  static const purge = SpacePermissionOperationKey._('purge');
  static const purgeVersion = SpacePermissionOperationKey._('purge_version');
  static const administer = SpacePermissionOperationKey._('administer');
  static const restore = SpacePermissionOperationKey._('restore');
  static const createSpace = SpacePermissionOperationKey._('create_space');
  static const restrictContent =
      SpacePermissionOperationKey._('restrict_content');
  static const archive = SpacePermissionOperationKey._('archive');

  static const values = [
    use,
    create,
    read,
    update,
    delete,
    copy,
    move,
    export$,
    purge,
    purgeVersion,
    administer,
    restore,
    createSpace,
    restrictContent,
    archive,
  ];
  final String value;

  const SpacePermissionOperationKey._(this.value);

  static SpacePermissionOperationKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpacePermissionOperationKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpacePermissionOperationTargetType {
  static const page = SpacePermissionOperationTargetType._('page');
  static const blogpost = SpacePermissionOperationTargetType._('blogpost');
  static const comment = SpacePermissionOperationTargetType._('comment');
  static const attachment = SpacePermissionOperationTargetType._('attachment');
  static const whiteboard = SpacePermissionOperationTargetType._('whiteboard');
  static const database = SpacePermissionOperationTargetType._('database');
  static const embed = SpacePermissionOperationTargetType._('embed');
  static const folder = SpacePermissionOperationTargetType._('folder');
  static const space = SpacePermissionOperationTargetType._('space');
  static const application =
      SpacePermissionOperationTargetType._('application');
  static const userProfile =
      SpacePermissionOperationTargetType._('userProfile');

  static const values = [
    page,
    blogpost,
    comment,
    attachment,
    whiteboard,
    database,
    embed,
    folder,
    space,
    application,
    userProfile,
  ];
  final String value;

  const SpacePermissionOperationTargetType._(this.value);

  static SpacePermissionOperationTargetType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpacePermissionOperationTargetType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The entity the space permissions corresponds to.
class SpacePermissionPrincipal {
  final SpacePermissionPrincipalType? type;

  /// ID of the entity.
  final String? id;

  SpacePermissionPrincipal({this.type, this.id});

  factory SpacePermissionPrincipal.fromJson(Map<String, Object?> json) {
    return SpacePermissionPrincipal(
      type: json[r'type'] != null
          ? SpacePermissionPrincipalType.fromValue(json[r'type']! as String)
          : null,
      id: json[r'id'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var id = this.id;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  SpacePermissionPrincipal copyWith(
      {SpacePermissionPrincipalType? type, String? id}) {
    return SpacePermissionPrincipal(
      type: type ?? this.type,
      id: id ?? this.id,
    );
  }
}

class SpacePermissionPrincipalType {
  static const user = SpacePermissionPrincipalType._('user');
  static const group = SpacePermissionPrincipalType._('group');
  static const role = SpacePermissionPrincipalType._('role');

  static const values = [
    user,
    group,
    role,
  ];
  final String value;

  const SpacePermissionPrincipalType._(this.value);

  static SpacePermissionPrincipalType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SpacePermissionPrincipalType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class SpaceProperty {
  /// ID of the space property.
  final String? id;

  /// Key of the space property.
  final String? key;

  /// Value of the space property.
  final dynamic value;

  /// RFC3339 compliant date time at which the property was created.
  final DateTime? createdAt;

  /// Atlassian account ID of the user that created the space property.
  final String? createdBy;
  final SpacePropertyVersion? version;

  SpaceProperty(
      {this.id,
      this.key,
      this.value,
      this.createdAt,
      this.createdBy,
      this.version});

  factory SpaceProperty.fromJson(Map<String, Object?> json) {
    return SpaceProperty(
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      value: json[r'value'],
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      createdBy: json[r'createdBy'] as String?,
      version: json[r'version'] != null
          ? SpacePropertyVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var value = this.value;
    var createdAt = this.createdAt;
    var createdBy = this.createdBy;
    var version = this.version;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    return json;
  }

  SpaceProperty copyWith(
      {String? id,
      String? key,
      dynamic value,
      DateTime? createdAt,
      String? createdBy,
      SpacePropertyVersion? version}) {
    return SpaceProperty(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      version: version ?? this.version,
    );
  }
}

class SpacePropertyCreateRequest {
  /// Key of the space property
  final String? key;

  /// Value of the space property.
  final dynamic value;

  SpacePropertyCreateRequest({this.key, this.value});

  factory SpacePropertyCreateRequest.fromJson(Map<String, Object?> json) {
    return SpacePropertyCreateRequest(
      key: json[r'key'] as String?,
      value: json[r'value'],
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  SpacePropertyCreateRequest copyWith({String? key, dynamic value}) {
    return SpacePropertyCreateRequest(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class SpacePropertyUpdateRequest {
  /// Key of the space property
  final String? key;

  /// Value of the space property.
  final dynamic value;

  /// New version number and associated message
  final SpacePropertyUpdateRequestVersion? version;

  SpacePropertyUpdateRequest({this.key, this.value, this.version});

  factory SpacePropertyUpdateRequest.fromJson(Map<String, Object?> json) {
    return SpacePropertyUpdateRequest(
      key: json[r'key'] as String?,
      value: json[r'value'],
      version: json[r'version'] != null
          ? SpacePropertyUpdateRequestVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var value = this.value;
    var version = this.version;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    return json;
  }

  SpacePropertyUpdateRequest copyWith(
      {String? key,
      dynamic value,
      SpacePropertyUpdateRequestVersion? version}) {
    return SpacePropertyUpdateRequest(
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

/// New version number and associated message
class SpacePropertyUpdateRequestVersion {
  /// Version number of the new version. Should be 1 more than the current
  /// version number.
  final int? number;

  /// Message to be associated with the new version.
  final String? message;

  SpacePropertyUpdateRequestVersion({this.number, this.message});

  factory SpacePropertyUpdateRequestVersion.fromJson(
      Map<String, Object?> json) {
    return SpacePropertyUpdateRequestVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  SpacePropertyUpdateRequestVersion copyWith({int? number, String? message}) {
    return SpacePropertyUpdateRequestVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class SpacePropertyVersion {
  /// RFC3339 compliant date time at which the property's current version was
  /// created.
  final DateTime? createdAt;

  /// Atlassian account ID of the user that created the space property's current
  /// version.
  final String? createdBy;

  /// Message associated with the current version.
  final String? message;

  /// The space property's current version number.
  final int? number;

  SpacePropertyVersion(
      {this.createdAt, this.createdBy, this.message, this.number});

  factory SpacePropertyVersion.fromJson(Map<String, Object?> json) {
    return SpacePropertyVersion(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      createdBy: json[r'createdBy'] as String?,
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var createdBy = this.createdBy;
    var message = this.message;
    var number = this.number;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    return json;
  }

  SpacePropertyVersion copyWith(
      {DateTime? createdAt, String? createdBy, String? message, int? number}) {
    return SpacePropertyVersion(
      createdAt: createdAt ?? this.createdAt,
      createdBy: createdBy ?? this.createdBy,
      message: message ?? this.message,
      number: number ?? this.number,
    );
  }
}

class SpaceSingle {
  /// ID of the space.
  final String? id;

  /// Key of the space.
  final String? key;

  /// Name of the space.
  final String? name;
  final String? type;
  final String? status;

  /// The account ID of the user who created this space originally.
  final String? authorId;

  /// Date and time when the space was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// ID of the space's homepage.
  final String? homepageId;
  final SpaceDescription? description;
  final SpaceIcon? icon;
  final SpaceSingleLabels? labels;
  final SpaceSingleProperties? properties;
  final SpaceSingleOperations? operations;
  final SpaceSinglePermissions? permissions;
  final SpaceLinks? links;

  SpaceSingle(
      {this.id,
      this.key,
      this.name,
      this.type,
      this.status,
      this.authorId,
      this.createdAt,
      this.homepageId,
      this.description,
      this.icon,
      this.labels,
      this.properties,
      this.operations,
      this.permissions,
      this.links});

  factory SpaceSingle.fromJson(Map<String, Object?> json) {
    return SpaceSingle(
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      homepageId: json[r'homepageId'] as String?,
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      icon: json[r'icon'] != null
          ? SpaceIcon.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      labels: json[r'labels'] != null
          ? SpaceSingleLabels.fromJson(json[r'labels']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] != null
          ? SpaceSingleProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
      operations: json[r'operations'] != null
          ? SpaceSingleOperations.fromJson(
              json[r'operations']! as Map<String, Object?>)
          : null,
      permissions: json[r'permissions'] != null
          ? SpaceSinglePermissions.fromJson(
              json[r'permissions']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? SpaceLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var type = this.type;
    var status = this.status;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var homepageId = this.homepageId;
    var description = this.description;
    var icon = this.icon;
    var labels = this.labels;
    var properties = this.properties;
    var operations = this.operations;
    var permissions = this.permissions;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (homepageId != null) {
      json[r'homepageId'] = homepageId;
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (labels != null) {
      json[r'labels'] = labels.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (permissions != null) {
      json[r'permissions'] = permissions.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceSingle copyWith(
      {String? id,
      String? key,
      String? name,
      String? type,
      String? status,
      String? authorId,
      DateTime? createdAt,
      String? homepageId,
      SpaceDescription? description,
      SpaceIcon? icon,
      SpaceSingleLabels? labels,
      SpaceSingleProperties? properties,
      SpaceSingleOperations? operations,
      SpaceSinglePermissions? permissions,
      SpaceLinks? links}) {
    return SpaceSingle(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      homepageId: homepageId ?? this.homepageId,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      labels: labels ?? this.labels,
      properties: properties ?? this.properties,
      operations: operations ?? this.operations,
      permissions: permissions ?? this.permissions,
      links: links ?? this.links,
    );
  }
}

class SpaceSingleLabels {
  final List<Label> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  SpaceSingleLabels({List<Label>? results, this.meta, this.links})
      : results = results ?? [];

  factory SpaceSingleLabels.fromJson(Map<String, Object?> json) {
    return SpaceSingleLabels(
      results: (json[r'results'] as List<Object?>?)
              ?.map(
                  (i) => Label.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceSingleLabels copyWith(
      {List<Label>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return SpaceSingleLabels(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class SpaceSingleOperations {
  final List<Operation> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  SpaceSingleOperations({List<Operation>? results, this.meta, this.links})
      : results = results ?? [];

  factory SpaceSingleOperations.fromJson(Map<String, Object?> json) {
    return SpaceSingleOperations(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) =>
                  Operation.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceSingleOperations copyWith(
      {List<Operation>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return SpaceSingleOperations(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class SpaceSinglePermissions {
  final List<SpacePermission> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  SpaceSinglePermissions(
      {List<SpacePermission>? results, this.meta, this.links})
      : results = results ?? [];

  factory SpaceSinglePermissions.fromJson(Map<String, Object?> json) {
    return SpaceSinglePermissions(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => SpacePermission.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceSinglePermissions copyWith(
      {List<SpacePermission>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return SpaceSinglePermissions(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class SpaceSingleProperties {
  final List<SpaceProperty> results;
  final OptionalFieldMeta? meta;
  final OptionalFieldLinks? links;

  SpaceSingleProperties({List<SpaceProperty>? results, this.meta, this.links})
      : results = results ?? [];

  factory SpaceSingleProperties.fromJson(Map<String, Object?> json) {
    return SpaceSingleProperties(
      results: (json[r'results'] as List<Object?>?)
              ?.map((i) => SpaceProperty.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      meta: json[r'meta'] != null
          ? OptionalFieldMeta.fromJson(json[r'meta']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? OptionalFieldLinks.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var results = this.results;
    var meta = this.meta;
    var links = this.links;

    final json = <String, Object?>{};
    json[r'results'] = results.map((i) => i.toJson()).toList();
    if (meta != null) {
      json[r'meta'] = meta.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SpaceSingleProperties copyWith(
      {List<SpaceProperty>? results,
      OptionalFieldMeta? meta,
      OptionalFieldLinks? links}) {
    return SpaceSingleProperties(
      results: results ?? this.results,
      meta: meta ?? this.meta,
      links: links ?? this.links,
    );
  }
}

class Task {
  /// ID of the task.
  final String? id;

  /// Local ID of the task. This ID is local to the corresponding page or blog
  /// post.
  final String? localId;

  /// ID of the space the task is in.
  final String? spaceId;

  /// ID of the page the task is in.
  final String? pageId;

  /// ID of the blog post the task is in.
  final String? blogPostId;

  /// Status of the task.
  final TaskStatus? status;
  final TaskBodySingle? body;

  /// Account ID of the user who created this task.
  final String? createdBy;

  /// Account ID of the user to whom this task is assigned.
  final String? assignedTo;

  /// Account ID of the user who completed this task.
  final String? completedBy;

  /// Date and time when the task was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Date and time when the task was updated. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? updatedAt;

  /// Date and time when the task is due. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? dueAt;

  /// Date and time when the task was completed. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? completedAt;

  Task(
      {this.id,
      this.localId,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      this.status,
      this.body,
      this.createdBy,
      this.assignedTo,
      this.completedBy,
      this.createdAt,
      this.updatedAt,
      this.dueAt,
      this.completedAt});

  factory Task.fromJson(Map<String, Object?> json) {
    return Task(
      id: json[r'id'] as String?,
      localId: json[r'localId'] as String?,
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      status: json[r'status'] != null
          ? TaskStatus.fromValue(json[r'status']! as String)
          : null,
      body: json[r'body'] != null
          ? TaskBodySingle.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      createdBy: json[r'createdBy'] as String?,
      assignedTo: json[r'assignedTo'] as String?,
      completedBy: json[r'completedBy'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json[r'updatedAt'] as String? ?? ''),
      dueAt: DateTime.tryParse(json[r'dueAt'] as String? ?? ''),
      completedAt: DateTime.tryParse(json[r'completedAt'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var localId = this.localId;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var status = this.status;
    var body = this.body;
    var createdBy = this.createdBy;
    var assignedTo = this.assignedTo;
    var completedBy = this.completedBy;
    var createdAt = this.createdAt;
    var updatedAt = this.updatedAt;
    var dueAt = this.dueAt;
    var completedAt = this.completedAt;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (localId != null) {
      json[r'localId'] = localId;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    if (status != null) {
      json[r'status'] = status.value;
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (assignedTo != null) {
      json[r'assignedTo'] = assignedTo;
    }
    if (completedBy != null) {
      json[r'completedBy'] = completedBy;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toIso8601String();
    }
    if (dueAt != null) {
      json[r'dueAt'] = dueAt.toIso8601String();
    }
    if (completedAt != null) {
      json[r'completedAt'] = completedAt.toIso8601String();
    }
    return json;
  }

  Task copyWith(
      {String? id,
      String? localId,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      TaskStatus? status,
      TaskBodySingle? body,
      String? createdBy,
      String? assignedTo,
      String? completedBy,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? dueAt,
      DateTime? completedAt}) {
    return Task(
      id: id ?? this.id,
      localId: localId ?? this.localId,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      status: status ?? this.status,
      body: body ?? this.body,
      createdBy: createdBy ?? this.createdBy,
      assignedTo: assignedTo ?? this.assignedTo,
      completedBy: completedBy ?? this.completedBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dueAt: dueAt ?? this.dueAt,
      completedAt: completedAt ?? this.completedAt,
    );
  }
}

class TaskStatus {
  static const complete = TaskStatus._('complete');
  static const incomplete = TaskStatus._('incomplete');

  static const values = [
    complete,
    incomplete,
  ];
  final String value;

  const TaskStatus._(this.value);

  static TaskStatus fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => TaskStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// Contains fields for each representation type requested.
class TaskBodySingle {
  final BodyType? storage;
  final BodyType? atlasDocFormat;

  TaskBodySingle({this.storage, this.atlasDocFormat});

  factory TaskBodySingle.fromJson(Map<String, Object?> json) {
    return TaskBodySingle(
      storage: json[r'storage'] != null
          ? BodyType.fromJson(json[r'storage']! as Map<String, Object?>)
          : null,
      atlasDocFormat: json[r'atlas_doc_format'] != null
          ? BodyType.fromJson(
              json[r'atlas_doc_format']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var storage = this.storage;
    var atlasDocFormat = this.atlasDocFormat;

    final json = <String, Object?>{};
    if (storage != null) {
      json[r'storage'] = storage.toJson();
    }
    if (atlasDocFormat != null) {
      json[r'atlas_doc_format'] = atlasDocFormat.toJson();
    }
    return json;
  }

  TaskBodySingle copyWith({BodyType? storage, BodyType? atlasDocFormat}) {
    return TaskBodySingle(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
    );
  }
}

class TaskUpdateRequest {
  /// ID of the task.
  final String? id;

  /// Local ID of the task. This ID is local to the corresponding page or blog
  /// post.
  final String? localId;

  /// ID of the space the task is in.
  final String? spaceId;

  /// ID of the page the task is in.
  final String? pageId;

  /// ID of the blog post the task is in.
  final String? blogPostId;

  /// Status of the task.
  final TaskUpdateRequestStatus status;

  /// Account ID of the user who created this task.
  final String? createdBy;

  /// Account ID of the user to whom this task is assigned.
  final String? assignedTo;

  /// Account ID of the user who completed this task.
  final String? completedBy;

  /// Date and time when the task was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Date and time when the task was updated. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? updatedAt;

  /// Date and time when the task is due. In format "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? dueAt;

  /// Date and time when the task was completed. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? completedAt;

  TaskUpdateRequest(
      {this.id,
      this.localId,
      this.spaceId,
      this.pageId,
      this.blogPostId,
      required this.status,
      this.createdBy,
      this.assignedTo,
      this.completedBy,
      this.createdAt,
      this.updatedAt,
      this.dueAt,
      this.completedAt});

  factory TaskUpdateRequest.fromJson(Map<String, Object?> json) {
    return TaskUpdateRequest(
      id: json[r'id'] as String?,
      localId: json[r'localId'] as String?,
      spaceId: json[r'spaceId'] as String?,
      pageId: json[r'pageId'] as String?,
      blogPostId: json[r'blogPostId'] as String?,
      status:
          TaskUpdateRequestStatus.fromValue(json[r'status'] as String? ?? ''),
      createdBy: json[r'createdBy'] as String?,
      assignedTo: json[r'assignedTo'] as String?,
      completedBy: json[r'completedBy'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      updatedAt: DateTime.tryParse(json[r'updatedAt'] as String? ?? ''),
      dueAt: DateTime.tryParse(json[r'dueAt'] as String? ?? ''),
      completedAt: DateTime.tryParse(json[r'completedAt'] as String? ?? ''),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var localId = this.localId;
    var spaceId = this.spaceId;
    var pageId = this.pageId;
    var blogPostId = this.blogPostId;
    var status = this.status;
    var createdBy = this.createdBy;
    var assignedTo = this.assignedTo;
    var completedBy = this.completedBy;
    var createdAt = this.createdAt;
    var updatedAt = this.updatedAt;
    var dueAt = this.dueAt;
    var completedAt = this.completedAt;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (localId != null) {
      json[r'localId'] = localId;
    }
    if (spaceId != null) {
      json[r'spaceId'] = spaceId;
    }
    if (pageId != null) {
      json[r'pageId'] = pageId;
    }
    if (blogPostId != null) {
      json[r'blogPostId'] = blogPostId;
    }
    json[r'status'] = status.value;
    if (createdBy != null) {
      json[r'createdBy'] = createdBy;
    }
    if (assignedTo != null) {
      json[r'assignedTo'] = assignedTo;
    }
    if (completedBy != null) {
      json[r'completedBy'] = completedBy;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toIso8601String();
    }
    if (dueAt != null) {
      json[r'dueAt'] = dueAt.toIso8601String();
    }
    if (completedAt != null) {
      json[r'completedAt'] = completedAt.toIso8601String();
    }
    return json;
  }

  TaskUpdateRequest copyWith(
      {String? id,
      String? localId,
      String? spaceId,
      String? pageId,
      String? blogPostId,
      TaskUpdateRequestStatus? status,
      String? createdBy,
      String? assignedTo,
      String? completedBy,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? dueAt,
      DateTime? completedAt}) {
    return TaskUpdateRequest(
      id: id ?? this.id,
      localId: localId ?? this.localId,
      spaceId: spaceId ?? this.spaceId,
      pageId: pageId ?? this.pageId,
      blogPostId: blogPostId ?? this.blogPostId,
      status: status ?? this.status,
      createdBy: createdBy ?? this.createdBy,
      assignedTo: assignedTo ?? this.assignedTo,
      completedBy: completedBy ?? this.completedBy,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      dueAt: dueAt ?? this.dueAt,
      completedAt: completedAt ?? this.completedAt,
    );
  }
}

class TaskUpdateRequestStatus {
  static const complete = TaskUpdateRequestStatus._('complete');
  static const incomplete = TaskUpdateRequestStatus._('incomplete');

  static const values = [
    complete,
    incomplete,
  ];
  final String value;

  const TaskUpdateRequestStatus._(this.value);

  static TaskUpdateRequestStatus fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => TaskUpdateRequestStatus._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class UpdateFooterCommentModel {
  final UpdateFooterCommentModelVersion? version;
  final dynamic body;

  UpdateFooterCommentModel({this.version, this.body});

  factory UpdateFooterCommentModel.fromJson(Map<String, Object?> json) {
    return UpdateFooterCommentModel(
      version: json[r'version'] != null
          ? UpdateFooterCommentModelVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var body = this.body;

    final json = <String, Object?>{};
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  UpdateFooterCommentModel copyWith(
      {UpdateFooterCommentModelVersion? version, dynamic body}) {
    return UpdateFooterCommentModel(
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class UpdateFooterCommentModelVersion {
  /// Number of new version. Should be 1 higher than current version of the
  /// comment.
  final int? number;

  /// Optional message store for the new version.
  final String? message;

  UpdateFooterCommentModelVersion({this.number, this.message});

  factory UpdateFooterCommentModelVersion.fromJson(Map<String, Object?> json) {
    return UpdateFooterCommentModelVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  UpdateFooterCommentModelVersion copyWith({int? number, String? message}) {
    return UpdateFooterCommentModelVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class UpdateInlineCommentModel {
  final UpdateInlineCommentModelVersion? version;
  final dynamic body;

  /// Resolved state of the comment. Set to true to resolve the comment, set to
  /// false to reopen it. If
  /// matching the existing state (i.e. true -> resolved or false ->
  /// open/reopened) , no change will occur. A dangling
  /// comment cannot be updated.
  final bool resolved;

  UpdateInlineCommentModel({this.version, this.body, bool? resolved})
      : resolved = resolved ?? false;

  factory UpdateInlineCommentModel.fromJson(Map<String, Object?> json) {
    return UpdateInlineCommentModel(
      version: json[r'version'] != null
          ? UpdateInlineCommentModelVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'],
      resolved: json[r'resolved'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var body = this.body;
    var resolved = this.resolved;

    final json = <String, Object?>{};
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (body != null) {
      json[r'body'] = body;
    }
    json[r'resolved'] = resolved;
    return json;
  }

  UpdateInlineCommentModel copyWith(
      {UpdateInlineCommentModelVersion? version,
      dynamic body,
      bool? resolved}) {
    return UpdateInlineCommentModel(
      version: version ?? this.version,
      body: body ?? this.body,
      resolved: resolved ?? this.resolved,
    );
  }
}

class UpdateInlineCommentModelVersion {
  /// Number of new version. Should be 1 higher than current version of the
  /// comment.
  final int? number;

  /// Optional message store for the new version.
  final String? message;

  UpdateInlineCommentModelVersion({this.number, this.message});

  factory UpdateInlineCommentModelVersion.fromJson(Map<String, Object?> json) {
    return UpdateInlineCommentModelVersion(
      number: (json[r'number'] as num?)?.toInt(),
      message: json[r'message'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var number = this.number;
    var message = this.message;

    final json = <String, Object?>{};
    if (number != null) {
      json[r'number'] = number;
    }
    if (message != null) {
      json[r'message'] = message;
    }
    return json;
  }

  UpdateInlineCommentModelVersion copyWith({int? number, String? message}) {
    return UpdateInlineCommentModelVersion(
      number: number ?? this.number,
      message: message ?? this.message,
    );
  }
}

class User {
  /// Display name of the user.
  final String? displayName;

  /// Time zone of the user. Depending on the user's privacy
  /// setting, this may return null.
  final String? timeZone;

  /// Space ID of the user's personal space. Returns null, if no personal space
  /// for the user.
  final String? personalSpaceId;

  /// Whether the user is an external collaborator.
  final bool isExternalCollaborator;
  final String? accountStatus;

  /// Account ID of the user.
  final String? accountId;

  /// The email address of the user. Depending on the user's privacy setting,
  /// this may return an empty string.
  final String? email;
  final String? accountType;

  /// Public name of the user.
  final String? publicName;
  final Icon? profilePicture;

  User(
      {this.displayName,
      this.timeZone,
      this.personalSpaceId,
      bool? isExternalCollaborator,
      this.accountStatus,
      this.accountId,
      this.email,
      this.accountType,
      this.publicName,
      this.profilePicture})
      : isExternalCollaborator = isExternalCollaborator ?? false;

  factory User.fromJson(Map<String, Object?> json) {
    return User(
      displayName: json[r'displayName'] as String?,
      timeZone: json[r'timeZone'] as String?,
      personalSpaceId: json[r'personalSpaceId'] as String?,
      isExternalCollaborator: json[r'isExternalCollaborator'] as bool? ?? false,
      accountStatus: json[r'accountStatus'] as String?,
      accountId: json[r'accountId'] as String?,
      email: json[r'email'] as String?,
      accountType: json[r'accountType'] as String?,
      publicName: json[r'publicName'] as String?,
      profilePicture: json[r'profilePicture'] != null
          ? Icon.fromJson(json[r'profilePicture']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var timeZone = this.timeZone;
    var personalSpaceId = this.personalSpaceId;
    var isExternalCollaborator = this.isExternalCollaborator;
    var accountStatus = this.accountStatus;
    var accountId = this.accountId;
    var email = this.email;
    var accountType = this.accountType;
    var publicName = this.publicName;
    var profilePicture = this.profilePicture;

    final json = <String, Object?>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    if (personalSpaceId != null) {
      json[r'personalSpaceId'] = personalSpaceId;
    }
    json[r'isExternalCollaborator'] = isExternalCollaborator;
    if (accountStatus != null) {
      json[r'accountStatus'] = accountStatus;
    }
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (accountType != null) {
      json[r'accountType'] = accountType;
    }
    if (publicName != null) {
      json[r'publicName'] = publicName;
    }
    if (profilePicture != null) {
      json[r'profilePicture'] = profilePicture.toJson();
    }
    return json;
  }

  User copyWith(
      {String? displayName,
      String? timeZone,
      String? personalSpaceId,
      bool? isExternalCollaborator,
      String? accountStatus,
      String? accountId,
      String? email,
      String? accountType,
      String? publicName,
      Icon? profilePicture}) {
    return User(
      displayName: displayName ?? this.displayName,
      timeZone: timeZone ?? this.timeZone,
      personalSpaceId: personalSpaceId ?? this.personalSpaceId,
      isExternalCollaborator:
          isExternalCollaborator ?? this.isExternalCollaborator,
      accountStatus: accountStatus ?? this.accountStatus,
      accountId: accountId ?? this.accountId,
      email: email ?? this.email,
      accountType: accountType ?? this.accountType,
      publicName: publicName ?? this.publicName,
      profilePicture: profilePicture ?? this.profilePicture,
    );
  }
}

class Version {
  /// Date and time when the version was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// Message associated with the current version.
  final String? message;

  /// The version number.
  final int? number;

  /// Describes if this version is a minor version. Email notifications and
  /// activity stream updates are not created for minor versions.
  final bool minorEdit;

  /// The account ID of the user who created this version.
  final String? authorId;

  Version(
      {this.createdAt,
      this.message,
      this.number,
      bool? minorEdit,
      this.authorId})
      : minorEdit = minorEdit ?? false;

  factory Version.fromJson(Map<String, Object?> json) {
    return Version(
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      message: json[r'message'] as String?,
      number: (json[r'number'] as num?)?.toInt(),
      minorEdit: json[r'minorEdit'] as bool? ?? false,
      authorId: json[r'authorId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var createdAt = this.createdAt;
    var message = this.message;
    var number = this.number;
    var minorEdit = this.minorEdit;
    var authorId = this.authorId;

    final json = <String, Object?>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (message != null) {
      json[r'message'] = message;
    }
    if (number != null) {
      json[r'number'] = number;
    }
    json[r'minorEdit'] = minorEdit;
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    return json;
  }

  Version copyWith(
      {DateTime? createdAt,
      String? message,
      int? number,
      bool? minorEdit,
      String? authorId}) {
    return Version(
      createdAt: createdAt ?? this.createdAt,
      message: message ?? this.message,
      number: number ?? this.number,
      minorEdit: minorEdit ?? this.minorEdit,
      authorId: authorId ?? this.authorId,
    );
  }
}

class VersionedEntity {
  /// Title of the entity.
  final String? title;

  /// ID of the entity.
  final String? id;
  final BodyBulk? body;

  VersionedEntity({this.title, this.id, this.body});

  factory VersionedEntity.fromJson(Map<String, Object?> json) {
    return VersionedEntity(
      title: json[r'title'] as String?,
      id: json[r'id'] as String?,
      body: json[r'body'] != null
          ? BodyBulk.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var title = this.title;
    var id = this.id;
    var body = this.body;

    final json = <String, Object?>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    return json;
  }

  VersionedEntity copyWith({String? title, String? id, BodyBulk? body}) {
    return VersionedEntity(
      title: title ?? this.title,
      id: id ?? this.id,
      body: body ?? this.body,
    );
  }
}

class WhiteboardCreateRequest {
  /// ID of the space.
  final String spaceId;

  /// Title of the whiteboard.
  final String? title;

  /// The parent content ID of the whiteboard.
  final String? parentId;

  WhiteboardCreateRequest({required this.spaceId, this.title, this.parentId});

  factory WhiteboardCreateRequest.fromJson(Map<String, Object?> json) {
    return WhiteboardCreateRequest(
      spaceId: json[r'spaceId'] as String? ?? '',
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var spaceId = this.spaceId;
    var title = this.title;
    var parentId = this.parentId;

    final json = <String, Object?>{};
    json[r'spaceId'] = spaceId;
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    return json;
  }

  WhiteboardCreateRequest copyWith(
      {String? spaceId, String? title, String? parentId}) {
    return WhiteboardCreateRequest(
      spaceId: spaceId ?? this.spaceId,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
    );
  }
}

class WhiteboardLinks {
  /// Web UI link of the content.
  final String? webui;

  /// Edit UI link of the content.
  final String? editui;

  WhiteboardLinks({this.webui, this.editui});

  factory WhiteboardLinks.fromJson(Map<String, Object?> json) {
    return WhiteboardLinks(
      webui: json[r'webui'] as String?,
      editui: json[r'editui'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var webui = this.webui;
    var editui = this.editui;

    final json = <String, Object?>{};
    if (webui != null) {
      json[r'webui'] = webui;
    }
    if (editui != null) {
      json[r'editui'] = editui;
    }
    return json;
  }

  WhiteboardLinks copyWith({String? webui, String? editui}) {
    return WhiteboardLinks(
      webui: webui ?? this.webui,
      editui: editui ?? this.editui,
    );
  }
}

class WhiteboardSingle {
  /// ID of the whiteboard.
  final String? id;

  /// The content type of the object.
  final String? type;
  final String? status;

  /// Title of the whiteboard.
  final String? title;

  /// ID of the parent content, or null if there is no parent content.
  final String? parentId;
  final String? parentType;

  /// Position of the whiteboard within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this whiteboard originally.
  final String? authorId;

  /// The account ID of the user who owns this whiteboard.
  final String? ownerId;

  /// Date and time when the whiteboard was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final WhiteboardLinks? links;

  WhiteboardSingle(
      {this.id,
      this.type,
      this.status,
      this.title,
      this.parentId,
      this.parentType,
      this.position,
      this.authorId,
      this.ownerId,
      this.createdAt,
      this.version,
      this.links});

  factory WhiteboardSingle.fromJson(Map<String, Object?> json) {
    return WhiteboardSingle(
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentId: json[r'parentId'] as String?,
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      ownerId: json[r'ownerId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? WhiteboardLinks.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var type = this.type;
    var status = this.status;
    var title = this.title;
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
    var authorId = this.authorId;
    var ownerId = this.ownerId;
    var createdAt = this.createdAt;
    var version = this.version;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (parentId != null) {
      json[r'parentId'] = parentId;
    }
    if (parentType != null) {
      json[r'parentType'] = parentType;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (authorId != null) {
      json[r'authorId'] = authorId;
    }
    if (ownerId != null) {
      json[r'ownerId'] = ownerId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toIso8601String();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  WhiteboardSingle copyWith(
      {String? id,
      String? type,
      String? status,
      String? title,
      String? parentId,
      String? parentType,
      int? position,
      String? authorId,
      String? ownerId,
      DateTime? createdAt,
      Version? version,
      WhiteboardLinks? links}) {
    return WhiteboardSingle(
      id: id ?? this.id,
      type: type ?? this.type,
      status: status ?? this.status,
      title: title ?? this.title,
      parentId: parentId ?? this.parentId,
      parentType: parentType ?? this.parentType,
      position: position ?? this.position,
      authorId: authorId ?? this.authorId,
      ownerId: ownerId ?? this.ownerId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      links: links ?? this.links,
    );
  }
}
