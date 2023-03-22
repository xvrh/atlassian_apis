// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class ConfluenceV2Api {
  final ApiClient _client;

  ConfluenceV2Api(this._client);

  late final attachment = AttachmentApi(_client);

  late final blogPost = BlogPostApi(_client);

  late final children = ChildrenApi(_client);

  late final comment = CommentApi(_client);

  late final contentProperties = ContentPropertiesApi(_client);

  late final customContent = CustomContentApi(_client);

  late final label = LabelApi(_client);

  late final page = PageApi(_client);

  late final space = SpaceApi(_client);

  late final spaceProperties = SpacePropertiesApi(_client);

  late final task = TaskApi(_client);

  late final version = VersionApi(_client);

  void close() => _client.close();
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class AttachmentApi {
  final ApiClient _client;

  AttachmentApi(this._client);

  /// Returns a specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment's container.
  Future<Attachment> getAttachmentById({required int id, int? version}) async {
    return Attachment.fromJson(await _client.send(
      'get',
      'attachments/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (version != null) 'version': '$version',
      },
    ));
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
            if (mediaType != null) 'mediaType': mediaType,
            if (filename != null) 'filename': filename,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Attachment.fromJson(v as Map<String, Object?>));
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
            if (mediaType != null) 'mediaType': mediaType,
            if (filename != null) 'filename': filename,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Attachment.fromJson(v as Map<String, Object?>));
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
            if (mediaType != null) 'mediaType': mediaType,
            if (filename != null) 'filename': filename,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Attachment.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<BlogPost>> getBlogPosts(
      {String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'blogposts',
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => BlogPost.fromJson(v as Map<String, Object?>));
  }

  /// Creates a new blog post in the space specified by the spaceId.
  ///
  /// By default this will create the blog post as a non-draft, unless the
  /// status is specified as draft.
  /// If creating a non-draft, the title must not be empty.
  ///
  /// Currently only supports the storage representation specified in the
  /// body.representation enums below
  Future<BlogPost> createBlogPost() async {
    return BlogPost.fromJson(await _client.send(
      'post',
      'blogposts',
    ));
  }

  /// Returns a specific blog post.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space.
  Future<BlogPost> getBlogPostById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      int? version}) async {
    return BlogPost.fromJson(await _client.send(
      'get',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (version != null) 'version': '$version',
      },
    ));
  }

  /// Update a blog post by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the blog post and its corresponding space. Permission
  /// to update blog posts in the space.
  Future<BlogPost> updateBlogPost(int id) async {
    return BlogPost.fromJson(await _client.send(
      'put',
      'blogposts/{id}',
      pathParameters: {
        'id': '$id',
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
  Future<MultiEntityResult<BlogPost>> getLabelBlogPosts(
      {required int id, String? sort, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'labels/{id}/blogposts',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => BlogPost.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<BlogPost>> getBlogPostsInSpace(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'spaces/{id}/blogposts',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => BlogPost.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Page>> getChildPages(
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
        reviver: (v) => Page.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Page>> getChildCustomContent(
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
        reviver: (v) => Page.fromJson(v as Map<String, Object?>));
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
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => PageCommentModel.fromJson(v as Map<String, Object?>));
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
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) =>
            PageInlineCommentModel.fromJson(v as Map<String, Object?>));
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
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) =>
            BlogPostCommentModel.fromJson(v as Map<String, Object?>));
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
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) =>
            BlogPostInlineCommentModel.fromJson(v as Map<String, Object?>));
  }

  /// Create a footer comment. This can be at the top level (specifying pageId
  /// or blogPostId in the request body)
  /// or as a reply (specifying parentCommentId in the request body).
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create comments in the space.
  Future<FooterCommentModel> createFooterComment(
      {required CreateFooterCommentModel body}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'post',
      'footer-comments',
      body: body.toJson(),
    ));
  }

  /// Retrieves a footer comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  Future<FooterCommentModel> getFooterCommentById(
      {required int commentId, String? bodyFormat, int? version}) async {
    return FooterCommentModel.fromJson(await _client.send(
      'get',
      'footer-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
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
        reviver: (v) =>
            ChildrenCommentModel.fromJson(v as Map<String, Object?>));
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
      {required CreateInlineCommentModel body}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'post',
      'inline-comments',
      body: body.toJson(),
    ));
  }

  /// Retrieves an inline comment by id
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space.
  Future<InlineCommentModel> getInlineCommentById(
      {required int commentId, String? bodyFormat, int? version}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'get',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
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
      {required int commentId, required UpdateInlineCommentModel body}) async {
    return InlineCommentModel.fromJson(await _client.send(
      'put',
      'inline-comments/{comment-id}',
      pathParameters: {
        'comment-id': '$commentId',
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
            InlineCommentChildrenModel.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => ContentProperty.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<CustomContent>> getCustomContentByTypeInBlogPost(
      {required int id,
      required String type,
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
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (bodyFormat != null) 'body-format': bodyFormat,
          },
        ),
        reviver: (v) => CustomContent.fromJson(v as Map<String, Object?>));
  }

  /// Returns all custom content for a given type. The number of results is
  /// limited by the `limit` parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom
  /// content, and the corresponding space (if different from the container).
  Future<MultiEntityResult<CustomContent>> getCustomContentByType(
      {required String type,
      String? cursor,
      int? limit,
      String? bodyFormat}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'custom-content',
          queryParameters: {
            'type': type,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (bodyFormat != null) 'body-format': bodyFormat,
          },
        ),
        reviver: (v) => CustomContent.fromJson(v as Map<String, Object?>));
  }

  /// Creates a new custom content in the given space, page, blogpost or other
  /// custom conent.
  ///
  /// Only one of `spaceId`, `pageId`, `blogPostId`, or `customContentId` is
  /// required in the request body.
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the content of the page or blogpost and its
  /// corresponding space. Permission to create custom content in the space.
  Future<CustomContent> createCustomContent() async {
    return CustomContent.fromJson(await _client.send(
      'post',
      'custom-content',
    ));
  }

  /// Returns a specific piece of custom content.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content, the container of the custom
  /// content, and the corresponding space (if different from the container).
  Future<CustomContent> getCustomContentById(
      {required int id, String? bodyFormat, int? version}) async {
    return CustomContent.fromJson(await _client.send(
      'get',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (version != null) 'version': '$version',
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
  Future<CustomContent> updateCustomContent(int id) async {
    return CustomContent.fromJson(await _client.send(
      'put',
      'custom-content/{id}',
      pathParameters: {
        'id': '$id',
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
  Future<MultiEntityResult<CustomContent>> getCustomContentByTypeInPage(
      {required int id,
      required String type,
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
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (bodyFormat != null) 'body-format': bodyFormat,
          },
        ),
        reviver: (v) => CustomContent.fromJson(v as Map<String, Object?>));
  }

  /// Returns all custom content for a given type within a given space. The
  /// number of results is limited by the `limit` parameter and additional
  /// results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the custom content and the corresponding space.
  Future<MultiEntityResult<CustomContent>> getCustomContentByTypeInSpace(
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
        reviver: (v) => CustomContent.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => Label.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => Label.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => Label.fromJson(v as Map<String, Object?>));
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
        reviver: (v) => Label.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Page>> getLabelPages(
      {required int id, String? sort, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'labels/{id}/pages',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (sort != null) 'sort': sort,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Page.fromJson(v as Map<String, Object?>));
  }

  /// Returns all pages. The number of results is limited by the `limit`
  /// parameter and additional results (if available)
  /// will be available through the `next` URL present in the `Link` response
  /// header.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to access the Confluence site ('Can use' global permission).
  /// Only pages that the user has permission to view will be returned.
  Future<MultiEntityResult<Page>> getPages({String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'pages',
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Page.fromJson(v as Map<String, Object?>));
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
  Future<Page> createPage() async {
    return Page.fromJson(await _client.send(
      'post',
      'pages',
    ));
  }

  /// Returns a specific page.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space.
  Future<Page> getPageById(
      {required int id,
      String? bodyFormat,
      bool? getDraft,
      int? version}) async {
    return Page.fromJson(await _client.send(
      'get',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (bodyFormat != null) 'body-format': bodyFormat,
        if (getDraft != null) 'get-draft': '$getDraft',
        if (version != null) 'version': '$version',
      },
    ));
  }

  /// Update a page by id.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the page and its corresponding space. Permission to
  /// update pages in the space.
  Future<Page> updatePage(int id) async {
    return Page.fromJson(await _client.send(
      'put',
      'pages/{id}',
      pathParameters: {
        'id': '$id',
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
  Future<MultiEntityResult<Page>> getPagesInSpace(
      {required int id, String? cursor, int? limit}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'spaces/{id}/pages',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Page.fromJson(v as Map<String, Object?>));
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
            if (sort != null) 'sort': sort,
            if (descriptionFormat != null)
              'description-format': descriptionFormat,
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Space.fromJson(v as Map<String, Object?>));
  }

  /// Returns a specific space.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the space.
  Future<Space> getSpaceById(
      {required int id, String? descriptionFormat}) async {
    return Space.fromJson(await _client.send(
      'get',
      'spaces/{id}',
      pathParameters: {
        'id': '$id',
      },
      queryParameters: {
        if (descriptionFormat != null) 'description-format': descriptionFormat,
      },
    ));
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
  Future<Map<String, dynamic>> getSpaceProperties(
      {required int spaceId, String? key, String? cursor, int? limit}) async {
    return await _client.send(
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
    ) as Map<String, Object?>;
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
            if (completedAtFrom != null)
              'completed-at-from': '$completedAtFrom',
            if (completedAtTo != null) 'completed-at-to': '$completedAtTo',
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
          },
        ),
        reviver: (v) => Task.fromJson(v as Map<String, Object?>));
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
}

/// This document describes Confluence's v2 APIs. This is intended to be an iteration on the existing Confluence Cloud REST API with improvements in both endpoint definitions and performance.

class VersionApi {
  final ApiClient _client;

  VersionApi(this._client);

  /// Returns the versions of specific attachment.
  ///
  /// **[Permissions](https://confluence.atlassian.com/x/_AozKw) required**:
  /// Permission to view the attachment and its corresponding space.
  Future<MultiEntityResult<Version>> getAttachmentVersions(
      {required int id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'attachments/{id}/versions',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (sort != null) 'sort': sort,
          },
        ),
        reviver: (v) => Version.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Version>> getBlogPostVersions(
      {required int id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'blogposts/{id}/versions',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (sort != null) 'sort': sort,
          },
        ),
        reviver: (v) => Version.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Version>> getPageVersions(
      {required int id, String? cursor, int? limit, String? sort}) async {
    return MultiEntityResult.fromJson(
        await _client.send(
          'get',
          'pages/{id}/versions',
          pathParameters: {
            'id': '$id',
          },
          queryParameters: {
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (sort != null) 'sort': sort,
          },
        ),
        reviver: (v) => Version.fromJson(v as Map<String, Object?>));
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
  Future<MultiEntityResult<Version>> getCustomContentVersions(
      {required int customContentId,
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
            if (cursor != null) 'cursor': cursor,
            if (limit != null) 'limit': '$limit',
            if (sort != null) 'sort': sort,
          },
        ),
        reviver: (v) => Version.fromJson(v as Map<String, Object?>));
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
  static const createdDate = BlogPostSortOrder._('created-date');
  static const createdDateDesc = BlogPostSortOrder._('-created-date');
  static const modifiedDate = BlogPostSortOrder._('modified-date');
  static const modifiedDateDesc = BlogPostSortOrder._('-modified-date');
  static const title = BlogPostSortOrder._('title');
  static const titleDesc = BlogPostSortOrder._('-title');

  static const values = [
    createdDate,
    createdDateDesc,
    modifiedDate,
    modifiedDateDesc,
    title,
    titleDesc,
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

class BodyRepresentation {
  static const anonymousExportView =
      BodyRepresentation._('anonymous_export_view');
  static const atlasDocFormat = BodyRepresentation._('atlas_doc_format');
  static const dynamic$ = BodyRepresentation._('dynamic');
  static const editor = BodyRepresentation._('editor');
  static const editor2 = BodyRepresentation._('editor2');
  static const exportView = BodyRepresentation._('export_view');
  static const plain = BodyRepresentation._('plain');
  static const raw = BodyRepresentation._('raw');
  static const storage = BodyRepresentation._('storage');
  static const styledView = BodyRepresentation._('styled_view');
  static const view = BodyRepresentation._('view');

  static const values = [
    anonymousExportView,
    atlasDocFormat,
    dynamic$,
    editor,
    editor2,
    exportView,
    plain,
    raw,
    storage,
    styledView,
    view,
  ];
  final String value;

  const BodyRepresentation._(this.value);

  static BodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BodyRepresentation._(value));

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
  static const createdDate = PageSortOrder._('created-date');
  static const createdDateDesc = PageSortOrder._('-created-date');
  static const modifiedDate = PageSortOrder._('modified-date');
  static const modifiedDateDesc = PageSortOrder._('-modified-date');
  static const title = PageSortOrder._('title');
  static const titleDesc = PageSortOrder._('-title');

  static const values = [
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

class Attachment {
  /// ID of the attachment.
  final String? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// Media Type for the attachment.
  final String? mediaType;

  /// Media Type description for the attachment.
  final String? mediaTypeDescription;

  /// Comment for the attachment.
  final String? comment;

  /// File size of the attachment.
  final int? fileSize;

  /// WebUI link of the attachment.
  final String? webuiLink;

  /// Download link of the attachment.
  final String? downloadLink;
  final Version? version;

  Attachment(
      {this.id,
      this.status,
      this.title,
      this.mediaType,
      this.mediaTypeDescription,
      this.comment,
      this.fileSize,
      this.webuiLink,
      this.downloadLink,
      this.version});

  factory Attachment.fromJson(Map<String, Object?> json) {
    return Attachment(
      id: json[r'id'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      mediaType: json[r'mediaType'] as String?,
      mediaTypeDescription: json[r'mediaTypeDescription'] as String?,
      comment: json[r'comment'] as String?,
      fileSize: (json[r'fileSize'] as num?)?.toInt(),
      webuiLink: json[r'webuiLink'] as String?,
      downloadLink: json[r'downloadLink'] as String?,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var mediaType = this.mediaType;
    var mediaTypeDescription = this.mediaTypeDescription;
    var comment = this.comment;
    var fileSize = this.fileSize;
    var webuiLink = this.webuiLink;
    var downloadLink = this.downloadLink;
    var version = this.version;

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
    if (mediaType != null) {
      json[r'mediaType'] = mediaType;
    }
    if (mediaTypeDescription != null) {
      json[r'mediaTypeDescription'] = mediaTypeDescription;
    }
    if (comment != null) {
      json[r'comment'] = comment;
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
    return json;
  }

  Attachment copyWith(
      {String? id,
      String? status,
      String? title,
      String? mediaType,
      String? mediaTypeDescription,
      String? comment,
      int? fileSize,
      String? webuiLink,
      String? downloadLink,
      Version? version}) {
    return Attachment(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      mediaType: mediaType ?? this.mediaType,
      mediaTypeDescription: mediaTypeDescription ?? this.mediaTypeDescription,
      comment: comment ?? this.comment,
      fileSize: fileSize ?? this.fileSize,
      webuiLink: webuiLink ?? this.webuiLink,
      downloadLink: downloadLink ?? this.downloadLink,
      version: version ?? this.version,
    );
  }
}

class BlogPost {
  /// ID of the blog post.
  final int? id;
  final String? status;

  /// Title of the blog post.
  final String? title;

  /// ID of the space the blog post is in.
  final int? spaceId;

  /// The account ID of the user who created this blog post originally.
  final String? authorId;

  /// Date and time when the blog post was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final Body? body;

  BlogPost(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.authorId,
      this.createdAt,
      this.version,
      this.body});

  factory BlogPost.fromJson(Map<String, Object?> json) {
    return BlogPost(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
    return json;
  }

  BlogPost copyWith(
      {int? id,
      String? status,
      String? title,
      int? spaceId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      Body? body}) {
    return BlogPost(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class BlogPostCommentModel {
  /// ID of the comment.
  final int? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post the comment is in.
  final int? blogPostId;
  final Version? version;

  /// Contains representations of the comment's body in different formats.
  final Body? body;

  BlogPostCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.version,
      this.body});

  factory BlogPostCommentModel.fromJson(Map<String, Object?> json) {
    return BlogPostCommentModel(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
    return json;
  }

  BlogPostCommentModel copyWith(
      {int? id,
      String? status,
      String? title,
      int? blogPostId,
      Version? version,
      Body? body}) {
    return BlogPostCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class BlogPostInlineCommentModel {
  final String? resolutionStatus;
  final InlineCommentProperties? properties;

  BlogPostInlineCommentModel({this.resolutionStatus, this.properties});

  factory BlogPostInlineCommentModel.fromJson(Map<String, Object?> json) {
    return BlogPostInlineCommentModel(
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;

    final json = <String, Object?>{};
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    return json;
  }

  BlogPostInlineCommentModel copyWith(
      {String? resolutionStatus, InlineCommentProperties? properties}) {
    return BlogPostInlineCommentModel(
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
    );
  }
}

/// Contains fields for each representation type requested.
class Body {
  final BodyType? storage;
  final BodyType? atlasDocFormat;

  Body({this.storage, this.atlasDocFormat});

  factory Body.fromJson(Map<String, Object?> json) {
    return Body(
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

  Body copyWith({BodyType? storage, BodyType? atlasDocFormat}) {
    return Body(
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
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
  final int? id;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// Custom content type.
  final String? type;

  /// ID of the space the custom content is in.
  final int? spaceId;

  ChildCustomContent(
      {this.id, this.status, this.title, this.type, this.spaceId});

  factory ChildCustomContent.fromJson(Map<String, Object?> json) {
    return ChildCustomContent(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      type: json[r'type'] as String?,
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
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
      {int? id, String? status, String? title, String? type, int? spaceId}) {
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
  final int? id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  final int? spaceId;

  /// Position of child page within the given parent page tree.
  final int? childPosition;

  ChildPage(
      {this.id, this.status, this.title, this.spaceId, this.childPosition});

  factory ChildPage.fromJson(Map<String, Object?> json) {
    return ChildPage(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
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
      {int? id,
      String? status,
      String? title,
      int? spaceId,
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
  final int? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the parent comment the child comment is in.
  final int? parentCommentId;
  final Version? version;

  /// Contains representations of the comment's body in different formats.
  final Body? body;

  ChildrenCommentModel(
      {this.id,
      this.status,
      this.title,
      this.parentCommentId,
      this.version,
      this.body});

  factory ChildrenCommentModel.fromJson(Map<String, Object?> json) {
    return ChildrenCommentModel(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      parentCommentId: (json[r'parentCommentId'] as num?)?.toInt(),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
    return json;
  }

  ChildrenCommentModel copyWith(
      {int? id,
      String? status,
      String? title,
      int? parentCommentId,
      Version? version,
      Body? body}) {
    return ChildrenCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class ContentProperty {
  /// ID of the property
  final int? id;

  /// Key of the property
  final String? key;

  /// Value of the property. Must be a valid JSON value.
  final dynamic value;
  final Version? version;

  ContentProperty({this.id, this.key, this.value, this.version});

  factory ContentProperty.fromJson(Map<String, Object?> json) {
    return ContentProperty(
      id: (json[r'id'] as num?)?.toInt(),
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
      {int? id, String? key, dynamic value, Version? version}) {
    return ContentProperty(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      version: version ?? this.version,
    );
  }
}

class CreateFooterCommentModel {
  /// ID of the containing blog post, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final int? blogPostId;

  /// ID of the containing page, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final int? pageId;

  /// ID of the parent comment, if intending to create a reply. Do not provide
  /// if creating a top level comment.
  final int? parentCommentId;
  final CreateFooterCommentModelBody? body;

  CreateFooterCommentModel(
      {this.blogPostId, this.pageId, this.parentCommentId, this.body});

  factory CreateFooterCommentModel.fromJson(Map<String, Object?> json) {
    return CreateFooterCommentModel(
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      parentCommentId: (json[r'parentCommentId'] as num?)?.toInt(),
      body: json[r'body'] != null
          ? CreateFooterCommentModelBody.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
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
      json[r'body'] = body.toJson();
    }
    return json;
  }

  CreateFooterCommentModel copyWith(
      {int? blogPostId,
      int? pageId,
      int? parentCommentId,
      CreateFooterCommentModelBody? body}) {
    return CreateFooterCommentModel(
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      body: body ?? this.body,
    );
  }
}

class CreateFooterCommentModelBody {
  /// Body of the comment
  final String? value;

  /// Format of the body's value.
  final CreateFooterCommentModelBodyRepresentation? representation;

  CreateFooterCommentModelBody({this.value, this.representation});

  factory CreateFooterCommentModelBody.fromJson(Map<String, Object?> json) {
    return CreateFooterCommentModelBody(
      value: json[r'value'] as String?,
      representation: json[r'representation'] != null
          ? CreateFooterCommentModelBodyRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
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
      json[r'representation'] = representation.value;
    }
    return json;
  }

  CreateFooterCommentModelBody copyWith(
      {String? value,
      CreateFooterCommentModelBodyRepresentation? representation}) {
    return CreateFooterCommentModelBody(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class CreateFooterCommentModelBodyRepresentation {
  static const storage =
      CreateFooterCommentModelBodyRepresentation._('storage');
  static const atlasDocFormat =
      CreateFooterCommentModelBodyRepresentation._('atlas_doc_format');

  static const values = [
    storage,
    atlasDocFormat,
  ];
  final String value;

  const CreateFooterCommentModelBodyRepresentation._(this.value);

  static CreateFooterCommentModelBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CreateFooterCommentModelBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CreateInlineCommentModel {
  /// ID of the containing blog post, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final int? blogPostId;

  /// ID of the containing page, if intending to create a top level footer
  /// comment. Do not provide if creating a reply.
  final int? pageId;

  /// ID of the parent comment, if intending to create a reply. Do not provide
  /// if creating a top level comment.
  final int? parentCommentId;

  /// Body of the comment
  final CreateInlineCommentModelBody? body;

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
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      parentCommentId: (json[r'parentCommentId'] as num?)?.toInt(),
      body: json[r'body'] != null
          ? CreateInlineCommentModelBody.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
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
      json[r'body'] = body.toJson();
    }
    if (inlineCommentProperties != null) {
      json[r'inlineCommentProperties'] = inlineCommentProperties.toJson();
    }
    return json;
  }

  CreateInlineCommentModel copyWith(
      {int? blogPostId,
      int? pageId,
      int? parentCommentId,
      CreateInlineCommentModelBody? body,
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

/// Body of the comment
class CreateInlineCommentModelBody {
  /// Body of the comment
  final String? value;

  /// Format of the body's value.
  final CreateInlineCommentModelBodyRepresentation? representation;

  CreateInlineCommentModelBody({this.value, this.representation});

  factory CreateInlineCommentModelBody.fromJson(Map<String, Object?> json) {
    return CreateInlineCommentModelBody(
      value: json[r'value'] as String?,
      representation: json[r'representation'] != null
          ? CreateInlineCommentModelBodyRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
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
      json[r'representation'] = representation.value;
    }
    return json;
  }

  CreateInlineCommentModelBody copyWith(
      {String? value,
      CreateInlineCommentModelBodyRepresentation? representation}) {
    return CreateInlineCommentModelBody(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class CreateInlineCommentModelBodyRepresentation {
  static const storage =
      CreateInlineCommentModelBodyRepresentation._('storage');
  static const atlasDocFormat =
      CreateInlineCommentModelBodyRepresentation._('atlas_doc_format');

  static const values = [
    storage,
    atlasDocFormat,
  ];
  final String value;

  const CreateInlineCommentModelBodyRepresentation._(this.value);

  static CreateInlineCommentModelBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CreateInlineCommentModelBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

class CustomContent {
  /// ID of the custom content.
  final int? id;

  /// The type of custom content.
  final String? type;
  final String? status;

  /// Title of the custom content.
  final String? title;

  /// ID of the space the custom content is in.
  ///
  /// Note: This is always returned, regardless of if the custom content has a
  /// container that is a space.
  final int? spaceId;

  /// ID of the containing page.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a page.
  final int? pageId;

  /// ID of the containing blog post.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// a blog post.
  final int? blogPostId;

  /// ID of the containing custom content.
  ///
  /// Note: This is only returned if the custom content has a container that is
  /// custom content.
  final int? customContentId;

  /// The account ID of the user who created this custom content originally.
  final String? authorId;

  /// Date and time when the custom content was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final CustomContentBody? body;
  final Version? version;

  CustomContent(
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
      this.body,
      this.version});

  factory CustomContent.fromJson(Map<String, Object?> json) {
    return CustomContent(
      id: (json[r'id'] as num?)?.toInt(),
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      customContentId: (json[r'customContentId'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      body: json[r'body'] != null
          ? CustomContentBody.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
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
    var body = this.body;
    var version = this.version;

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
    if (body != null) {
      json[r'body'] = body.toJson();
    }
    if (version != null) {
      json[r'version'] = version.toJson();
    }
    return json;
  }

  CustomContent copyWith(
      {int? id,
      String? type,
      String? status,
      String? title,
      int? spaceId,
      int? pageId,
      int? blogPostId,
      int? customContentId,
      String? authorId,
      DateTime? createdAt,
      CustomContentBody? body,
      Version? version}) {
    return CustomContent(
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
      body: body ?? this.body,
      version: version ?? this.version,
    );
  }
}

/// Contains fields for each representation type requested.
class CustomContentBody {
  final BodyType? raw;
  final BodyType? storage;
  final BodyType? atlasDocFormat;

  CustomContentBody({this.raw, this.storage, this.atlasDocFormat});

  factory CustomContentBody.fromJson(Map<String, Object?> json) {
    return CustomContentBody(
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

  CustomContentBody copyWith(
      {BodyType? raw, BodyType? storage, BodyType? atlasDocFormat}) {
    return CustomContentBody(
      raw: raw ?? this.raw,
      storage: storage ?? this.storage,
      atlasDocFormat: atlasDocFormat ?? this.atlasDocFormat,
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
  final int? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  final int? blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  final int? pageId;

  /// ID of the parent comment if the comment is a reply.
  final int? parentCommentId;
  final Version? version;
  final Body? body;

  FooterCommentModel(
      {this.id,
      this.status,
      this.title,
      this.blogPostId,
      this.pageId,
      this.parentCommentId,
      this.version,
      this.body});

  factory FooterCommentModel.fromJson(Map<String, Object?> json) {
    return FooterCommentModel(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      parentCommentId: (json[r'parentCommentId'] as num?)?.toInt(),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
    return json;
  }

  FooterCommentModel copyWith(
      {int? id,
      String? status,
      String? title,
      int? blogPostId,
      int? pageId,
      int? parentCommentId,
      Version? version,
      Body? body}) {
    return FooterCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      blogPostId: blogPostId ?? this.blogPostId,
      pageId: pageId ?? this.pageId,
      parentCommentId: parentCommentId ?? this.parentCommentId,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class InlineCommentChildrenModel {
  final String? resolutionStatus;
  final InlineCommentProperties? properties;

  InlineCommentChildrenModel({this.resolutionStatus, this.properties});

  factory InlineCommentChildrenModel.fromJson(Map<String, Object?> json) {
    return InlineCommentChildrenModel(
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;

    final json = <String, Object?>{};
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    return json;
  }

  InlineCommentChildrenModel copyWith(
      {String? resolutionStatus, InlineCommentProperties? properties}) {
    return InlineCommentChildrenModel(
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
    );
  }
}

class InlineCommentModel {
  /// ID of the comment.
  final int? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the blog post containing the comment if the comment is on a blog
  /// post.
  final int? blogPostId;

  /// ID of the page containing the comment if the comment is on a page.
  final int? pageId;

  /// ID of the parent comment if the comment is a reply.
  final int? parentCommentId;
  final Version? version;
  final Body? body;

  /// Atlassian Account ID of last person who modified the resolve state of the
  /// comment. Null until comment is resolved or reopened.
  final String? resolutionLastModifierId;

  /// Timestamp of the last modification to the comment's resolution status.
  /// Null until comment is resolved or reopened.
  final DateTime? resolutionLastModifiedAt;
  final String? resolutionStatus;
  final InlineCommentProperties? properties;

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
      this.properties});

  factory InlineCommentModel.fromJson(Map<String, Object?> json) {
    return InlineCommentModel(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      parentCommentId: (json[r'parentCommentId'] as num?)?.toInt(),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
      resolutionLastModifierId: json[r'resolutionLastModifierId'] as String?,
      resolutionLastModifiedAt:
          DateTime.tryParse(json[r'resolutionLastModifiedAt'] as String? ?? ''),
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
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
    return json;
  }

  InlineCommentModel copyWith(
      {int? id,
      String? status,
      String? title,
      int? blogPostId,
      int? pageId,
      int? parentCommentId,
      Version? version,
      Body? body,
      String? resolutionLastModifierId,
      DateTime? resolutionLastModifiedAt,
      String? resolutionStatus,
      InlineCommentProperties? properties}) {
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
    );
  }
}

class InlineCommentProperties {
  InlineCommentProperties();

  factory InlineCommentProperties.fromJson(Map<String, Object?> json) {
    return InlineCommentProperties();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class Label {
  /// ID of the label.
  final int? id;

  /// Name of the label.
  final String? name;

  /// Prefix of the label.
  final String? prefix;

  Label({this.id, this.name, this.prefix});

  factory Label.fromJson(Map<String, Object?> json) {
    return Label(
      id: (json[r'id'] as num?)?.toInt(),
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

  Label copyWith({int? id, String? name, String? prefix}) {
    return Label(
      id: id ?? this.id,
      name: name ?? this.name,
      prefix: prefix ?? this.prefix,
    );
  }
}

class Page {
  /// ID of the page.
  final int? id;
  final String? status;

  /// Title of the page.
  final String? title;

  /// ID of the space the page is in.
  final int? spaceId;

  /// ID of the parent page, or null if there is no parent page.
  final int? parentId;

  /// The account ID of the user who created this page originally.
  final String? authorId;

  /// Date and time when the page was created. In format
  /// "YYYY-MM-DDTHH:mm:ss.sssZ".
  final DateTime? createdAt;
  final Version? version;
  final Body? body;

  Page(
      {this.id,
      this.status,
      this.title,
      this.spaceId,
      this.parentId,
      this.authorId,
      this.createdAt,
      this.version,
      this.body});

  factory Page.fromJson(Map<String, Object?> json) {
    return Page(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
      parentId: (json[r'parentId'] as num?)?.toInt(),
      authorId: json[r'authorId'] as String?,
      createdAt: DateTime.tryParse(json[r'createdAt'] as String? ?? ''),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var status = this.status;
    var title = this.title;
    var spaceId = this.spaceId;
    var parentId = this.parentId;
    var authorId = this.authorId;
    var createdAt = this.createdAt;
    var version = this.version;
    var body = this.body;

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
    return json;
  }

  Page copyWith(
      {int? id,
      String? status,
      String? title,
      int? spaceId,
      int? parentId,
      String? authorId,
      DateTime? createdAt,
      Version? version,
      Body? body}) {
    return Page(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      spaceId: spaceId ?? this.spaceId,
      parentId: parentId ?? this.parentId,
      authorId: authorId ?? this.authorId,
      createdAt: createdAt ?? this.createdAt,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class PageCommentModel {
  /// ID of the comment.
  final int? id;
  final String? status;

  /// Title of the comment.
  final String? title;

  /// ID of the page the comment is in.
  final int? pageId;
  final Version? version;

  /// Contains representations of the comment's body in different formats.
  final Body? body;

  PageCommentModel(
      {this.id, this.status, this.title, this.pageId, this.version, this.body});

  factory PageCommentModel.fromJson(Map<String, Object?> json) {
    return PageCommentModel(
      id: (json[r'id'] as num?)?.toInt(),
      status: json[r'status'] as String?,
      title: json[r'title'] as String?,
      pageId: (json[r'pageId'] as num?)?.toInt(),
      version: json[r'version'] != null
          ? Version.fromJson(json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
    return json;
  }

  PageCommentModel copyWith(
      {int? id,
      String? status,
      String? title,
      int? pageId,
      Version? version,
      Body? body}) {
    return PageCommentModel(
      id: id ?? this.id,
      status: status ?? this.status,
      title: title ?? this.title,
      pageId: pageId ?? this.pageId,
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

class PageInlineCommentModel {
  final String? resolutionStatus;
  final InlineCommentProperties? properties;

  PageInlineCommentModel({this.resolutionStatus, this.properties});

  factory PageInlineCommentModel.fromJson(Map<String, Object?> json) {
    return PageInlineCommentModel(
      resolutionStatus: json[r'resolutionStatus'] as String?,
      properties: json[r'properties'] != null
          ? InlineCommentProperties.fromJson(
              json[r'properties']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var resolutionStatus = this.resolutionStatus;
    var properties = this.properties;

    final json = <String, Object?>{};
    if (resolutionStatus != null) {
      json[r'resolutionStatus'] = resolutionStatus;
    }
    if (properties != null) {
      json[r'properties'] = properties.toJson();
    }
    return json;
  }

  PageInlineCommentModel copyWith(
      {String? resolutionStatus, InlineCommentProperties? properties}) {
    return PageInlineCommentModel(
      resolutionStatus: resolutionStatus ?? this.resolutionStatus,
      properties: properties ?? this.properties,
    );
  }
}

class Space {
  /// ID of the space.
  final int? id;

  /// Key of the space.
  final String? key;

  /// Name of the space.
  final String? name;
  final String? type;
  final String? status;

  /// ID of the space's homepage.
  final int? homepageId;
  final SpaceDescription? description;

  Space(
      {this.id,
      this.key,
      this.name,
      this.type,
      this.status,
      this.homepageId,
      this.description});

  factory Space.fromJson(Map<String, Object?> json) {
    return Space(
      id: (json[r'id'] as num?)?.toInt(),
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      status: json[r'status'] as String?,
      homepageId: (json[r'homepageId'] as num?)?.toInt(),
      description: json[r'description'] != null
          ? SpaceDescription.fromJson(
              json[r'description']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var type = this.type;
    var status = this.status;
    var homepageId = this.homepageId;
    var description = this.description;

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
    if (homepageId != null) {
      json[r'homepageId'] = homepageId;
    }
    if (description != null) {
      json[r'description'] = description.toJson();
    }
    return json;
  }

  Space copyWith(
      {int? id,
      String? key,
      String? name,
      String? type,
      String? status,
      int? homepageId,
      SpaceDescription? description}) {
    return Space(
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      type: type ?? this.type,
      status: status ?? this.status,
      homepageId: homepageId ?? this.homepageId,
      description: description ?? this.description,
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

class SpaceProperty {
  /// ID of the space property.
  final int? id;

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
      id: (json[r'id'] as num?)?.toInt(),
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
      {int? id,
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
  final int? id;

  /// Local ID of the task. This ID is local to the corresponding page or blog
  /// post.
  final int? localId;

  /// ID of the space the task is in.
  final int? spaceId;

  /// ID of the page the task is in.
  final int? pageId;

  /// ID of the blog post the task is in.
  final int? blogPostId;

  /// Status of the task.
  final TaskStatus? status;
  final Body? body;

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
      id: (json[r'id'] as num?)?.toInt(),
      localId: (json[r'localId'] as num?)?.toInt(),
      spaceId: (json[r'spaceId'] as num?)?.toInt(),
      pageId: (json[r'pageId'] as num?)?.toInt(),
      blogPostId: (json[r'blogPostId'] as num?)?.toInt(),
      status: json[r'status'] != null
          ? TaskStatus.fromValue(json[r'status']! as String)
          : null,
      body: json[r'body'] != null
          ? Body.fromJson(json[r'body']! as Map<String, Object?>)
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
      {int? id,
      int? localId,
      int? spaceId,
      int? pageId,
      int? blogPostId,
      TaskStatus? status,
      Body? body,
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

  /// Body of the comment
  final UpdateFooterCommentModelBody? body;

  UpdateFooterCommentModel({this.version, this.body});

  factory UpdateFooterCommentModel.fromJson(Map<String, Object?> json) {
    return UpdateFooterCommentModel(
      version: json[r'version'] != null
          ? UpdateFooterCommentModelVersion.fromJson(
              json[r'version']! as Map<String, Object?>)
          : null,
      body: json[r'body'] != null
          ? UpdateFooterCommentModelBody.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
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
      json[r'body'] = body.toJson();
    }
    return json;
  }

  UpdateFooterCommentModel copyWith(
      {UpdateFooterCommentModelVersion? version,
      UpdateFooterCommentModelBody? body}) {
    return UpdateFooterCommentModel(
      version: version ?? this.version,
      body: body ?? this.body,
    );
  }
}

/// Body of the comment
class UpdateFooterCommentModelBody {
  /// Body of the comment
  final String? value;

  /// Format of the body's value.
  final UpdateFooterCommentModelBodyRepresentation? representation;

  UpdateFooterCommentModelBody({this.value, this.representation});

  factory UpdateFooterCommentModelBody.fromJson(Map<String, Object?> json) {
    return UpdateFooterCommentModelBody(
      value: json[r'value'] as String?,
      representation: json[r'representation'] != null
          ? UpdateFooterCommentModelBodyRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
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
      json[r'representation'] = representation.value;
    }
    return json;
  }

  UpdateFooterCommentModelBody copyWith(
      {String? value,
      UpdateFooterCommentModelBodyRepresentation? representation}) {
    return UpdateFooterCommentModelBody(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class UpdateFooterCommentModelBodyRepresentation {
  static const storage =
      UpdateFooterCommentModelBodyRepresentation._('storage');
  static const atlasDocFormat =
      UpdateFooterCommentModelBodyRepresentation._('atlas_doc_format');

  static const values = [
    storage,
    atlasDocFormat,
  ];
  final String value;

  const UpdateFooterCommentModelBodyRepresentation._(this.value);

  static UpdateFooterCommentModelBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => UpdateFooterCommentModelBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

  /// Body of the comment
  final UpdateInlineCommentModelBody? body;

  /// -| Resolved state of the comment. Set to true to resolve the comment, set
  /// to false to reopen it. If matching the existing state (i.e. true ->
  /// resolved or false -> open/reopened) , no change will occur. A dangling
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
      body: json[r'body'] != null
          ? UpdateInlineCommentModelBody.fromJson(
              json[r'body']! as Map<String, Object?>)
          : null,
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
      json[r'body'] = body.toJson();
    }
    json[r'resolved'] = resolved;
    return json;
  }

  UpdateInlineCommentModel copyWith(
      {UpdateInlineCommentModelVersion? version,
      UpdateInlineCommentModelBody? body,
      bool? resolved}) {
    return UpdateInlineCommentModel(
      version: version ?? this.version,
      body: body ?? this.body,
      resolved: resolved ?? this.resolved,
    );
  }
}

/// Body of the comment
class UpdateInlineCommentModelBody {
  /// Body of the comment
  final String? value;

  /// Format of the body's value.
  final UpdateInlineCommentModelBodyRepresentation? representation;

  UpdateInlineCommentModelBody({this.value, this.representation});

  factory UpdateInlineCommentModelBody.fromJson(Map<String, Object?> json) {
    return UpdateInlineCommentModelBody(
      value: json[r'value'] as String?,
      representation: json[r'representation'] != null
          ? UpdateInlineCommentModelBodyRepresentation.fromValue(
              json[r'representation']! as String)
          : null,
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
      json[r'representation'] = representation.value;
    }
    return json;
  }

  UpdateInlineCommentModelBody copyWith(
      {String? value,
      UpdateInlineCommentModelBodyRepresentation? representation}) {
    return UpdateInlineCommentModelBody(
      value: value ?? this.value,
      representation: representation ?? this.representation,
    );
  }
}

class UpdateInlineCommentModelBodyRepresentation {
  static const storage =
      UpdateInlineCommentModelBodyRepresentation._('storage');
  static const atlasDocFormat =
      UpdateInlineCommentModelBodyRepresentation._('atlas_doc_format');

  static const values = [
    storage,
    atlasDocFormat,
  ];
  final String value;

  const UpdateInlineCommentModelBodyRepresentation._(this.value);

  static UpdateInlineCommentModelBodyRepresentation fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => UpdateInlineCommentModelBodyRepresentation._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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
