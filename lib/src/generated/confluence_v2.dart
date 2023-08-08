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

  late final comment = CommentApi(_client);

  late final content = ContentApi(_client);

  late final contentProperties = ContentPropertiesApi(_client);

  late final customContent = CustomContentApi(_client);

  late final label = LabelApi(_client);

  late final like = LikeApi(_client);

  late final operation = OperationApi(_client);

  late final page = PageApi(_client);

  late final space = SpaceApi(_client);

  late final spacePermissions = SpacePermissionsApi(_client);

  late final spaceProperties = SpacePropertiesApi(_client);

  late final task = TaskApi(_client);

  late final user = UserApi(_client);

  late final version = VersionApi(_client);

  void close() => _client.close();
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class AncestorsApi {
  final ApiClient _client;

  AncestorsApi(this._client);

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
  Future<MultiEntityResult<Attachment>> getAttachments(
      {String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Attachment.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns a specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment's container.
  Future<Attachment> getAttachmentById(
      {required String id, int? version, bool? serializeIdsAsStrings}) async {
    return Attachment.fromJson(await _client.send(
      'get',
      'attachments/{id}',
      pathParameters: {
        'id': id,
      },
      queryParameters: {
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Delete an attachment by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the container of the attachment. Permission to delete
  /// attachments in the space.
  Future<void> deleteAttachment(int id) async {
    await _client.send(
      'delete',
      'attachments/{id}',
      pathParameters: {
        'id': '$id',
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
  Future<MultiEntityResult<Attachment>> getBlogpostAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Attachment.fromJson(v as Map<String, Object?>),
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
  Future<MultiEntityResult<Attachment>> getCustomContentAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Attachment.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the attachments of specified label. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment and its corresponding space.
  Future<MultiEntityResult<Attachment>> getLabelAttachments(
      {required int id,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Attachment.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns the attachments of specific page. The number of results is limited
  /// by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<Attachment>> getPageAttachments(
      {required int id,
      String? sort,
      String? cursor,
      List<String>? status,
      String? mediaType,
      String? filename,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Attachment.fromJson(v as Map<String, Object?>),
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<BlogPostSingle> createBlogPost(
      {bool? serializeIdsAsStrings, bool? private}) async {
    return BlogPostSingle.fromJson(await _client.send(
      'post',
      'blogposts',
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
        if (private != null) 'private': '$private',
      },
    ));
  }

  /// Returns a specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space.
  Future<BlogPostSingle> getBlogPostById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      int? version,
      bool? serializeIdsAsStrings}) async {
    return BlogPostSingle.fromJson(await _client.send(
      'get',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update a blog post by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space. Permission
  /// to update blog posts in the space.
  Future<BlogPostSingle> updateBlogPost(
      {required int id, bool? serializeIdsAsStrings}) async {
    return BlogPostSingle.fromJson(await _client.send(
      'put',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Delete a blog post by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space. Permission
  /// to delete blog posts in the space.
  Future<void> deleteBlogPost(int id) async {
    await _client.send(
      'delete',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int id,
      String? cursor,
      int? limit,
      String? sort,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int id,
      String? cursor,
      int? limit,
      String? sort,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => ChildCustomContent.fromJson(v as Map<String, Object?>),
    );
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class CommentApi {
  final ApiClient _client;

  CommentApi(this._client);

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
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/footer-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'pages/{id}/inline-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/footer-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
          String? sort,
          String? cursor,
          int? limit,
          bool? serializeIdsAsStrings}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'blogposts/{id}/inline-comments',
        pathParameters: {
          'id': '$id',
        },
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  /// Permission to view the content of the page and its corresponding space.
  Future<MultiEntityResult<InlineCommentModel>> getFooterComments(
      {String? bodyFormat,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'footer-comments',
        queryParameters: {
          if (bodyFormat != null) 'body-format': bodyFormat,
          if (sort != null) 'sort': sort,
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => InlineCommentModel.fromJson(v as Map<String, Object?>),
    );
  }

  /// Create a footer comment. This can be at the top level (specifying pageId
  /// or blogPostId in the request body)
  /// or as a reply (specifying parentCommentId in the request body).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<FooterCommentModel> createFooterComment(
      {bool? serializeIdsAsStrings,
      required CreateFooterCommentModel body}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'post',
      'footer-comments',
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves a footer comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  Future<FooterCommentModel> getFooterCommentById(
      {required int commentId,
      String? bodyFormat,
      int? version,
      bool? serializeIdsAsStrings}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'get',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update a footer comment. This can be used to update the body text of a
  /// comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<FooterCommentModel> updateFooterComment(
      {required int commentId,
      bool? serializeIdsAsStrings,
      required UpdateFooterCommentModel body}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'put',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {bool? serializeIdsAsStrings,
      String? bodyFormat,
      String? sort,
      String? cursor,
      int? limit}) async {
    return MultiEntityResult.fromJson(
      await _client.send(
        'get',
        'inline-comments',
        queryParameters: {
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<InlineCommentModel> createInlineComment(
      {bool? serializeIdsAsStrings,
      required CreateInlineCommentModel body}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'post',
      'inline-comments',
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
      body: body.toJson(),
    ));
  }

  /// Retrieves an inline comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  Future<InlineCommentModel> getInlineCommentById(
      {required int commentId,
      String? bodyFormat,
      int? version,
      bool? serializeIdsAsStrings}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'get',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update an inline comment. This can be used to update the body text of a
  /// comment and/or to resolve the comment
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<InlineCommentModel> updateInlineComment(
      {required int commentId,
      bool? serializeIdsAsStrings,
      required UpdateInlineCommentModel body}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'put',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
      body: body.toJson(),
    ));
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
          bool? serializeIdsAsStrings,
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<ContentIdToContentTypeResponse>
      convertContentIdsToContentTypes() async {
    return ContentIdToContentTypeResponse.fromJson(await _client.send(
      'post',
      'content/convert-ids-to-types',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'attachments/{attachment-id}/properties',
      pathParameters: {
        'attachment-id': attachmentId,
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required String attachmentId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'attachments/{attachment-id}/properties/{property-id}',
      pathParameters: {
        'attachment-id': attachmentId,
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'attachments/{attachment-id}/properties/{property-id}',
      pathParameters: {
        'attachment-id': attachmentId,
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'blogposts/{blogpost-id}/properties',
      pathParameters: {
        'blogpost-id': '$blogpostId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int blogpostId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'blogposts/{blogpost-id}/properties/{property-id}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'blogposts/{blogpost-id}/properties/{property-id}',
      pathParameters: {
        'blogpost-id': '$blogpostId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'custom-content/{custom-content-id}/properties',
      pathParameters: {
        'custom-content-id': '$customContentId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int customContentId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'custom-content/{custom-content-id}/properties/{property-id}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'custom-content/{custom-content-id}/properties/{property-id}',
      pathParameters: {
        'custom-content-id': '$customContentId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int pageId,
      bool? serializeIdsAsStrings,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'pages/{page-id}/properties',
      pathParameters: {
        'page-id': '$pageId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int pageId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'pages/{page-id}/properties/{property-id}',
      pathParameters: {
        'page-id': '$pageId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'pages/{page-id}/properties/{property-id}',
      pathParameters: {
        'page-id': '$pageId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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

  /// Retrieves Content Properties attached to a specified comment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the comment.
  Future<MultiEntityResult<ContentProperty>> getCommentContentProperties(
      {required int commentId,
      String? key,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyCreateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'post',
      'comments/{comment-id}/properties',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int commentId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return ContentProperty.fromJson(await _client.send(
      'get',
      'comments/{comment-id}/properties/{property-id}',
      pathParameters: {
        'comment-id': '$commentId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required ContentPropertyUpdateRequest body}) async {
    return ContentProperty.fromJson(await _client.send(
      'put',
      'comments/{comment-id}/properties/{property-id}',
      pathParameters: {
        'comment-id': '$commentId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      String? bodyFormat,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      String? bodyFormat,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<CustomContentSingle> createCustomContent(
      {bool? serializeIdsAsStrings}) async {
    return CustomContentSingle.fromJson(await _client.send(
      'post',
      'custom-content',
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Returns a specific piece of custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom
  /// content, and the corresponding space (if different from the container).
  Future<CustomContentSingle> getCustomContentById(
      {required int id,
      String? bodyFormat,
      int? version,
      bool? serializeIdsAsStrings}) async {
    return CustomContentSingle.fromJson(await _client.send(
      'get',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update a custom content by id.
  ///
  /// `spaceId` is always required and maximum one of `pageId`, `blogPostId`, or
  /// `customContentId` is allowed in the request body.
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to update custom content in the space.
  Future<CustomContentSingle> updateCustomContent(
      {required int id, bool? serializeIdsAsStrings}) async {
    return CustomContentSingle.fromJson(await _client.send(
      'put',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Delete a custom content by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to delete custom content in the space.
  Future<void> deleteCustomContent(int id) async {
    await _client.send(
      'delete',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
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
      String? bodyFormat,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      String? bodyFormat,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => CustomContentBulk.fromJson(v as Map<String, Object?>),
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
  Future<MultiEntityResult<Label>> getAttachmentLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<MultiEntityResult<Label>> getBlogPostLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<MultiEntityResult<Label>> getCustomContentLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<MultiEntityResult<Label>> getPageLabels(
      {required int id,
      String? prefix,
      String? sort,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<PermittedOperationsResponse> getAttachmentOperations(int id) async {
    return PermittedOperationsResponse.fromJson(await _client.send(
      'get',
      'attachments/{id}/operations',
      pathParameters: {
        'id': '$id',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<PageSingle> createPage(
      {bool? serializeIdsAsStrings, bool? embedded, bool? private}) async {
    return PageSingle.fromJson(await _client.send(
      'post',
      'pages',
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
        if (embedded != null) 'embedded': '$embedded',
        if (private != null) 'private': '$private',
      },
    ));
  }

  /// Returns a specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space.
  Future<PageSingle> getPageById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      int? version,
      bool? serializeIdsAsStrings}) async {
    return PageSingle.fromJson(await _client.send(
      'get',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (version != null) 'version': '$version',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update a page by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space. Permission to
  /// update pages in the space.
  Future<PageSingle> updatePage(
      {required int id, bool? serializeIdsAsStrings}) async {
    return PageSingle.fromJson(await _client.send(
      'put',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Delete a page by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space. Permission to
  /// delete pages in the space.
  Future<void> deletePage(int id) async {
    await _client.send(
      'delete',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => PageBulk.fromJson(v as Map<String, Object?>),
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
  Future<MultiEntityResult<Space>> getSpaces(
      {List<int>? ids,
      List<String>? keys,
      String? type,
      String? status,
      List<String>? labels,
      String? sort,
      String? descriptionFormat,
      bool? includeIcon,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (sort != null) 'sort': sort,
          if (descriptionFormat != null)
            'description-format': descriptionFormat,
          if (includeIcon != null) 'include-icon': '$includeIcon',
          if (cursor != null) 'cursor': cursor,
          if (limit != null) 'limit': '$limit',
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
        },
      ),
      reviver: (v) => Space.fromJson(v as Map<String, Object?>),
    );
  }

  /// Returns a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  Future<Space> getSpaceById(
      {required int id,
      String? descriptionFormat,
      bool? includeIcon,
      bool? serializeIdsAsStrings}) async {
    return Space.fromJson(await _client.send(
      'get',
      'spaces/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (descriptionFormat != null) 'description-format': descriptionFormat,
        if (includeIcon != null) 'include-icon': '$includeIcon',
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
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
      {required int spaceId,
      String? key,
      String? cursor,
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int spaceId,
      bool? serializeIdsAsStrings,
      required SpacePropertyCreateRequest body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'post',
      'spaces/{space-id}/properties',
      pathParameters: {
        'space-id': '$spaceId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      {required int spaceId,
      required int propertyId,
      bool? serializeIdsAsStrings}) async {
    return SpaceProperty.fromJson(await _client.send(
      'get',
      'spaces/{space-id}/properties/{property-id}',
      pathParameters: {
        'space-id': '$spaceId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      bool? serializeIdsAsStrings,
      required SpacePropertyUpdateRequest body}) async {
    return SpaceProperty.fromJson(await _client.send(
      'put',
      'spaces/{space-id}/properties/{property-id}',
      pathParameters: {
        'space-id': '$spaceId',
        'property-id': '$propertyId',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
      int? limit,
      bool? serializeIdsAsStrings}) async {
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
          if (serializeIdsAsStrings != null)
            'serialize-ids-as-strings': '$serializeIdsAsStrings',
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
  Future<Task> getTaskById(
      {required int id,
      String? bodyFormat,
      bool? serializeIdsAsStrings}) async {
    return Task.fromJson(await _client.send(
      'get',
      'tasks/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }

  /// Update a task by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to edit the containing page or blog post and view its
  /// corresponding space.
  Future<Task> updateTask(
      {required int id, bool? serializeIdsAsStrings}) async {
    return Task.fromJson(await _client.send(
      'put',
      'tasks/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (serializeIdsAsStrings != null)
          'serialize-ids-as-strings': '$serializeIdsAsStrings',
      },
    ));
  }
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class UserApi {
  final ApiClient _client;

  UserApi(this._client);

  /// Returns the list of emails from the input list that do not have access to
  /// site.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<Map<String, dynamic>> checkAccessByEmail() async {
    return await _client.send(
      'post',
      'user/access/check-access-by-email',
    ) as Map<String, Object?>;
  }

  /// Invite a list of emails to the site.
  ///
  /// Ignores all invalid emails and no action is taken for the emails that
  /// already have access to the site.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  Future<void> inviteByEmail() async {
    await _client.send(
      'post',
      'user/access/invite-by-email',
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

class AncestorType {
  static const page = AncestorType._('page');

  static const values = [
    page,
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
  static const trashed = ContentStatus._('trashed');
  static const historical = ContentStatus._('historical');
  static const deleted = ContentStatus._('deleted');
  static const any = ContentStatus._('any');
  static const draft = ContentStatus._('draft');
  static const archived = ContentStatus._('archived');

  static const values = [
    current,
    trashed,
    historical,
    deleted,
    any,
    draft,
    archived,
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

class ContentType {
  static const page = ContentType._('page');

  static const values = [
    page,
  ];
  final String value;

  const ContentType._(this.value);

  static ContentType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => ContentType._(value));

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

  static const values = [
    storage,
    atlasDocFormat,
    view,
    exportView,
    anonymousExportView,
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
  static const personal = SpaceType._('personal');

  static const values = [
    global,
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

class Attachment {
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the attachment has a container that is a
  /// blog post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the attachment has a container that is
  /// custom content.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic customContentId;

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

  Attachment(
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

  factory Attachment.fromJson(Map<String, Object?> json) {
    return Attachment(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      pageId: json[r'pageId'],
      blogPostId: json[r'blogPostId'],
      customContentId: json[r'customContentId'],
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

  Attachment copyWith(
      {String? id,
      String? status,
      String? title,
      DateTime? createdAt,
      dynamic pageId,
      dynamic blogPostId,
      dynamic customContentId,
      String? mediaType,
      String? mediaTypeDescription,
      String? comment,
      String? fileId,
      int? fileSize,
      String? webuiLink,
      String? downloadLink,
      Version? version,
      AttachmentLinks? links}) {
    return Attachment(
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the blog post.
  final String? title;

  /// ID of the space the blog post is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic spaceId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post the comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic blogPostId,
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

class BlogPostInlineCommentModel {
  /// ID of the comment.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post the comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic blogPostId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the blog post.
  final String? title;

  /// ID of the space the blog post is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// The account ID of the user who created this blog post originally.
  final String? authorId;

  /// Date and time when the blog post was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodySingle? body;
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
      this.links});

  factory BlogPostSingle.fromJson(Map<String, Object?> json) {
    return BlogPostSingle(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
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

  BlogPostSingle copyWith(
      {dynamic id,
      String? status,
      String? title,
      dynamic spaceId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      BodySingle? body,
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
      links: links ?? this.links,
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

class ChildCustomContent {
  /// ID of the child custom content.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// Custom content type.
  final String? type;

  /// ID of the space the custom content is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  ChildCustomContent(
      {this.id, this.status, this.title, this.type, this.spaceId});

  factory ChildCustomContent.fromJson(Map<String, Object?> json) {
    return ChildCustomContent(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      type: json[r'type'] as String?,
      spaceId: json[r'spaceId'],
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
      {dynamic id,
      String? status,
      String? title,
      String? type,
      dynamic spaceId}) {
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// Position of child page within the given parent page tree.
  final int? childPosition;

  ChildPage(
      {this.id, this.status, this.title, this.spaceId, this.childPosition});

  factory ChildPage.fromJson(Map<String, Object?> json) {
    return ChildPage(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic spaceId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the parent comment the child comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentCommentId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentCommentId: json[r'parentCommentId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic parentCommentId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// Key of the property
  final String? key;

  /// Value of the property. Must be a valid JSON value.
  final dynamic value;
  final Version? version;

  ContentProperty({this.id, this.key, this.value, this.version});

  factory ContentProperty.fromJson(Map<String, Object?> json) {
    return ContentProperty(
      id: json[r'id'],
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
      {dynamic id, String? key, dynamic value, Version? version}) {
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
  final dynamic body;

  CreateFooterCommentModel(
      {this.blogPostId, this.pageId, this.parentCommentId, this.body});

  factory CreateFooterCommentModel.fromJson(Map<String, Object?> json) {
    return CreateFooterCommentModel(
      blogPostId: json[r'blogPostId'] as String?,
      pageId: json[r'pageId'] as String?,
      parentCommentId: json[r'parentCommentId'] as String?,
      body: json[r'body'],
    );
  }

  Map<String, Object?> toJson() {
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
    var parentCommentId = this.parentCommentId;
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
    if (body != null) {
      json[r'body'] = body;
    }
    return json;
  }

  CreateFooterCommentModel copyWith(
      {String? blogPostId,
      String? pageId,
      String? parentCommentId,
      dynamic body}) {
    return CreateFooterCommentModel(
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// The type of custom content.
  final String? type;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// ID of the space the custom content is in.
  ///
  /// Note: This is always returned, regardless of if the custom content has a
  /// container that is a space.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a blog post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// custom content.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic customContentId;

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
      id: json[r'id'],
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
      pageId: json[r'pageId'],
      blogPostId: json[r'blogPostId'],
      customContentId: json[r'customContentId'],
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
      {dynamic id,
      String? type,
      String? status,
      String? title,
      dynamic spaceId,
      dynamic pageId,
      dynamic blogPostId,
      dynamic customContentId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// The type of custom content.
  final String? type;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// ID of the space the custom content is in.
  ///
  /// Note: This is always returned, regardless of if the custom content has a
  /// container that is a space.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a blog post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// custom content.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic customContentId;

  /// The account ID of the user who created this custom content originally.
  final String? authorId;

  /// Date and time when the custom content was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
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
      this.body,
      this.links});

  factory CustomContentSingle.fromJson(Map<String, Object?> json) {
    return CustomContentSingle(
      id: json[r'id'],
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
      pageId: json[r'pageId'],
      blogPostId: json[r'blogPostId'],
      customContentId: json[r'customContentId'],
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
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

  CustomContentSingle copyWith(
      {dynamic id,
      String? type,
      String? status,
      String? title,
      dynamic spaceId,
      dynamic pageId,
      dynamic blogPostId,
      dynamic customContentId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
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
      body: body ?? this.body,
      links: links ?? this.links,
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

class FooterCommentModel {
  /// ID of the comment.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the parent comment if the comment is a reply.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentCommentId;
  final Version? version;
  final BodySingle? body;
  final CommentLinks? links;

  FooterCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.pageId,
      this.parentCommentId,
      this.version,
      this.body,
      this.links});

  factory FooterCommentModel.fromJson(Map<String, Object?> json) {
    return FooterCommentModel(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'],
      pageId: json[r'pageId'],
      parentCommentId: json[r'parentCommentId'],
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
    var blogPostId = this.blogPostId;
    var pageId = this.pageId;
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
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  FooterCommentModel copyWith(
      {dynamic id,
      String? status,
      String? title,
      dynamic blogPostId,
      dynamic pageId,
      dynamic parentCommentId,
      Version? version,
      BodySingle? body,
      CommentLinks? links}) {
    return FooterCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class InlineCommentChildrenModel {
  /// ID of the comment.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the parent comment the child comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentCommentId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentCommentId: json[r'parentCommentId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic parentCommentId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the parent comment if the comment is a reply.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentCommentId;
  final Version? version;
  final BodySingle? body;

  /// Atlassian Account ID of last person who modified the resolve state of the
  /// comment. Null until comment is resolved or reopened.
  final String? resolutionLastModifierId;

  /// Timestamp of the last modification to the comment's resolution status.
  /// Null until comment is resolved or reopened.
  final DateTime? resolutionLastModifiedAt;
  final String? resolutionStatus;
  final InlineCommentProperties? properties;
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
      this.links});

  factory InlineCommentModel.fromJson(Map<String, Object?> json) {
    return InlineCommentModel(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: json[r'blogPostId'],
      pageId: json[r'pageId'],
      parentCommentId: json[r'parentCommentId'],
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
    var pageId = this.pageId;
    var parentCommentId = this.parentCommentId;
    var version = this.version;
    var body = this.body;
    var resolutionLastModifierId = this.resolutionLastModifierId;
    var resolutionLastModifiedAt = this.resolutionLastModifiedAt;
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
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  InlineCommentModel copyWith(
      {dynamic id,
      String? status,
      String? title,
      dynamic blogPostId,
      dynamic pageId,
      dynamic parentCommentId,
      Version? version,
      BodySingle? body,
      String? resolutionLastModifierId,
      DateTime? resolutionLastModifiedAt,
      String? resolutionStatus,
      InlineCommentProperties? properties,
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
      links: links ?? this.links,
    );
  }
}

class InlineCommentProperties {
  /// Property value used to reference the highlighted element in DOM.
  final String? inlineMarkerRef;

  /// Text that is highlighted
  final String? inlineOriginalSelection;

  InlineCommentProperties({this.inlineMarkerRef, this.inlineOriginalSelection});

  factory InlineCommentProperties.fromJson(Map<String, Object?> json) {
    return InlineCommentProperties(
      inlineMarkerRef: json[r'inline-marker-ref'] as String?,
      inlineOriginalSelection: json[r'inline-original-selection'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var inlineMarkerRef = this.inlineMarkerRef;
    var inlineOriginalSelection = this.inlineOriginalSelection;

    final json = <String, Object?>{};
    if (inlineMarkerRef != null) {
      json[r'inline-marker-ref'] = inlineMarkerRef;
    }
    if (inlineOriginalSelection != null) {
      json[r'inline-original-selection'] = inlineOriginalSelection;
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// Name of the label.
  final String? name;

  /// Prefix of the label.
  final String? prefix;

  Label({this.id, this.name, this.prefix});

  factory Label.fromJson(Map<String, Object?> json) {
    return Label(
      id: json[r'id'],
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

  Label copyWith({dynamic id, String? name, String? prefix}) {
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// ID of the parent page, or null if there is no parent page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentId;
  final String? parentType;

  /// Position of child page within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this page originally.
  final String? authorId;

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
      this.createdAt,
      this.version,
      this.body,
      this.links});

  factory PageBulk.fromJson(Map<String, Object?> json) {
    return PageBulk(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
      parentId: json[r'parentId'],
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
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
    var parentId = this.parentId;
    var parentType = this.parentType;
    var position = this.position;
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
      {dynamic id,
      String? status,
      String? title,
      dynamic spaceId,
      dynamic parentId,
      String? parentType,
      int? position,
      String? authorId,
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
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
    );
  }
}

class PageCommentModel {
  /// ID of the comment.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the page the comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      pageId: json[r'pageId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic pageId,
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

class PageInlineCommentModel {
  /// ID of the comment.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the page the comment is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;
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
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      pageId: json[r'pageId'],
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
      {dynamic id,
      String? status,
      String? title,
      dynamic pageId,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// ID of the parent page, or null if there is no parent page.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic parentId;
  final String? parentType;

  /// Position of child page within the given parent page tree.
  final int? position;

  /// The account ID of the user who created this page originally.
  final String? authorId;

  /// Date and time when the page was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final BodySingle? body;
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
      this.createdAt,
      this.version,
      this.body,
      this.links});

  factory PageSingle.fromJson(Map<String, Object?> json) {
    return PageSingle(
      id: json[r'id'],
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: json[r'spaceId'],
      parentId: json[r'parentId'],
      parentType: json[r'parentType'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
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

  PageSingle copyWith(
      {dynamic id,
      String? status,
      String? title,
      dynamic spaceId,
      dynamic parentId,
      String? parentType,
      int? position,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      BodySingle? body,
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
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
      links: links ?? this.links,
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
  final List<PermittedOperationsResponseOperationsItem> operations;

  PermittedOperationsResponse(
      {List<PermittedOperationsResponseOperationsItem>? operations})
      : operations = operations ?? [];

  factory PermittedOperationsResponse.fromJson(Map<String, Object?> json) {
    return PermittedOperationsResponse(
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => PermittedOperationsResponseOperationsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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

  PermittedOperationsResponse copyWith(
      {List<PermittedOperationsResponseOperationsItem>? operations}) {
    return PermittedOperationsResponse(
      operations: operations ?? this.operations,
    );
  }
}

class PermittedOperationsResponseOperationsItem {
  /// The type of operation.
  final String? operation;

  /// The type of entity the operation type targets.
  final String? targetType;

  PermittedOperationsResponseOperationsItem({this.operation, this.targetType});

  factory PermittedOperationsResponseOperationsItem.fromJson(
      Map<String, Object?> json) {
    return PermittedOperationsResponseOperationsItem(
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

  PermittedOperationsResponseOperationsItem copyWith(
      {String? operation, String? targetType}) {
    return PermittedOperationsResponseOperationsItem(
      operation: operation ?? this.operation,
      targetType: targetType ?? this.targetType,
    );
  }
}

class Space {
  /// ID of the space.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// Key of the space.
  final String? key;

  /// Name of the space.
  final String? name;
  final String? type;
  final String? status;

  /// Date and time when the space was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;

  /// ID of the space's homepage.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic homepageId;
  final SpaceDescription? description;
  final SpaceIcon? icon;

  Space(
      {this.id,
      this.key,
      this.name,
      this.type,
      this.status,
      this.createdAt,
      this.homepageId,
      this.description,
      this.icon});

  factory Space.fromJson(Map<String, Object?> json) {
    return Space(
      id: json[r'id'],
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      homepageId: json[r'homepageId'],
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
      icon: json[r'icon'] != null
          ? SpaceIcon.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var type = this.type;
    var status = this.status;
    var createdAt = this.createdAt;
    var homepageId = this.homepageId;
    var description = this.description;
    var icon = this.icon;

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
    return json;
  }

  Space copyWith(
      {dynamic id,
      String? key,
      String? name,
      String? type,
      String? status,
      DateTime? createdAt,
      dynamic homepageId,
      SpaceDescription? description,
      SpaceIcon? icon}) {
    return Space(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      homepageId: homepageId ?? this.homepageId,
      description: description ?? this.description,
      icon: icon ?? this.icon,
    );
  }
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

  SpaceIcon({this.path});

  factory SpaceIcon.fromJson(Map<String, Object?> json) {
    return SpaceIcon(
      path: json[r'path'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var path = this.path;

    final json = <String, Object?>{};
    if (path != null) {
      json[r'path'] = path;
    }
    return json;
  }

  SpaceIcon copyWith({String? path}) {
    return SpaceIcon(
      path: path ?? this.path,
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
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

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
      id: json[r'id'],
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
      {dynamic id,
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

class Task {
  /// ID of the task.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic id;

  /// Local ID of the task. This ID is local to the corresponding page or blog
  /// post.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic localId;

  /// ID of the space the task is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic spaceId;

  /// ID of the page the task is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic pageId;

  /// ID of the blog post the task is in.
  ///
  /// Due to JavaScript's max integer representation of 2^53-1, the type of this
  /// field will be changed from a numeric type to a string type at the end of
  /// the deprecation period. In the meantime, `serialize-ids-as-strings=true`
  /// can be passed as a query param to any v2 endpoint to opt-in to this change
  /// now. See this
  /// [changelog](https://developer.atlassian.com/cloud/confluence/changelog/#CHANGE-905)
  /// for more detail.
  final dynamic blogPostId;

  /// Status of the task.
  final TaskStatus? status;
  final BodySingle? body;

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
      id: json[r'id'],
      localId: json[r'localId'],
      spaceId: json[r'spaceId'],
      pageId: json[r'pageId'],
      blogPostId: json[r'blogPostId'],
      status: json[r'status'] != null
          ? TaskStatus.fromValue(json[r'status']! as String)
          : null,
      body: json[r'body'] != null
          ? BodySingle.fromJson(json[r'body']! as Map<String, Object?>)
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
      {dynamic id,
      dynamic localId,
      dynamic spaceId,
      dynamic pageId,
      dynamic blogPostId,
      TaskStatus? status,
      BodySingle? body,
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
