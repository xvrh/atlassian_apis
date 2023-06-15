// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class ServiceManagementApi {
  final ApiClient _client;

  ServiceManagementApi(this._client);

  late final assets = AssetsApi(_client);

  late final customer = CustomerApi(_client);

  late final info = InfoApi(_client);

  late final knowledgebase = KnowledgebaseApi(_client);

  late final organization = OrganizationApi(_client);

  late final request = RequestApi(_client);

  late final requesttype = RequesttypeApi(_client);

  late final servicedesk = ServicedeskApi(_client);

  void close() => _client.close();
}

/// Public REST API for Jira Service Management

class AssetsApi {
  final ApiClient _client;

  AssetsApi(this._client);

  /// Returns a list of Assets workspace IDs. Include a workspace ID in the path
  /// to access the
  /// [Assets REST APIs](https://developer.atlassian.com/cloud/assets/rest).
  ///
  /// **[Permissions](#permissions) required**: Any
  Future<PagedDTOAssetsWorkspaceDTO> getAssetsWorkspaces(
      {int? start, int? limit}) async {
    return PagedDTOAssetsWorkspaceDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/assets/workspace',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This endpoint is deprecated, please use /assets/workspace/.
  Future<PagedDTOInsightWorkspaceDTO> getInsightWorkspaces(
      {int? start, int? limit}) async {
    return PagedDTOInsightWorkspaceDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/insight/workspace',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// Public REST API for Jira Service Management

class CustomerApi {
  final ApiClient _client;

  CustomerApi(this._client);

  /// This method adds a customer to the Jira Service Management instance by
  /// passing a JSON file including an email address and display name. The
  /// display name does not need to be unique. The record's identifiers, `name`
  /// and `key`, are automatically generated from the request details.
  ///
  /// **[Permissions](#permissions) required**: Jira Administrator Global
  /// permission
  Future<UserDTO> createCustomer(
      {bool? strictConflictStatusCode, required CustomerCreateDTO body}) async {
    return UserDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/customer',
      queryParameters: {
        if (strictConflictStatusCode != null)
          'strictConflictStatusCode': '$strictConflictStatusCode',
      },
      body: body.toJson(),
    ));
  }
}

/// Public REST API for Jira Service Management

class InfoApi {
  final ApiClient _client;

  InfoApi(this._client);

  /// This method retrieves information about the Jira Service Management
  /// instance such as software version, builds, and related links.
  ///
  /// **[Permissions](#permissions) required**: None, the user does not need to
  /// be logged in.
  Future<SoftwareInfoDTO> getInfo() async {
    return SoftwareInfoDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/info',
    ));
  }
}

/// Public REST API for Jira Service Management

class KnowledgebaseApi {
  final ApiClient _client;

  KnowledgebaseApi(this._client);

  /// Returns articles which match the given query string across all service
  /// desks.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the
  /// [customer portal](https://confluence.atlassian.com/servicedeskcloud/configuring-the-customer-portal-732528918.html).
  Future<PagedDTOArticleDTO> getArticles(
      {String? query, bool? highlight, int? start, int? limit}) async {
    return PagedDTOArticleDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/knowledgebase/article',
      queryParameters: {
        if (query != null) 'query': query,
        if (highlight != null) 'highlight': '$highlight',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

/// Public REST API for Jira Service Management

class OrganizationApi {
  final ApiClient _client;

  OrganizationApi(this._client);

  /// This method returns a list of organizations in the Jira Service Management
  /// instance. Use this method when you want to present a list of organizations
  /// or want to locate an organization by name.
  ///
  /// **[Permissions](#permissions) required**: Any. However, to fetch
  /// organizations based on `accountId` the user must have a Service Desk agent
  /// license.
  ///
  /// **Response limitations**: If the user is a customer, only those
  /// organizations of which the customer is a member are listed.
  Future<PagedDTOOrganizationDTO> getOrganizations(
      {int? start, int? limit, String? accountId}) async {
    return PagedDTOOrganizationDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/organization',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (accountId != null) 'accountId': accountId,
      },
    ));
  }

  /// This method creates an organization by passing the name of the
  /// organization.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator or
  /// agent. Note: Permission to create organizations can be switched to users
  /// with the Jira administrator permission, using the
  /// **[Organization management](https://confluence.atlassian.com/servicedeskcloud/setting-up-service-desk-users-732528877.html#Settingupservicedeskusers-manageorgsManageorganizations)**
  /// feature.
  Future<OrganizationDTO> createOrganization(
      {required OrganizationCreateDTO body}) async {
    return OrganizationDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/organization',
      body: body.toJson(),
    ));
  }

  /// This method returns details of an organization. Use this method to get
  /// organization details whenever your application component is passed an
  /// organization ID but needs to display other organization details.
  ///
  /// **[Permissions](#permissions) required**: Any
  ///
  /// **Response limitations**: Customers can only retrieve organization of
  /// which they are members.
  Future<OrganizationDTO> getOrganization(int organizationId) async {
    return OrganizationDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/organization/{organizationId}',
      pathParameters: {
        'organizationId': '$organizationId',
      },
    ));
  }

  /// This method deletes an organization. Note that the organization is deleted
  /// regardless of other associations it may have. For example, associations
  /// with service desks.
  ///
  /// **[Permissions](#permissions) required**: Jira administrator.
  Future<void> deleteOrganization(int organizationId) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/organization/{organizationId}',
      pathParameters: {
        'organizationId': '$organizationId',
      },
    );
  }

  /// Returns the keys of all properties for an organization. Use this resource
  /// when you need to find out what additional properties items have been added
  /// to an organization.
  ///
  /// **[Permissions](#permissions) required**: Any
  ///
  /// **Response limitations**: Customers can only access properties of
  /// organizations of which they are members.
  Future<PropertyKeys> getPropertiesKeys(String organizationId) async {
    return PropertyKeys.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/organization/{organizationId}/property',
      pathParameters: {
        'organizationId': organizationId,
      },
    ));
  }

  /// Returns the value of a property from an organization. Use this method to
  /// obtain the JSON content for an organization's property.
  ///
  /// **[Permissions](#permissions) required**: Any
  ///
  /// **Response limitations**: Customers can only access properties of
  /// organizations of which they are members.
  Future<EntityProperty> getProperty(
      {required String organizationId, required String propertyKey}) async {
    return EntityProperty.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/organization/{organizationId}/property/{propertyKey}',
      pathParameters: {
        'organizationId': organizationId,
        'propertyKey': propertyKey,
      },
    ));
  }

  /// Sets the value of a property for an organization. Use this resource to
  /// store custom data against an organization.
  ///
  /// **[Permissions](#permissions) required**: Service Desk Administrator or
  /// Agent.
  ///
  /// Note: Permission to manage organizations can be switched to users with the
  /// Jira administrator permission, using the
  /// **[Organization management](https://confluence.atlassian.com/servicedeskcloud/setting-up-service-desk-users-732528877.html#Settingupservicedeskusers-manageorgsManageorganizations)**
  /// feature.
  Future<dynamic> setProperty(
      {required String organizationId, required String propertyKey}) async {
    return await _client.send(
      'put',
      'rest/servicedeskapi/organization/{organizationId}/property/{propertyKey}',
      pathParameters: {
        'organizationId': organizationId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Removes a property from an organization.
  ///
  /// **[Permissions](#permissions) required**: Service Desk Administrator or
  /// Agent.
  ///
  /// Note: Permission to manage organizations can be switched to users with the
  /// Jira administrator permission, using the
  /// **[Organization management](https://confluence.atlassian.com/servicedeskcloud/setting-up-service-desk-users-732528877.html#Settingupservicedeskusers-manageorgsManageorganizations)**
  /// feature.
  Future<void> deleteProperty(
      {required String organizationId, required String propertyKey}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/organization/{organizationId}/property/{propertyKey}',
      pathParameters: {
        'organizationId': organizationId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// This method returns all the users associated with an organization. Use
  /// this method where you want to provide a list of users for an organization
  /// or determine if a user is associated with an organization.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator or
  /// agent.
  Future<PagedDTOUserDTO> getUsersInOrganization(
      {required int organizationId, int? start, int? limit}) async {
    return PagedDTOUserDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/organization/{organizationId}/user',
      pathParameters: {
        'organizationId': '$organizationId',
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method adds users to an organization.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator or
  /// agent. Note: Permission to add users to an organization can be switched to
  /// users with the Jira administrator permission, using the
  /// **[Organization management](https://confluence.atlassian.com/servicedeskcloud/setting-up-service-desk-users-732528877.html#Settingupservicedeskusers-manageorgsManageorganizations)**
  /// feature.
  Future<void> addUsersToOrganization(
      {required int organizationId,
      required UsersOrganizationUpdateDTO body}) async {
    await _client.send(
      'post',
      'rest/servicedeskapi/organization/{organizationId}/user',
      pathParameters: {
        'organizationId': '$organizationId',
      },
      body: body.toJson(),
    );
  }

  /// This method removes users from an organization.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator or
  /// agent. Note: Permission to delete users from an organization can be
  /// switched to users with the Jira administrator permission, using the
  /// **[Organization management](https://confluence.atlassian.com/servicedeskcloud/setting-up-service-desk-users-732528877.html#Settingupservicedeskusers-manageorgsManageorganizations)**
  /// feature.
  Future<void> removeUsersFromOrganization(
      {required int organizationId,
      required UsersOrganizationUpdateDTO body}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/organization/{organizationId}/user',
      pathParameters: {
        'organizationId': '$organizationId',
      },
      body: body.toJson(),
    );
  }

  /// This method returns a list of all organizations associated with a service
  /// desk.
  ///
  /// **[Permissions](#permissions) required**: Service desk's agent.
  Future<PagedDTOOrganizationDTO> getOrganizations2(
      {required String serviceDeskId,
      int? start,
      int? limit,
      String? accountId}) async {
    return PagedDTOOrganizationDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/organization',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (accountId != null) 'accountId': accountId,
      },
    ));
  }

  /// This method adds an organization to a service desk. If the organization ID
  /// is already associated with the service desk, no change is made and the
  /// resource returns a 204 success code.
  ///
  /// **[Permissions](#permissions) required**: Service desk's agent.
  Future<void> addOrganization(
      {required String serviceDeskId,
      required OrganizationServiceDeskUpdateDTO body}) async {
    await _client.send(
      'post',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/organization',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      body: body.toJson(),
    );
  }

  /// This method removes an organization from a service desk. If the
  /// organization ID does not match an organization associated with the service
  /// desk, no change is made and the resource returns a 204 success code.
  ///
  /// **[Permissions](#permissions) required**: Service desk's agent.
  Future<void> removeOrganization(
      {required String serviceDeskId,
      required OrganizationServiceDeskUpdateDTO body}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/organization',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      body: body.toJson(),
    );
  }
}

/// Public REST API for Jira Service Management

class RequestApi {
  final ApiClient _client;

  RequestApi(this._client);

  /// This method returns all customer requests for the user executing the
  /// query.
  ///
  /// The returned customer requests are ordered chronologically by the latest
  /// activity on each request. For example, the latest status transition or
  /// comment.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the
  /// specified service desk.
  ///
  /// **Response limitations**: For customers, the list returned will include
  /// request they created (or were created on their behalf) or are
  /// participating in only.
  Future<PagedDTOCustomerRequestDTO> getCustomerRequests(
      {String? searchTerm,
      List<String>? requestOwnership,
      String? requestStatus,
      String? approvalStatus,
      int? organizationId,
      int? serviceDeskId,
      int? requestTypeId,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return PagedDTOCustomerRequestDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request',
      queryParameters: {
        if (searchTerm != null) 'searchTerm': searchTerm,
        if (requestOwnership != null)
          'requestOwnership': requestOwnership.map((e) => e).join(','),
        if (requestStatus != null) 'requestStatus': requestStatus,
        if (approvalStatus != null) 'approvalStatus': approvalStatus,
        if (organizationId != null) 'organizationId': '$organizationId',
        if (serviceDeskId != null) 'serviceDeskId': '$serviceDeskId',
        if (requestTypeId != null) 'requestTypeId': '$requestTypeId',
        if (expand != null) 'expand': expand.map((e) => e).join(','),
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method creates a customer request in a service desk.
  ///
  /// The JSON request must include the service desk and customer request type,
  /// as well as any fields that are required for the request type. A list of
  /// the fields required by a customer request type can be obtained using
  /// [servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/field](#api-servicedesk-serviceDeskId-requesttype-requestTypeId-field-get).
  ///
  /// The fields required for a customer request type depend on the user's
  /// permissions:
  ///
  ///  *  `raiseOnBehalfOf` is not available to Users who have the customer
  /// permission only.
  ///  *  `requestParticipants` is not available to Users who have the customer
  /// permission only or if the feature is turned off for customers.
  ///
  /// `requestFieldValues` is a map of Jira field IDs and their values. See
  /// [Field input formats](#fieldformats), for details of each field's JSON
  /// semantics and the values they can take.
  ///
  /// **[Permissions](#permissions) required**: Permission to create requests in
  /// the specified service desk.
  Future<CustomerRequestDTO> createCustomerRequest(
      {required RequestCreateDTO body}) async {
    return CustomerRequestDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request',
      body: body.toJson(),
    ));
  }

  /// This method returns a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the
  /// specified service desk.
  ///
  /// **Response limitations**: For customers, only a request they created, was
  /// created on their behalf, or they are participating in will be returned.
  ///
  /// **Note:** `requestFieldValues` does not include hidden fields. To get a
  /// list of request type fields that includes hidden fields, see
  /// [/rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/field](https://developer.atlassian.com/cloud/jira/service-desk/rest/api-group-servicedesk/#api-rest-servicedeskapi-servicedesk-servicedeskid-requesttype-requesttypeid-field-get)
  Future<CustomerRequestDTO> getCustomerRequestByIdOrKey(
      {required String issueIdOrKey, List<String>? expand}) async {
    return CustomerRequestDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (expand != null) 'expand': expand.map((e) => e).join(','),
      },
    ));
  }

  /// This method returns all approvals on a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<PagedDTOApprovalDTO> getApprovals(
      {int? start, int? limit, required String issueIdOrKey}) async {
    return PagedDTOApprovalDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/approval',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns an approval. Use this method to determine the status
  /// of an approval and the list of approvers.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<ApprovalDTO> getApprovalById(
      {required String issueIdOrKey, required int approvalId}) async {
    return ApprovalDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/approval/{approvalId}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'approvalId': '$approvalId',
      },
    ));
  }

  /// This method enables a user to **Approve** or **Decline** an approval on a
  /// customer request. The approval is assumed to be owned by the user making
  /// the call.
  ///
  /// **[Permissions](#permissions) required**: User is assigned to the approval
  /// request.
  Future<ApprovalDTO> answerApproval(
      {required String issueIdOrKey,
      required int approvalId,
      required ApprovalDecisionRequestDTO body}) async {
    return ApprovalDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request/{issueIdOrKey}/approval/{approvalId}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'approvalId': '$approvalId',
      },
      body: body.toJson(),
    ));
  }

  /// This method returns all the attachments for a customer requests.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  ///
  /// **Response limitations**: Customers will only get a list of public
  /// attachments.
  Future<PagedDTOAttachmentDTO> getAttachmentsForRequest(
      {required String issueIdOrKey, int? start, int? limit}) async {
    return PagedDTOAttachmentDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/attachment',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method adds one or more temporary files (attached to the request's
  /// service desk using
  /// [servicedesk/{serviceDeskId}/attachTemporaryFile](#api-servicedesk-serviceDeskId-attachTemporaryFile-post))
  /// as attachments to a customer request and set the attachment visibility
  /// using the `public` flag. Also, it is possible to include a comment with
  /// the attachments.
  ///
  /// To get a list of attachments for a comment on the request use
  /// [servicedeskapi/request/{issueIdOrKey}/comment/{commentId}/attachment](#api-request-issueIdOrKey-comment-commentId-attachment-get).
  ///
  /// **[Permissions](#permissions) required**: Permission to add an attachment.
  ///
  /// **Request limitations**: Customers can set attachments to public
  /// visibility only.
  Future<AttachmentCreateResultDTO> createAttachment(
      {required String issueIdOrKey, required AttachmentCreateDTO body}) async {
    return AttachmentCreateResultDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request/{issueIdOrKey}/attachment',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      body: body.toJson(),
    ));
  }

  /// Returns the contents of an attachment.
  ///
  /// To return a thumbnail of the attachment, use
  /// [servicedeskapi/request/{issueIdOrKey}/attachment/{attachmentId}/thumbnail](#api-rest-servicedeskapi-request-issueidorkey-attachment-attachmentid-thumbnail-get).
  ///
  /// **[Permissions](#permissions) required:** For the issue containing the
  /// attachment:
  ///
  ///  *  *Browse projects*
  /// [project permission](https://confluence.atlassian.com/x/yodKLg) for the
  /// project that the issue is in.
  ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg)
  /// is configured, issue-level security permission to view the issue.
  Future<dynamic> getAttachmentContent(
      {required String issueIdOrKey, required int attachmentId}) async {
    return await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/attachment/{attachmentId}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'attachmentId': '$attachmentId',
      },
    );
  }

  /// Returns the thumbnail of an attachment.
  ///
  /// To return the attachment contents, use
  /// [servicedeskapi/request/{issueIdOrKey}/attachment/{attachmentId}](#api-rest-servicedeskapi-request-issueidorkey-attachment-attachmentid-get).
  ///
  /// **[Permissions](#permissions) required:** For the issue containing the
  /// attachment:
  ///
  ///  *  *Browse projects*
  /// [project permission](https://confluence.atlassian.com/x/yodKLg) for the
  /// project that the issue is in.
  ///  *  If [issue-level security](https://confluence.atlassian.com/x/J4lKLg)
  /// is configured, issue-level security permission to view the issue.
  Future<dynamic> getAttachmentThumbnail(
      {required String issueIdOrKey, required int attachmentId}) async {
    return await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/attachment/{attachmentId}/thumbnail',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'attachmentId': '$attachmentId',
      },
    );
  }

  /// This method returns all comments on a customer request. No permissions
  /// error is provided if, for example, the user doesn't have access to the
  /// service desk or request, the method simply returns an empty response.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  ///
  /// **Response limitations**: Customers are returned public comments only.
  Future<PagedDTOCommentDTO> getRequestComments(
      {required String issueIdOrKey,
      bool? public,
      bool? internal,
      List<String>? expand,
      int? start,
      int? limit}) async {
    return PagedDTOCommentDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/comment',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (public != null) 'public': '$public',
        if (internal != null) 'internal': '$internal',
        if (expand != null) 'expand': expand.map((e) => e).join(','),
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method creates a public or private (internal) comment on a customer
  /// request, with the comment visibility set by `public`. The user recorded as
  /// the author of the comment.
  ///
  /// **[Permissions](#permissions) required**: User has Add Comments
  /// permission.
  ///
  /// **Request limitations**: Customers can set comments to public visibility
  /// only.
  Future<CommentDTO> createRequestComment(
      {required String issueIdOrKey, required CommentCreateDTO body}) async {
    return CommentDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request/{issueIdOrKey}/comment',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      body: body.toJson(),
    ));
  }

  /// This method returns details of a customer request's comment.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  ///
  /// **Response limitations**: Customers can only view public comments on
  /// requests where they are the reporter or a participant whereas agents can
  /// see both internal and public comments.
  Future<CommentDTO> getRequestCommentById(
      {required String issueIdOrKey,
      required int commentId,
      List<String>? expand}) async {
    return CommentDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/comment/{commentId}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'commentId': '$commentId',
      },
      queryParameters: {
        if (expand != null) 'expand': expand.map((e) => e).join(','),
      },
    ));
  }

  /// This method returns the attachments referenced in a comment.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  ///
  /// **Response limitations**: Customers can only view public comments, and
  /// retrieve their attachments, on requests where they are the reporter or a
  /// participant whereas agents can see both internal and public comments.
  Future<PagedDTOAttachmentDTO> getCommentAttachments(
      {required String issueIdOrKey,
      required int commentId,
      int? start,
      int? limit}) async {
    return PagedDTOAttachmentDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/comment/{commentId}/attachment',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'commentId': '$commentId',
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns the notification subscription status of the user
  /// making the request. Use this method to determine if the user is subscribed
  /// to a customer request's notifications.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<RequestNotificationSubscriptionDTO> getSubscriptionStatus(
      String issueIdOrKey) async {
    return RequestNotificationSubscriptionDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/notification',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
    ));
  }

  /// This method subscribes the user to receiving notifications from a customer
  /// request.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<void> subscribe(String issueIdOrKey) async {
    await _client.send(
      'put',
      'rest/servicedeskapi/request/{issueIdOrKey}/notification',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
    );
  }

  /// This method unsubscribes the user from notifications from a customer
  /// request.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<void> unsubscribe(String issueIdOrKey) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/request/{issueIdOrKey}/notification',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
    );
  }

  /// This method returns a list of all the participants on a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<PagedDTOUserDTO> getRequestParticipants(
      {required String issueIdOrKey, int? start, int? limit}) async {
    return PagedDTOUserDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/participant',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method adds participants to a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to manage
  /// participants on the customer request.
  ///
  /// Note, participants can be added when creating a customer request using the
  /// [request](#api-request-post) resource, by defining the participants in the
  /// `requestParticipants` field.
  Future<PagedDTOUserDTO> addRequestParticipants(
      {required String issueIdOrKey,
      required RequestParticipantUpdateDTO body}) async {
    return PagedDTOUserDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request/{issueIdOrKey}/participant',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      body: body.toJson(),
    ));
  }

  /// This method removes participants from a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to manage
  /// participants on the customer request.
  Future<PagedDTOUserDTO> removeRequestParticipants(
      {required String issueIdOrKey,
      required RequestParticipantUpdateDTO body}) async {
    return PagedDTOUserDTO.fromJson(await _client.send(
      'delete',
      'rest/servicedeskapi/request/{issueIdOrKey}/participant',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      body: body.toJson(),
    ));
  }

  /// This method returns all the SLA records on a customer request. A customer
  /// request can have zero or more SLAs. Each SLA can have recordings for zero
  /// or more "completed cycles" and zero or 1 "ongoing cycle". Each cycle
  /// includes information on when it started and stopped, and whether it
  /// breached the SLA goal.
  ///
  /// **[Permissions](#permissions) required**: Agent for the Service Desk
  /// containing the queried customer request.
  Future<PagedDTOSlaInformationDTO> getSlaInformation(
      {required String issueIdOrKey, int? start, int? limit}) async {
    return PagedDTOSlaInformationDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/sla',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns the details for an SLA on a customer request.
  ///
  /// **[Permissions](#permissions) required**: Agent for the Service Desk
  /// containing the queried customer request.
  Future<SlaInformationDTO> getSlaInformationById(
      {required String issueIdOrKey, required int slaMetricId}) async {
    return SlaInformationDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/sla/{slaMetricId}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
        'slaMetricId': '$slaMetricId',
      },
    ));
  }

  /// This method returns a list of all the statuses a customer Request has
  /// achieved. A status represents the state of an issue in its workflow. An
  /// issue can have one active status only. The list returns the status history
  /// in chronological order, most recent (current) status first.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<PagedDTOCustomerRequestStatusDTO> getCustomerRequestStatus(
      {required String issueIdOrKey, int? start, int? limit}) async {
    return PagedDTOCustomerRequestStatusDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/status',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns a list of transitions, the workflow processes that
  /// moves a customer request from one status to another, that the user can
  /// perform on a request. Use this method to provide a user with a list if the
  /// actions they can take on a customer request.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the customer
  /// request.
  Future<PagedDTOCustomerTransitionDTO> getCustomerTransitions(
      {required String issueIdOrKey, int? start, int? limit}) async {
    return PagedDTOCustomerTransitionDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{issueIdOrKey}/transition',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method performs a customer transition for a given request and
  /// transition. An optional comment can be included to provide a reason for
  /// the transition.
  ///
  /// **[Permissions](#permissions) required**: The user must be able to view
  /// the request and have the Transition Issues permission. If a comment is
  /// passed the user must have the Add Comments permission.
  Future<void> performCustomerTransition(
      {required String issueIdOrKey,
      required CustomerTransitionExecutionDTO body}) async {
    await _client.send(
      'post',
      'rest/servicedeskapi/request/{issueIdOrKey}/transition',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      body: body.toJson(),
    );
  }

  /// This method retrieves a feedback of a request using it's `requestKey` or
  /// `requestId`
  ///
  /// **[Permissions](#permissions) required**: User has view request
  /// permissions.
  Future<CSATFeedbackFullDTO> getFeedback(String requestIdOrKey) async {
    return CSATFeedbackFullDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/request/{requestIdOrKey}/feedback',
      pathParameters: {
        'requestIdOrKey': requestIdOrKey,
      },
    ));
  }

  /// This method adds a feedback on an request using it's `requestKey` or
  /// `requestId`
  ///
  /// **[Permissions](#permissions) required**: User must be the reporter or an
  /// Atlassian Connect app.
  Future<CSATFeedbackFullDTO> postFeedback(
      {required String requestIdOrKey,
      required CSATFeedbackFullDTO body}) async {
    return CSATFeedbackFullDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/request/{requestIdOrKey}/feedback',
      pathParameters: {
        'requestIdOrKey': requestIdOrKey,
      },
      body: body.toJson(),
    ));
  }

  /// This method deletes the feedback of request using it's `requestKey` or
  /// `requestId`
  ///
  /// **[Permissions](#permissions) required**: User must be the reporter or an
  /// Atlassian Connect app.
  Future<dynamic> deleteFeedback(String requestIdOrKey) async {
    return await _client.send(
      'delete',
      'rest/servicedeskapi/request/{requestIdOrKey}/feedback',
      pathParameters: {
        'requestIdOrKey': requestIdOrKey,
      },
    );
  }
}

/// Public REST API for Jira Service Management

class RequesttypeApi {
  final ApiClient _client;

  RequesttypeApi(this._client);

  /// This method returns all customer request types used in the Jira Service
  /// Management instance, optionally filtered by a query string.
  ///
  /// Use
  /// [servicedeskapi/servicedesk/{serviceDeskId}/requesttype](#api-servicedesk-serviceDeskId-requesttype-get)
  /// to find the customer request types supported by a specific service desk.
  ///
  /// The returned list of customer request types can be filtered using the
  /// `query` parameter. The parameter is matched against the customer request
  /// types' `name` or `description`. For example, searching for "Install",
  /// "Inst", "Equi", or "Equipment" will match a customer request type with the
  /// *name* "Equipment Installation Request".
  ///
  /// **Note:** This API will filter out hidden request types (aka.request types
  /// without groups) when `query` is provided.
  ///
  /// **[Permissions](#permissions) required**: Any
  Future<PagedDTORequestTypeDTO> getAllRequestTypes(
      {String? searchQuery,
      List<int>? serviceDeskId,
      int? start,
      int? limit,
      List<String>? expand}) async {
    return PagedDTORequestTypeDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/requesttype',
      queryParameters: {
        if (searchQuery != null) 'searchQuery': searchQuery,
        if (serviceDeskId != null)
          'serviceDeskId': serviceDeskId.map((e) => '$e').join(','),
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
        if (expand != null) 'expand': expand.map((e) => e).join(','),
      },
    ));
  }
}

/// Public REST API for Jira Service Management

class ServicedeskApi {
  final ApiClient _client;

  ServicedeskApi(this._client);

  /// This method returns all the service desks in the Jira Service Management
  /// instance that the user has permission to access. Use this method where you
  /// need a list of service desks or need to locate a service desk by name or
  /// keyword.
  ///
  /// **Note:** This method will be slow if the instance has hundreds of service
  /// desks. If you want to fetch a single service desk by its ID, use
  /// [/rest/servicedeskapi/servicedesk/{serviceDeskId}](./#api-rest-servicedeskapi-servicedesk-servicedeskid-get)
  /// instead.
  ///
  /// **[Permissions](#permissions) required**: Any
  Future<PagedDTOServiceDeskDTO> getServiceDesks(
      {int? start, int? limit}) async {
    return PagedDTOServiceDeskDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk',
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns a service desk. Use this method to get service desk
  /// details whenever your application component is passed a service desk ID
  /// but needs to display other service desk details.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the Service
  /// Desk. For example, being the Service Desk's Administrator or one of its
  /// Agents or Users.
  Future<ServiceDeskDTO> getServiceDeskById(String serviceDeskId) async {
    return ServiceDeskDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
    ));
  }

  /// This method adds one or more temporary attachments to a service desk,
  /// which can then be permanently attached to a customer request using
  /// [servicedeskapi/request/{issueIdOrKey}/attachment](#api-request-issueIdOrKey-attachment-post).
  ///
  /// **Note**: It is possible for a service desk administrator to turn off the
  /// ability to add attachments to a service desk.
  ///
  /// This method expects a multipart request. The media-type
  /// multipart/form-data is defined in RFC 1867. Most client libraries have
  /// classes that make dealing with multipart posts simple. For instance, in
  /// Java the Apache HTTP Components library provides
  /// [MultiPartEntity](http://hc.apache.org/httpcomponents-client-ga/httpmime/apidocs/org/apache/http/entity/mime/MultipartEntity.html).
  ///
  /// Because this method accepts multipart/form-data, it has XSRF protection on
  /// it. This means you must submit a header of X-Atlassian-Token: no-check
  /// with the request or it will be blocked.
  ///
  /// The name of the multipart/form-data parameter that contains the
  /// attachments must be `file`.
  ///
  /// For example, to upload a file called `myfile.txt` in the Service Desk with
  /// ID 10001 use
  ///
  ///     curl -D- -u customer:customer -X POST -H "X-ExperimentalApi: opt-in"
  /// -H "X-Atlassian-Token: no-check" -F "file=@myfile.txt"
  /// https://your-domain.atlassian.net/rest/servicedeskapi/servicedesk/10001/attachTemporaryFile
  ///
  /// **[Permissions](#permissions) required**: Permission to add attachments in
  /// this Service Desk.
  Future<TemporaryAttachments> attachTemporaryFile(
      {required String serviceDeskId, required MultipartFile file}) async {
    return TemporaryAttachments.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/attachTemporaryFile',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      file: file,
    ));
  }

  /// This method returns a list of the customers on a service desk.
  ///
  /// The returned list of customers can be filtered using the `query`
  /// parameter. The parameter is matched against customers' `displayName`,
  /// `name`, or `email`. For example, searching for "John", "Jo", "Smi", or
  /// "Smith" will match a user with display name "John Smith".
  ///
  /// **[Permissions](#permissions) required**: Permission to view this Service
  /// Desk's customers.
  Future<PagedDTOUserDTO> getCustomers(
      {required String serviceDeskId,
      String? query,
      int? start,
      int? limit}) async {
    return PagedDTOUserDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/customer',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (query != null) 'query': query,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// Adds one or more customers to a service desk. If any of the passed
  /// customers are associated with the service desk, no changes will be made
  /// for those customers and the resource returns a 204 success code.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator
  Future<void> addCustomers(
      {required String serviceDeskId,
      required ServiceDeskCustomerDTO body}) async {
    await _client.send(
      'post',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/customer',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      body: body.toJson(),
    );
  }

  /// This method removes one or more customers from a service desk. The service
  /// desk must have closed access. If any of the passed customers are not
  /// associated with the service desk, no changes will be made for those
  /// customers and the resource returns a 204 success code.
  ///
  /// **[Permissions](#permissions) required**: Services desk administrator
  Future<void> removeCustomers(
      {required String serviceDeskId,
      required ServiceDeskCustomerDTO body}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/customer',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      body: body.toJson(),
    );
  }

  /// Returns articles which match the given query and belong to the knowledge
  /// base linked to the service desk.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the service
  /// desk.
  Future<PagedDTOArticleDTO> getArticles(
      {required String serviceDeskId,
      String? query,
      bool? highlight,
      int? start,
      int? limit}) async {
    return PagedDTOArticleDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/knowledgebase/article',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (query != null) 'query': query,
        if (highlight != null) 'highlight': '$highlight',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns the queues in a service desk. To include a customer
  /// request count for each queue (in the `issueCount` field) in the response,
  /// set the query parameter `includeCount` to true (its default is false).
  ///
  /// **[Permissions](#permissions) required**: service desk's Agent.
  Future<PagedDTOQueueDTO> getQueues(
      {required String serviceDeskId,
      bool? includeCount,
      int? start,
      int? limit}) async {
    return PagedDTOQueueDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/queue',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (includeCount != null) 'includeCount': '$includeCount',
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns a specific queues in a service desk. To include a
  /// customer request count for the queue (in the `issueCount` field) in the
  /// response, set the query parameter `includeCount` to true (its default is
  /// false).
  ///
  /// **[Permissions](#permissions) required**: service desk's Agent.
  Future<QueueDTO> getQueue(
      {required String serviceDeskId,
      required int queueId,
      bool? includeCount}) async {
    return QueueDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/queue/{queueId}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'queueId': '$queueId',
      },
      queryParameters: {
        if (includeCount != null) 'includeCount': '$includeCount',
      },
    ));
  }

  /// This method returns the customer requests in a queue. Only fields that the
  /// queue is configured to show are returned. For example, if a queue is
  /// configured to show description and due date, then only those two fields
  /// are returned for each customer request in the queue.
  ///
  /// **[Permissions](#permissions) required**: Service desk's agent.
  Future<PagedDTOIssueBean> getIssuesInQueue(
      {required String serviceDeskId,
      required int queueId,
      int? start,
      int? limit}) async {
    return PagedDTOIssueBean.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/queue/{queueId}/issue',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'queueId': '$queueId',
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method returns all customer request types from a service desk. There
  /// are two parameters for filtering the returned list:
  ///
  ///  *  `groupId` which filters the results to items in the customer request
  /// type group.
  ///  *  `searchQuery` which is matched against request types' `name` or
  /// `description`. For example, the strings "Install", "Inst", "Equi", or
  /// "Equipment" will match a request type with the *name* "Equipment
  /// Installation Request".
  ///
  /// **Note:** This API will filter out hidden request types (aka.request types
  /// without groups) when `searchQuery` is provided.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the service
  /// desk.
  Future<PagedDTORequestTypeDTO> getRequestTypes(
      {required String serviceDeskId,
      int? groupId,
      List<String>? expand,
      String? searchQuery,
      int? start,
      int? limit}) async {
    return PagedDTORequestTypeDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (groupId != null) 'groupId': '$groupId',
        if (expand != null) 'expand': expand.map((e) => e).join(','),
        if (searchQuery != null) 'searchQuery': searchQuery,
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }

  /// This method enables a customer request type to be added to a service desk
  /// based on an issue type. Note that not all customer request type fields can
  /// be specified in the request and these fields are given the following
  /// default values:
  ///
  ///  *  Request type icon is given the headset icon.
  ///  *  Request type groups is left empty, which means this customer request
  /// type will not be visible on the
  /// [customer portal](https://confluence.atlassian.com/servicedeskcloud/configuring-the-customer-portal-732528918.html).
  ///  *  Request type status mapping is left empty, so the request type has no
  /// custom status mapping but inherits the status map from the issue type upon
  /// which it is based.
  ///  *  Request type field mapping is set to show the required fields as
  /// specified by the issue type used to create the customer request type.
  ///
  ///
  /// These fields can be updated by a service desk administrator using the
  /// **Request types** option in **Project settings**.
  /// Request Types are created in next-gen projects by creating Issue Types.
  /// Please use the Jira Cloud Platform Create issue type endpoint instead.
  ///
  /// **[Permissions](#permissions) required**: Service desk's administrator
  Future<RequestTypeDTO> createRequestType(
      {required String serviceDeskId,
      required RequestTypeCreateDTO body}) async {
    return RequestTypeDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      body: body.toJson(),
    ));
  }

  /// This method returns a customer request type from a service desk.
  ///
  /// This operation can be accessed anonymously.
  ///
  /// **[Permissions](#permissions) required**: Permission to access the service
  /// desk.
  Future<RequestTypeDTO> getRequestTypeById(
      {required String serviceDeskId,
      required String requestTypeId,
      List<String>? expand}) async {
    return RequestTypeDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': requestTypeId,
      },
      queryParameters: {
        if (expand != null) 'expand': expand.map((e) => e).join(','),
      },
    ));
  }

  /// This method deletes a customer request type from a service desk, and
  /// removes it from all customer requests.
  /// This only supports classic projects.
  ///
  /// **[Permissions](#permissions) required**: Service desk administrator.
  Future<void> deleteRequestType(
      {required String serviceDeskId, required int requestTypeId}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
      },
    );
  }

  /// This method returns the fields for a service desk's customer request type.
  ///
  /// Also, the following information about the user's permissions for the
  /// request type is returned:
  ///
  ///  *  `canRaiseOnBehalfOf` returns `true` if the user has permission to
  /// raise customer requests on behalf of other customers. Otherwise, returns
  /// `false`.
  ///  *  `canAddRequestParticipants` returns `true` if the user can add
  /// customer request participants. Otherwise, returns `false`.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the Service
  /// Desk. However, hidden fields would be visible to only Service desk's
  /// Administrator.
  Future<CustomerRequestCreateMetaDTO> getRequestTypeFields(
      {required String serviceDeskId,
      required int requestTypeId,
      List<String>? expand}) async {
    return CustomerRequestCreateMetaDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/field',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
      },
      queryParameters: {
        if (expand != null) 'expand': expand.map((e) => e).join(','),
      },
    ));
  }

  /// Returns the keys of all properties for a request type.
  ///
  /// Properties for a Request Type in next-gen are stored as Issue Type
  /// properties and therefore the keys of all properties for a request type are
  /// also available by calling the Jira Cloud Platform
  /// [Get issue type property keys](https://developer.atlassian.com/cloud/jira/platform/rest/v3/#api-rest-api-3-issuetype-issueTypeId-properties-get)
  /// endpoint.
  ///
  /// **[Permissions](#permissions) required**: The user must have permission to
  /// view the request type.
  Future<PropertyKeys> getPropertiesKeys(
      {required int requestTypeId, required String serviceDeskId}) async {
    return PropertyKeys.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/property',
      pathParameters: {
        'requestTypeId': '$requestTypeId',
        'serviceDeskId': serviceDeskId,
      },
    ));
  }

  /// Returns the value of the property from a request type.
  ///
  /// Properties for a Request Type in next-gen are stored as Issue Type
  /// properties and therefore also available by calling the Jira Cloud Platform
  /// [Get issue type property](https://developer.atlassian.com/cloud/jira/platform/rest/v3/#api-rest-api-3-issuetype-issueTypeId-properties-propertyKey-get)
  /// endpoint.
  ///
  /// **[Permissions](#permissions) required**: User must have permission to
  /// view the request type.
  Future<EntityProperty> getProperty(
      {required String serviceDeskId,
      required int requestTypeId,
      required String propertyKey}) async {
    return EntityProperty.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/property/{propertyKey}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
        'propertyKey': propertyKey,
      },
    ));
  }

  /// Sets the value of a request type property. Use this resource to store
  /// custom data against a request type.
  ///
  /// Properties for a Request Type in next-gen are stored as Issue Type
  /// properties and therefore can also be set by calling the Jira Cloud
  /// Platform
  /// [Set issue type property](https://developer.atlassian.com/cloud/jira/platform/rest/v3/#api-rest-api-3-issuetype-issueTypeId-properties-propertyKey-put)
  /// endpoint.
  ///
  /// **[Permissions](#permissions) required**: Jira project administrator with
  /// a Jira Service Management agent license.
  Future<dynamic> setProperty(
      {required String serviceDeskId,
      required int requestTypeId,
      required String propertyKey}) async {
    return await _client.send(
      'put',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/property/{propertyKey}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
        'propertyKey': propertyKey,
      },
    );
  }

  /// Removes a property from a request type.
  ///
  /// Properties for a Request Type in next-gen are stored as Issue Type
  /// properties and therefore can also be deleted by calling the Jira Cloud
  /// Platform
  /// [Delete issue type property](https://developer.atlassian.com/cloud/jira/platform/rest/v3/#api-rest-api-3-issuetype-issueTypeId-properties-propertyKey-delete)
  /// endpoint.
  ///
  /// **[Permissions](#permissions) required**: Jira project administrator with
  /// a Jira Service Management agent license.
  Future<void> deleteProperty(
      {required String serviceDeskId,
      required int requestTypeId,
      required String propertyKey}) async {
    await _client.send(
      'delete',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}/property/{propertyKey}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
        'propertyKey': propertyKey,
      },
    );
  }

  /// This method returns a service desk's customer request type groups. Jira
  /// Service Management administrators can arrange the customer request type
  /// groups in an arbitrary order for display on the customer portal; the
  /// groups are returned in this order.
  ///
  /// **[Permissions](#permissions) required**: Permission to view the service
  /// desk.
  Future<PagedDTORequestTypeGroupDTO> getRequestTypeGroups(
      {required String serviceDeskId, int? start, int? limit}) async {
    return PagedDTORequestTypeGroupDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttypegroup',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
      },
      queryParameters: {
        if (start != null) 'start': '$start',
        if (limit != null) 'limit': '$limit',
      },
    ));
  }
}

class AdditionalCommentDTO {
  /// Content of the comment.
  final String? body;

  AdditionalCommentDTO({this.body});

  factory AdditionalCommentDTO.fromJson(Map<String, Object?> json) {
    return AdditionalCommentDTO(
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

  AdditionalCommentDTO copyWith({String? body}) {
    return AdditionalCommentDTO(
      body: body ?? this.body,
    );
  }
}

class ApprovalDTO {
  /// The REST API URL of the approval.
  final SelfLinkDTO? links;

  /// Detailed list of the users who must provide a response to the approval.
  final List<ApproverDTO> approvers;

  /// Indicates whether the user making the request is one of the approvers and
  /// can respond to the approval (true) or not (false).
  final bool canAnswerApproval;

  /// Date the approval was completed.
  final DateDTO? completedDate;

  /// Date the approval was created.
  final DateDTO? createdDate;

  /// Outcome of the approval, based on the approvals provided by all approvers.
  final ApprovalDTOFinalDecision? finalDecision;

  /// ID of the approval.
  final String? id;

  /// Description of the approval being sought or provided.
  final String? name;

  ApprovalDTO(
      {this.links,
      List<ApproverDTO>? approvers,
      bool? canAnswerApproval,
      this.completedDate,
      this.createdDate,
      this.finalDecision,
      this.id,
      this.name})
      : approvers = approvers ?? [],
        canAnswerApproval = canAnswerApproval ?? false;

  factory ApprovalDTO.fromJson(Map<String, Object?> json) {
    return ApprovalDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      approvers: (json[r'approvers'] as List<Object?>?)
              ?.map((i) =>
                  ApproverDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      canAnswerApproval: json[r'canAnswerApproval'] as bool? ?? false,
      completedDate: json[r'completedDate'] != null
          ? DateDTO.fromJson(json[r'completedDate']! as Map<String, Object?>)
          : null,
      createdDate: json[r'createdDate'] != null
          ? DateDTO.fromJson(json[r'createdDate']! as Map<String, Object?>)
          : null,
      finalDecision: json[r'finalDecision'] != null
          ? ApprovalDTOFinalDecision.fromValue(
              json[r'finalDecision']! as String)
          : null,
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var approvers = this.approvers;
    var canAnswerApproval = this.canAnswerApproval;
    var completedDate = this.completedDate;
    var createdDate = this.createdDate;
    var finalDecision = this.finalDecision;
    var id = this.id;
    var name = this.name;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'approvers'] = approvers.map((i) => i.toJson()).toList();
    json[r'canAnswerApproval'] = canAnswerApproval;
    if (completedDate != null) {
      json[r'completedDate'] = completedDate.toJson();
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate.toJson();
    }
    if (finalDecision != null) {
      json[r'finalDecision'] = finalDecision.value;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  ApprovalDTO copyWith(
      {SelfLinkDTO? links,
      List<ApproverDTO>? approvers,
      bool? canAnswerApproval,
      DateDTO? completedDate,
      DateDTO? createdDate,
      ApprovalDTOFinalDecision? finalDecision,
      String? id,
      String? name}) {
    return ApprovalDTO(
      links: links ?? this.links,
      approvers: approvers ?? this.approvers,
      canAnswerApproval: canAnswerApproval ?? this.canAnswerApproval,
      completedDate: completedDate ?? this.completedDate,
      createdDate: createdDate ?? this.createdDate,
      finalDecision: finalDecision ?? this.finalDecision,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class ApprovalDTOFinalDecision {
  static const approved = ApprovalDTOFinalDecision._('approved');
  static const declined = ApprovalDTOFinalDecision._('declined');
  static const pending = ApprovalDTOFinalDecision._('pending');

  static const values = [
    approved,
    declined,
    pending,
  ];
  final String value;

  const ApprovalDTOFinalDecision._(this.value);

  static ApprovalDTOFinalDecision fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ApprovalDTOFinalDecision._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ApprovalDecisionRequestDTO {
  /// Response to the approval request.
  final ApprovalDecisionRequestDTODecision? decision;

  ApprovalDecisionRequestDTO({this.decision});

  factory ApprovalDecisionRequestDTO.fromJson(Map<String, Object?> json) {
    return ApprovalDecisionRequestDTO(
      decision: json[r'decision'] != null
          ? ApprovalDecisionRequestDTODecision.fromValue(
              json[r'decision']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var decision = this.decision;

    final json = <String, Object?>{};
    if (decision != null) {
      json[r'decision'] = decision.value;
    }
    return json;
  }

  ApprovalDecisionRequestDTO copyWith(
      {ApprovalDecisionRequestDTODecision? decision}) {
    return ApprovalDecisionRequestDTO(
      decision: decision ?? this.decision,
    );
  }
}

class ApprovalDecisionRequestDTODecision {
  static const approve = ApprovalDecisionRequestDTODecision._('approve');
  static const decline = ApprovalDecisionRequestDTODecision._('decline');

  static const values = [
    approve,
    decline,
  ];
  final String value;

  const ApprovalDecisionRequestDTODecision._(this.value);

  static ApprovalDecisionRequestDTODecision fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ApprovalDecisionRequestDTODecision._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ApproverDTO {
  /// Details of the User who is providing approval.
  final UserDTO? approver;

  /// Decision made by the approver.
  final ApproverDTOApproverDecision? approverDecision;

  ApproverDTO({this.approver, this.approverDecision});

  factory ApproverDTO.fromJson(Map<String, Object?> json) {
    return ApproverDTO(
      approver: json[r'approver'] != null
          ? UserDTO.fromJson(json[r'approver']! as Map<String, Object?>)
          : null,
      approverDecision: json[r'approverDecision'] != null
          ? ApproverDTOApproverDecision.fromValue(
              json[r'approverDecision']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var approver = this.approver;
    var approverDecision = this.approverDecision;

    final json = <String, Object?>{};
    if (approver != null) {
      json[r'approver'] = approver.toJson();
    }
    if (approverDecision != null) {
      json[r'approverDecision'] = approverDecision.value;
    }
    return json;
  }

  ApproverDTO copyWith(
      {UserDTO? approver, ApproverDTOApproverDecision? approverDecision}) {
    return ApproverDTO(
      approver: approver ?? this.approver,
      approverDecision: approverDecision ?? this.approverDecision,
    );
  }
}

class ApproverDTOApproverDecision {
  static const approved = ApproverDTOApproverDecision._('approved');
  static const declined = ApproverDTOApproverDecision._('declined');
  static const pending = ApproverDTOApproverDecision._('pending');

  static const values = [
    approved,
    declined,
    pending,
  ];
  final String value;

  const ApproverDTOApproverDecision._(this.value);

  static ApproverDTOApproverDecision fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ApproverDTOApproverDecision._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ArticleDTO {
  final ContentDTO? content;

  /// Excerpt of the article which matches the given query string.
  final String? excerpt;

  /// Source of the article.
  final SourceDTO? source;

  /// Title of the article.
  final String? title;

  ArticleDTO({this.content, this.excerpt, this.source, this.title});

  factory ArticleDTO.fromJson(Map<String, Object?> json) {
    return ArticleDTO(
      content: json[r'content'] != null
          ? ContentDTO.fromJson(json[r'content']! as Map<String, Object?>)
          : null,
      excerpt: json[r'excerpt'] as String?,
      source: json[r'source'] != null
          ? SourceDTO.fromJson(json[r'source']! as Map<String, Object?>)
          : null,
      title: json[r'title'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var content = this.content;
    var excerpt = this.excerpt;
    var source = this.source;
    var title = this.title;

    final json = <String, Object?>{};
    if (content != null) {
      json[r'content'] = content.toJson();
    }
    if (excerpt != null) {
      json[r'excerpt'] = excerpt;
    }
    if (source != null) {
      json[r'source'] = source.toJson();
    }
    if (title != null) {
      json[r'title'] = title;
    }
    return json;
  }

  ArticleDTO copyWith(
      {ContentDTO? content,
      String? excerpt,
      SourceDTO? source,
      String? title}) {
    return ArticleDTO(
      content: content ?? this.content,
      excerpt: excerpt ?? this.excerpt,
      source: source ?? this.source,
      title: title ?? this.title,
    );
  }
}

/// Details of an Assets workspace ID.
class AssetsWorkspaceDTO {
  /// The workspace ID used as the identifier to access the Assets REST API.
  final String? workspaceId;

  AssetsWorkspaceDTO({this.workspaceId});

  factory AssetsWorkspaceDTO.fromJson(Map<String, Object?> json) {
    return AssetsWorkspaceDTO(
      workspaceId: json[r'workspaceId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var workspaceId = this.workspaceId;

    final json = <String, Object?>{};
    if (workspaceId != null) {
      json[r'workspaceId'] = workspaceId;
    }
    return json;
  }

  AssetsWorkspaceDTO copyWith({String? workspaceId}) {
    return AssetsWorkspaceDTO(
      workspaceId: workspaceId ?? this.workspaceId,
    );
  }
}

class AttachmentCreateDTO {
  /// Comment about the attachments.
  final AdditionalCommentDTO? additionalComment;

  /// Indicates whether the attachments are to be public (true) or
  /// private/internal (false).
  final bool public;

  /// List of IDs for the temporary attachments to be added to the customer
  /// request.
  final List<String> temporaryAttachmentIds;

  AttachmentCreateDTO(
      {this.additionalComment,
      bool? public,
      List<String>? temporaryAttachmentIds})
      : public = public ?? false,
        temporaryAttachmentIds = temporaryAttachmentIds ?? [];

  factory AttachmentCreateDTO.fromJson(Map<String, Object?> json) {
    return AttachmentCreateDTO(
      additionalComment: json[r'additionalComment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'additionalComment']! as Map<String, Object?>)
          : null,
      public: json[r'public'] as bool? ?? false,
      temporaryAttachmentIds:
          (json[r'temporaryAttachmentIds'] as List<Object?>?)
                  ?.map((i) => i as String? ?? '')
                  .toList() ??
              [],
    );
  }

  Map<String, Object?> toJson() {
    var additionalComment = this.additionalComment;
    var public = this.public;
    var temporaryAttachmentIds = this.temporaryAttachmentIds;

    final json = <String, Object?>{};
    if (additionalComment != null) {
      json[r'additionalComment'] = additionalComment.toJson();
    }
    json[r'public'] = public;
    json[r'temporaryAttachmentIds'] = temporaryAttachmentIds;
    return json;
  }

  AttachmentCreateDTO copyWith(
      {AdditionalCommentDTO? additionalComment,
      bool? public,
      List<String>? temporaryAttachmentIds}) {
    return AttachmentCreateDTO(
      additionalComment: additionalComment ?? this.additionalComment,
      public: public ?? this.public,
      temporaryAttachmentIds:
          temporaryAttachmentIds ?? this.temporaryAttachmentIds,
    );
  }
}

class AttachmentCreateResultDTO {
  /// List of the attachments added.
  final PagedDTOAttachmentDTO? attachments;

  /// Details of the comment included with the attachments.
  final CommentDTO? comment;

  AttachmentCreateResultDTO({this.attachments, this.comment});

  factory AttachmentCreateResultDTO.fromJson(Map<String, Object?> json) {
    return AttachmentCreateResultDTO(
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
      comment: json[r'comment'] != null
          ? CommentDTO.fromJson(json[r'comment']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var attachments = this.attachments;
    var comment = this.comment;

    final json = <String, Object?>{};
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    return json;
  }

  AttachmentCreateResultDTO copyWith(
      {PagedDTOAttachmentDTO? attachments, CommentDTO? comment}) {
    return AttachmentCreateResultDTO(
      attachments: attachments ?? this.attachments,
      comment: comment ?? this.comment,
    );
  }
}

class AttachmentDTO {
  /// Various URLs for the attachment.
  final AttachmentLinkDTO? links;

  /// Details of the user who attached the file.
  final UserDTO? author;

  /// Date the attachment was added.
  final DateDTO? created;

  /// Filename of the item attached.
  final String? filename;

  /// MIME type of the attachment.
  final String? mimeType;

  /// Size of the attachment in bytes.
  final int? size;

  AttachmentDTO(
      {this.links,
      this.author,
      this.created,
      this.filename,
      this.mimeType,
      this.size});

  factory AttachmentDTO.fromJson(Map<String, Object?> json) {
    return AttachmentDTO(
      links: json[r'_links'] != null
          ? AttachmentLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      author: json[r'author'] != null
          ? UserDTO.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      created: json[r'created'] != null
          ? DateDTO.fromJson(json[r'created']! as Map<String, Object?>)
          : null,
      filename: json[r'filename'] as String?,
      mimeType: json[r'mimeType'] as String?,
      size: (json[r'size'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var author = this.author;
    var created = this.created;
    var filename = this.filename;
    var mimeType = this.mimeType;
    var size = this.size;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (created != null) {
      json[r'created'] = created.toJson();
    }
    if (filename != null) {
      json[r'filename'] = filename;
    }
    if (mimeType != null) {
      json[r'mimeType'] = mimeType;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    return json;
  }

  AttachmentDTO copyWith(
      {AttachmentLinkDTO? links,
      UserDTO? author,
      DateDTO? created,
      String? filename,
      String? mimeType,
      int? size}) {
    return AttachmentDTO(
      links: links ?? this.links,
      author: author ?? this.author,
      created: created ?? this.created,
      filename: filename ?? this.filename,
      mimeType: mimeType ?? this.mimeType,
      size: size ?? this.size,
    );
  }
}

class AttachmentLinkDTO {
  /// URL for the attachment.
  final String? content;

  /// REST API URL for the attachment
  final String? jiraRest;
  final String? self;

  /// URL for the attachment's thumbnail image.
  final String? thumbnail;

  AttachmentLinkDTO({this.content, this.jiraRest, this.self, this.thumbnail});

  factory AttachmentLinkDTO.fromJson(Map<String, Object?> json) {
    return AttachmentLinkDTO(
      content: json[r'content'] as String?,
      jiraRest: json[r'jiraRest'] as String?,
      self: json[r'self'] as String?,
      thumbnail: json[r'thumbnail'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var content = this.content;
    var jiraRest = this.jiraRest;
    var self = this.self;
    var thumbnail = this.thumbnail;

    final json = <String, Object?>{};
    if (content != null) {
      json[r'content'] = content;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (thumbnail != null) {
      json[r'thumbnail'] = thumbnail;
    }
    return json;
  }

  AttachmentLinkDTO copyWith(
      {String? content, String? jiraRest, String? self, String? thumbnail}) {
    return AttachmentLinkDTO(
      content: content ?? this.content,
      jiraRest: jiraRest ?? this.jiraRest,
      self: self ?? this.self,
      thumbnail: thumbnail ?? this.thumbnail,
    );
  }
}

class AvatarUrlsBean {
  /// The URL of the item's 16x16 pixel avatar.
  final String? $16X16;

  /// The URL of the item's 24x24 pixel avatar.
  final String? $24X24;

  /// The URL of the item's 32x32 pixel avatar.
  final String? $32X32;

  /// The URL of the item's 48x48 pixel avatar.
  final String? $48X48;

  AvatarUrlsBean({this.$16X16, this.$24X24, this.$32X32, this.$48X48});

  factory AvatarUrlsBean.fromJson(Map<String, Object?> json) {
    return AvatarUrlsBean(
      $16X16: json[r'16x16'] as String?,
      $24X24: json[r'24x24'] as String?,
      $32X32: json[r'32x32'] as String?,
      $48X48: json[r'48x48'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var $16X16 = this.$16X16;
    var $24X24 = this.$24X24;
    var $32X32 = this.$32X32;
    var $48X48 = this.$48X48;

    final json = <String, Object?>{};
    if ($16X16 != null) {
      json[r'16x16'] = $16X16;
    }
    if ($24X24 != null) {
      json[r'24x24'] = $24X24;
    }
    if ($32X32 != null) {
      json[r'32x32'] = $32X32;
    }
    if ($48X48 != null) {
      json[r'48x48'] = $48X48;
    }
    return json;
  }

  AvatarUrlsBean copyWith(
      {String? $16X16, String? $24X24, String? $32X32, String? $48X48}) {
    return AvatarUrlsBean(
      $16X16: $16X16 ?? this.$16X16,
      $24X24: $24X24 ?? this.$24X24,
      $32X32: $32X32 ?? this.$32X32,
      $48X48: $48X48 ?? this.$48X48,
    );
  }
}

class CSATFeedbackFullDTO {
  /// (Optional) The comment provided with this feedback.
  final AdditionalCommentDTO? comment;

  /// A numeric representation of the rating, this must be an integer value
  /// between 1 and 5.
  final int? rating;

  /// Indicates the type of feedback, supported values: `csat`.
  final String? type;

  CSATFeedbackFullDTO({this.comment, this.rating, this.type});

  factory CSATFeedbackFullDTO.fromJson(Map<String, Object?> json) {
    return CSATFeedbackFullDTO(
      comment: json[r'comment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'comment']! as Map<String, Object?>)
          : null,
      rating: (json[r'rating'] as num?)?.toInt(),
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var comment = this.comment;
    var rating = this.rating;
    var type = this.type;

    final json = <String, Object?>{};
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    if (rating != null) {
      json[r'rating'] = rating;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  CSATFeedbackFullDTO copyWith(
      {AdditionalCommentDTO? comment, int? rating, String? type}) {
    return CSATFeedbackFullDTO(
      comment: comment ?? this.comment,
      rating: rating ?? this.rating,
      type: type ?? this.type,
    );
  }
}

/// A change item.
class ChangeDetails {
  /// The name of the field changed.
  final String? field;

  /// The ID of the field changed.
  final String? fieldId;

  /// The type of the field changed.
  final String? fieldtype;

  /// The details of the original value.
  final String? from;

  /// The details of the original value as a string.
  final String? fromString;

  /// The details of the new value.
  final String? to;

  /// The details of the new value as a string.
  final String? toString$;

  ChangeDetails(
      {this.field,
      this.fieldId,
      this.fieldtype,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangeDetails.fromJson(Map<String, Object?> json) {
    return ChangeDetails(
      field: json[r'field'] as String?,
      fieldId: json[r'fieldId'] as String?,
      fieldtype: json[r'fieldtype'] as String?,
      from: json[r'from'] as String?,
      fromString: json[r'fromString'] as String?,
      to: json[r'to'] as String?,
      toString$: json[r'toString'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var fieldId = this.fieldId;
    var fieldtype = this.fieldtype;
    var from = this.from;
    var fromString = this.fromString;
    var to = this.to;
    var toString$ = this.toString$;

    final json = <String, Object?>{};
    if (field != null) {
      json[r'field'] = field;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (fieldtype != null) {
      json[r'fieldtype'] = fieldtype;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (fromString != null) {
      json[r'fromString'] = fromString;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (toString$ != null) {
      json[r'toString'] = toString$;
    }
    return json;
  }

  ChangeDetails copyWith(
      {String? field,
      String? fieldId,
      String? fieldtype,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangeDetails(
      field: field ?? this.field,
      fieldId: fieldId ?? this.fieldId,
      fieldtype: fieldtype ?? this.fieldtype,
      from: from ?? this.from,
      fromString: fromString ?? this.fromString,
      to: to ?? this.to,
      toString$: toString$ ?? this.toString$,
    );
  }
}

/// A log of changes made to issue fields. Changelogs related to workflow
/// associations are currently being deprecated.
class Changelog {
  /// The user who made the change.
  final UserDetails? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The history metadata associated with the changed.
  final HistoryMetadata? historyMetadata;

  /// The ID of the changelog.
  final String? id;

  /// The list of items changed.
  final List<ChangeDetails> items;

  Changelog(
      {this.author,
      this.created,
      this.historyMetadata,
      this.id,
      List<ChangeDetails>? items})
      : items = items ?? [];

  factory Changelog.fromJson(Map<String, Object?> json) {
    return Changelog(
      author: json[r'author'] != null
          ? UserDetails.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      historyMetadata: json[r'historyMetadata'] != null
          ? HistoryMetadata.fromJson(
              json[r'historyMetadata']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => ChangeDetails.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var author = this.author;
    var created = this.created;
    var historyMetadata = this.historyMetadata;
    var id = this.id;
    var items = this.items;

    final json = <String, Object?>{};
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    return json;
  }

  Changelog copyWith(
      {UserDetails? author,
      DateTime? created,
      HistoryMetadata? historyMetadata,
      String? id,
      List<ChangeDetails>? items}) {
    return Changelog(
      author: author ?? this.author,
      created: created ?? this.created,
      historyMetadata: historyMetadata ?? this.historyMetadata,
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }
}

class CommentCreateDTO {
  /// Content of the comment.
  final String? body;

  /// Indicates whether the comment is public (true) or private/internal
  /// (false).
  final bool public;

  CommentCreateDTO({this.body, bool? public}) : public = public ?? false;

  factory CommentCreateDTO.fromJson(Map<String, Object?> json) {
    return CommentCreateDTO(
      body: json[r'body'] as String?,
      public: json[r'public'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var body = this.body;
    var public = this.public;

    final json = <String, Object?>{};
    if (body != null) {
      json[r'body'] = body;
    }
    json[r'public'] = public;
    return json;
  }

  CommentCreateDTO copyWith({String? body, bool? public}) {
    return CommentCreateDTO(
      body: body ?? this.body,
      public: public ?? this.public,
    );
  }
}

class CommentDTO {
  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// REST API URL link to the comment.
  final SelfLinkDTO? links;

  /// List of the attachments included in the comment.
  final PagedDTOAttachmentDTO? attachments;

  /// Details of the customer who authored the comment.
  final UserDTO? author;

  /// Content of the comment.
  final String? body;

  /// Date the comment was created.
  final DateDTO? created;

  /// ID of the comment.
  final String? id;

  /// Indicates whether the comment is public (true) or private/internal
  /// (false).
  final bool public;

  /// The rendered body of the comment.
  final RenderedValueDTO? renderedBody;

  CommentDTO(
      {List<String>? expands,
      this.links,
      this.attachments,
      this.author,
      this.body,
      this.created,
      this.id,
      bool? public,
      this.renderedBody})
      : expands = expands ?? [],
        public = public ?? false;

  factory CommentDTO.fromJson(Map<String, Object?> json) {
    return CommentDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
      author: json[r'author'] != null
          ? UserDTO.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      body: json[r'body'] as String?,
      created: json[r'created'] != null
          ? DateDTO.fromJson(json[r'created']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      public: json[r'public'] as bool? ?? false,
      renderedBody: json[r'renderedBody'] != null
          ? RenderedValueDTO.fromJson(
              json[r'renderedBody']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var attachments = this.attachments;
    var author = this.author;
    var body = this.body;
    var created = this.created;
    var id = this.id;
    var public = this.public;
    var renderedBody = this.renderedBody;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (created != null) {
      json[r'created'] = created.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'public'] = public;
    if (renderedBody != null) {
      json[r'renderedBody'] = renderedBody.toJson();
    }
    return json;
  }

  CommentDTO copyWith(
      {List<String>? expands,
      SelfLinkDTO? links,
      PagedDTOAttachmentDTO? attachments,
      UserDTO? author,
      String? body,
      DateDTO? created,
      String? id,
      bool? public,
      RenderedValueDTO? renderedBody}) {
    return CommentDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      attachments: attachments ?? this.attachments,
      author: author ?? this.author,
      body: body ?? this.body,
      created: created ?? this.created,
      id: id ?? this.id,
      public: public ?? this.public,
      renderedBody: renderedBody ?? this.renderedBody,
    );
  }
}

class ContentDTO {
  /// Url containing the body of the article (without title), suitable for
  /// rendering in an iframe
  final String? iframeSrc;

  ContentDTO({this.iframeSrc});

  factory ContentDTO.fromJson(Map<String, Object?> json) {
    return ContentDTO(
      iframeSrc: json[r'iframeSrc'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var iframeSrc = this.iframeSrc;

    final json = <String, Object?>{};
    if (iframeSrc != null) {
      json[r'iframeSrc'] = iframeSrc;
    }
    return json;
  }

  ContentDTO copyWith({String? iframeSrc}) {
    return ContentDTO(
      iframeSrc: iframeSrc ?? this.iframeSrc,
    );
  }
}

class CustomerCreateDTO {
  /// Customer's name for display in the UI.
  final String? displayName;

  /// Customer's email address.
  final String? email;

  /// Deprecated, please use 'displayName'.
  final String? fullName;

  CustomerCreateDTO({this.displayName, this.email, this.fullName});

  factory CustomerCreateDTO.fromJson(Map<String, Object?> json) {
    return CustomerCreateDTO(
      displayName: json[r'displayName'] as String?,
      email: json[r'email'] as String?,
      fullName: json[r'fullName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var email = this.email;
    var fullName = this.fullName;

    final json = <String, Object?>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    return json;
  }

  CustomerCreateDTO copyWith(
      {String? displayName, String? email, String? fullName}) {
    return CustomerCreateDTO(
      displayName: displayName ?? this.displayName,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
    );
  }
}

class CustomerRequestActionDTO {
  /// Indicates whether the user can undertake the action (true) or not (false).
  final bool allowed;

  CustomerRequestActionDTO({bool? allowed}) : allowed = allowed ?? false;

  factory CustomerRequestActionDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestActionDTO(
      allowed: json[r'allowed'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var allowed = this.allowed;

    final json = <String, Object?>{};
    json[r'allowed'] = allowed;
    return json;
  }

  CustomerRequestActionDTO copyWith({bool? allowed}) {
    return CustomerRequestActionDTO(
      allowed: allowed ?? this.allowed,
    );
  }
}

class CustomerRequestActionsDTO {
  /// Action of adding attachments to a request.
  final CustomerRequestActionDTO? addAttachment;

  /// Action of adding comments to a request.
  final CustomerRequestActionDTO? addComment;

  /// Action of adding participants to a request.
  final CustomerRequestActionDTO? addParticipant;

  /// Action of removing participants from a request.
  final CustomerRequestActionDTO? removeParticipant;

  CustomerRequestActionsDTO(
      {this.addAttachment,
      this.addComment,
      this.addParticipant,
      this.removeParticipant});

  factory CustomerRequestActionsDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestActionsDTO(
      addAttachment: json[r'addAttachment'] != null
          ? CustomerRequestActionDTO.fromJson(
              json[r'addAttachment']! as Map<String, Object?>)
          : null,
      addComment: json[r'addComment'] != null
          ? CustomerRequestActionDTO.fromJson(
              json[r'addComment']! as Map<String, Object?>)
          : null,
      addParticipant: json[r'addParticipant'] != null
          ? CustomerRequestActionDTO.fromJson(
              json[r'addParticipant']! as Map<String, Object?>)
          : null,
      removeParticipant: json[r'removeParticipant'] != null
          ? CustomerRequestActionDTO.fromJson(
              json[r'removeParticipant']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var addAttachment = this.addAttachment;
    var addComment = this.addComment;
    var addParticipant = this.addParticipant;
    var removeParticipant = this.removeParticipant;

    final json = <String, Object?>{};
    if (addAttachment != null) {
      json[r'addAttachment'] = addAttachment.toJson();
    }
    if (addComment != null) {
      json[r'addComment'] = addComment.toJson();
    }
    if (addParticipant != null) {
      json[r'addParticipant'] = addParticipant.toJson();
    }
    if (removeParticipant != null) {
      json[r'removeParticipant'] = removeParticipant.toJson();
    }
    return json;
  }

  CustomerRequestActionsDTO copyWith(
      {CustomerRequestActionDTO? addAttachment,
      CustomerRequestActionDTO? addComment,
      CustomerRequestActionDTO? addParticipant,
      CustomerRequestActionDTO? removeParticipant}) {
    return CustomerRequestActionsDTO(
      addAttachment: addAttachment ?? this.addAttachment,
      addComment: addComment ?? this.addComment,
      addParticipant: addParticipant ?? this.addParticipant,
      removeParticipant: removeParticipant ?? this.removeParticipant,
    );
  }
}

class CustomerRequestCreateMetaDTO {
  /// Flag indicating if participants can be added to a request (true) or not.
  final bool canAddRequestParticipants;

  /// Flag indicating if a request can be raised on behalf of another user
  /// (true) or not.
  final bool canRaiseOnBehalfOf;

  /// List of the fields included in this request.
  final List<RequestTypeFieldDTO> requestTypeFields;

  CustomerRequestCreateMetaDTO(
      {bool? canAddRequestParticipants,
      bool? canRaiseOnBehalfOf,
      List<RequestTypeFieldDTO>? requestTypeFields})
      : canAddRequestParticipants = canAddRequestParticipants ?? false,
        canRaiseOnBehalfOf = canRaiseOnBehalfOf ?? false,
        requestTypeFields = requestTypeFields ?? [];

  factory CustomerRequestCreateMetaDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestCreateMetaDTO(
      canAddRequestParticipants:
          json[r'canAddRequestParticipants'] as bool? ?? false,
      canRaiseOnBehalfOf: json[r'canRaiseOnBehalfOf'] as bool? ?? false,
      requestTypeFields: (json[r'requestTypeFields'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var canAddRequestParticipants = this.canAddRequestParticipants;
    var canRaiseOnBehalfOf = this.canRaiseOnBehalfOf;
    var requestTypeFields = this.requestTypeFields;

    final json = <String, Object?>{};
    json[r'canAddRequestParticipants'] = canAddRequestParticipants;
    json[r'canRaiseOnBehalfOf'] = canRaiseOnBehalfOf;
    json[r'requestTypeFields'] =
        requestTypeFields.map((i) => i.toJson()).toList();
    return json;
  }

  CustomerRequestCreateMetaDTO copyWith(
      {bool? canAddRequestParticipants,
      bool? canRaiseOnBehalfOf,
      List<RequestTypeFieldDTO>? requestTypeFields}) {
    return CustomerRequestCreateMetaDTO(
      canAddRequestParticipants:
          canAddRequestParticipants ?? this.canAddRequestParticipants,
      canRaiseOnBehalfOf: canRaiseOnBehalfOf ?? this.canRaiseOnBehalfOf,
      requestTypeFields: requestTypeFields ?? this.requestTypeFields,
    );
  }
}

class CustomerRequestDTO {
  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// List of links associated with the request.
  final CustomerRequestLinkDTO? links;

  /// List of actions that the user can take on the request.
  final CustomerRequestActionsDTO? actions;

  /// List of attachments included with the request.
  final PagedDTOAttachmentDTO? attachments;

  /// List of comments included with the request.
  final PagedDTOCommentDTO? comments;

  /// Date on which the request was created.
  final DateDTO? createdDate;

  /// Status of the request.
  final CustomerRequestStatusDTO? currentStatus;

  /// ID of the request, as the peer issue ID.
  final String? issueId;

  /// Key of the request, as the peer issue key.
  final String? issueKey;

  /// Expandable details of the customers participating in the request.
  final PagedDTOUserDTO? participants;

  /// Details of the customer reporting the request.
  final UserDTO? reporter;

  /// JSON map of Jira field IDs and their values representing the content of
  /// the request. This list does not include hidden fields.
  final List<CustomerRequestFieldValueDTO> requestFieldValues;

  /// Expandable details of the request type.
  final RequestTypeDTO? requestType;

  /// ID of the request type for the request.
  final String? requestTypeId;

  /// Expandable details of the service desk.
  final ServiceDeskDTO? serviceDesk;

  /// ID of the service desk the request belongs to.
  final String? serviceDeskId;

  /// Expandable details of the SLAs relating to the request.
  final PagedDTOSlaInformationDTO? sla;

  /// Expandable details of the request's status history.
  final PagedDTOCustomerRequestStatusDTO? status;

  CustomerRequestDTO(
      {List<String>? expands,
      this.links,
      this.actions,
      this.attachments,
      this.comments,
      this.createdDate,
      this.currentStatus,
      this.issueId,
      this.issueKey,
      this.participants,
      this.reporter,
      List<CustomerRequestFieldValueDTO>? requestFieldValues,
      this.requestType,
      this.requestTypeId,
      this.serviceDesk,
      this.serviceDeskId,
      this.sla,
      this.status})
      : expands = expands ?? [],
        requestFieldValues = requestFieldValues ?? [];

  factory CustomerRequestDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? CustomerRequestLinkDTO.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
      actions: json[r'actions'] != null
          ? CustomerRequestActionsDTO.fromJson(
              json[r'actions']! as Map<String, Object?>)
          : null,
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
      comments: json[r'comments'] != null
          ? PagedDTOCommentDTO.fromJson(
              json[r'comments']! as Map<String, Object?>)
          : null,
      createdDate: json[r'createdDate'] != null
          ? DateDTO.fromJson(json[r'createdDate']! as Map<String, Object?>)
          : null,
      currentStatus: json[r'currentStatus'] != null
          ? CustomerRequestStatusDTO.fromJson(
              json[r'currentStatus']! as Map<String, Object?>)
          : null,
      issueId: json[r'issueId'] as String?,
      issueKey: json[r'issueKey'] as String?,
      participants: json[r'participants'] != null
          ? PagedDTOUserDTO.fromJson(
              json[r'participants']! as Map<String, Object?>)
          : null,
      reporter: json[r'reporter'] != null
          ? UserDTO.fromJson(json[r'reporter']! as Map<String, Object?>)
          : null,
      requestFieldValues: (json[r'requestFieldValues'] as List<Object?>?)
              ?.map((i) => CustomerRequestFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      requestType: json[r'requestType'] != null
          ? RequestTypeDTO.fromJson(
              json[r'requestType']! as Map<String, Object?>)
          : null,
      requestTypeId: json[r'requestTypeId'] as String?,
      serviceDesk: json[r'serviceDesk'] != null
          ? ServiceDeskDTO.fromJson(
              json[r'serviceDesk']! as Map<String, Object?>)
          : null,
      serviceDeskId: json[r'serviceDeskId'] as String?,
      sla: json[r'sla'] != null
          ? PagedDTOSlaInformationDTO.fromJson(
              json[r'sla']! as Map<String, Object?>)
          : null,
      status: json[r'status'] != null
          ? PagedDTOCustomerRequestStatusDTO.fromJson(
              json[r'status']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var actions = this.actions;
    var attachments = this.attachments;
    var comments = this.comments;
    var createdDate = this.createdDate;
    var currentStatus = this.currentStatus;
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var participants = this.participants;
    var reporter = this.reporter;
    var requestFieldValues = this.requestFieldValues;
    var requestType = this.requestType;
    var requestTypeId = this.requestTypeId;
    var serviceDesk = this.serviceDesk;
    var serviceDeskId = this.serviceDeskId;
    var sla = this.sla;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (actions != null) {
      json[r'actions'] = actions.toJson();
    }
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    if (comments != null) {
      json[r'comments'] = comments.toJson();
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate.toJson();
    }
    if (currentStatus != null) {
      json[r'currentStatus'] = currentStatus.toJson();
    }
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (participants != null) {
      json[r'participants'] = participants.toJson();
    }
    if (reporter != null) {
      json[r'reporter'] = reporter.toJson();
    }
    json[r'requestFieldValues'] =
        requestFieldValues.map((i) => i.toJson()).toList();
    if (requestType != null) {
      json[r'requestType'] = requestType.toJson();
    }
    if (requestTypeId != null) {
      json[r'requestTypeId'] = requestTypeId;
    }
    if (serviceDesk != null) {
      json[r'serviceDesk'] = serviceDesk.toJson();
    }
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    if (sla != null) {
      json[r'sla'] = sla.toJson();
    }
    if (status != null) {
      json[r'status'] = status.toJson();
    }
    return json;
  }

  CustomerRequestDTO copyWith(
      {List<String>? expands,
      CustomerRequestLinkDTO? links,
      CustomerRequestActionsDTO? actions,
      PagedDTOAttachmentDTO? attachments,
      PagedDTOCommentDTO? comments,
      DateDTO? createdDate,
      CustomerRequestStatusDTO? currentStatus,
      String? issueId,
      String? issueKey,
      PagedDTOUserDTO? participants,
      UserDTO? reporter,
      List<CustomerRequestFieldValueDTO>? requestFieldValues,
      RequestTypeDTO? requestType,
      String? requestTypeId,
      ServiceDeskDTO? serviceDesk,
      String? serviceDeskId,
      PagedDTOSlaInformationDTO? sla,
      PagedDTOCustomerRequestStatusDTO? status}) {
    return CustomerRequestDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      actions: actions ?? this.actions,
      attachments: attachments ?? this.attachments,
      comments: comments ?? this.comments,
      createdDate: createdDate ?? this.createdDate,
      currentStatus: currentStatus ?? this.currentStatus,
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      participants: participants ?? this.participants,
      reporter: reporter ?? this.reporter,
      requestFieldValues: requestFieldValues ?? this.requestFieldValues,
      requestType: requestType ?? this.requestType,
      requestTypeId: requestTypeId ?? this.requestTypeId,
      serviceDesk: serviceDesk ?? this.serviceDesk,
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
      sla: sla ?? this.sla,
      status: status ?? this.status,
    );
  }
}

class CustomerRequestFieldValueDTO {
  /// ID of the field.
  final String? fieldId;

  /// Text label for the field.
  final String? label;

  /// Value of the field rendered in the UI.
  final Map<String, dynamic>? renderedValue;

  /// Value of the field.
  final dynamic value;

  CustomerRequestFieldValueDTO(
      {this.fieldId, this.label, this.renderedValue, this.value});

  factory CustomerRequestFieldValueDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestFieldValueDTO(
      fieldId: json[r'fieldId'] as String?,
      label: json[r'label'] as String?,
      renderedValue: json[r'renderedValue'] as Map<String, Object?>?,
      value: json[r'value'],
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var label = this.label;
    var renderedValue = this.renderedValue;
    var value = this.value;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (renderedValue != null) {
      json[r'renderedValue'] = renderedValue;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  CustomerRequestFieldValueDTO copyWith(
      {String? fieldId,
      String? label,
      Map<String, dynamic>? renderedValue,
      dynamic value}) {
    return CustomerRequestFieldValueDTO(
      fieldId: fieldId ?? this.fieldId,
      label: label ?? this.label,
      renderedValue: renderedValue ?? this.renderedValue,
      value: value ?? this.value,
    );
  }
}

class CustomerRequestLinkDTO {
  /// Jira agent view URL for the request.
  final String? agent;

  /// REST API URL for the request.
  final String? jiraRest;
  final String? self;

  /// Web URL for the request.
  final String? web;

  CustomerRequestLinkDTO({this.agent, this.jiraRest, this.self, this.web});

  factory CustomerRequestLinkDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestLinkDTO(
      agent: json[r'agent'] as String?,
      jiraRest: json[r'jiraRest'] as String?,
      self: json[r'self'] as String?,
      web: json[r'web'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var agent = this.agent;
    var jiraRest = this.jiraRest;
    var self = this.self;
    var web = this.web;

    final json = <String, Object?>{};
    if (agent != null) {
      json[r'agent'] = agent;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (web != null) {
      json[r'web'] = web;
    }
    return json;
  }

  CustomerRequestLinkDTO copyWith(
      {String? agent, String? jiraRest, String? self, String? web}) {
    return CustomerRequestLinkDTO(
      agent: agent ?? this.agent,
      jiraRest: jiraRest ?? this.jiraRest,
      self: self ?? this.self,
      web: web ?? this.web,
    );
  }
}

class CustomerRequestStatusDTO {
  /// Name of the status condition.
  final String? status;

  /// Status category the status belongs to.
  final CustomerRequestStatusDTOStatusCategory? statusCategory;

  /// Date on which the status was attained.
  final DateDTO? statusDate;

  CustomerRequestStatusDTO({this.status, this.statusCategory, this.statusDate});

  factory CustomerRequestStatusDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestStatusDTO(
      status: json[r'status'] as String?,
      statusCategory: json[r'statusCategory'] != null
          ? CustomerRequestStatusDTOStatusCategory.fromValue(
              json[r'statusCategory']! as String)
          : null,
      statusDate: json[r'statusDate'] != null
          ? DateDTO.fromJson(json[r'statusDate']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var status = this.status;
    var statusCategory = this.statusCategory;
    var statusDate = this.statusDate;

    final json = <String, Object?>{};
    if (status != null) {
      json[r'status'] = status;
    }
    if (statusCategory != null) {
      json[r'statusCategory'] = statusCategory.value;
    }
    if (statusDate != null) {
      json[r'statusDate'] = statusDate.toJson();
    }
    return json;
  }

  CustomerRequestStatusDTO copyWith(
      {String? status,
      CustomerRequestStatusDTOStatusCategory? statusCategory,
      DateDTO? statusDate}) {
    return CustomerRequestStatusDTO(
      status: status ?? this.status,
      statusCategory: statusCategory ?? this.statusCategory,
      statusDate: statusDate ?? this.statusDate,
    );
  }
}

class CustomerRequestStatusDTOStatusCategory {
  static const undefined =
      CustomerRequestStatusDTOStatusCategory._('UNDEFINED');
  static const new$ = CustomerRequestStatusDTOStatusCategory._('NEW');
  static const indeterminate =
      CustomerRequestStatusDTOStatusCategory._('INDETERMINATE');
  static const done = CustomerRequestStatusDTOStatusCategory._('DONE');

  static const values = [
    undefined,
    new$,
    indeterminate,
    done,
  ];
  final String value;

  const CustomerRequestStatusDTOStatusCategory._(this.value);

  static CustomerRequestStatusDTOStatusCategory fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => CustomerRequestStatusDTOStatusCategory._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class CustomerTransitionDTO {
  /// ID of the transition.
  final String? id;

  /// Name of the transition.
  final String? name;

  CustomerTransitionDTO({this.id, this.name});

  factory CustomerTransitionDTO.fromJson(Map<String, Object?> json) {
    return CustomerTransitionDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  CustomerTransitionDTO copyWith({String? id, String? name}) {
    return CustomerTransitionDTO(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class CustomerTransitionExecutionDTO {
  /// Comment explaining the reason for the transition.
  final AdditionalCommentDTO? additionalComment;

  /// ID of the transition to be performed.
  final String? id;

  CustomerTransitionExecutionDTO({this.additionalComment, this.id});

  factory CustomerTransitionExecutionDTO.fromJson(Map<String, Object?> json) {
    return CustomerTransitionExecutionDTO(
      additionalComment: json[r'additionalComment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'additionalComment']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var additionalComment = this.additionalComment;
    var id = this.id;

    final json = <String, Object?>{};
    if (additionalComment != null) {
      json[r'additionalComment'] = additionalComment.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  CustomerTransitionExecutionDTO copyWith(
      {AdditionalCommentDTO? additionalComment, String? id}) {
    return CustomerTransitionExecutionDTO(
      additionalComment: additionalComment ?? this.additionalComment,
      id: id ?? this.id,
    );
  }
}

class DateDTO {
  /// Date as the number of milliseconds that have elapsed since 00:00:00
  /// Coordinated Universal Time (UTC), 1 January 1970.
  final int? epochMillis;

  /// Date in a user-friendly text format.
  final String? friendly;

  /// Date in ISO8601 format.
  final String? iso8601;

  /// Date in the format used in the Jira REST APIs, which is ISO8601 format but
  /// extended with milliseconds. For example, 2016-09-28T23:08:32.097+1000.
  final String? jira;

  DateDTO({this.epochMillis, this.friendly, this.iso8601, this.jira});

  factory DateDTO.fromJson(Map<String, Object?> json) {
    return DateDTO(
      epochMillis: (json[r'epochMillis'] as num?)?.toInt(),
      friendly: json[r'friendly'] as String?,
      iso8601: json[r'iso8601'] as String?,
      jira: json[r'jira'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var epochMillis = this.epochMillis;
    var friendly = this.friendly;
    var iso8601 = this.iso8601;
    var jira = this.jira;

    final json = <String, Object?>{};
    if (epochMillis != null) {
      json[r'epochMillis'] = epochMillis;
    }
    if (friendly != null) {
      json[r'friendly'] = friendly;
    }
    if (iso8601 != null) {
      json[r'iso8601'] = iso8601;
    }
    if (jira != null) {
      json[r'jira'] = jira;
    }
    return json;
  }

  DateDTO copyWith(
      {int? epochMillis, String? friendly, String? iso8601, String? jira}) {
    return DateDTO(
      epochMillis: epochMillis ?? this.epochMillis,
      friendly: friendly ?? this.friendly,
      iso8601: iso8601 ?? this.iso8601,
      jira: jira ?? this.jira,
    );
  }
}

class DurationDTO {
  /// Duration in a user-friendly text format.
  final String? friendly;

  /// Duration in milliseconds.
  final int? millis;

  DurationDTO({this.friendly, this.millis});

  factory DurationDTO.fromJson(Map<String, Object?> json) {
    return DurationDTO(
      friendly: json[r'friendly'] as String?,
      millis: (json[r'millis'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var friendly = this.friendly;
    var millis = this.millis;

    final json = <String, Object?>{};
    if (friendly != null) {
      json[r'friendly'] = friendly;
    }
    if (millis != null) {
      json[r'millis'] = millis;
    }
    return json;
  }

  DurationDTO copyWith({String? friendly, int? millis}) {
    return DurationDTO(
      friendly: friendly ?? this.friendly,
      millis: millis ?? this.millis,
    );
  }
}

/// An entity property, for more information see
/// [Entity properties](https://developer.atlassian.com/cloud/jira/platform/jira-entity-properties/).
class EntityProperty {
  /// The key of the property. Required on create and update.
  final String? key;

  /// The value of the property. Required on create and update.
  final dynamic value;

  EntityProperty({this.key, this.value});

  factory EntityProperty.fromJson(Map<String, Object?> json) {
    return EntityProperty(
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

  EntityProperty copyWith({String? key, dynamic value}) {
    return EntityProperty(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }
}

class ErrorResponse {
  final String? errorMessage;
  final I18nErrorMessage? i18nErrorMessage;

  ErrorResponse({this.errorMessage, this.i18nErrorMessage});

  factory ErrorResponse.fromJson(Map<String, Object?> json) {
    return ErrorResponse(
      errorMessage: json[r'errorMessage'] as String?,
      i18nErrorMessage: json[r'i18nErrorMessage'] != null
          ? I18nErrorMessage.fromJson(
              json[r'i18nErrorMessage']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var errorMessage = this.errorMessage;
    var i18nErrorMessage = this.i18nErrorMessage;

    final json = <String, Object?>{};
    if (errorMessage != null) {
      json[r'errorMessage'] = errorMessage;
    }
    if (i18nErrorMessage != null) {
      json[r'i18nErrorMessage'] = i18nErrorMessage.toJson();
    }
    return json;
  }

  ErrorResponse copyWith(
      {String? errorMessage, I18nErrorMessage? i18nErrorMessage}) {
    return ErrorResponse(
      errorMessage: errorMessage ?? this.errorMessage,
      i18nErrorMessage: i18nErrorMessage ?? this.i18nErrorMessage,
    );
  }
}

class Expandable {
  final List<String> expands;

  Expandable({List<String>? expands}) : expands = expands ?? [];

  factory Expandable.fromJson(Map<String, Object?> json) {
    return Expandable(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    return json;
  }

  Expandable copyWith({List<String>? expands}) {
    return Expandable(
      expands: expands ?? this.expands,
    );
  }
}

/// The metadata describing an issue field.
class FieldMetadata {
  /// The list of values allowed in the field.
  final List<dynamic> allowedValues;

  /// The URL that can be used to automatically complete the field.
  final String? autoCompleteUrl;

  /// The configuration properties.
  final Map<String, dynamic>? configuration;

  /// The default value of the field.
  final dynamic defaultValue;

  /// Whether the field has a default value.
  final bool hasDefaultValue;

  /// The key of the field.
  final String key;

  /// The name of the field.
  final String name;

  /// The list of operations that can be performed on the field.
  final List<String> operations;

  /// Whether the field is required.
  final bool required;

  /// The data type of the field.
  final JsonTypeBean schema;

  FieldMetadata(
      {List<dynamic>? allowedValues,
      this.autoCompleteUrl,
      this.configuration,
      this.defaultValue,
      bool? hasDefaultValue,
      required this.key,
      required this.name,
      required this.operations,
      required this.required,
      required this.schema})
      : allowedValues = allowedValues ?? [],
        hasDefaultValue = hasDefaultValue ?? false;

  factory FieldMetadata.fromJson(Map<String, Object?> json) {
    return FieldMetadata(
      allowedValues:
          (json[r'allowedValues'] as List<Object?>?)?.map((i) => i).toList() ??
              [],
      autoCompleteUrl: json[r'autoCompleteUrl'] as String?,
      configuration: json[r'configuration'] as Map<String, Object?>?,
      defaultValue: json[r'defaultValue'],
      hasDefaultValue: json[r'hasDefaultValue'] as bool? ?? false,
      key: json[r'key'] as String? ?? '',
      name: json[r'name'] as String? ?? '',
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      required: json[r'required'] as bool? ?? false,
      schema: JsonTypeBean.fromJson(
          json[r'schema'] as Map<String, Object?>? ?? const {}),
    );
  }

  Map<String, Object?> toJson() {
    var allowedValues = this.allowedValues;
    var autoCompleteUrl = this.autoCompleteUrl;
    var configuration = this.configuration;
    var defaultValue = this.defaultValue;
    var hasDefaultValue = this.hasDefaultValue;
    var key = this.key;
    var name = this.name;
    var operations = this.operations;
    var required = this.required;
    var schema = this.schema;

    final json = <String, Object?>{};
    json[r'allowedValues'] = allowedValues;
    if (autoCompleteUrl != null) {
      json[r'autoCompleteUrl'] = autoCompleteUrl;
    }
    if (configuration != null) {
      json[r'configuration'] = configuration;
    }
    if (defaultValue != null) {
      json[r'defaultValue'] = defaultValue;
    }
    json[r'hasDefaultValue'] = hasDefaultValue;
    json[r'key'] = key;
    json[r'name'] = name;
    json[r'operations'] = operations;
    json[r'required'] = required;
    json[r'schema'] = schema.toJson();
    return json;
  }

  FieldMetadata copyWith(
      {List<dynamic>? allowedValues,
      String? autoCompleteUrl,
      Map<String, dynamic>? configuration,
      dynamic defaultValue,
      bool? hasDefaultValue,
      String? key,
      String? name,
      List<String>? operations,
      bool? required,
      JsonTypeBean? schema}) {
    return FieldMetadata(
      allowedValues: allowedValues ?? this.allowedValues,
      autoCompleteUrl: autoCompleteUrl ?? this.autoCompleteUrl,
      configuration: configuration ?? this.configuration,
      defaultValue: defaultValue ?? this.defaultValue,
      hasDefaultValue: hasDefaultValue ?? this.hasDefaultValue,
      key: key ?? this.key,
      name: name ?? this.name,
      operations: operations ?? this.operations,
      required: required ?? this.required,
      schema: schema ?? this.schema,
    );
  }
}

/// Details of issue history metadata.
class HistoryMetadata {
  /// The activity described in the history record.
  final String? activityDescription;

  /// The key of the activity described in the history record.
  final String? activityDescriptionKey;

  /// Details of the user whose action created the history record.
  final HistoryMetadataParticipant? actor;

  /// Details of the cause that triggered the creation the history record.
  final HistoryMetadataParticipant? cause;

  /// The description of the history record.
  final String? description;

  /// The description key of the history record.
  final String? descriptionKey;

  /// The description of the email address associated the history record.
  final String? emailDescription;

  /// The description key of the email address associated the history record.
  final String? emailDescriptionKey;

  /// Additional arbitrary information about the history record.
  final Map<String, dynamic>? extraData;

  /// Details of the system that generated the history record.
  final HistoryMetadataParticipant? generator;

  /// The type of the history record.
  final String? type;

  HistoryMetadata(
      {this.activityDescription,
      this.activityDescriptionKey,
      this.actor,
      this.cause,
      this.description,
      this.descriptionKey,
      this.emailDescription,
      this.emailDescriptionKey,
      this.extraData,
      this.generator,
      this.type});

  factory HistoryMetadata.fromJson(Map<String, Object?> json) {
    return HistoryMetadata(
      activityDescription: json[r'activityDescription'] as String?,
      activityDescriptionKey: json[r'activityDescriptionKey'] as String?,
      actor: json[r'actor'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'actor']! as Map<String, Object?>)
          : null,
      cause: json[r'cause'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'cause']! as Map<String, Object?>)
          : null,
      description: json[r'description'] as String?,
      descriptionKey: json[r'descriptionKey'] as String?,
      emailDescription: json[r'emailDescription'] as String?,
      emailDescriptionKey: json[r'emailDescriptionKey'] as String?,
      extraData: json[r'extraData'] as Map<String, Object?>?,
      generator: json[r'generator'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'generator']! as Map<String, Object?>)
          : null,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var activityDescription = this.activityDescription;
    var activityDescriptionKey = this.activityDescriptionKey;
    var actor = this.actor;
    var cause = this.cause;
    var description = this.description;
    var descriptionKey = this.descriptionKey;
    var emailDescription = this.emailDescription;
    var emailDescriptionKey = this.emailDescriptionKey;
    var extraData = this.extraData;
    var generator = this.generator;
    var type = this.type;

    final json = <String, Object?>{};
    if (activityDescription != null) {
      json[r'activityDescription'] = activityDescription;
    }
    if (activityDescriptionKey != null) {
      json[r'activityDescriptionKey'] = activityDescriptionKey;
    }
    if (actor != null) {
      json[r'actor'] = actor.toJson();
    }
    if (cause != null) {
      json[r'cause'] = cause.toJson();
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (descriptionKey != null) {
      json[r'descriptionKey'] = descriptionKey;
    }
    if (emailDescription != null) {
      json[r'emailDescription'] = emailDescription;
    }
    if (emailDescriptionKey != null) {
      json[r'emailDescriptionKey'] = emailDescriptionKey;
    }
    if (extraData != null) {
      json[r'extraData'] = extraData;
    }
    if (generator != null) {
      json[r'generator'] = generator.toJson();
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  HistoryMetadata copyWith(
      {String? activityDescription,
      String? activityDescriptionKey,
      HistoryMetadataParticipant? actor,
      HistoryMetadataParticipant? cause,
      String? description,
      String? descriptionKey,
      String? emailDescription,
      String? emailDescriptionKey,
      Map<String, dynamic>? extraData,
      HistoryMetadataParticipant? generator,
      String? type}) {
    return HistoryMetadata(
      activityDescription: activityDescription ?? this.activityDescription,
      activityDescriptionKey:
          activityDescriptionKey ?? this.activityDescriptionKey,
      actor: actor ?? this.actor,
      cause: cause ?? this.cause,
      description: description ?? this.description,
      descriptionKey: descriptionKey ?? this.descriptionKey,
      emailDescription: emailDescription ?? this.emailDescription,
      emailDescriptionKey: emailDescriptionKey ?? this.emailDescriptionKey,
      extraData: extraData ?? this.extraData,
      generator: generator ?? this.generator,
      type: type ?? this.type,
    );
  }
}

/// Details of user or system associated with a issue history metadata item.
class HistoryMetadataParticipant {
  /// The URL to an avatar for the user or system associated with a history
  /// record.
  final String? avatarUrl;

  /// The display name of the user or system associated with a history record.
  final String? displayName;

  /// The key of the display name of the user or system associated with a
  /// history record.
  final String? displayNameKey;

  /// The ID of the user or system associated with a history record.
  final String? id;

  /// The type of the user or system associated with a history record.
  final String? type;

  /// The URL of the user or system associated with a history record.
  final String? url;

  HistoryMetadataParticipant(
      {this.avatarUrl,
      this.displayName,
      this.displayNameKey,
      this.id,
      this.type,
      this.url});

  factory HistoryMetadataParticipant.fromJson(Map<String, Object?> json) {
    return HistoryMetadataParticipant(
      avatarUrl: json[r'avatarUrl'] as String?,
      displayName: json[r'displayName'] as String?,
      displayNameKey: json[r'displayNameKey'] as String?,
      id: json[r'id'] as String?,
      type: json[r'type'] as String?,
      url: json[r'url'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var avatarUrl = this.avatarUrl;
    var displayName = this.displayName;
    var displayNameKey = this.displayNameKey;
    var id = this.id;
    var type = this.type;
    var url = this.url;

    final json = <String, Object?>{};
    if (avatarUrl != null) {
      json[r'avatarUrl'] = avatarUrl;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (displayNameKey != null) {
      json[r'displayNameKey'] = displayNameKey;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  HistoryMetadataParticipant copyWith(
      {String? avatarUrl,
      String? displayName,
      String? displayNameKey,
      String? id,
      String? type,
      String? url}) {
    return HistoryMetadataParticipant(
      avatarUrl: avatarUrl ?? this.avatarUrl,
      displayName: displayName ?? this.displayName,
      displayNameKey: displayNameKey ?? this.displayNameKey,
      id: id ?? this.id,
      type: type ?? this.type,
      url: url ?? this.url,
    );
  }
}

class I18nErrorMessage {
  final String? i18nKey;
  final List<String> parameters;

  I18nErrorMessage({this.i18nKey, List<String>? parameters})
      : parameters = parameters ?? [];

  factory I18nErrorMessage.fromJson(Map<String, Object?> json) {
    return I18nErrorMessage(
      i18nKey: json[r'i18nKey'] as String?,
      parameters: (json[r'parameters'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var i18nKey = this.i18nKey;
    var parameters = this.parameters;

    final json = <String, Object?>{};
    if (i18nKey != null) {
      json[r'i18nKey'] = i18nKey;
    }
    json[r'parameters'] = parameters;
    return json;
  }

  I18nErrorMessage copyWith({String? i18nKey, List<String>? parameters}) {
    return I18nErrorMessage(
      i18nKey: i18nKey ?? this.i18nKey,
      parameters: parameters ?? this.parameters,
    );
  }
}

class IncludedFields {
  final List<String> actuallyIncluded;
  final List<String> excluded;
  final List<String> included;

  IncludedFields(
      {List<String>? actuallyIncluded,
      List<String>? excluded,
      List<String>? included})
      : actuallyIncluded = actuallyIncluded ?? [],
        excluded = excluded ?? [],
        included = included ?? [];

  factory IncludedFields.fromJson(Map<String, Object?> json) {
    return IncludedFields(
      actuallyIncluded: (json[r'actuallyIncluded'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      excluded: (json[r'excluded'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      included: (json[r'included'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var actuallyIncluded = this.actuallyIncluded;
    var excluded = this.excluded;
    var included = this.included;

    final json = <String, Object?>{};
    json[r'actuallyIncluded'] = actuallyIncluded;
    json[r'excluded'] = excluded;
    json[r'included'] = included;
    return json;
  }

  IncludedFields copyWith(
      {List<String>? actuallyIncluded,
      List<String>? excluded,
      List<String>? included}) {
    return IncludedFields(
      actuallyIncluded: actuallyIncluded ?? this.actuallyIncluded,
      excluded: excluded ?? this.excluded,
      included: included ?? this.included,
    );
  }
}

/// Details of an insight workspace ID.
class InsightWorkspaceDTO {
  /// The workspace ID used as the identifier to access the Insight REST API.
  final String? workspaceId;

  InsightWorkspaceDTO({this.workspaceId});

  factory InsightWorkspaceDTO.fromJson(Map<String, Object?> json) {
    return InsightWorkspaceDTO(
      workspaceId: json[r'workspaceId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var workspaceId = this.workspaceId;

    final json = <String, Object?>{};
    if (workspaceId != null) {
      json[r'workspaceId'] = workspaceId;
    }
    return json;
  }

  InsightWorkspaceDTO copyWith({String? workspaceId}) {
    return InsightWorkspaceDTO(
      workspaceId: workspaceId ?? this.workspaceId,
    );
  }
}

/// Details about an issue.
class IssueBean {
  /// Details of changelogs associated with the issue.
  final PageOfChangelogs? changelog;

  /// The metadata for the fields on the issue that can be amended.
  final IssueUpdateMetadata? editmeta;

  /// Expand options that include additional issue details in the response.
  final String? expand;
  final Map<String, dynamic>? fields;
  final IncludedFields? fieldsToInclude;

  /// The ID of the issue.
  final String? id;

  /// The key of the issue.
  final String? key;

  /// The ID and name of each field present on the issue.
  final Map<String, dynamic>? names;

  /// The operations that can be performed on the issue.
  final Operations? operations;

  /// Details of the issue properties identified in the request.
  final Map<String, dynamic>? properties;

  /// The rendered value of each field present on the issue.
  final Map<String, dynamic>? renderedFields;

  /// The schema describing each field present on the issue.
  final Map<String, dynamic>? schema;

  /// The URL of the issue details.
  final String? self;

  /// The transitions that can be performed on the issue.
  final List<IssueTransition> transitions;

  /// The versions of each field on the issue.
  final Map<String, dynamic>? versionedRepresentations;

  IssueBean(
      {this.changelog,
      this.editmeta,
      this.expand,
      this.fields,
      this.fieldsToInclude,
      this.id,
      this.key,
      this.names,
      this.operations,
      this.properties,
      this.renderedFields,
      this.schema,
      this.self,
      List<IssueTransition>? transitions,
      this.versionedRepresentations})
      : transitions = transitions ?? [];

  factory IssueBean.fromJson(Map<String, Object?> json) {
    return IssueBean(
      changelog: json[r'changelog'] != null
          ? PageOfChangelogs.fromJson(
              json[r'changelog']! as Map<String, Object?>)
          : null,
      editmeta: json[r'editmeta'] != null
          ? IssueUpdateMetadata.fromJson(
              json[r'editmeta']! as Map<String, Object?>)
          : null,
      expand: json[r'expand'] as String?,
      fields: json[r'fields'] as Map<String, Object?>?,
      fieldsToInclude: json[r'fieldsToInclude'] != null
          ? IncludedFields.fromJson(
              json[r'fieldsToInclude']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      names: json[r'names'] as Map<String, Object?>?,
      operations: json[r'operations'] != null
          ? Operations.fromJson(json[r'operations']! as Map<String, Object?>)
          : null,
      properties: json[r'properties'] as Map<String, Object?>?,
      renderedFields: json[r'renderedFields'] as Map<String, Object?>?,
      schema: json[r'schema'] as Map<String, Object?>?,
      self: json[r'self'] as String?,
      transitions: (json[r'transitions'] as List<Object?>?)
              ?.map((i) => IssueTransition.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      versionedRepresentations:
          json[r'versionedRepresentations'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var changelog = this.changelog;
    var editmeta = this.editmeta;
    var expand = this.expand;
    var fields = this.fields;
    var fieldsToInclude = this.fieldsToInclude;
    var id = this.id;
    var key = this.key;
    var names = this.names;
    var operations = this.operations;
    var properties = this.properties;
    var renderedFields = this.renderedFields;
    var schema = this.schema;
    var self = this.self;
    var transitions = this.transitions;
    var versionedRepresentations = this.versionedRepresentations;

    final json = <String, Object?>{};
    if (changelog != null) {
      json[r'changelog'] = changelog.toJson();
    }
    if (editmeta != null) {
      json[r'editmeta'] = editmeta.toJson();
    }
    if (expand != null) {
      json[r'expand'] = expand;
    }
    if (fields != null) {
      json[r'fields'] = fields;
    }
    if (fieldsToInclude != null) {
      json[r'fieldsToInclude'] = fieldsToInclude.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (names != null) {
      json[r'names'] = names;
    }
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    if (renderedFields != null) {
      json[r'renderedFields'] = renderedFields;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    json[r'transitions'] = transitions.map((i) => i.toJson()).toList();
    if (versionedRepresentations != null) {
      json[r'versionedRepresentations'] = versionedRepresentations;
    }
    return json;
  }

  IssueBean copyWith(
      {PageOfChangelogs? changelog,
      IssueUpdateMetadata? editmeta,
      String? expand,
      Map<String, dynamic>? fields,
      IncludedFields? fieldsToInclude,
      String? id,
      String? key,
      Map<String, dynamic>? names,
      Operations? operations,
      Map<String, dynamic>? properties,
      Map<String, dynamic>? renderedFields,
      Map<String, dynamic>? schema,
      String? self,
      List<IssueTransition>? transitions,
      Map<String, dynamic>? versionedRepresentations}) {
    return IssueBean(
      changelog: changelog ?? this.changelog,
      editmeta: editmeta ?? this.editmeta,
      expand: expand ?? this.expand,
      fields: fields ?? this.fields,
      fieldsToInclude: fieldsToInclude ?? this.fieldsToInclude,
      id: id ?? this.id,
      key: key ?? this.key,
      names: names ?? this.names,
      operations: operations ?? this.operations,
      properties: properties ?? this.properties,
      renderedFields: renderedFields ?? this.renderedFields,
      schema: schema ?? this.schema,
      self: self ?? this.self,
      transitions: transitions ?? this.transitions,
      versionedRepresentations:
          versionedRepresentations ?? this.versionedRepresentations,
    );
  }
}

/// Details of an issue transition.
class IssueTransition {
  /// Expand options that include additional transition details in the response.
  final String? expand;

  /// Details of the fields associated with the issue transition screen. Use
  /// this information to populate `fields` and `update` in a transition
  /// request.
  final Map<String, dynamic>? fields;

  /// Whether there is a screen associated with the issue transition.
  final bool hasScreen;

  /// The ID of the issue transition. Required when specifying a transition to
  /// undertake.
  final String? id;

  /// Whether the transition is available to be performed.
  final bool isAvailable;

  /// Whether the issue has to meet criteria before the issue transition is
  /// applied.
  final bool isConditional;

  /// Whether the issue transition is global, that is, the transition is applied
  /// to issues regardless of their status.
  final bool isGlobal;

  /// Whether this is the initial issue transition for the workflow.
  final bool isInitial;
  final bool looped;

  /// The name of the issue transition.
  final String? name;

  /// Details of the issue status after the transition.
  final StatusDetails? to;

  IssueTransition(
      {this.expand,
      this.fields,
      bool? hasScreen,
      this.id,
      bool? isAvailable,
      bool? isConditional,
      bool? isGlobal,
      bool? isInitial,
      bool? looped,
      this.name,
      this.to})
      : hasScreen = hasScreen ?? false,
        isAvailable = isAvailable ?? false,
        isConditional = isConditional ?? false,
        isGlobal = isGlobal ?? false,
        isInitial = isInitial ?? false,
        looped = looped ?? false;

  factory IssueTransition.fromJson(Map<String, Object?> json) {
    return IssueTransition(
      expand: json[r'expand'] as String?,
      fields: json[r'fields'] as Map<String, Object?>?,
      hasScreen: json[r'hasScreen'] as bool? ?? false,
      id: json[r'id'] as String?,
      isAvailable: json[r'isAvailable'] as bool? ?? false,
      isConditional: json[r'isConditional'] as bool? ?? false,
      isGlobal: json[r'isGlobal'] as bool? ?? false,
      isInitial: json[r'isInitial'] as bool? ?? false,
      looped: json[r'looped'] as bool? ?? false,
      name: json[r'name'] as String?,
      to: json[r'to'] != null
          ? StatusDetails.fromJson(json[r'to']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var expand = this.expand;
    var fields = this.fields;
    var hasScreen = this.hasScreen;
    var id = this.id;
    var isAvailable = this.isAvailable;
    var isConditional = this.isConditional;
    var isGlobal = this.isGlobal;
    var isInitial = this.isInitial;
    var looped = this.looped;
    var name = this.name;
    var to = this.to;

    final json = <String, Object?>{};
    if (expand != null) {
      json[r'expand'] = expand;
    }
    if (fields != null) {
      json[r'fields'] = fields;
    }
    json[r'hasScreen'] = hasScreen;
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'isAvailable'] = isAvailable;
    json[r'isConditional'] = isConditional;
    json[r'isGlobal'] = isGlobal;
    json[r'isInitial'] = isInitial;
    json[r'looped'] = looped;
    if (name != null) {
      json[r'name'] = name;
    }
    if (to != null) {
      json[r'to'] = to.toJson();
    }
    return json;
  }

  IssueTransition copyWith(
      {String? expand,
      Map<String, dynamic>? fields,
      bool? hasScreen,
      String? id,
      bool? isAvailable,
      bool? isConditional,
      bool? isGlobal,
      bool? isInitial,
      bool? looped,
      String? name,
      StatusDetails? to}) {
    return IssueTransition(
      expand: expand ?? this.expand,
      fields: fields ?? this.fields,
      hasScreen: hasScreen ?? this.hasScreen,
      id: id ?? this.id,
      isAvailable: isAvailable ?? this.isAvailable,
      isConditional: isConditional ?? this.isConditional,
      isGlobal: isGlobal ?? this.isGlobal,
      isInitial: isInitial ?? this.isInitial,
      looped: looped ?? this.looped,
      name: name ?? this.name,
      to: to ?? this.to,
    );
  }
}

/// A list of editable field details.
class IssueUpdateMetadata {
  final Map<String, dynamic>? fields;

  IssueUpdateMetadata({this.fields});

  factory IssueUpdateMetadata.fromJson(Map<String, Object?> json) {
    return IssueUpdateMetadata(
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

  IssueUpdateMetadata copyWith({Map<String, dynamic>? fields}) {
    return IssueUpdateMetadata(
      fields: fields ?? this.fields,
    );
  }
}

/// The schema of a field.
class JsonTypeBean {
  /// If the field is a custom field, the configuration of the field.
  final Map<String, dynamic>? configuration;

  /// If the field is a custom field, the URI of the field.
  final String? custom;

  /// If the field is a custom field, the custom ID of the field.
  final int? customId;

  /// When the data type is an array, the name of the field items within the
  /// array.
  final String? items;

  /// If the field is a system field, the name of the field.
  final String? system;

  /// The data type of the field.
  final String type;

  JsonTypeBean(
      {this.configuration,
      this.custom,
      this.customId,
      this.items,
      this.system,
      required this.type});

  factory JsonTypeBean.fromJson(Map<String, Object?> json) {
    return JsonTypeBean(
      configuration: json[r'configuration'] as Map<String, Object?>?,
      custom: json[r'custom'] as String?,
      customId: (json[r'customId'] as num?)?.toInt(),
      items: json[r'items'] as String?,
      system: json[r'system'] as String?,
      type: json[r'type'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var configuration = this.configuration;
    var custom = this.custom;
    var customId = this.customId;
    var items = this.items;
    var system = this.system;
    var type = this.type;

    final json = <String, Object?>{};
    if (configuration != null) {
      json[r'configuration'] = configuration;
    }
    if (custom != null) {
      json[r'custom'] = custom;
    }
    if (customId != null) {
      json[r'customId'] = customId;
    }
    if (items != null) {
      json[r'items'] = items;
    }
    if (system != null) {
      json[r'system'] = system;
    }
    json[r'type'] = type;
    return json;
  }

  JsonTypeBean copyWith(
      {Map<String, dynamic>? configuration,
      String? custom,
      int? customId,
      String? items,
      String? system,
      String? type}) {
    return JsonTypeBean(
      configuration: configuration ?? this.configuration,
      custom: custom ?? this.custom,
      customId: customId ?? this.customId,
      items: items ?? this.items,
      system: system ?? this.system,
      type: type ?? this.type,
    );
  }
}

/// Details a link group, which defines issue operations.
class LinkGroup {
  final List<LinkGroup> groups;
  final SimpleLink? header;
  final String? id;
  final List<SimpleLink> links;
  final String? styleClass;
  final int? weight;

  LinkGroup(
      {List<LinkGroup>? groups,
      this.header,
      this.id,
      List<SimpleLink>? links,
      this.styleClass,
      this.weight})
      : groups = groups ?? [],
        links = links ?? [];

  factory LinkGroup.fromJson(Map<String, Object?> json) {
    return LinkGroup(
      groups: (json[r'groups'] as List<Object?>?)
              ?.map((i) =>
                  LinkGroup.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      header: json[r'header'] != null
          ? SimpleLink.fromJson(json[r'header']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      links: (json[r'links'] as List<Object?>?)
              ?.map((i) =>
                  SimpleLink.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      styleClass: json[r'styleClass'] as String?,
      weight: (json[r'weight'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var groups = this.groups;
    var header = this.header;
    var id = this.id;
    var links = this.links;
    var styleClass = this.styleClass;
    var weight = this.weight;

    final json = <String, Object?>{};
    json[r'groups'] = groups.map((i) => i.toJson()).toList();
    if (header != null) {
      json[r'header'] = header.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'links'] = links.map((i) => i.toJson()).toList();
    if (styleClass != null) {
      json[r'styleClass'] = styleClass;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    return json;
  }

  LinkGroup copyWith(
      {List<LinkGroup>? groups,
      SimpleLink? header,
      String? id,
      List<SimpleLink>? links,
      String? styleClass,
      int? weight}) {
    return LinkGroup(
      groups: groups ?? this.groups,
      header: header ?? this.header,
      id: id ?? this.id,
      links: links ?? this.links,
      styleClass: styleClass ?? this.styleClass,
      weight: weight ?? this.weight,
    );
  }
}

class Linkable {
  final SelfLinkDTO? links;

  Linkable({this.links});

  factory Linkable.fromJson(Map<String, Object?> json) {
    return Linkable(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  Linkable copyWith({SelfLinkDTO? links}) {
    return Linkable(
      links: links ?? this.links,
    );
  }
}

class LinkableAttachmentLinkDTO {
  final AttachmentLinkDTO? links;

  LinkableAttachmentLinkDTO({this.links});

  factory LinkableAttachmentLinkDTO.fromJson(Map<String, Object?> json) {
    return LinkableAttachmentLinkDTO(
      links: json[r'_links'] != null
          ? AttachmentLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  LinkableAttachmentLinkDTO copyWith({AttachmentLinkDTO? links}) {
    return LinkableAttachmentLinkDTO(
      links: links ?? this.links,
    );
  }
}

class LinkableCustomerRequestLinkDTO {
  final CustomerRequestLinkDTO? links;

  LinkableCustomerRequestLinkDTO({this.links});

  factory LinkableCustomerRequestLinkDTO.fromJson(Map<String, Object?> json) {
    return LinkableCustomerRequestLinkDTO(
      links: json[r'_links'] != null
          ? CustomerRequestLinkDTO.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  LinkableCustomerRequestLinkDTO copyWith({CustomerRequestLinkDTO? links}) {
    return LinkableCustomerRequestLinkDTO(
      links: links ?? this.links,
    );
  }
}

class LinkableUserLinkDTO {
  final UserLinkDTO? links;

  LinkableUserLinkDTO({this.links});

  factory LinkableUserLinkDTO.fromJson(Map<String, Object?> json) {
    return LinkableUserLinkDTO(
      links: json[r'_links'] != null
          ? UserLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  LinkableUserLinkDTO copyWith({UserLinkDTO? links}) {
    return LinkableUserLinkDTO(
      links: links ?? this.links,
    );
  }
}

/// Details of the operations that can be performed on the issue.
class Operations {
  /// Details of the link groups defining issue operations.
  final List<LinkGroup> linkGroups;

  Operations({List<LinkGroup>? linkGroups}) : linkGroups = linkGroups ?? [];

  factory Operations.fromJson(Map<String, Object?> json) {
    return Operations(
      linkGroups: (json[r'linkGroups'] as List<Object?>?)
              ?.map((i) =>
                  LinkGroup.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var linkGroups = this.linkGroups;

    final json = <String, Object?>{};
    json[r'linkGroups'] = linkGroups.map((i) => i.toJson()).toList();
    return json;
  }

  Operations copyWith({List<LinkGroup>? linkGroups}) {
    return Operations(
      linkGroups: linkGroups ?? this.linkGroups,
    );
  }
}

class OrganizationCreateDTO {
  /// Name of the organization.
  final String name;

  OrganizationCreateDTO({required this.name});

  factory OrganizationCreateDTO.fromJson(Map<String, Object?> json) {
    return OrganizationCreateDTO(
      name: json[r'name'] as String? ?? '',
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;

    final json = <String, Object?>{};
    json[r'name'] = name;
    return json;
  }

  OrganizationCreateDTO copyWith({String? name}) {
    return OrganizationCreateDTO(
      name: name ?? this.name,
    );
  }
}

class OrganizationDTO {
  /// REST API URL to the organization.
  final SelfLinkDTO? links;

  /// A unique system generated ID for the organization.
  final String? id;

  /// Name of the organization.
  final String? name;

  OrganizationDTO({this.links, this.id, this.name});

  factory OrganizationDTO.fromJson(Map<String, Object?> json) {
    return OrganizationDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var id = this.id;
    var name = this.name;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  OrganizationDTO copyWith({SelfLinkDTO? links, String? id, String? name}) {
    return OrganizationDTO(
      links: links ?? this.links,
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class OrganizationServiceDeskUpdateDTO {
  /// List of organizations, specified by 'ID' field values, to add to or remove
  /// from the service desk.
  final int organizationId;

  OrganizationServiceDeskUpdateDTO({required this.organizationId});

  factory OrganizationServiceDeskUpdateDTO.fromJson(Map<String, Object?> json) {
    return OrganizationServiceDeskUpdateDTO(
      organizationId: (json[r'organizationId'] as num?)?.toInt() ?? 0,
    );
  }

  Map<String, Object?> toJson() {
    var organizationId = this.organizationId;

    final json = <String, Object?>{};
    json[r'organizationId'] = organizationId;
    return json;
  }

  OrganizationServiceDeskUpdateDTO copyWith({int? organizationId}) {
    return OrganizationServiceDeskUpdateDTO(
      organizationId: organizationId ?? this.organizationId,
    );
  }
}

/// A page of changelogs.
class PageOfChangelogs {
  /// The list of changelogs.
  final List<Changelog> histories;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The index of the first item returned on the page.
  final int? startAt;

  /// The number of results on the page.
  final int? total;

  PageOfChangelogs(
      {List<Changelog>? histories, this.maxResults, this.startAt, this.total})
      : histories = histories ?? [];

  factory PageOfChangelogs.fromJson(Map<String, Object?> json) {
    return PageOfChangelogs(
      histories: (json[r'histories'] as List<Object?>?)
              ?.map((i) =>
                  Changelog.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var histories = this.histories;
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;

    final json = <String, Object?>{};
    json[r'histories'] = histories.map((i) => i.toJson()).toList();
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    return json;
  }

  PageOfChangelogs copyWith(
      {List<Changelog>? histories, int? maxResults, int? startAt, int? total}) {
    return PageOfChangelogs(
      histories: histories ?? this.histories,
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
    );
  }
}

class PagedDTOApprovalDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<ApprovalDTO> values;

  PagedDTOApprovalDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<ApprovalDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOApprovalDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOApprovalDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  ApprovalDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOApprovalDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<ApprovalDTO>? values}) {
    return PagedDTOApprovalDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOArticleDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<ArticleDTO> values;

  PagedDTOArticleDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<ArticleDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOArticleDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOArticleDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  ArticleDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOArticleDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<ArticleDTO>? values}) {
    return PagedDTOArticleDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOAssetsWorkspaceDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<AssetsWorkspaceDTO> values;

  PagedDTOAssetsWorkspaceDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<AssetsWorkspaceDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOAssetsWorkspaceDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOAssetsWorkspaceDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => AssetsWorkspaceDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOAssetsWorkspaceDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<AssetsWorkspaceDTO>? values}) {
    return PagedDTOAssetsWorkspaceDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOAttachmentDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<AttachmentDTO> values;

  PagedDTOAttachmentDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<AttachmentDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOAttachmentDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOAttachmentDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => AttachmentDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOAttachmentDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<AttachmentDTO>? values}) {
    return PagedDTOAttachmentDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOCommentDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<CommentDTO> values;

  PagedDTOCommentDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<CommentDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOCommentDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCommentDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  CommentDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOCommentDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<CommentDTO>? values}) {
    return PagedDTOCommentDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOCustomerRequestDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<CustomerRequestDTO> values;

  PagedDTOCustomerRequestDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<CustomerRequestDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOCustomerRequestDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerRequestDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerRequestDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOCustomerRequestDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<CustomerRequestDTO>? values}) {
    return PagedDTOCustomerRequestDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOCustomerRequestStatusDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<CustomerRequestStatusDTO> values;

  PagedDTOCustomerRequestStatusDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<CustomerRequestStatusDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOCustomerRequestStatusDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerRequestStatusDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerRequestStatusDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOCustomerRequestStatusDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<CustomerRequestStatusDTO>? values}) {
    return PagedDTOCustomerRequestStatusDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOCustomerTransitionDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<CustomerTransitionDTO> values;

  PagedDTOCustomerTransitionDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<CustomerTransitionDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOCustomerTransitionDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerTransitionDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerTransitionDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOCustomerTransitionDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<CustomerTransitionDTO>? values}) {
    return PagedDTOCustomerTransitionDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOInsightWorkspaceDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<InsightWorkspaceDTO> values;

  PagedDTOInsightWorkspaceDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<InsightWorkspaceDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOInsightWorkspaceDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOInsightWorkspaceDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => InsightWorkspaceDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOInsightWorkspaceDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<InsightWorkspaceDTO>? values}) {
    return PagedDTOInsightWorkspaceDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOIssueBean {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<IssueBean> values;

  PagedDTOIssueBean(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<IssueBean>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOIssueBean.fromJson(Map<String, Object?> json) {
    return PagedDTOIssueBean(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  IssueBean.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOIssueBean copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<IssueBean>? values}) {
    return PagedDTOIssueBean(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOOrganizationDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<OrganizationDTO> values;

  PagedDTOOrganizationDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<OrganizationDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOOrganizationDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOOrganizationDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => OrganizationDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOOrganizationDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<OrganizationDTO>? values}) {
    return PagedDTOOrganizationDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOQueueDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<QueueDTO> values;

  PagedDTOQueueDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<QueueDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOQueueDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOQueueDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  QueueDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOQueueDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<QueueDTO>? values}) {
    return PagedDTOQueueDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTORequestTypeDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<RequestTypeDTO> values;

  PagedDTORequestTypeDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<RequestTypeDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTORequestTypeDTO.fromJson(Map<String, Object?> json) {
    return PagedDTORequestTypeDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => RequestTypeDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTORequestTypeDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<RequestTypeDTO>? values}) {
    return PagedDTORequestTypeDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTORequestTypeGroupDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<RequestTypeGroupDTO> values;

  PagedDTORequestTypeGroupDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<RequestTypeGroupDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTORequestTypeGroupDTO.fromJson(Map<String, Object?> json) {
    return PagedDTORequestTypeGroupDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => RequestTypeGroupDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTORequestTypeGroupDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<RequestTypeGroupDTO>? values}) {
    return PagedDTORequestTypeGroupDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOServiceDeskDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<ServiceDeskDTO> values;

  PagedDTOServiceDeskDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<ServiceDeskDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOServiceDeskDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOServiceDeskDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => ServiceDeskDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOServiceDeskDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<ServiceDeskDTO>? values}) {
    return PagedDTOServiceDeskDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOSlaInformationDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<SlaInformationDTO> values;

  PagedDTOSlaInformationDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<SlaInformationDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOSlaInformationDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOSlaInformationDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => SlaInformationDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOSlaInformationDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<SlaInformationDTO>? values}) {
    return PagedDTOSlaInformationDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedDTOUserDTO {
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Details of the items included in the page.
  final List<UserDTO> values;

  PagedDTOUserDTO(
      {List<String>? expands,
      this.links,
      bool? isLastPage,
      this.limit,
      this.size,
      this.start,
      List<UserDTO>? values})
      : expands = expands ?? [],
        isLastPage = isLastPage ?? false,
        values = values ?? [];

  factory PagedDTOUserDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOUserDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      limit: (json[r'limit'] as num?)?.toInt(),
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  UserDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var isLastPage = this.isLastPage;
    var limit = this.limit;
    var size = this.size;
    var start = this.start;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'isLastPage'] = isLastPage;
    if (limit != null) {
      json[r'limit'] = limit;
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PagedDTOUserDTO copyWith(
      {List<String>? expands,
      PagedLinkDTO? links,
      bool? isLastPage,
      int? limit,
      int? size,
      int? start,
      List<UserDTO>? values}) {
    return PagedDTOUserDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      isLastPage: isLastPage ?? this.isLastPage,
      limit: limit ?? this.limit,
      size: size ?? this.size,
      start: start ?? this.start,
      values: values ?? this.values,
    );
  }
}

class PagedLinkDTO {
  /// Base URL for the REST API calls.
  final String? base;
  final String? context;

  /// REST API URL for the next page, if there is one.
  final String? next;

  /// REST API URL for the previous page, if there is one.
  final String? prev;

  /// REST API URL for the current page.
  final String? self;

  PagedLinkDTO({this.base, this.context, this.next, this.prev, this.self});

  factory PagedLinkDTO.fromJson(Map<String, Object?> json) {
    return PagedLinkDTO(
      base: json[r'base'] as String?,
      context: json[r'context'] as String?,
      next: json[r'next'] as String?,
      prev: json[r'prev'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var base = this.base;
    var context = this.context;
    var next = this.next;
    var prev = this.prev;
    var self = this.self;

    final json = <String, Object?>{};
    if (base != null) {
      json[r'base'] = base;
    }
    if (context != null) {
      json[r'context'] = context;
    }
    if (next != null) {
      json[r'next'] = next;
    }
    if (prev != null) {
      json[r'prev'] = prev;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  PagedLinkDTO copyWith(
      {String? base,
      String? context,
      String? next,
      String? prev,
      String? self}) {
    return PagedLinkDTO(
      base: base ?? this.base,
      context: context ?? this.context,
      next: next ?? this.next,
      prev: prev ?? this.prev,
      self: self ?? this.self,
    );
  }
}

/// Property key details.
class PropertyKey {
  /// The key of the property.
  final String? key;

  /// The URL of the property.
  final String? self;

  PropertyKey({this.key, this.self});

  factory PropertyKey.fromJson(Map<String, Object?> json) {
    return PropertyKey(
      key: json[r'key'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var self = this.self;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  PropertyKey copyWith({String? key, String? self}) {
    return PropertyKey(
      key: key ?? this.key,
      self: self ?? this.self,
    );
  }
}

/// List of property keys.
class PropertyKeys {
  /// Property key details.
  final List<PropertyKey> keys;

  PropertyKeys({List<PropertyKey>? keys}) : keys = keys ?? [];

  factory PropertyKeys.fromJson(Map<String, Object?> json) {
    return PropertyKeys(
      keys: (json[r'keys'] as List<Object?>?)
              ?.map((i) =>
                  PropertyKey.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var keys = this.keys;

    final json = <String, Object?>{};
    json[r'keys'] = keys.map((i) => i.toJson()).toList();
    return json;
  }

  PropertyKeys copyWith({List<PropertyKey>? keys}) {
    return PropertyKeys(
      keys: keys ?? this.keys,
    );
  }
}

class QueueDTO {
  /// REST API URL to the queue.
  final SelfLinkDTO? links;

  /// Fields returned for each request in the queue.
  final List<String> fields;

  /// ID for the queue.
  final String? id;

  /// The count of customer requests in the queue.
  final int? issueCount;

  /// JQL query that filters reqeusts for the queue.
  final String? jql;

  /// Short name for the queue.
  final String? name;

  QueueDTO(
      {this.links,
      List<String>? fields,
      this.id,
      this.issueCount,
      this.jql,
      this.name})
      : fields = fields ?? [];

  factory QueueDTO.fromJson(Map<String, Object?> json) {
    return QueueDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      fields: (json[r'fields'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      id: json[r'id'] as String?,
      issueCount: (json[r'issueCount'] as num?)?.toInt(),
      jql: json[r'jql'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var fields = this.fields;
    var id = this.id;
    var issueCount = this.issueCount;
    var jql = this.jql;
    var name = this.name;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'fields'] = fields;
    if (id != null) {
      json[r'id'] = id;
    }
    if (issueCount != null) {
      json[r'issueCount'] = issueCount;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  QueueDTO copyWith(
      {SelfLinkDTO? links,
      List<String>? fields,
      String? id,
      int? issueCount,
      String? jql,
      String? name}) {
    return QueueDTO(
      links: links ?? this.links,
      fields: fields ?? this.fields,
      id: id ?? this.id,
      issueCount: issueCount ?? this.issueCount,
      jql: jql ?? this.jql,
      name: name ?? this.name,
    );
  }
}

class RenderedValueDTO {
  final String? html;

  RenderedValueDTO({this.html});

  factory RenderedValueDTO.fromJson(Map<String, Object?> json) {
    return RenderedValueDTO(
      html: json[r'html'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var html = this.html;

    final json = <String, Object?>{};
    if (html != null) {
      json[r'html'] = html;
    }
    return json;
  }

  RenderedValueDTO copyWith({String? html}) {
    return RenderedValueDTO(
      html: html ?? this.html,
    );
  }
}

class RequestCreateDTO {
  /// (Experimental) Shows extra information for the request channel.
  final String? channel;

  /// (Experimental) Whether to accept rich text fields in Atlassian Document
  /// Format (ADF).
  final bool isAdfRequest;

  /// The `accountId` of the customer that the request is being raised on behalf
  /// of.
  final String? raiseOnBehalfOf;

  /// JSON map of Jira field IDs and their values representing the content of
  /// the request.
  final Map<String, dynamic>? requestFieldValues;

  /// List of customers to participate in the request, as a list of `accountId`
  /// values.
  final List<String> requestParticipants;

  /// ID of the request type for the request.
  final String? requestTypeId;

  /// ID of the service desk in which to create the request.
  final String? serviceDeskId;

  RequestCreateDTO(
      {this.channel,
      bool? isAdfRequest,
      this.raiseOnBehalfOf,
      this.requestFieldValues,
      List<String>? requestParticipants,
      this.requestTypeId,
      this.serviceDeskId})
      : isAdfRequest = isAdfRequest ?? false,
        requestParticipants = requestParticipants ?? [];

  factory RequestCreateDTO.fromJson(Map<String, Object?> json) {
    return RequestCreateDTO(
      channel: json[r'channel'] as String?,
      isAdfRequest: json[r'isAdfRequest'] as bool? ?? false,
      raiseOnBehalfOf: json[r'raiseOnBehalfOf'] as String?,
      requestFieldValues: json[r'requestFieldValues'] as Map<String, Object?>?,
      requestParticipants: (json[r'requestParticipants'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      requestTypeId: json[r'requestTypeId'] as String?,
      serviceDeskId: json[r'serviceDeskId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var channel = this.channel;
    var isAdfRequest = this.isAdfRequest;
    var raiseOnBehalfOf = this.raiseOnBehalfOf;
    var requestFieldValues = this.requestFieldValues;
    var requestParticipants = this.requestParticipants;
    var requestTypeId = this.requestTypeId;
    var serviceDeskId = this.serviceDeskId;

    final json = <String, Object?>{};
    if (channel != null) {
      json[r'channel'] = channel;
    }
    json[r'isAdfRequest'] = isAdfRequest;
    if (raiseOnBehalfOf != null) {
      json[r'raiseOnBehalfOf'] = raiseOnBehalfOf;
    }
    if (requestFieldValues != null) {
      json[r'requestFieldValues'] = requestFieldValues;
    }
    json[r'requestParticipants'] = requestParticipants;
    if (requestTypeId != null) {
      json[r'requestTypeId'] = requestTypeId;
    }
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    return json;
  }

  RequestCreateDTO copyWith(
      {String? channel,
      bool? isAdfRequest,
      String? raiseOnBehalfOf,
      Map<String, dynamic>? requestFieldValues,
      List<String>? requestParticipants,
      String? requestTypeId,
      String? serviceDeskId}) {
    return RequestCreateDTO(
      channel: channel ?? this.channel,
      isAdfRequest: isAdfRequest ?? this.isAdfRequest,
      raiseOnBehalfOf: raiseOnBehalfOf ?? this.raiseOnBehalfOf,
      requestFieldValues: requestFieldValues ?? this.requestFieldValues,
      requestParticipants: requestParticipants ?? this.requestParticipants,
      requestTypeId: requestTypeId ?? this.requestTypeId,
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
    );
  }
}

class RequestNotificationSubscriptionDTO {
  /// Indicates whether the user is subscribed (true) or not (false) to the
  /// request's notifications.
  final bool subscribed;

  RequestNotificationSubscriptionDTO({bool? subscribed})
      : subscribed = subscribed ?? false;

  factory RequestNotificationSubscriptionDTO.fromJson(
      Map<String, Object?> json) {
    return RequestNotificationSubscriptionDTO(
      subscribed: json[r'subscribed'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var subscribed = this.subscribed;

    final json = <String, Object?>{};
    json[r'subscribed'] = subscribed;
    return json;
  }

  RequestNotificationSubscriptionDTO copyWith({bool? subscribed}) {
    return RequestNotificationSubscriptionDTO(
      subscribed: subscribed ?? this.subscribed,
    );
  }
}

class RequestParticipantUpdateDTO {
  /// List of users, specified by account IDs, to add to or remove as
  /// participants in the request.
  final List<String> accountIds;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  RequestParticipantUpdateDTO(
      {List<String>? accountIds, List<String>? usernames})
      : accountIds = accountIds ?? [],
        usernames = usernames ?? [];

  factory RequestParticipantUpdateDTO.fromJson(Map<String, Object?> json) {
    return RequestParticipantUpdateDTO(
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var accountIds = this.accountIds;
    var usernames = this.usernames;

    final json = <String, Object?>{};
    json[r'accountIds'] = accountIds;
    json[r'usernames'] = usernames;
    return json;
  }

  RequestParticipantUpdateDTO copyWith(
      {List<String>? accountIds, List<String>? usernames}) {
    return RequestParticipantUpdateDTO(
      accountIds: accountIds ?? this.accountIds,
      usernames: usernames ?? this.usernames,
    );
  }
}

class RequestTypeCreateDTO {
  /// Description of the request type on the service desk.
  final String? description;

  /// Help text for the request type on the service desk.
  final String? helpText;

  /// ID of the request type to add to the service desk.
  final String? issueTypeId;

  /// Name of the request type on the service desk.
  final String? name;

  RequestTypeCreateDTO(
      {this.description, this.helpText, this.issueTypeId, this.name});

  factory RequestTypeCreateDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeCreateDTO(
      description: json[r'description'] as String?,
      helpText: json[r'helpText'] as String?,
      issueTypeId: json[r'issueTypeId'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var description = this.description;
    var helpText = this.helpText;
    var issueTypeId = this.issueTypeId;
    var name = this.name;

    final json = <String, Object?>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (helpText != null) {
      json[r'helpText'] = helpText;
    }
    if (issueTypeId != null) {
      json[r'issueTypeId'] = issueTypeId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  RequestTypeCreateDTO copyWith(
      {String? description,
      String? helpText,
      String? issueTypeId,
      String? name}) {
    return RequestTypeCreateDTO(
      description: description ?? this.description,
      helpText: helpText ?? this.helpText,
      issueTypeId: issueTypeId ?? this.issueTypeId,
      name: name ?? this.name,
    );
  }
}

class RequestTypeDTO {
  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// REST API URL for the request type.
  final SelfLinkDTO? links;

  /// Description of the request type.
  final String? description;

  /// Fields and additional metadata for creating a request that uses the
  /// request type
  final CustomerRequestCreateMetaDTO? fields;

  /// List of the request type groups the request type belongs to.
  final List<String> groupIds;

  /// Help text for the request type.
  final String? helpText;

  /// Links to the request type's icons.
  final RequestTypeIconDTO? icon;

  /// ID for the request type.
  final String? id;

  /// ID of the issue type the request type is based upon.
  final String? issueTypeId;

  /// Short name for the request type.
  final String? name;

  /// ID of the customer portal associated with the service desk project.
  final String? portalId;

  /// The request type's practice
  final String? practice;

  /// ID of the service desk the request type belongs to.
  final String? serviceDeskId;

  RequestTypeDTO(
      {List<String>? expands,
      this.links,
      this.description,
      this.fields,
      List<String>? groupIds,
      this.helpText,
      this.icon,
      this.id,
      this.issueTypeId,
      this.name,
      this.portalId,
      this.practice,
      this.serviceDeskId})
      : expands = expands ?? [],
        groupIds = groupIds ?? [];

  factory RequestTypeDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeDTO(
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      description: json[r'description'] as String?,
      fields: json[r'fields'] != null
          ? CustomerRequestCreateMetaDTO.fromJson(
              json[r'fields']! as Map<String, Object?>)
          : null,
      groupIds: (json[r'groupIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      helpText: json[r'helpText'] as String?,
      icon: json[r'icon'] != null
          ? RequestTypeIconDTO.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      issueTypeId: json[r'issueTypeId'] as String?,
      name: json[r'name'] as String?,
      portalId: json[r'portalId'] as String?,
      practice: json[r'practice'] as String?,
      serviceDeskId: json[r'serviceDeskId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var expands = this.expands;
    var links = this.links;
    var description = this.description;
    var fields = this.fields;
    var groupIds = this.groupIds;
    var helpText = this.helpText;
    var icon = this.icon;
    var id = this.id;
    var issueTypeId = this.issueTypeId;
    var name = this.name;
    var portalId = this.portalId;
    var practice = this.practice;
    var serviceDeskId = this.serviceDeskId;

    final json = <String, Object?>{};
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (fields != null) {
      json[r'fields'] = fields.toJson();
    }
    json[r'groupIds'] = groupIds;
    if (helpText != null) {
      json[r'helpText'] = helpText;
    }
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (issueTypeId != null) {
      json[r'issueTypeId'] = issueTypeId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (portalId != null) {
      json[r'portalId'] = portalId;
    }
    if (practice != null) {
      json[r'practice'] = practice;
    }
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    return json;
  }

  RequestTypeDTO copyWith(
      {List<String>? expands,
      SelfLinkDTO? links,
      String? description,
      CustomerRequestCreateMetaDTO? fields,
      List<String>? groupIds,
      String? helpText,
      RequestTypeIconDTO? icon,
      String? id,
      String? issueTypeId,
      String? name,
      String? portalId,
      String? practice,
      String? serviceDeskId}) {
    return RequestTypeDTO(
      expands: expands ?? this.expands,
      links: links ?? this.links,
      description: description ?? this.description,
      fields: fields ?? this.fields,
      groupIds: groupIds ?? this.groupIds,
      helpText: helpText ?? this.helpText,
      icon: icon ?? this.icon,
      id: id ?? this.id,
      issueTypeId: issueTypeId ?? this.issueTypeId,
      name: name ?? this.name,
      portalId: portalId ?? this.portalId,
      practice: practice ?? this.practice,
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
    );
  }
}

class RequestTypeFieldDTO {
  /// List of default values for the field.
  final List<RequestTypeFieldValueDTO> defaultValues;

  /// Description of the field.
  final String? description;

  /// ID of the field.
  final String? fieldId;

  /// Jira specific implementation details for the field in the UI.
  final JsonTypeBean? jiraSchema;

  /// Name of the field.
  final String? name;

  /// List of preset values for the field.
  final List<String> presetValues;

  /// Indicates if the field is required (true) or not (false).
  final bool required;

  /// List of valid values for the field.
  final List<RequestTypeFieldValueDTO> validValues;
  final bool visible;

  RequestTypeFieldDTO(
      {List<RequestTypeFieldValueDTO>? defaultValues,
      this.description,
      this.fieldId,
      this.jiraSchema,
      this.name,
      List<String>? presetValues,
      bool? required,
      List<RequestTypeFieldValueDTO>? validValues,
      bool? visible})
      : defaultValues = defaultValues ?? [],
        presetValues = presetValues ?? [],
        required = required ?? false,
        validValues = validValues ?? [],
        visible = visible ?? false;

  factory RequestTypeFieldDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeFieldDTO(
      defaultValues: (json[r'defaultValues'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      description: json[r'description'] as String?,
      fieldId: json[r'fieldId'] as String?,
      jiraSchema: json[r'jiraSchema'] != null
          ? JsonTypeBean.fromJson(json[r'jiraSchema']! as Map<String, Object?>)
          : null,
      name: json[r'name'] as String?,
      presetValues: (json[r'presetValues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      required: json[r'required'] as bool? ?? false,
      validValues: (json[r'validValues'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      visible: json[r'visible'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var defaultValues = this.defaultValues;
    var description = this.description;
    var fieldId = this.fieldId;
    var jiraSchema = this.jiraSchema;
    var name = this.name;
    var presetValues = this.presetValues;
    var required = this.required;
    var validValues = this.validValues;
    var visible = this.visible;

    final json = <String, Object?>{};
    json[r'defaultValues'] = defaultValues.map((i) => i.toJson()).toList();
    if (description != null) {
      json[r'description'] = description;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (jiraSchema != null) {
      json[r'jiraSchema'] = jiraSchema.toJson();
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'presetValues'] = presetValues;
    json[r'required'] = required;
    json[r'validValues'] = validValues.map((i) => i.toJson()).toList();
    json[r'visible'] = visible;
    return json;
  }

  RequestTypeFieldDTO copyWith(
      {List<RequestTypeFieldValueDTO>? defaultValues,
      String? description,
      String? fieldId,
      JsonTypeBean? jiraSchema,
      String? name,
      List<String>? presetValues,
      bool? required,
      List<RequestTypeFieldValueDTO>? validValues,
      bool? visible}) {
    return RequestTypeFieldDTO(
      defaultValues: defaultValues ?? this.defaultValues,
      description: description ?? this.description,
      fieldId: fieldId ?? this.fieldId,
      jiraSchema: jiraSchema ?? this.jiraSchema,
      name: name ?? this.name,
      presetValues: presetValues ?? this.presetValues,
      required: required ?? this.required,
      validValues: validValues ?? this.validValues,
      visible: visible ?? this.visible,
    );
  }
}

class RequestTypeFieldValueDTO {
  /// List of child fields.
  final List<RequestTypeFieldValueDTO> children;

  /// Label for the field.
  final String? label;

  /// Value of the field.
  final String? value;

  RequestTypeFieldValueDTO(
      {List<RequestTypeFieldValueDTO>? children, this.label, this.value})
      : children = children ?? [];

  factory RequestTypeFieldValueDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeFieldValueDTO(
      children: (json[r'children'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      label: json[r'label'] as String?,
      value: json[r'value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var children = this.children;
    var label = this.label;
    var value = this.value;

    final json = <String, Object?>{};
    json[r'children'] = children.map((i) => i.toJson()).toList();
    if (label != null) {
      json[r'label'] = label;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    return json;
  }

  RequestTypeFieldValueDTO copyWith(
      {List<RequestTypeFieldValueDTO>? children,
      String? label,
      String? value}) {
    return RequestTypeFieldValueDTO(
      children: children ?? this.children,
      label: label ?? this.label,
      value: value ?? this.value,
    );
  }
}

class RequestTypeGroupDTO {
  /// ID of the request type group
  final String? id;

  /// Name of the request type group.
  final String? name;

  RequestTypeGroupDTO({this.id, this.name});

  factory RequestTypeGroupDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeGroupDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  RequestTypeGroupDTO copyWith({String? id, String? name}) {
    return RequestTypeGroupDTO(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}

class RequestTypeIconDTO {
  /// Map of the URLs for the request type icons.
  final RequestTypeIconLinkDTO? links;

  /// ID of the request type icon.
  final String? id;

  RequestTypeIconDTO({this.links, this.id});

  factory RequestTypeIconDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeIconDTO(
      links: json[r'_links'] != null
          ? RequestTypeIconLinkDTO.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var id = this.id;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    return json;
  }

  RequestTypeIconDTO copyWith({RequestTypeIconLinkDTO? links, String? id}) {
    return RequestTypeIconDTO(
      links: links ?? this.links,
      id: id ?? this.id,
    );
  }
}

class RequestTypeIconLinkDTO {
  /// URLs for the request type icons.
  final Map<String, dynamic>? iconUrls;

  RequestTypeIconLinkDTO({this.iconUrls});

  factory RequestTypeIconLinkDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeIconLinkDTO(
      iconUrls: json[r'iconUrls'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var iconUrls = this.iconUrls;

    final json = <String, Object?>{};
    if (iconUrls != null) {
      json[r'iconUrls'] = iconUrls;
    }
    return json;
  }

  RequestTypeIconLinkDTO copyWith({Map<String, dynamic>? iconUrls}) {
    return RequestTypeIconLinkDTO(
      iconUrls: iconUrls ?? this.iconUrls,
    );
  }
}

class SelfLinkDTO {
  final String? self;

  SelfLinkDTO({this.self});

  factory SelfLinkDTO.fromJson(Map<String, Object?> json) {
    return SelfLinkDTO(
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

  SelfLinkDTO copyWith({String? self}) {
    return SelfLinkDTO(
      self: self ?? this.self,
    );
  }
}

class ServiceDeskCustomerDTO {
  /// List of users, specified by account IDs, to add to or remove from a
  /// service desk.
  final List<String> accountIds;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  ServiceDeskCustomerDTO({List<String>? accountIds, List<String>? usernames})
      : accountIds = accountIds ?? [],
        usernames = usernames ?? [];

  factory ServiceDeskCustomerDTO.fromJson(Map<String, Object?> json) {
    return ServiceDeskCustomerDTO(
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var accountIds = this.accountIds;
    var usernames = this.usernames;

    final json = <String, Object?>{};
    json[r'accountIds'] = accountIds;
    json[r'usernames'] = usernames;
    return json;
  }

  ServiceDeskCustomerDTO copyWith(
      {List<String>? accountIds, List<String>? usernames}) {
    return ServiceDeskCustomerDTO(
      accountIds: accountIds ?? this.accountIds,
      usernames: usernames ?? this.usernames,
    );
  }
}

class ServiceDeskDTO {
  /// REST API URL to the service desk.
  final SelfLinkDTO? links;

  /// ID of the service desk.
  final String? id;

  /// ID of the peer project for the service desk.
  final String? projectId;

  /// Key of the peer project of the service desk.
  final String? projectKey;

  /// Name of the project and service desk.
  final String? projectName;

  ServiceDeskDTO(
      {this.links, this.id, this.projectId, this.projectKey, this.projectName});

  factory ServiceDeskDTO.fromJson(Map<String, Object?> json) {
    return ServiceDeskDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      projectId: json[r'projectId'] as String?,
      projectKey: json[r'projectKey'] as String?,
      projectName: json[r'projectName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var id = this.id;
    var projectId = this.projectId;
    var projectKey = this.projectKey;
    var projectName = this.projectName;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (projectId != null) {
      json[r'projectId'] = projectId;
    }
    if (projectKey != null) {
      json[r'projectKey'] = projectKey;
    }
    if (projectName != null) {
      json[r'projectName'] = projectName;
    }
    return json;
  }

  ServiceDeskDTO copyWith(
      {SelfLinkDTO? links,
      String? id,
      String? projectId,
      String? projectKey,
      String? projectName}) {
    return ServiceDeskDTO(
      links: links ?? this.links,
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      projectKey: projectKey ?? this.projectKey,
      projectName: projectName ?? this.projectName,
    );
  }
}

/// Details about the operations available in this version.
class SimpleLink {
  final String? href;
  final String? iconClass;
  final String? id;
  final String? label;
  final String? styleClass;
  final String? title;
  final int? weight;

  SimpleLink(
      {this.href,
      this.iconClass,
      this.id,
      this.label,
      this.styleClass,
      this.title,
      this.weight});

  factory SimpleLink.fromJson(Map<String, Object?> json) {
    return SimpleLink(
      href: json[r'href'] as String?,
      iconClass: json[r'iconClass'] as String?,
      id: json[r'id'] as String?,
      label: json[r'label'] as String?,
      styleClass: json[r'styleClass'] as String?,
      title: json[r'title'] as String?,
      weight: (json[r'weight'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var href = this.href;
    var iconClass = this.iconClass;
    var id = this.id;
    var label = this.label;
    var styleClass = this.styleClass;
    var title = this.title;
    var weight = this.weight;

    final json = <String, Object?>{};
    if (href != null) {
      json[r'href'] = href;
    }
    if (iconClass != null) {
      json[r'iconClass'] = iconClass;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (styleClass != null) {
      json[r'styleClass'] = styleClass;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    return json;
  }

  SimpleLink copyWith(
      {String? href,
      String? iconClass,
      String? id,
      String? label,
      String? styleClass,
      String? title,
      int? weight}) {
    return SimpleLink(
      href: href ?? this.href,
      iconClass: iconClass ?? this.iconClass,
      id: id ?? this.id,
      label: label ?? this.label,
      styleClass: styleClass ?? this.styleClass,
      title: title ?? this.title,
      weight: weight ?? this.weight,
    );
  }
}

class SlaInformationCompletedCycleDTO {
  /// Time and date at which the SLA cycle breached in case of completed
  /// breached cycle or would have breached in case of non-breached completed
  /// cycle.
  final DateDTO? breachTime;

  /// Indicates if the SLA (duration) was exceeded (true) or not (false).
  final bool breached;

  /// Duration in which the service was completed.
  final DurationDTO? elapsedTime;

  /// Duration within which the service should have been completed.
  final DurationDTO? goalDuration;

  /// Duration remaining after the service was completed.
  final DurationDTO? remainingTime;

  /// Time and date at which the SLA cycle started.
  final DateDTO? startTime;

  /// Time and date at which the SLA cycle completed.
  final DateDTO? stopTime;

  SlaInformationCompletedCycleDTO(
      {this.breachTime,
      bool? breached,
      this.elapsedTime,
      this.goalDuration,
      this.remainingTime,
      this.startTime,
      this.stopTime})
      : breached = breached ?? false;

  factory SlaInformationCompletedCycleDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationCompletedCycleDTO(
      breachTime: json[r'breachTime'] != null
          ? DateDTO.fromJson(json[r'breachTime']! as Map<String, Object?>)
          : null,
      breached: json[r'breached'] as bool? ?? false,
      elapsedTime: json[r'elapsedTime'] != null
          ? DurationDTO.fromJson(json[r'elapsedTime']! as Map<String, Object?>)
          : null,
      goalDuration: json[r'goalDuration'] != null
          ? DurationDTO.fromJson(json[r'goalDuration']! as Map<String, Object?>)
          : null,
      remainingTime: json[r'remainingTime'] != null
          ? DurationDTO.fromJson(
              json[r'remainingTime']! as Map<String, Object?>)
          : null,
      startTime: json[r'startTime'] != null
          ? DateDTO.fromJson(json[r'startTime']! as Map<String, Object?>)
          : null,
      stopTime: json[r'stopTime'] != null
          ? DateDTO.fromJson(json[r'stopTime']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var breachTime = this.breachTime;
    var breached = this.breached;
    var elapsedTime = this.elapsedTime;
    var goalDuration = this.goalDuration;
    var remainingTime = this.remainingTime;
    var startTime = this.startTime;
    var stopTime = this.stopTime;

    final json = <String, Object?>{};
    if (breachTime != null) {
      json[r'breachTime'] = breachTime.toJson();
    }
    json[r'breached'] = breached;
    if (elapsedTime != null) {
      json[r'elapsedTime'] = elapsedTime.toJson();
    }
    if (goalDuration != null) {
      json[r'goalDuration'] = goalDuration.toJson();
    }
    if (remainingTime != null) {
      json[r'remainingTime'] = remainingTime.toJson();
    }
    if (startTime != null) {
      json[r'startTime'] = startTime.toJson();
    }
    if (stopTime != null) {
      json[r'stopTime'] = stopTime.toJson();
    }
    return json;
  }

  SlaInformationCompletedCycleDTO copyWith(
      {DateDTO? breachTime,
      bool? breached,
      DurationDTO? elapsedTime,
      DurationDTO? goalDuration,
      DurationDTO? remainingTime,
      DateDTO? startTime,
      DateDTO? stopTime}) {
    return SlaInformationCompletedCycleDTO(
      breachTime: breachTime ?? this.breachTime,
      breached: breached ?? this.breached,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      goalDuration: goalDuration ?? this.goalDuration,
      remainingTime: remainingTime ?? this.remainingTime,
      startTime: startTime ?? this.startTime,
      stopTime: stopTime ?? this.stopTime,
    );
  }
}

class SlaInformationDTO {
  /// REST API URL for the SLA.
  final SelfLinkDTO? links;

  /// List of completed cycles for the SLA.
  final List<SlaInformationCompletedCycleDTO> completedCycles;

  /// ID of the Service Level Agreement (SLA).
  final String? id;

  /// Description of the SLA.
  final String? name;

  /// Details of the active cycle for the SLA.
  final SlaInformationOngoingCycleDTO? ongoingCycle;

  /// Format in which SLA is to be displayed in the UI
  final String? slaDisplayFormat;

  SlaInformationDTO(
      {this.links,
      List<SlaInformationCompletedCycleDTO>? completedCycles,
      this.id,
      this.name,
      this.ongoingCycle,
      this.slaDisplayFormat})
      : completedCycles = completedCycles ?? [];

  factory SlaInformationDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      completedCycles: (json[r'completedCycles'] as List<Object?>?)
              ?.map((i) => SlaInformationCompletedCycleDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      ongoingCycle: json[r'ongoingCycle'] != null
          ? SlaInformationOngoingCycleDTO.fromJson(
              json[r'ongoingCycle']! as Map<String, Object?>)
          : null,
      slaDisplayFormat: json[r'slaDisplayFormat'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var completedCycles = this.completedCycles;
    var id = this.id;
    var name = this.name;
    var ongoingCycle = this.ongoingCycle;
    var slaDisplayFormat = this.slaDisplayFormat;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    json[r'completedCycles'] = completedCycles.map((i) => i.toJson()).toList();
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (ongoingCycle != null) {
      json[r'ongoingCycle'] = ongoingCycle.toJson();
    }
    if (slaDisplayFormat != null) {
      json[r'slaDisplayFormat'] = slaDisplayFormat;
    }
    return json;
  }

  SlaInformationDTO copyWith(
      {SelfLinkDTO? links,
      List<SlaInformationCompletedCycleDTO>? completedCycles,
      String? id,
      String? name,
      SlaInformationOngoingCycleDTO? ongoingCycle,
      String? slaDisplayFormat}) {
    return SlaInformationDTO(
      links: links ?? this.links,
      completedCycles: completedCycles ?? this.completedCycles,
      id: id ?? this.id,
      name: name ?? this.name,
      ongoingCycle: ongoingCycle ?? this.ongoingCycle,
      slaDisplayFormat: slaDisplayFormat ?? this.slaDisplayFormat,
    );
  }
}

class SlaInformationOngoingCycleDTO {
  /// Time and date at which the SLA cycle would have breached its limit.
  final DateDTO? breachTime;

  /// Indicates whether the SLA has been breached (true) or not (false).
  final bool breached;

  /// Duration of the service.
  final DurationDTO? elapsedTime;

  /// Duration within which the service should be completed.
  final DurationDTO? goalDuration;

  /// Indicates whether the SLA is paused (true) or not (false).
  final bool paused;

  /// Duration remaining in which to complete the service.
  final DurationDTO? remainingTime;

  /// Time and date at which the SLA cycle started.
  final DateDTO? startTime;

  /// Indicates whether the SLA it timed during calendared working hours only
  /// (true) or not (false).
  final bool withinCalendarHours;

  SlaInformationOngoingCycleDTO(
      {this.breachTime,
      bool? breached,
      this.elapsedTime,
      this.goalDuration,
      bool? paused,
      this.remainingTime,
      this.startTime,
      bool? withinCalendarHours})
      : breached = breached ?? false,
        paused = paused ?? false,
        withinCalendarHours = withinCalendarHours ?? false;

  factory SlaInformationOngoingCycleDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationOngoingCycleDTO(
      breachTime: json[r'breachTime'] != null
          ? DateDTO.fromJson(json[r'breachTime']! as Map<String, Object?>)
          : null,
      breached: json[r'breached'] as bool? ?? false,
      elapsedTime: json[r'elapsedTime'] != null
          ? DurationDTO.fromJson(json[r'elapsedTime']! as Map<String, Object?>)
          : null,
      goalDuration: json[r'goalDuration'] != null
          ? DurationDTO.fromJson(json[r'goalDuration']! as Map<String, Object?>)
          : null,
      paused: json[r'paused'] as bool? ?? false,
      remainingTime: json[r'remainingTime'] != null
          ? DurationDTO.fromJson(
              json[r'remainingTime']! as Map<String, Object?>)
          : null,
      startTime: json[r'startTime'] != null
          ? DateDTO.fromJson(json[r'startTime']! as Map<String, Object?>)
          : null,
      withinCalendarHours: json[r'withinCalendarHours'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var breachTime = this.breachTime;
    var breached = this.breached;
    var elapsedTime = this.elapsedTime;
    var goalDuration = this.goalDuration;
    var paused = this.paused;
    var remainingTime = this.remainingTime;
    var startTime = this.startTime;
    var withinCalendarHours = this.withinCalendarHours;

    final json = <String, Object?>{};
    if (breachTime != null) {
      json[r'breachTime'] = breachTime.toJson();
    }
    json[r'breached'] = breached;
    if (elapsedTime != null) {
      json[r'elapsedTime'] = elapsedTime.toJson();
    }
    if (goalDuration != null) {
      json[r'goalDuration'] = goalDuration.toJson();
    }
    json[r'paused'] = paused;
    if (remainingTime != null) {
      json[r'remainingTime'] = remainingTime.toJson();
    }
    if (startTime != null) {
      json[r'startTime'] = startTime.toJson();
    }
    json[r'withinCalendarHours'] = withinCalendarHours;
    return json;
  }

  SlaInformationOngoingCycleDTO copyWith(
      {DateDTO? breachTime,
      bool? breached,
      DurationDTO? elapsedTime,
      DurationDTO? goalDuration,
      bool? paused,
      DurationDTO? remainingTime,
      DateDTO? startTime,
      bool? withinCalendarHours}) {
    return SlaInformationOngoingCycleDTO(
      breachTime: breachTime ?? this.breachTime,
      breached: breached ?? this.breached,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      goalDuration: goalDuration ?? this.goalDuration,
      paused: paused ?? this.paused,
      remainingTime: remainingTime ?? this.remainingTime,
      startTime: startTime ?? this.startTime,
      withinCalendarHours: withinCalendarHours ?? this.withinCalendarHours,
    );
  }
}

class SoftwareInfoDTO {
  /// REST API URL of the instance.
  final SelfLinkDTO? links;

  /// Reference of the change set included in the build.
  final String? buildChangeSet;

  /// Date of the current build.
  final DateDTO? buildDate;

  /// Indicates whether the instance is licensed (true) or not (false).
  final bool isLicensedForUse;

  /// Jira Platform version upon which Service Desk is based.
  final String? platformVersion;

  /// Jira Service Management version.
  final String? version;

  SoftwareInfoDTO(
      {this.links,
      this.buildChangeSet,
      this.buildDate,
      bool? isLicensedForUse,
      this.platformVersion,
      this.version})
      : isLicensedForUse = isLicensedForUse ?? false;

  factory SoftwareInfoDTO.fromJson(Map<String, Object?> json) {
    return SoftwareInfoDTO(
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      buildChangeSet: json[r'buildChangeSet'] as String?,
      buildDate: json[r'buildDate'] != null
          ? DateDTO.fromJson(json[r'buildDate']! as Map<String, Object?>)
          : null,
      isLicensedForUse: json[r'isLicensedForUse'] as bool? ?? false,
      platformVersion: json[r'platformVersion'] as String?,
      version: json[r'version'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var buildChangeSet = this.buildChangeSet;
    var buildDate = this.buildDate;
    var isLicensedForUse = this.isLicensedForUse;
    var platformVersion = this.platformVersion;
    var version = this.version;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (buildChangeSet != null) {
      json[r'buildChangeSet'] = buildChangeSet;
    }
    if (buildDate != null) {
      json[r'buildDate'] = buildDate.toJson();
    }
    json[r'isLicensedForUse'] = isLicensedForUse;
    if (platformVersion != null) {
      json[r'platformVersion'] = platformVersion;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    return json;
  }

  SoftwareInfoDTO copyWith(
      {SelfLinkDTO? links,
      String? buildChangeSet,
      DateDTO? buildDate,
      bool? isLicensedForUse,
      String? platformVersion,
      String? version}) {
    return SoftwareInfoDTO(
      links: links ?? this.links,
      buildChangeSet: buildChangeSet ?? this.buildChangeSet,
      buildDate: buildDate ?? this.buildDate,
      isLicensedForUse: isLicensedForUse ?? this.isLicensedForUse,
      platformVersion: platformVersion ?? this.platformVersion,
      version: version ?? this.version,
    );
  }
}

class SourceDTO {
  /// Type of the knowledge base source
  final SourceDTOType? type;

  SourceDTO({this.type});

  factory SourceDTO.fromJson(Map<String, Object?> json) {
    return SourceDTO(
      type: json[r'type'] != null
          ? SourceDTOType.fromValue(json[r'type']! as String)
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

  SourceDTO copyWith({SourceDTOType? type}) {
    return SourceDTO(
      type: type ?? this.type,
    );
  }
}

class SourceDTOType {
  static const confluence = SourceDTOType._('confluence');

  static const values = [
    confluence,
  ];
  final String value;

  const SourceDTOType._(this.value);

  static SourceDTOType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => SourceDTOType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// A status category.
class StatusCategory {
  /// The name of the color used to represent the status category.
  final String? colorName;

  /// The ID of the status category.
  final int? id;

  /// The key of the status category.
  final String? key;

  /// The name of the status category.
  final String? name;

  /// The URL of the status category.
  final String? self;

  StatusCategory({this.colorName, this.id, this.key, this.name, this.self});

  factory StatusCategory.fromJson(Map<String, Object?> json) {
    return StatusCategory(
      colorName: json[r'colorName'] as String?,
      id: (json[r'id'] as num?)?.toInt(),
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var colorName = this.colorName;
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (colorName != null) {
      json[r'colorName'] = colorName;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  StatusCategory copyWith(
      {String? colorName, int? id, String? key, String? name, String? self}) {
    return StatusCategory(
      colorName: colorName ?? this.colorName,
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

/// A status.
class StatusDetails {
  /// The description of the status.
  final String? description;

  /// The URL of the icon used to represent the status.
  final String? iconUrl;

  /// The ID of the status.
  final String? id;

  /// The name of the status.
  final String? name;

  /// The URL of the status.
  final String? self;

  /// The category assigned to the status.
  final StatusCategory? statusCategory;

  StatusDetails(
      {this.description,
      this.iconUrl,
      this.id,
      this.name,
      this.self,
      this.statusCategory});

  factory StatusDetails.fromJson(Map<String, Object?> json) {
    return StatusDetails(
      description: json[r'description'] as String?,
      iconUrl: json[r'iconUrl'] as String?,
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
      statusCategory: json[r'statusCategory'] != null
          ? StatusCategory.fromJson(
              json[r'statusCategory']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var description = this.description;
    var iconUrl = this.iconUrl;
    var id = this.id;
    var name = this.name;
    var self = this.self;
    var statusCategory = this.statusCategory;

    final json = <String, Object?>{};
    if (description != null) {
      json[r'description'] = description;
    }
    if (iconUrl != null) {
      json[r'iconUrl'] = iconUrl;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (statusCategory != null) {
      json[r'statusCategory'] = statusCategory.toJson();
    }
    return json;
  }

  StatusDetails copyWith(
      {String? description,
      String? iconUrl,
      String? id,
      String? name,
      String? self,
      StatusCategory? statusCategory}) {
    return StatusDetails(
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      id: id ?? this.id,
      name: name ?? this.name,
      self: self ?? this.self,
      statusCategory: statusCategory ?? this.statusCategory,
    );
  }
}

class TemporaryAttachment {
  final String? temporaryAttachmentId;
  final String? fileName;

  TemporaryAttachment({this.temporaryAttachmentId, this.fileName});

  factory TemporaryAttachment.fromJson(Map<String, Object?> json) {
    return TemporaryAttachment(
      temporaryAttachmentId: json[r'temporaryAttachmentId'] as String?,
      fileName: json[r'fileName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var temporaryAttachmentId = this.temporaryAttachmentId;
    var fileName = this.fileName;

    final json = <String, Object?>{};
    if (temporaryAttachmentId != null) {
      json[r'temporaryAttachmentId'] = temporaryAttachmentId;
    }
    if (fileName != null) {
      json[r'fileName'] = fileName;
    }
    return json;
  }

  TemporaryAttachment copyWith(
      {String? temporaryAttachmentId, String? fileName}) {
    return TemporaryAttachment(
      temporaryAttachmentId:
          temporaryAttachmentId ?? this.temporaryAttachmentId,
      fileName: fileName ?? this.fileName,
    );
  }
}

class TemporaryAttachments {
  final List<TemporaryAttachment> temporaryAttachments;

  TemporaryAttachments({List<TemporaryAttachment>? temporaryAttachments})
      : temporaryAttachments = temporaryAttachments ?? [];

  factory TemporaryAttachments.fromJson(Map<String, Object?> json) {
    return TemporaryAttachments(
      temporaryAttachments: (json[r'temporaryAttachments'] as List<Object?>?)
              ?.map((i) => TemporaryAttachment.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var temporaryAttachments = this.temporaryAttachments;

    final json = <String, Object?>{};
    json[r'temporaryAttachments'] =
        temporaryAttachments.map((i) => i.toJson()).toList();
    return json;
  }

  TemporaryAttachments copyWith(
      {List<TemporaryAttachment>? temporaryAttachments}) {
    return TemporaryAttachments(
      temporaryAttachments: temporaryAttachments ?? this.temporaryAttachments,
    );
  }
}

class UserDTO {
  /// URLs for the customer record and related items.
  final UserLinkDTO? links;

  /// The accountId of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// Indicates if the customer is active (true) or inactive (false)
  final bool active;

  /// Customer's name for display in a UI. Depending on the customer’s privacy
  /// settings, this may return an alternative value.
  final String? displayName;

  /// Customer's email address. Depending on the customer’s privacy settings,
  /// this may be returned as null.
  final String? emailAddress;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? key;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? name;

  /// Customer time zone. Depending on the customer’s privacy settings, this may
  /// be returned as null.
  final String? timeZone;

  UserDTO(
      {this.links,
      this.accountId,
      bool? active,
      this.displayName,
      this.emailAddress,
      this.key,
      this.name,
      this.timeZone})
      : active = active ?? false;

  factory UserDTO.fromJson(Map<String, Object?> json) {
    return UserDTO(
      links: json[r'_links'] != null
          ? UserLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
      accountId: json[r'accountId'] as String?,
      active: json[r'active'] as bool? ?? false,
      displayName: json[r'displayName'] as String?,
      emailAddress: json[r'emailAddress'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      timeZone: json[r'timeZone'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var links = this.links;
    var accountId = this.accountId;
    var active = this.active;
    var displayName = this.displayName;
    var emailAddress = this.emailAddress;
    var key = this.key;
    var name = this.name;
    var timeZone = this.timeZone;

    final json = <String, Object?>{};
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    json[r'active'] = active;
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    return json;
  }

  UserDTO copyWith(
      {UserLinkDTO? links,
      String? accountId,
      bool? active,
      String? displayName,
      String? emailAddress,
      String? key,
      String? name,
      String? timeZone}) {
    return UserDTO(
      links: links ?? this.links,
      accountId: accountId ?? this.accountId,
      active: active ?? this.active,
      displayName: displayName ?? this.displayName,
      emailAddress: emailAddress ?? this.emailAddress,
      key: key ?? this.key,
      name: name ?? this.name,
      timeZone: timeZone ?? this.timeZone,
    );
  }
}

/// User details permitted by the user's Atlassian Account privacy settings.
/// However, be aware of these exceptions:
///
///  *  User record deleted from Atlassian: This occurs as the result of a right
/// to be forgotten request. In this case, `displayName` provides an indication
/// and other parameters have default values or are blank (for example, email is
/// blank).
///  *  User record corrupted: This occurs as a results of events such as a
/// server import and can only happen to deleted users. In this case,
/// `accountId` returns *unknown* and all other parameters have fallback values.
///  *  User record unavailable: This usually occurs due to an internal service
/// outage. In this case, all parameters have fallback values.
class UserDetails {
  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// The type of account represented by this user. This will be one of
  /// 'atlassian' (normal users), 'app' (application user) or 'customer' (Jira
  /// Service Desk customer user)
  final String? accountType;

  /// Whether the user is active.
  final bool active;

  /// The avatars of the user.
  final AvatarUrlsBean? avatarUrls;

  /// The display name of the user. Depending on the user’s privacy settings,
  /// this may return an alternative value.
  final String? displayName;

  /// The email address of the user. Depending on the user’s privacy settings,
  /// this may be returned as null.
  final String? emailAddress;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? key;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? name;

  /// The URL of the user.
  final String? self;

  /// The time zone specified in the user's profile. Depending on the user’s
  /// privacy settings, this may be returned as null.
  final String? timeZone;

  UserDetails(
      {this.accountId,
      this.accountType,
      bool? active,
      this.avatarUrls,
      this.displayName,
      this.emailAddress,
      this.key,
      this.name,
      this.self,
      this.timeZone})
      : active = active ?? false;

  factory UserDetails.fromJson(Map<String, Object?> json) {
    return UserDetails(
      accountId: json[r'accountId'] as String?,
      accountType: json[r'accountType'] as String?,
      active: json[r'active'] as bool? ?? false,
      avatarUrls: json[r'avatarUrls'] != null
          ? AvatarUrlsBean.fromJson(
              json[r'avatarUrls']! as Map<String, Object?>)
          : null,
      displayName: json[r'displayName'] as String?,
      emailAddress: json[r'emailAddress'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
      timeZone: json[r'timeZone'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var accountType = this.accountType;
    var active = this.active;
    var avatarUrls = this.avatarUrls;
    var displayName = this.displayName;
    var emailAddress = this.emailAddress;
    var key = this.key;
    var name = this.name;
    var self = this.self;
    var timeZone = this.timeZone;

    final json = <String, Object?>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (accountType != null) {
      json[r'accountType'] = accountType;
    }
    json[r'active'] = active;
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls.toJson();
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    return json;
  }

  UserDetails copyWith(
      {String? accountId,
      String? accountType,
      bool? active,
      AvatarUrlsBean? avatarUrls,
      String? displayName,
      String? emailAddress,
      String? key,
      String? name,
      String? self,
      String? timeZone}) {
    return UserDetails(
      accountId: accountId ?? this.accountId,
      accountType: accountType ?? this.accountType,
      active: active ?? this.active,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      displayName: displayName ?? this.displayName,
      emailAddress: emailAddress ?? this.emailAddress,
      key: key ?? this.key,
      name: name ?? this.name,
      self: self ?? this.self,
      timeZone: timeZone ?? this.timeZone,
    );
  }
}

class UserLinkDTO {
  /// Links to the various sizes of the customer's avatar. Note that this
  /// property is deprecated, and will be removed in future versions.
  final Map<String, dynamic>? avatarUrls;

  /// REST API URL for the customer.
  final String? jiraRest;
  final String? self;

  UserLinkDTO({this.avatarUrls, this.jiraRest, this.self});

  factory UserLinkDTO.fromJson(Map<String, Object?> json) {
    return UserLinkDTO(
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
      jiraRest: json[r'jiraRest'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var avatarUrls = this.avatarUrls;
    var jiraRest = this.jiraRest;
    var self = this.self;

    final json = <String, Object?>{};
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  UserLinkDTO copyWith(
      {Map<String, dynamic>? avatarUrls, String? jiraRest, String? self}) {
    return UserLinkDTO(
      avatarUrls: avatarUrls ?? this.avatarUrls,
      jiraRest: jiraRest ?? this.jiraRest,
      self: self ?? this.self,
    );
  }
}

class UsersOrganizationUpdateDTO {
  /// List of customers, specific by account IDs, to add to or remove from the
  /// organization.
  final List<String> accountIds;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  UsersOrganizationUpdateDTO(
      {List<String>? accountIds, List<String>? usernames})
      : accountIds = accountIds ?? [],
        usernames = usernames ?? [];

  factory UsersOrganizationUpdateDTO.fromJson(Map<String, Object?> json) {
    return UsersOrganizationUpdateDTO(
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var accountIds = this.accountIds;
    var usernames = this.usernames;

    final json = <String, Object?>{};
    json[r'accountIds'] = accountIds;
    json[r'usernames'] = usernames;
    return json;
  }

  UsersOrganizationUpdateDTO copyWith(
      {List<String>? accountIds, List<String>? usernames}) {
    return UsersOrganizationUpdateDTO(
      accountIds: accountIds ?? this.accountIds,
      usernames: usernames ?? this.usernames,
    );
  }
}
