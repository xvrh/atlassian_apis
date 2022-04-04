// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

class ServiceManagementApi {
  final ApiClient _client;

  ServiceManagementApi(this._client);

  late final customer = CustomerApi(_client);

  late final info = InfoApi(_client);

  late final insight = InsightApi(_client);

  late final knowledgebase = KnowledgebaseApi(_client);

  late final organization = OrganizationApi(_client);

  late final request = RequestApi(_client);

  late final requesttype = RequesttypeApi(_client);

  late final servicedesk = ServicedeskApi(_client);

  void close() => _client.close();
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
  Future<UserDTO> createCustomer({required CustomerCreateDTO body}) async {
    return UserDTO.fromJson(await _client.send(
      'post',
      'rest/servicedeskapi/customer',
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

class InsightApi {
  final ApiClient _client;

  InsightApi(this._client);

  /// Returns a list of Insight workspace IDs. Include a workspace ID in the
  /// path to access the
  /// [Insight REST APIs](https://developer.atlassian.com/cloud/insight/rest).
  ///
  /// **[Permissions](#permissions) required**: Any
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
  /// **[Permissions](#permissions) required**: Permission to access the service
  /// desk.
  Future<RequestTypeDTO> getRequestTypeById(
      {required String serviceDeskId,
      required int requestTypeId,
      List<String>? expand}) async {
    return RequestTypeDTO.fromJson(await _client.send(
      'get',
      'rest/servicedeskapi/servicedesk/{serviceDeskId}/requesttype/{requestTypeId}',
      pathParameters: {
        'serviceDeskId': serviceDeskId,
        'requestTypeId': '$requestTypeId',
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
  /// ID of the approval.
  final String? id;

  /// Description of the approval being sought or provided.
  final String? name;

  /// Outcome of the approval, based on the approvals provided by all approvers.
  final ApprovalDTOFinalDecision? finalDecision;

  /// Indicates whether the user making the request is one of the approvers and
  /// can respond to the approval (true) or not (false).
  final bool canAnswerApproval;

  /// Detailed list of the users who must provide a response to the approval.
  final List<ApproverDTO> approvers;

  /// Date the approval was created.
  final DateDTO? createdDate;

  /// Date the approval was completed.
  final DateDTO? completedDate;

  /// The REST API URL of the approval.
  final SelfLinkDTO? links;

  ApprovalDTO(
      {this.id,
      this.name,
      this.finalDecision,
      bool? canAnswerApproval,
      List<ApproverDTO>? approvers,
      this.createdDate,
      this.completedDate,
      this.links})
      : canAnswerApproval = canAnswerApproval ?? false,
        approvers = approvers ?? [];

  factory ApprovalDTO.fromJson(Map<String, Object?> json) {
    return ApprovalDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      finalDecision: json[r'finalDecision'] != null
          ? ApprovalDTOFinalDecision.fromValue(
              json[r'finalDecision']! as String)
          : null,
      canAnswerApproval: json[r'canAnswerApproval'] as bool? ?? false,
      approvers: (json[r'approvers'] as List<Object?>?)
              ?.map((i) =>
                  ApproverDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      createdDate: json[r'createdDate'] != null
          ? DateDTO.fromJson(json[r'createdDate']! as Map<String, Object?>)
          : null,
      completedDate: json[r'completedDate'] != null
          ? DateDTO.fromJson(json[r'completedDate']! as Map<String, Object?>)
          : null,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var finalDecision = this.finalDecision;
    var canAnswerApproval = this.canAnswerApproval;
    var approvers = this.approvers;
    var createdDate = this.createdDate;
    var completedDate = this.completedDate;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (finalDecision != null) {
      json[r'finalDecision'] = finalDecision.value;
    }
    json[r'canAnswerApproval'] = canAnswerApproval;
    json[r'approvers'] = approvers.map((i) => i.toJson()).toList();
    if (createdDate != null) {
      json[r'createdDate'] = createdDate.toJson();
    }
    if (completedDate != null) {
      json[r'completedDate'] = completedDate.toJson();
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  ApprovalDTO copyWith(
      {String? id,
      String? name,
      ApprovalDTOFinalDecision? finalDecision,
      bool? canAnswerApproval,
      List<ApproverDTO>? approvers,
      DateDTO? createdDate,
      DateDTO? completedDate,
      SelfLinkDTO? links}) {
    return ApprovalDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      finalDecision: finalDecision ?? this.finalDecision,
      canAnswerApproval: canAnswerApproval ?? this.canAnswerApproval,
      approvers: approvers ?? this.approvers,
      createdDate: createdDate ?? this.createdDate,
      completedDate: completedDate ?? this.completedDate,
      links: links ?? this.links,
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
  /// Title of the article.
  final String? title;

  /// Excerpt of the article which matches the given query string.
  final String? excerpt;

  /// Source of the article.
  final SourceDTO? source;
  final ContentDTO? content;

  ArticleDTO({this.title, this.excerpt, this.source, this.content});

  factory ArticleDTO.fromJson(Map<String, Object?> json) {
    return ArticleDTO(
      title: json[r'title'] as String?,
      excerpt: json[r'excerpt'] as String?,
      source: json[r'source'] != null
          ? SourceDTO.fromJson(json[r'source']! as Map<String, Object?>)
          : null,
      content: json[r'content'] != null
          ? ContentDTO.fromJson(json[r'content']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var title = this.title;
    var excerpt = this.excerpt;
    var source = this.source;
    var content = this.content;

    final json = <String, Object?>{};
    if (title != null) {
      json[r'title'] = title;
    }
    if (excerpt != null) {
      json[r'excerpt'] = excerpt;
    }
    if (source != null) {
      json[r'source'] = source.toJson();
    }
    if (content != null) {
      json[r'content'] = content.toJson();
    }
    return json;
  }

  ArticleDTO copyWith(
      {String? title,
      String? excerpt,
      SourceDTO? source,
      ContentDTO? content}) {
    return ArticleDTO(
      title: title ?? this.title,
      excerpt: excerpt ?? this.excerpt,
      source: source ?? this.source,
      content: content ?? this.content,
    );
  }
}

class AttachmentCreateDTO {
  /// List of IDs for the temporary attachments to be added to the customer
  /// request.
  final List<String> temporaryAttachmentIds;

  /// Comment about the attachments.
  final AdditionalCommentDTO? additionalComment;

  /// Indicates whether the attachments are to be public (true) or
  /// private/internal (false).
  final bool public;

  AttachmentCreateDTO(
      {List<String>? temporaryAttachmentIds,
      this.additionalComment,
      bool? public})
      : temporaryAttachmentIds = temporaryAttachmentIds ?? [],
        public = public ?? false;

  factory AttachmentCreateDTO.fromJson(Map<String, Object?> json) {
    return AttachmentCreateDTO(
      temporaryAttachmentIds:
          (json[r'temporaryAttachmentIds'] as List<Object?>?)
                  ?.map((i) => i as String? ?? '')
                  .toList() ??
              [],
      additionalComment: json[r'additionalComment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'additionalComment']! as Map<String, Object?>)
          : null,
      public: json[r'public'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var temporaryAttachmentIds = this.temporaryAttachmentIds;
    var additionalComment = this.additionalComment;
    var public = this.public;

    final json = <String, Object?>{};
    json[r'temporaryAttachmentIds'] = temporaryAttachmentIds;
    if (additionalComment != null) {
      json[r'additionalComment'] = additionalComment.toJson();
    }
    json[r'public'] = public;
    return json;
  }

  AttachmentCreateDTO copyWith(
      {List<String>? temporaryAttachmentIds,
      AdditionalCommentDTO? additionalComment,
      bool? public}) {
    return AttachmentCreateDTO(
      temporaryAttachmentIds:
          temporaryAttachmentIds ?? this.temporaryAttachmentIds,
      additionalComment: additionalComment ?? this.additionalComment,
      public: public ?? this.public,
    );
  }
}

class AttachmentCreateResultDTO {
  /// Details of the comment included with the attachments.
  final CommentDTO? comment;

  /// List of the attachments added.
  final PagedDTOAttachmentDTO? attachments;

  AttachmentCreateResultDTO({this.comment, this.attachments});

  factory AttachmentCreateResultDTO.fromJson(Map<String, Object?> json) {
    return AttachmentCreateResultDTO(
      comment: json[r'comment'] != null
          ? CommentDTO.fromJson(json[r'comment']! as Map<String, Object?>)
          : null,
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var comment = this.comment;
    var attachments = this.attachments;

    final json = <String, Object?>{};
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    return json;
  }

  AttachmentCreateResultDTO copyWith(
      {CommentDTO? comment, PagedDTOAttachmentDTO? attachments}) {
    return AttachmentCreateResultDTO(
      comment: comment ?? this.comment,
      attachments: attachments ?? this.attachments,
    );
  }
}

class AttachmentDTO {
  /// Filename of the item attached.
  final String? filename;

  /// Details of the user who attached the file.
  final UserDTO? author;

  /// Date the attachment was added.
  final DateDTO? created;

  /// Size of the attachment in bytes.
  final int? size;

  /// MIME type of the attachment.
  final String? mimeType;

  /// Various URLs for the attachment.
  final AttachmentLinkDTO? links;

  AttachmentDTO(
      {this.filename,
      this.author,
      this.created,
      this.size,
      this.mimeType,
      this.links});

  factory AttachmentDTO.fromJson(Map<String, Object?> json) {
    return AttachmentDTO(
      filename: json[r'filename'] as String?,
      author: json[r'author'] != null
          ? UserDTO.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      created: json[r'created'] != null
          ? DateDTO.fromJson(json[r'created']! as Map<String, Object?>)
          : null,
      size: (json[r'size'] as num?)?.toInt(),
      mimeType: json[r'mimeType'] as String?,
      links: json[r'_links'] != null
          ? AttachmentLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var filename = this.filename;
    var author = this.author;
    var created = this.created;
    var size = this.size;
    var mimeType = this.mimeType;
    var links = this.links;

    final json = <String, Object?>{};
    if (filename != null) {
      json[r'filename'] = filename;
    }
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (created != null) {
      json[r'created'] = created.toJson();
    }
    if (size != null) {
      json[r'size'] = size;
    }
    if (mimeType != null) {
      json[r'mimeType'] = mimeType;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  AttachmentDTO copyWith(
      {String? filename,
      UserDTO? author,
      DateDTO? created,
      int? size,
      String? mimeType,
      AttachmentLinkDTO? links}) {
    return AttachmentDTO(
      filename: filename ?? this.filename,
      author: author ?? this.author,
      created: created ?? this.created,
      size: size ?? this.size,
      mimeType: mimeType ?? this.mimeType,
      links: links ?? this.links,
    );
  }
}

class AttachmentLinkDTO {
  final String? self;

  /// REST API URL for the attachment
  final String? jiraRest;

  /// URL for the attachment.
  final String? content;

  /// URL for the attachment's thumbnail image.
  final String? thumbnail;

  AttachmentLinkDTO({this.self, this.jiraRest, this.content, this.thumbnail});

  factory AttachmentLinkDTO.fromJson(Map<String, Object?> json) {
    return AttachmentLinkDTO(
      self: json[r'self'] as String?,
      jiraRest: json[r'jiraRest'] as String?,
      content: json[r'content'] as String?,
      thumbnail: json[r'thumbnail'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var jiraRest = this.jiraRest;
    var content = this.content;
    var thumbnail = this.thumbnail;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (content != null) {
      json[r'content'] = content;
    }
    if (thumbnail != null) {
      json[r'thumbnail'] = thumbnail;
    }
    return json;
  }

  AttachmentLinkDTO copyWith(
      {String? self, String? jiraRest, String? content, String? thumbnail}) {
    return AttachmentLinkDTO(
      self: self ?? this.self,
      jiraRest: jiraRest ?? this.jiraRest,
      content: content ?? this.content,
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
  /// Indicates the type of feedback, supported values: `csat`.
  final String? type;

  /// A numeric representation of the rating, this must be an integer value
  /// between 1 and 5.
  final int? rating;

  /// (Optional) The comment provided with this feedback.
  final AdditionalCommentDTO? comment;

  CSATFeedbackFullDTO({this.type, this.rating, this.comment});

  factory CSATFeedbackFullDTO.fromJson(Map<String, Object?> json) {
    return CSATFeedbackFullDTO(
      type: json[r'type'] as String?,
      rating: (json[r'rating'] as num?)?.toInt(),
      comment: json[r'comment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'comment']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var rating = this.rating;
    var comment = this.comment;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (rating != null) {
      json[r'rating'] = rating;
    }
    if (comment != null) {
      json[r'comment'] = comment.toJson();
    }
    return json;
  }

  CSATFeedbackFullDTO copyWith(
      {String? type, int? rating, AdditionalCommentDTO? comment}) {
    return CSATFeedbackFullDTO(
      type: type ?? this.type,
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
    );
  }
}

/// A change item.
class ChangeDetails {
  /// The name of the field changed.
  final String? field;

  /// The type of the field changed.
  final String? fieldtype;

  /// The ID of the field changed.
  final String? fieldId;

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
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangeDetails.fromJson(Map<String, Object?> json) {
    return ChangeDetails(
      field: json[r'field'] as String?,
      fieldtype: json[r'fieldtype'] as String?,
      fieldId: json[r'fieldId'] as String?,
      from: json[r'from'] as String?,
      fromString: json[r'fromString'] as String?,
      to: json[r'to'] as String?,
      toString$: json[r'toString'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var fieldtype = this.fieldtype;
    var fieldId = this.fieldId;
    var from = this.from;
    var fromString = this.fromString;
    var to = this.to;
    var toString$ = this.toString$;

    final json = <String, Object?>{};
    if (field != null) {
      json[r'field'] = field;
    }
    if (fieldtype != null) {
      json[r'fieldtype'] = fieldtype;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
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
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangeDetails(
      field: field ?? this.field,
      fieldtype: fieldtype ?? this.fieldtype,
      fieldId: fieldId ?? this.fieldId,
      from: from ?? this.from,
      fromString: fromString ?? this.fromString,
      to: to ?? this.to,
      toString$: toString$ ?? this.toString$,
    );
  }
}

/// A changelog.
class Changelog {
  /// The ID of the changelog.
  final String? id;

  /// The user who made the change.
  final UserDetails? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The list of items changed.
  final List<ChangeDetails> items;

  /// The history metadata associated with the changed.
  final HistoryMetadata? historyMetadata;

  Changelog(
      {this.id,
      this.author,
      this.created,
      List<ChangeDetails>? items,
      this.historyMetadata})
      : items = items ?? [];

  factory Changelog.fromJson(Map<String, Object?> json) {
    return Changelog(
      id: json[r'id'] as String?,
      author: json[r'author'] != null
          ? UserDetails.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => ChangeDetails.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      historyMetadata: json[r'historyMetadata'] != null
          ? HistoryMetadata.fromJson(
              json[r'historyMetadata']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var author = this.author;
    var created = this.created;
    var items = this.items;
    var historyMetadata = this.historyMetadata;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata.toJson();
    }
    return json;
  }

  Changelog copyWith(
      {String? id,
      UserDetails? author,
      DateTime? created,
      List<ChangeDetails>? items,
      HistoryMetadata? historyMetadata}) {
    return Changelog(
      id: id ?? this.id,
      author: author ?? this.author,
      created: created ?? this.created,
      items: items ?? this.items,
      historyMetadata: historyMetadata ?? this.historyMetadata,
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
  /// ID of the comment.
  final String? id;

  /// Content of the comment.
  final String? body;

  /// The rendered body of the comment.
  final RenderedValueDTO? renderedBody;

  /// Details of the customer who authored the comment.
  final UserDTO? author;

  /// Date the comment was created.
  final DateDTO? created;

  /// List of the attachments included in the comment.
  final PagedDTOAttachmentDTO? attachments;

  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// Indicates whether the comment is public (true) or private/internal
  /// (false).
  final bool public;

  /// REST API URL link to the comment.
  final SelfLinkDTO? links;

  CommentDTO(
      {this.id,
      this.body,
      this.renderedBody,
      this.author,
      this.created,
      this.attachments,
      List<String>? expands,
      bool? public,
      this.links})
      : expands = expands ?? [],
        public = public ?? false;

  factory CommentDTO.fromJson(Map<String, Object?> json) {
    return CommentDTO(
      id: json[r'id'] as String?,
      body: json[r'body'] as String?,
      renderedBody: json[r'renderedBody'] != null
          ? RenderedValueDTO.fromJson(
              json[r'renderedBody']! as Map<String, Object?>)
          : null,
      author: json[r'author'] != null
          ? UserDTO.fromJson(json[r'author']! as Map<String, Object?>)
          : null,
      created: json[r'created'] != null
          ? DateDTO.fromJson(json[r'created']! as Map<String, Object?>)
          : null,
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      public: json[r'public'] as bool? ?? false,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var body = this.body;
    var renderedBody = this.renderedBody;
    var author = this.author;
    var created = this.created;
    var attachments = this.attachments;
    var expands = this.expands;
    var public = this.public;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (renderedBody != null) {
      json[r'renderedBody'] = renderedBody.toJson();
    }
    if (author != null) {
      json[r'author'] = author.toJson();
    }
    if (created != null) {
      json[r'created'] = created.toJson();
    }
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    json[r'_expands'] = expands;
    json[r'public'] = public;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CommentDTO copyWith(
      {String? id,
      String? body,
      RenderedValueDTO? renderedBody,
      UserDTO? author,
      DateDTO? created,
      PagedDTOAttachmentDTO? attachments,
      List<String>? expands,
      bool? public,
      SelfLinkDTO? links}) {
    return CommentDTO(
      id: id ?? this.id,
      body: body ?? this.body,
      renderedBody: renderedBody ?? this.renderedBody,
      author: author ?? this.author,
      created: created ?? this.created,
      attachments: attachments ?? this.attachments,
      expands: expands ?? this.expands,
      public: public ?? this.public,
      links: links ?? this.links,
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
  /// Customer's email address.
  final String? email;

  /// Deprecated, please use 'displayName'.
  final String? fullName;

  /// Customer's name for display in the UI.
  final String? displayName;

  CustomerCreateDTO({this.email, this.fullName, this.displayName});

  factory CustomerCreateDTO.fromJson(Map<String, Object?> json) {
    return CustomerCreateDTO(
      email: json[r'email'] as String?,
      fullName: json[r'fullName'] as String?,
      displayName: json[r'displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var email = this.email;
    var fullName = this.fullName;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (email != null) {
      json[r'email'] = email;
    }
    if (fullName != null) {
      json[r'fullName'] = fullName;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  CustomerCreateDTO copyWith(
      {String? email, String? fullName, String? displayName}) {
    return CustomerCreateDTO(
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      displayName: displayName ?? this.displayName,
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
  /// List of the fields included in this request.
  final List<RequestTypeFieldDTO> requestTypeFields;

  /// Flag indicating if a request can be raised on behalf of another user
  /// (true) or not.
  final bool canRaiseOnBehalfOf;

  /// Flag indicating if participants can be added to a request (true) or not.
  final bool canAddRequestParticipants;

  CustomerRequestCreateMetaDTO(
      {List<RequestTypeFieldDTO>? requestTypeFields,
      bool? canRaiseOnBehalfOf,
      bool? canAddRequestParticipants})
      : requestTypeFields = requestTypeFields ?? [],
        canRaiseOnBehalfOf = canRaiseOnBehalfOf ?? false,
        canAddRequestParticipants = canAddRequestParticipants ?? false;

  factory CustomerRequestCreateMetaDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestCreateMetaDTO(
      requestTypeFields: (json[r'requestTypeFields'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      canRaiseOnBehalfOf: json[r'canRaiseOnBehalfOf'] as bool? ?? false,
      canAddRequestParticipants:
          json[r'canAddRequestParticipants'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var requestTypeFields = this.requestTypeFields;
    var canRaiseOnBehalfOf = this.canRaiseOnBehalfOf;
    var canAddRequestParticipants = this.canAddRequestParticipants;

    final json = <String, Object?>{};
    json[r'requestTypeFields'] =
        requestTypeFields.map((i) => i.toJson()).toList();
    json[r'canRaiseOnBehalfOf'] = canRaiseOnBehalfOf;
    json[r'canAddRequestParticipants'] = canAddRequestParticipants;
    return json;
  }

  CustomerRequestCreateMetaDTO copyWith(
      {List<RequestTypeFieldDTO>? requestTypeFields,
      bool? canRaiseOnBehalfOf,
      bool? canAddRequestParticipants}) {
    return CustomerRequestCreateMetaDTO(
      requestTypeFields: requestTypeFields ?? this.requestTypeFields,
      canRaiseOnBehalfOf: canRaiseOnBehalfOf ?? this.canRaiseOnBehalfOf,
      canAddRequestParticipants:
          canAddRequestParticipants ?? this.canAddRequestParticipants,
    );
  }
}

class CustomerRequestDTO {
  /// ID of the request, as the peer issue ID.
  final String? issueId;

  /// Key of the request, as the peer issue key.
  final String? issueKey;

  /// ID of the request type for the request.
  final String? requestTypeId;

  /// Expandable details of the request type.
  final RequestTypeDTO? requestType;

  /// ID of the service desk the request belongs to.
  final String? serviceDeskId;

  /// Expandable details of the service desk.
  final ServiceDeskDTO? serviceDesk;

  /// Date on which the request was created.
  final DateDTO? createdDate;

  /// Details of the customer reporting the request.
  final UserDTO? reporter;

  /// JSON map of Jira field IDs and their values representing the content of
  /// the request.
  final List<CustomerRequestFieldValueDTO> requestFieldValues;

  /// Status of the request.
  final CustomerRequestStatusDTO? currentStatus;

  /// Expandable details of the request's status history.
  final PagedDTOCustomerRequestStatusDTO? status;

  /// Expandable details of the customers participating in the request.
  final PagedDTOUserDTO? participants;

  /// Expandable details of the SLAs relating to the request.
  final PagedDTOSlaInformationDTO? sla;

  /// List of attachments included with the request.
  final PagedDTOAttachmentDTO? attachments;

  /// List of comments included with the request.
  final PagedDTOCommentDTO? comments;

  /// List of actions that the user can take on the request.
  final CustomerRequestActionsDTO? actions;

  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// List of links associated with the request.
  final CustomerRequestLinkDTO? links;

  CustomerRequestDTO(
      {this.issueId,
      this.issueKey,
      this.requestTypeId,
      this.requestType,
      this.serviceDeskId,
      this.serviceDesk,
      this.createdDate,
      this.reporter,
      List<CustomerRequestFieldValueDTO>? requestFieldValues,
      this.currentStatus,
      this.status,
      this.participants,
      this.sla,
      this.attachments,
      this.comments,
      this.actions,
      List<String>? expands,
      this.links})
      : requestFieldValues = requestFieldValues ?? [],
        expands = expands ?? [];

  factory CustomerRequestDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestDTO(
      issueId: json[r'issueId'] as String?,
      issueKey: json[r'issueKey'] as String?,
      requestTypeId: json[r'requestTypeId'] as String?,
      requestType: json[r'requestType'] != null
          ? RequestTypeDTO.fromJson(
              json[r'requestType']! as Map<String, Object?>)
          : null,
      serviceDeskId: json[r'serviceDeskId'] as String?,
      serviceDesk: json[r'serviceDesk'] != null
          ? ServiceDeskDTO.fromJson(
              json[r'serviceDesk']! as Map<String, Object?>)
          : null,
      createdDate: json[r'createdDate'] != null
          ? DateDTO.fromJson(json[r'createdDate']! as Map<String, Object?>)
          : null,
      reporter: json[r'reporter'] != null
          ? UserDTO.fromJson(json[r'reporter']! as Map<String, Object?>)
          : null,
      requestFieldValues: (json[r'requestFieldValues'] as List<Object?>?)
              ?.map((i) => CustomerRequestFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      currentStatus: json[r'currentStatus'] != null
          ? CustomerRequestStatusDTO.fromJson(
              json[r'currentStatus']! as Map<String, Object?>)
          : null,
      status: json[r'status'] != null
          ? PagedDTOCustomerRequestStatusDTO.fromJson(
              json[r'status']! as Map<String, Object?>)
          : null,
      participants: json[r'participants'] != null
          ? PagedDTOUserDTO.fromJson(
              json[r'participants']! as Map<String, Object?>)
          : null,
      sla: json[r'sla'] != null
          ? PagedDTOSlaInformationDTO.fromJson(
              json[r'sla']! as Map<String, Object?>)
          : null,
      attachments: json[r'attachments'] != null
          ? PagedDTOAttachmentDTO.fromJson(
              json[r'attachments']! as Map<String, Object?>)
          : null,
      comments: json[r'comments'] != null
          ? PagedDTOCommentDTO.fromJson(
              json[r'comments']! as Map<String, Object?>)
          : null,
      actions: json[r'actions'] != null
          ? CustomerRequestActionsDTO.fromJson(
              json[r'actions']! as Map<String, Object?>)
          : null,
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? CustomerRequestLinkDTO.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var requestTypeId = this.requestTypeId;
    var requestType = this.requestType;
    var serviceDeskId = this.serviceDeskId;
    var serviceDesk = this.serviceDesk;
    var createdDate = this.createdDate;
    var reporter = this.reporter;
    var requestFieldValues = this.requestFieldValues;
    var currentStatus = this.currentStatus;
    var status = this.status;
    var participants = this.participants;
    var sla = this.sla;
    var attachments = this.attachments;
    var comments = this.comments;
    var actions = this.actions;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (requestTypeId != null) {
      json[r'requestTypeId'] = requestTypeId;
    }
    if (requestType != null) {
      json[r'requestType'] = requestType.toJson();
    }
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    if (serviceDesk != null) {
      json[r'serviceDesk'] = serviceDesk.toJson();
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate.toJson();
    }
    if (reporter != null) {
      json[r'reporter'] = reporter.toJson();
    }
    json[r'requestFieldValues'] =
        requestFieldValues.map((i) => i.toJson()).toList();
    if (currentStatus != null) {
      json[r'currentStatus'] = currentStatus.toJson();
    }
    if (status != null) {
      json[r'status'] = status.toJson();
    }
    if (participants != null) {
      json[r'participants'] = participants.toJson();
    }
    if (sla != null) {
      json[r'sla'] = sla.toJson();
    }
    if (attachments != null) {
      json[r'attachments'] = attachments.toJson();
    }
    if (comments != null) {
      json[r'comments'] = comments.toJson();
    }
    if (actions != null) {
      json[r'actions'] = actions.toJson();
    }
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  CustomerRequestDTO copyWith(
      {String? issueId,
      String? issueKey,
      String? requestTypeId,
      RequestTypeDTO? requestType,
      String? serviceDeskId,
      ServiceDeskDTO? serviceDesk,
      DateDTO? createdDate,
      UserDTO? reporter,
      List<CustomerRequestFieldValueDTO>? requestFieldValues,
      CustomerRequestStatusDTO? currentStatus,
      PagedDTOCustomerRequestStatusDTO? status,
      PagedDTOUserDTO? participants,
      PagedDTOSlaInformationDTO? sla,
      PagedDTOAttachmentDTO? attachments,
      PagedDTOCommentDTO? comments,
      CustomerRequestActionsDTO? actions,
      List<String>? expands,
      CustomerRequestLinkDTO? links}) {
    return CustomerRequestDTO(
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      requestTypeId: requestTypeId ?? this.requestTypeId,
      requestType: requestType ?? this.requestType,
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
      serviceDesk: serviceDesk ?? this.serviceDesk,
      createdDate: createdDate ?? this.createdDate,
      reporter: reporter ?? this.reporter,
      requestFieldValues: requestFieldValues ?? this.requestFieldValues,
      currentStatus: currentStatus ?? this.currentStatus,
      status: status ?? this.status,
      participants: participants ?? this.participants,
      sla: sla ?? this.sla,
      attachments: attachments ?? this.attachments,
      comments: comments ?? this.comments,
      actions: actions ?? this.actions,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class CustomerRequestFieldValueDTO {
  /// ID of the field.
  final String? fieldId;

  /// Text label for the field.
  final String? label;

  /// Value of the field.
  final dynamic value;

  /// Value of the field rendered in the UI.
  final Map<String, dynamic>? renderedValue;

  CustomerRequestFieldValueDTO(
      {this.fieldId, this.label, this.value, this.renderedValue});

  factory CustomerRequestFieldValueDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestFieldValueDTO(
      fieldId: json[r'fieldId'] as String?,
      label: json[r'label'] as String?,
      value: json[r'value'],
      renderedValue: json[r'renderedValue'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var label = this.label;
    var value = this.value;
    var renderedValue = this.renderedValue;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (value != null) {
      json[r'value'] = value;
    }
    if (renderedValue != null) {
      json[r'renderedValue'] = renderedValue;
    }
    return json;
  }

  CustomerRequestFieldValueDTO copyWith(
      {String? fieldId,
      String? label,
      dynamic value,
      Map<String, dynamic>? renderedValue}) {
    return CustomerRequestFieldValueDTO(
      fieldId: fieldId ?? this.fieldId,
      label: label ?? this.label,
      value: value ?? this.value,
      renderedValue: renderedValue ?? this.renderedValue,
    );
  }
}

class CustomerRequestLinkDTO {
  final String? self;

  /// REST API URL for the request.
  final String? jiraRest;

  /// Web URL for the request.
  final String? web;

  /// Jira agent view URL for the request.
  final String? agent;

  CustomerRequestLinkDTO({this.self, this.jiraRest, this.web, this.agent});

  factory CustomerRequestLinkDTO.fromJson(Map<String, Object?> json) {
    return CustomerRequestLinkDTO(
      self: json[r'self'] as String?,
      jiraRest: json[r'jiraRest'] as String?,
      web: json[r'web'] as String?,
      agent: json[r'agent'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var jiraRest = this.jiraRest;
    var web = this.web;
    var agent = this.agent;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (web != null) {
      json[r'web'] = web;
    }
    if (agent != null) {
      json[r'agent'] = agent;
    }
    return json;
  }

  CustomerRequestLinkDTO copyWith(
      {String? self, String? jiraRest, String? web, String? agent}) {
    return CustomerRequestLinkDTO(
      self: self ?? this.self,
      jiraRest: jiraRest ?? this.jiraRest,
      web: web ?? this.web,
      agent: agent ?? this.agent,
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
  /// ID of the transition to be performed.
  final String? id;

  /// Comment explaining the reason for the transition.
  final AdditionalCommentDTO? additionalComment;

  CustomerTransitionExecutionDTO({this.id, this.additionalComment});

  factory CustomerTransitionExecutionDTO.fromJson(Map<String, Object?> json) {
    return CustomerTransitionExecutionDTO(
      id: json[r'id'] as String?,
      additionalComment: json[r'additionalComment'] != null
          ? AdditionalCommentDTO.fromJson(
              json[r'additionalComment']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var additionalComment = this.additionalComment;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (additionalComment != null) {
      json[r'additionalComment'] = additionalComment.toJson();
    }
    return json;
  }

  CustomerTransitionExecutionDTO copyWith(
      {String? id, AdditionalCommentDTO? additionalComment}) {
    return CustomerTransitionExecutionDTO(
      id: id ?? this.id,
      additionalComment: additionalComment ?? this.additionalComment,
    );
  }
}

class DateDTO {
  /// Date in ISO8601 format.
  final String? iso8601;

  /// Date in the format used in the Jira REST APIs, which is ISO8601 format but
  /// extended with milliseconds. For example, 2016-09-28T23:08:32.097+1000.
  final String? jira;

  /// Date in a user-friendly text format.
  final String? friendly;

  /// Date as the number of milliseconds that have elapsed since 00:00:00
  /// Coordinated Universal Time (UTC), 1 January 1970.
  final int? epochMillis;

  DateDTO({this.iso8601, this.jira, this.friendly, this.epochMillis});

  factory DateDTO.fromJson(Map<String, Object?> json) {
    return DateDTO(
      iso8601: json[r'iso8601'] as String?,
      jira: json[r'jira'] as String?,
      friendly: json[r'friendly'] as String?,
      epochMillis: (json[r'epochMillis'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var iso8601 = this.iso8601;
    var jira = this.jira;
    var friendly = this.friendly;
    var epochMillis = this.epochMillis;

    final json = <String, Object?>{};
    if (iso8601 != null) {
      json[r'iso8601'] = iso8601;
    }
    if (jira != null) {
      json[r'jira'] = jira;
    }
    if (friendly != null) {
      json[r'friendly'] = friendly;
    }
    if (epochMillis != null) {
      json[r'epochMillis'] = epochMillis;
    }
    return json;
  }

  DateDTO copyWith(
      {String? iso8601, String? jira, String? friendly, int? epochMillis}) {
    return DateDTO(
      iso8601: iso8601 ?? this.iso8601,
      jira: jira ?? this.jira,
      friendly: friendly ?? this.friendly,
      epochMillis: epochMillis ?? this.epochMillis,
    );
  }
}

class DurationDTO {
  /// Duration in milliseconds.
  final int? millis;

  /// Duration in a user-friendly text format.
  final String? friendly;

  DurationDTO({this.millis, this.friendly});

  factory DurationDTO.fromJson(Map<String, Object?> json) {
    return DurationDTO(
      millis: (json[r'millis'] as num?)?.toInt(),
      friendly: json[r'friendly'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var millis = this.millis;
    var friendly = this.friendly;

    final json = <String, Object?>{};
    if (millis != null) {
      json[r'millis'] = millis;
    }
    if (friendly != null) {
      json[r'friendly'] = friendly;
    }
    return json;
  }

  DurationDTO copyWith({int? millis, String? friendly}) {
    return DurationDTO(
      millis: millis ?? this.millis,
      friendly: friendly ?? this.friendly,
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
  /// Whether the field is required.
  final bool required;

  /// The data type of the field.
  final JsonTypeBean schema;

  /// The name of the field.
  final String name;

  /// The key of the field.
  final String key;

  /// The URL that can be used to automatically complete the field.
  final String? autoCompleteUrl;

  /// Whether the field has a default value.
  final bool hasDefaultValue;

  /// The list of operations that can be performed on the field.
  final List<String> operations;

  /// The list of values allowed in the field.
  final List<dynamic> allowedValues;

  /// The default value of the field.
  final dynamic defaultValue;

  /// The configuration properties.
  final Map<String, dynamic>? configuration;

  FieldMetadata(
      {required this.required,
      required this.schema,
      required this.name,
      required this.key,
      this.autoCompleteUrl,
      bool? hasDefaultValue,
      required this.operations,
      List<dynamic>? allowedValues,
      this.defaultValue,
      this.configuration})
      : hasDefaultValue = hasDefaultValue ?? false,
        allowedValues = allowedValues ?? [];

  factory FieldMetadata.fromJson(Map<String, Object?> json) {
    return FieldMetadata(
      required: json[r'required'] as bool? ?? false,
      schema: JsonTypeBean.fromJson(
          json[r'schema'] as Map<String, Object?>? ?? const {}),
      name: json[r'name'] as String? ?? '',
      key: json[r'key'] as String? ?? '',
      autoCompleteUrl: json[r'autoCompleteUrl'] as String?,
      hasDefaultValue: json[r'hasDefaultValue'] as bool? ?? false,
      operations: (json[r'operations'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      allowedValues:
          (json[r'allowedValues'] as List<Object?>?)?.map((i) => i).toList() ??
              [],
      defaultValue: json[r'defaultValue'],
      configuration: json[r'configuration'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var required = this.required;
    var schema = this.schema;
    var name = this.name;
    var key = this.key;
    var autoCompleteUrl = this.autoCompleteUrl;
    var hasDefaultValue = this.hasDefaultValue;
    var operations = this.operations;
    var allowedValues = this.allowedValues;
    var defaultValue = this.defaultValue;
    var configuration = this.configuration;

    final json = <String, Object?>{};
    json[r'required'] = required;
    json[r'schema'] = schema.toJson();
    json[r'name'] = name;
    json[r'key'] = key;
    if (autoCompleteUrl != null) {
      json[r'autoCompleteUrl'] = autoCompleteUrl;
    }
    json[r'hasDefaultValue'] = hasDefaultValue;
    json[r'operations'] = operations;
    json[r'allowedValues'] = allowedValues;
    if (defaultValue != null) {
      json[r'defaultValue'] = defaultValue;
    }
    if (configuration != null) {
      json[r'configuration'] = configuration;
    }
    return json;
  }

  FieldMetadata copyWith(
      {bool? required,
      JsonTypeBean? schema,
      String? name,
      String? key,
      String? autoCompleteUrl,
      bool? hasDefaultValue,
      List<String>? operations,
      List<dynamic>? allowedValues,
      dynamic defaultValue,
      Map<String, dynamic>? configuration}) {
    return FieldMetadata(
      required: required ?? this.required,
      schema: schema ?? this.schema,
      name: name ?? this.name,
      key: key ?? this.key,
      autoCompleteUrl: autoCompleteUrl ?? this.autoCompleteUrl,
      hasDefaultValue: hasDefaultValue ?? this.hasDefaultValue,
      operations: operations ?? this.operations,
      allowedValues: allowedValues ?? this.allowedValues,
      defaultValue: defaultValue ?? this.defaultValue,
      configuration: configuration ?? this.configuration,
    );
  }
}

/// Details of issue history metadata.
class HistoryMetadata {
  /// The type of the history record.
  final String? type;

  /// The description of the history record.
  final String? description;

  /// The description key of the history record.
  final String? descriptionKey;

  /// The activity described in the history record.
  final String? activityDescription;

  /// The key of the activity described in the history record.
  final String? activityDescriptionKey;

  /// The description of the email address associated the history record.
  final String? emailDescription;

  /// The description key of the email address associated the history record.
  final String? emailDescriptionKey;

  /// Details of the user whose action created the history record.
  final HistoryMetadataParticipant? actor;

  /// Details of the system that generated the history record.
  final HistoryMetadataParticipant? generator;

  /// Details of the cause that triggered the creation the history record.
  final HistoryMetadataParticipant? cause;

  /// Additional arbitrary information about the history record.
  final Map<String, dynamic>? extraData;

  HistoryMetadata(
      {this.type,
      this.description,
      this.descriptionKey,
      this.activityDescription,
      this.activityDescriptionKey,
      this.emailDescription,
      this.emailDescriptionKey,
      this.actor,
      this.generator,
      this.cause,
      this.extraData});

  factory HistoryMetadata.fromJson(Map<String, Object?> json) {
    return HistoryMetadata(
      type: json[r'type'] as String?,
      description: json[r'description'] as String?,
      descriptionKey: json[r'descriptionKey'] as String?,
      activityDescription: json[r'activityDescription'] as String?,
      activityDescriptionKey: json[r'activityDescriptionKey'] as String?,
      emailDescription: json[r'emailDescription'] as String?,
      emailDescriptionKey: json[r'emailDescriptionKey'] as String?,
      actor: json[r'actor'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'actor']! as Map<String, Object?>)
          : null,
      generator: json[r'generator'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'generator']! as Map<String, Object?>)
          : null,
      cause: json[r'cause'] != null
          ? HistoryMetadataParticipant.fromJson(
              json[r'cause']! as Map<String, Object?>)
          : null,
      extraData: json[r'extraData'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var description = this.description;
    var descriptionKey = this.descriptionKey;
    var activityDescription = this.activityDescription;
    var activityDescriptionKey = this.activityDescriptionKey;
    var emailDescription = this.emailDescription;
    var emailDescriptionKey = this.emailDescriptionKey;
    var actor = this.actor;
    var generator = this.generator;
    var cause = this.cause;
    var extraData = this.extraData;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (descriptionKey != null) {
      json[r'descriptionKey'] = descriptionKey;
    }
    if (activityDescription != null) {
      json[r'activityDescription'] = activityDescription;
    }
    if (activityDescriptionKey != null) {
      json[r'activityDescriptionKey'] = activityDescriptionKey;
    }
    if (emailDescription != null) {
      json[r'emailDescription'] = emailDescription;
    }
    if (emailDescriptionKey != null) {
      json[r'emailDescriptionKey'] = emailDescriptionKey;
    }
    if (actor != null) {
      json[r'actor'] = actor.toJson();
    }
    if (generator != null) {
      json[r'generator'] = generator.toJson();
    }
    if (cause != null) {
      json[r'cause'] = cause.toJson();
    }
    if (extraData != null) {
      json[r'extraData'] = extraData;
    }
    return json;
  }

  HistoryMetadata copyWith(
      {String? type,
      String? description,
      String? descriptionKey,
      String? activityDescription,
      String? activityDescriptionKey,
      String? emailDescription,
      String? emailDescriptionKey,
      HistoryMetadataParticipant? actor,
      HistoryMetadataParticipant? generator,
      HistoryMetadataParticipant? cause,
      Map<String, dynamic>? extraData}) {
    return HistoryMetadata(
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionKey: descriptionKey ?? this.descriptionKey,
      activityDescription: activityDescription ?? this.activityDescription,
      activityDescriptionKey:
          activityDescriptionKey ?? this.activityDescriptionKey,
      emailDescription: emailDescription ?? this.emailDescription,
      emailDescriptionKey: emailDescriptionKey ?? this.emailDescriptionKey,
      actor: actor ?? this.actor,
      generator: generator ?? this.generator,
      cause: cause ?? this.cause,
      extraData: extraData ?? this.extraData,
    );
  }
}

/// Details of user or system associated with a issue history metadata item.
class HistoryMetadataParticipant {
  /// The ID of the user or system associated with a history record.
  final String? id;

  /// The display name of the user or system associated with a history record.
  final String? displayName;

  /// The key of the display name of the user or system associated with a
  /// history record.
  final String? displayNameKey;

  /// The type of the user or system associated with a history record.
  final String? type;

  /// The URL to an avatar for the user or system associated with a history
  /// record.
  final String? avatarUrl;

  /// The URL of the user or system associated with a history record.
  final String? url;

  HistoryMetadataParticipant(
      {this.id,
      this.displayName,
      this.displayNameKey,
      this.type,
      this.avatarUrl,
      this.url});

  factory HistoryMetadataParticipant.fromJson(Map<String, Object?> json) {
    return HistoryMetadataParticipant(
      id: json[r'id'] as String?,
      displayName: json[r'displayName'] as String?,
      displayNameKey: json[r'displayNameKey'] as String?,
      type: json[r'type'] as String?,
      avatarUrl: json[r'avatarUrl'] as String?,
      url: json[r'url'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var displayName = this.displayName;
    var displayNameKey = this.displayNameKey;
    var type = this.type;
    var avatarUrl = this.avatarUrl;
    var url = this.url;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (displayNameKey != null) {
      json[r'displayNameKey'] = displayNameKey;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (avatarUrl != null) {
      json[r'avatarUrl'] = avatarUrl;
    }
    if (url != null) {
      json[r'url'] = url;
    }
    return json;
  }

  HistoryMetadataParticipant copyWith(
      {String? id,
      String? displayName,
      String? displayNameKey,
      String? type,
      String? avatarUrl,
      String? url}) {
    return HistoryMetadataParticipant(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      displayNameKey: displayNameKey ?? this.displayNameKey,
      type: type ?? this.type,
      avatarUrl: avatarUrl ?? this.avatarUrl,
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
  final List<String> included;
  final List<String> actuallyIncluded;
  final List<String> excluded;

  IncludedFields(
      {List<String>? included,
      List<String>? actuallyIncluded,
      List<String>? excluded})
      : included = included ?? [],
        actuallyIncluded = actuallyIncluded ?? [],
        excluded = excluded ?? [];

  factory IncludedFields.fromJson(Map<String, Object?> json) {
    return IncludedFields(
      included: (json[r'included'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      actuallyIncluded: (json[r'actuallyIncluded'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      excluded: (json[r'excluded'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var included = this.included;
    var actuallyIncluded = this.actuallyIncluded;
    var excluded = this.excluded;

    final json = <String, Object?>{};
    json[r'included'] = included;
    json[r'actuallyIncluded'] = actuallyIncluded;
    json[r'excluded'] = excluded;
    return json;
  }

  IncludedFields copyWith(
      {List<String>? included,
      List<String>? actuallyIncluded,
      List<String>? excluded}) {
    return IncludedFields(
      included: included ?? this.included,
      actuallyIncluded: actuallyIncluded ?? this.actuallyIncluded,
      excluded: excluded ?? this.excluded,
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
  /// Expand options that include additional issue details in the response.
  final String? expand;

  /// The ID of the issue.
  final String? id;

  /// The URL of the issue details.
  final String? self;

  /// The key of the issue.
  final String? key;

  /// The rendered value of each field present on the issue.
  final Map<String, dynamic>? renderedFields;

  /// Details of the issue properties identified in the request.
  final Map<String, dynamic>? properties;

  /// The ID and name of each field present on the issue.
  final Map<String, dynamic>? names;

  /// The schema describing each field present on the issue.
  final Map<String, dynamic>? schema;

  /// The transitions that can be performed on the issue.
  final List<IssueTransition> transitions;

  /// The operations that can be performed on the issue.
  final Operations? operations;

  /// The metadata for the fields on the issue that can be amended.
  final IssueUpdateMetadata? editmeta;

  /// Details of changelogs associated with the issue.
  final PageOfChangelogs? changelog;

  /// The versions of each field on the issue.
  final Map<String, dynamic>? versionedRepresentations;
  final IncludedFields? fieldsToInclude;
  final Map<String, dynamic>? fields;

  IssueBean(
      {this.expand,
      this.id,
      this.self,
      this.key,
      this.renderedFields,
      this.properties,
      this.names,
      this.schema,
      List<IssueTransition>? transitions,
      this.operations,
      this.editmeta,
      this.changelog,
      this.versionedRepresentations,
      this.fieldsToInclude,
      this.fields})
      : transitions = transitions ?? [];

  factory IssueBean.fromJson(Map<String, Object?> json) {
    return IssueBean(
      expand: json[r'expand'] as String?,
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
      key: json[r'key'] as String?,
      renderedFields: json[r'renderedFields'] as Map<String, Object?>?,
      properties: json[r'properties'] as Map<String, Object?>?,
      names: json[r'names'] as Map<String, Object?>?,
      schema: json[r'schema'] as Map<String, Object?>?,
      transitions: (json[r'transitions'] as List<Object?>?)
              ?.map((i) => IssueTransition.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      operations: json[r'operations'] != null
          ? Operations.fromJson(json[r'operations']! as Map<String, Object?>)
          : null,
      editmeta: json[r'editmeta'] != null
          ? IssueUpdateMetadata.fromJson(
              json[r'editmeta']! as Map<String, Object?>)
          : null,
      changelog: json[r'changelog'] != null
          ? PageOfChangelogs.fromJson(
              json[r'changelog']! as Map<String, Object?>)
          : null,
      versionedRepresentations:
          json[r'versionedRepresentations'] as Map<String, Object?>?,
      fieldsToInclude: json[r'fieldsToInclude'] != null
          ? IncludedFields.fromJson(
              json[r'fieldsToInclude']! as Map<String, Object?>)
          : null,
      fields: json[r'fields'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var expand = this.expand;
    var id = this.id;
    var self = this.self;
    var key = this.key;
    var renderedFields = this.renderedFields;
    var properties = this.properties;
    var names = this.names;
    var schema = this.schema;
    var transitions = this.transitions;
    var operations = this.operations;
    var editmeta = this.editmeta;
    var changelog = this.changelog;
    var versionedRepresentations = this.versionedRepresentations;
    var fieldsToInclude = this.fieldsToInclude;
    var fields = this.fields;

    final json = <String, Object?>{};
    if (expand != null) {
      json[r'expand'] = expand;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (renderedFields != null) {
      json[r'renderedFields'] = renderedFields;
    }
    if (properties != null) {
      json[r'properties'] = properties;
    }
    if (names != null) {
      json[r'names'] = names;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    json[r'transitions'] = transitions.map((i) => i.toJson()).toList();
    if (operations != null) {
      json[r'operations'] = operations.toJson();
    }
    if (editmeta != null) {
      json[r'editmeta'] = editmeta.toJson();
    }
    if (changelog != null) {
      json[r'changelog'] = changelog.toJson();
    }
    if (versionedRepresentations != null) {
      json[r'versionedRepresentations'] = versionedRepresentations;
    }
    if (fieldsToInclude != null) {
      json[r'fieldsToInclude'] = fieldsToInclude.toJson();
    }
    if (fields != null) {
      json[r'fields'] = fields;
    }
    return json;
  }

  IssueBean copyWith(
      {String? expand,
      String? id,
      String? self,
      String? key,
      Map<String, dynamic>? renderedFields,
      Map<String, dynamic>? properties,
      Map<String, dynamic>? names,
      Map<String, dynamic>? schema,
      List<IssueTransition>? transitions,
      Operations? operations,
      IssueUpdateMetadata? editmeta,
      PageOfChangelogs? changelog,
      Map<String, dynamic>? versionedRepresentations,
      IncludedFields? fieldsToInclude,
      Map<String, dynamic>? fields}) {
    return IssueBean(
      expand: expand ?? this.expand,
      id: id ?? this.id,
      self: self ?? this.self,
      key: key ?? this.key,
      renderedFields: renderedFields ?? this.renderedFields,
      properties: properties ?? this.properties,
      names: names ?? this.names,
      schema: schema ?? this.schema,
      transitions: transitions ?? this.transitions,
      operations: operations ?? this.operations,
      editmeta: editmeta ?? this.editmeta,
      changelog: changelog ?? this.changelog,
      versionedRepresentations:
          versionedRepresentations ?? this.versionedRepresentations,
      fieldsToInclude: fieldsToInclude ?? this.fieldsToInclude,
      fields: fields ?? this.fields,
    );
  }
}

/// Details of an issue transition.
class IssueTransition {
  /// The ID of the issue transition. Required when specifying a transition to
  /// undertake.
  final String? id;

  /// The name of the issue transition.
  final String? name;

  /// Details of the issue status after the transition.
  final StatusDetails? to;

  /// Whether there is a screen associated with the issue transition.
  final bool hasScreen;

  /// Whether the issue transition is global, that is, the transition is applied
  /// to issues regardless of their status.
  final bool isGlobal;

  /// Whether this is the initial issue transition for the workflow.
  final bool isInitial;

  /// Whether the transition is available to be performed.
  final bool isAvailable;

  /// Whether the issue has to meet criteria before the issue transition is
  /// applied.
  final bool isConditional;

  /// Details of the fields associated with the issue transition screen. Use
  /// this information to populate `fields` and `update` in a transition
  /// request.
  final Map<String, dynamic>? fields;

  /// Expand options that include additional transition details in the response.
  final String? expand;
  final bool looped;

  IssueTransition(
      {this.id,
      this.name,
      this.to,
      bool? hasScreen,
      bool? isGlobal,
      bool? isInitial,
      bool? isAvailable,
      bool? isConditional,
      this.fields,
      this.expand,
      bool? looped})
      : hasScreen = hasScreen ?? false,
        isGlobal = isGlobal ?? false,
        isInitial = isInitial ?? false,
        isAvailable = isAvailable ?? false,
        isConditional = isConditional ?? false,
        looped = looped ?? false;

  factory IssueTransition.fromJson(Map<String, Object?> json) {
    return IssueTransition(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      to: json[r'to'] != null
          ? StatusDetails.fromJson(json[r'to']! as Map<String, Object?>)
          : null,
      hasScreen: json[r'hasScreen'] as bool? ?? false,
      isGlobal: json[r'isGlobal'] as bool? ?? false,
      isInitial: json[r'isInitial'] as bool? ?? false,
      isAvailable: json[r'isAvailable'] as bool? ?? false,
      isConditional: json[r'isConditional'] as bool? ?? false,
      fields: json[r'fields'] as Map<String, Object?>?,
      expand: json[r'expand'] as String?,
      looped: json[r'looped'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var to = this.to;
    var hasScreen = this.hasScreen;
    var isGlobal = this.isGlobal;
    var isInitial = this.isInitial;
    var isAvailable = this.isAvailable;
    var isConditional = this.isConditional;
    var fields = this.fields;
    var expand = this.expand;
    var looped = this.looped;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (to != null) {
      json[r'to'] = to.toJson();
    }
    json[r'hasScreen'] = hasScreen;
    json[r'isGlobal'] = isGlobal;
    json[r'isInitial'] = isInitial;
    json[r'isAvailable'] = isAvailable;
    json[r'isConditional'] = isConditional;
    if (fields != null) {
      json[r'fields'] = fields;
    }
    if (expand != null) {
      json[r'expand'] = expand;
    }
    json[r'looped'] = looped;
    return json;
  }

  IssueTransition copyWith(
      {String? id,
      String? name,
      StatusDetails? to,
      bool? hasScreen,
      bool? isGlobal,
      bool? isInitial,
      bool? isAvailable,
      bool? isConditional,
      Map<String, dynamic>? fields,
      String? expand,
      bool? looped}) {
    return IssueTransition(
      id: id ?? this.id,
      name: name ?? this.name,
      to: to ?? this.to,
      hasScreen: hasScreen ?? this.hasScreen,
      isGlobal: isGlobal ?? this.isGlobal,
      isInitial: isInitial ?? this.isInitial,
      isAvailable: isAvailable ?? this.isAvailable,
      isConditional: isConditional ?? this.isConditional,
      fields: fields ?? this.fields,
      expand: expand ?? this.expand,
      looped: looped ?? this.looped,
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
  /// The data type of the field.
  final String type;

  /// When the data type is an array, the name of the field items within the
  /// array.
  final String? items;

  /// If the field is a system field, the name of the field.
  final String? system;

  /// If the field is a custom field, the URI of the field.
  final String? custom;

  /// If the field is a custom field, the custom ID of the field.
  final int? customId;

  /// If the field is a custom field, the configuration of the field.
  final Map<String, dynamic>? configuration;

  JsonTypeBean(
      {required this.type,
      this.items,
      this.system,
      this.custom,
      this.customId,
      this.configuration});

  factory JsonTypeBean.fromJson(Map<String, Object?> json) {
    return JsonTypeBean(
      type: json[r'type'] as String? ?? '',
      items: json[r'items'] as String?,
      system: json[r'system'] as String?,
      custom: json[r'custom'] as String?,
      customId: (json[r'customId'] as num?)?.toInt(),
      configuration: json[r'configuration'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var items = this.items;
    var system = this.system;
    var custom = this.custom;
    var customId = this.customId;
    var configuration = this.configuration;

    final json = <String, Object?>{};
    json[r'type'] = type;
    if (items != null) {
      json[r'items'] = items;
    }
    if (system != null) {
      json[r'system'] = system;
    }
    if (custom != null) {
      json[r'custom'] = custom;
    }
    if (customId != null) {
      json[r'customId'] = customId;
    }
    if (configuration != null) {
      json[r'configuration'] = configuration;
    }
    return json;
  }

  JsonTypeBean copyWith(
      {String? type,
      String? items,
      String? system,
      String? custom,
      int? customId,
      Map<String, dynamic>? configuration}) {
    return JsonTypeBean(
      type: type ?? this.type,
      items: items ?? this.items,
      system: system ?? this.system,
      custom: custom ?? this.custom,
      customId: customId ?? this.customId,
      configuration: configuration ?? this.configuration,
    );
  }
}

/// Details a link group, which defines issue operations.
class LinkGroup {
  final String? id;
  final String? styleClass;
  final SimpleLink? header;
  final int? weight;
  final List<SimpleLink> links;
  final List<LinkGroup> groups;

  LinkGroup(
      {this.id,
      this.styleClass,
      this.header,
      this.weight,
      List<SimpleLink>? links,
      List<LinkGroup>? groups})
      : links = links ?? [],
        groups = groups ?? [];

  factory LinkGroup.fromJson(Map<String, Object?> json) {
    return LinkGroup(
      id: json[r'id'] as String?,
      styleClass: json[r'styleClass'] as String?,
      header: json[r'header'] != null
          ? SimpleLink.fromJson(json[r'header']! as Map<String, Object?>)
          : null,
      weight: (json[r'weight'] as num?)?.toInt(),
      links: (json[r'links'] as List<Object?>?)
              ?.map((i) =>
                  SimpleLink.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json[r'groups'] as List<Object?>?)
              ?.map((i) =>
                  LinkGroup.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var styleClass = this.styleClass;
    var header = this.header;
    var weight = this.weight;
    var links = this.links;
    var groups = this.groups;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (styleClass != null) {
      json[r'styleClass'] = styleClass;
    }
    if (header != null) {
      json[r'header'] = header.toJson();
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    json[r'links'] = links.map((i) => i.toJson()).toList();
    json[r'groups'] = groups.map((i) => i.toJson()).toList();
    return json;
  }

  LinkGroup copyWith(
      {String? id,
      String? styleClass,
      SimpleLink? header,
      int? weight,
      List<SimpleLink>? links,
      List<LinkGroup>? groups}) {
    return LinkGroup(
      id: id ?? this.id,
      styleClass: styleClass ?? this.styleClass,
      header: header ?? this.header,
      weight: weight ?? this.weight,
      links: links ?? this.links,
      groups: groups ?? this.groups,
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
  /// A unique system generated ID for the organization.
  final String? id;

  /// Name of the organization.
  final String? name;

  /// REST API URL to the organization.
  final SelfLinkDTO? links;

  OrganizationDTO({this.id, this.name, this.links});

  factory OrganizationDTO.fromJson(Map<String, Object?> json) {
    return OrganizationDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  OrganizationDTO copyWith({String? id, String? name, SelfLinkDTO? links}) {
    return OrganizationDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      links: links ?? this.links,
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
  /// The index of the first item returned on the page.
  final int? startAt;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The number of results on the page.
  final int? total;

  /// The list of changelogs.
  final List<Changelog> histories;

  PageOfChangelogs(
      {this.startAt, this.maxResults, this.total, List<Changelog>? histories})
      : histories = histories ?? [];

  factory PageOfChangelogs.fromJson(Map<String, Object?> json) {
    return PageOfChangelogs(
      startAt: (json[r'startAt'] as num?)?.toInt(),
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      histories: (json[r'histories'] as List<Object?>?)
              ?.map((i) =>
                  Changelog.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var startAt = this.startAt;
    var maxResults = this.maxResults;
    var total = this.total;
    var histories = this.histories;

    final json = <String, Object?>{};
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'histories'] = histories.map((i) => i.toJson()).toList();
    return json;
  }

  PageOfChangelogs copyWith(
      {int? startAt, int? maxResults, int? total, List<Changelog>? histories}) {
    return PageOfChangelogs(
      startAt: startAt ?? this.startAt,
      maxResults: maxResults ?? this.maxResults,
      total: total ?? this.total,
      histories: histories ?? this.histories,
    );
  }
}

class PagedDTOApprovalDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<ApprovalDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOApprovalDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<ApprovalDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOApprovalDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOApprovalDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  ApprovalDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOApprovalDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<ApprovalDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOApprovalDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOArticleDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<ArticleDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOArticleDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<ArticleDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOArticleDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOArticleDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  ArticleDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOArticleDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<ArticleDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOArticleDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOAttachmentDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<AttachmentDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOAttachmentDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<AttachmentDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOAttachmentDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOAttachmentDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => AttachmentDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOAttachmentDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<AttachmentDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOAttachmentDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOCommentDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<CommentDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOCommentDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<CommentDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOCommentDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCommentDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  CommentDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOCommentDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<CommentDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOCommentDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOCustomerRequestDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<CustomerRequestDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOCustomerRequestDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<CustomerRequestDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOCustomerRequestDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerRequestDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerRequestDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOCustomerRequestDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<CustomerRequestDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOCustomerRequestDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOCustomerRequestStatusDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<CustomerRequestStatusDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOCustomerRequestStatusDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<CustomerRequestStatusDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOCustomerRequestStatusDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerRequestStatusDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerRequestStatusDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOCustomerRequestStatusDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<CustomerRequestStatusDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOCustomerRequestStatusDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOCustomerTransitionDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<CustomerTransitionDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOCustomerTransitionDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<CustomerTransitionDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOCustomerTransitionDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOCustomerTransitionDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => CustomerTransitionDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOCustomerTransitionDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<CustomerTransitionDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOCustomerTransitionDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOInsightWorkspaceDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<InsightWorkspaceDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOInsightWorkspaceDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<InsightWorkspaceDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOInsightWorkspaceDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOInsightWorkspaceDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => InsightWorkspaceDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOInsightWorkspaceDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<InsightWorkspaceDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOInsightWorkspaceDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOIssueBean {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<IssueBean> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOIssueBean(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<IssueBean>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOIssueBean.fromJson(Map<String, Object?> json) {
    return PagedDTOIssueBean(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  IssueBean.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOIssueBean copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<IssueBean>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOIssueBean(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOOrganizationDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<OrganizationDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOOrganizationDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<OrganizationDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOOrganizationDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOOrganizationDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => OrganizationDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOOrganizationDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<OrganizationDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOOrganizationDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOQueueDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<QueueDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOQueueDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<QueueDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOQueueDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOQueueDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  QueueDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOQueueDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<QueueDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOQueueDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTORequestTypeDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<RequestTypeDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTORequestTypeDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<RequestTypeDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTORequestTypeDTO.fromJson(Map<String, Object?> json) {
    return PagedDTORequestTypeDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => RequestTypeDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTORequestTypeDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<RequestTypeDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTORequestTypeDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTORequestTypeGroupDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<RequestTypeGroupDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTORequestTypeGroupDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<RequestTypeGroupDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTORequestTypeGroupDTO.fromJson(Map<String, Object?> json) {
    return PagedDTORequestTypeGroupDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => RequestTypeGroupDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTORequestTypeGroupDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<RequestTypeGroupDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTORequestTypeGroupDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOServiceDeskDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<ServiceDeskDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOServiceDeskDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<ServiceDeskDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOServiceDeskDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOServiceDeskDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => ServiceDeskDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOServiceDeskDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<ServiceDeskDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOServiceDeskDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOSlaInformationDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<SlaInformationDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOSlaInformationDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<SlaInformationDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOSlaInformationDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOSlaInformationDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => SlaInformationDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOSlaInformationDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<SlaInformationDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOSlaInformationDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedDTOUserDTO {
  /// Number of items returned in the page.
  final int? size;

  /// Index of the first item returned in the page.
  final int? start;

  /// Number of items to be returned per page, up to the maximum set for these
  /// objects in the current implementation.
  final int? limit;

  /// Indicates if this is the last page of records (true) or not (false).
  final bool isLastPage;

  /// Details of the items included in the page.
  final List<UserDTO> values;
  final List<String> expands;

  /// List of the links relating to the page.
  final PagedLinkDTO? links;

  PagedDTOUserDTO(
      {this.size,
      this.start,
      this.limit,
      bool? isLastPage,
      List<UserDTO>? values,
      List<String>? expands,
      this.links})
      : isLastPage = isLastPage ?? false,
        values = values ?? [],
        expands = expands ?? [];

  factory PagedDTOUserDTO.fromJson(Map<String, Object?> json) {
    return PagedDTOUserDTO(
      size: (json[r'size'] as num?)?.toInt(),
      start: (json[r'start'] as num?)?.toInt(),
      limit: (json[r'limit'] as num?)?.toInt(),
      isLastPage: json[r'isLastPage'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) =>
                  UserDTO.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? PagedLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var size = this.size;
    var start = this.start;
    var limit = this.limit;
    var isLastPage = this.isLastPage;
    var values = this.values;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (size != null) {
      json[r'size'] = size;
    }
    if (start != null) {
      json[r'start'] = start;
    }
    if (limit != null) {
      json[r'limit'] = limit;
    }
    json[r'isLastPage'] = isLastPage;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  PagedDTOUserDTO copyWith(
      {int? size,
      int? start,
      int? limit,
      bool? isLastPage,
      List<UserDTO>? values,
      List<String>? expands,
      PagedLinkDTO? links}) {
    return PagedDTOUserDTO(
      size: size ?? this.size,
      start: start ?? this.start,
      limit: limit ?? this.limit,
      isLastPage: isLastPage ?? this.isLastPage,
      values: values ?? this.values,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class PagedLinkDTO {
  /// REST API URL for the current page.
  final String? self;

  /// Base URL for the REST API calls.
  final String? base;
  final String? context;

  /// REST API URL for the next page, if there is one.
  final String? next;

  /// REST API URL for the previous page, if there is one.
  final String? prev;

  PagedLinkDTO({this.self, this.base, this.context, this.next, this.prev});

  factory PagedLinkDTO.fromJson(Map<String, Object?> json) {
    return PagedLinkDTO(
      self: json[r'self'] as String?,
      base: json[r'base'] as String?,
      context: json[r'context'] as String?,
      next: json[r'next'] as String?,
      prev: json[r'prev'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var base = this.base;
    var context = this.context;
    var next = this.next;
    var prev = this.prev;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
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
    return json;
  }

  PagedLinkDTO copyWith(
      {String? self,
      String? base,
      String? context,
      String? next,
      String? prev}) {
    return PagedLinkDTO(
      self: self ?? this.self,
      base: base ?? this.base,
      context: context ?? this.context,
      next: next ?? this.next,
      prev: prev ?? this.prev,
    );
  }
}

/// Property key details.
class PropertyKey {
  /// The URL of the property.
  final String? self;

  /// The key of the property.
  final String? key;

  PropertyKey({this.self, this.key});

  factory PropertyKey.fromJson(Map<String, Object?> json) {
    return PropertyKey(
      self: json[r'self'] as String?,
      key: json[r'key'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var key = this.key;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    return json;
  }

  PropertyKey copyWith({String? self, String? key}) {
    return PropertyKey(
      self: self ?? this.self,
      key: key ?? this.key,
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
  /// ID for the queue.
  final String? id;

  /// Short name for the queue.
  final String? name;

  /// JQL query that filters reqeusts for the queue.
  final String? jql;

  /// Fields returned for each request in the queue.
  final List<String> fields;

  /// The count of customer requests in the queue.
  final int? issueCount;

  /// REST API URL to the queue.
  final SelfLinkDTO? links;

  QueueDTO(
      {this.id,
      this.name,
      this.jql,
      List<String>? fields,
      this.issueCount,
      this.links})
      : fields = fields ?? [];

  factory QueueDTO.fromJson(Map<String, Object?> json) {
    return QueueDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      jql: json[r'jql'] as String?,
      fields: (json[r'fields'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      issueCount: (json[r'issueCount'] as num?)?.toInt(),
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var jql = this.jql;
    var fields = this.fields;
    var issueCount = this.issueCount;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    json[r'fields'] = fields;
    if (issueCount != null) {
      json[r'issueCount'] = issueCount;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  QueueDTO copyWith(
      {String? id,
      String? name,
      String? jql,
      List<String>? fields,
      int? issueCount,
      SelfLinkDTO? links}) {
    return QueueDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      jql: jql ?? this.jql,
      fields: fields ?? this.fields,
      issueCount: issueCount ?? this.issueCount,
      links: links ?? this.links,
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
  /// ID of the service desk in which to create the request.
  final String? serviceDeskId;

  /// ID of the request type for the request.
  final String? requestTypeId;

  /// JSON map of Jira field IDs and their values representing the content of
  /// the request.
  final Map<String, dynamic>? requestFieldValues;

  /// List of customers to participate in the request, as a list of `accountId`
  /// values.
  final List<String> requestParticipants;

  /// The `accountId` of the customer that the request is being raised on behalf
  /// of.
  final String? raiseOnBehalfOf;

  /// (Experimental) Shows extra information for the request channel.
  final String? channel;

  RequestCreateDTO(
      {this.serviceDeskId,
      this.requestTypeId,
      this.requestFieldValues,
      List<String>? requestParticipants,
      this.raiseOnBehalfOf,
      this.channel})
      : requestParticipants = requestParticipants ?? [];

  factory RequestCreateDTO.fromJson(Map<String, Object?> json) {
    return RequestCreateDTO(
      serviceDeskId: json[r'serviceDeskId'] as String?,
      requestTypeId: json[r'requestTypeId'] as String?,
      requestFieldValues: json[r'requestFieldValues'] as Map<String, Object?>?,
      requestParticipants: (json[r'requestParticipants'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      raiseOnBehalfOf: json[r'raiseOnBehalfOf'] as String?,
      channel: json[r'channel'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var serviceDeskId = this.serviceDeskId;
    var requestTypeId = this.requestTypeId;
    var requestFieldValues = this.requestFieldValues;
    var requestParticipants = this.requestParticipants;
    var raiseOnBehalfOf = this.raiseOnBehalfOf;
    var channel = this.channel;

    final json = <String, Object?>{};
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    if (requestTypeId != null) {
      json[r'requestTypeId'] = requestTypeId;
    }
    if (requestFieldValues != null) {
      json[r'requestFieldValues'] = requestFieldValues;
    }
    json[r'requestParticipants'] = requestParticipants;
    if (raiseOnBehalfOf != null) {
      json[r'raiseOnBehalfOf'] = raiseOnBehalfOf;
    }
    if (channel != null) {
      json[r'channel'] = channel;
    }
    return json;
  }

  RequestCreateDTO copyWith(
      {String? serviceDeskId,
      String? requestTypeId,
      Map<String, dynamic>? requestFieldValues,
      List<String>? requestParticipants,
      String? raiseOnBehalfOf,
      String? channel}) {
    return RequestCreateDTO(
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
      requestTypeId: requestTypeId ?? this.requestTypeId,
      requestFieldValues: requestFieldValues ?? this.requestFieldValues,
      requestParticipants: requestParticipants ?? this.requestParticipants,
      raiseOnBehalfOf: raiseOnBehalfOf ?? this.raiseOnBehalfOf,
      channel: channel ?? this.channel,
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
  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  /// List of users, specified by account IDs, to add to or remove as
  /// participants in the request.
  final List<String> accountIds;

  RequestParticipantUpdateDTO(
      {List<String>? usernames, List<String>? accountIds})
      : usernames = usernames ?? [],
        accountIds = accountIds ?? [];

  factory RequestParticipantUpdateDTO.fromJson(Map<String, Object?> json) {
    return RequestParticipantUpdateDTO(
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var usernames = this.usernames;
    var accountIds = this.accountIds;

    final json = <String, Object?>{};
    json[r'usernames'] = usernames;
    json[r'accountIds'] = accountIds;
    return json;
  }

  RequestParticipantUpdateDTO copyWith(
      {List<String>? usernames, List<String>? accountIds}) {
    return RequestParticipantUpdateDTO(
      usernames: usernames ?? this.usernames,
      accountIds: accountIds ?? this.accountIds,
    );
  }
}

class RequestTypeCreateDTO {
  /// ID of the request type to add to the service desk.
  final String? issueTypeId;

  /// Name of the request type on the service desk.
  final String? name;

  /// Description of the request type on the service desk.
  final String? description;

  /// Help text for the request type on the service desk.
  final String? helpText;

  RequestTypeCreateDTO(
      {this.issueTypeId, this.name, this.description, this.helpText});

  factory RequestTypeCreateDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeCreateDTO(
      issueTypeId: json[r'issueTypeId'] as String?,
      name: json[r'name'] as String?,
      description: json[r'description'] as String?,
      helpText: json[r'helpText'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var issueTypeId = this.issueTypeId;
    var name = this.name;
    var description = this.description;
    var helpText = this.helpText;

    final json = <String, Object?>{};
    if (issueTypeId != null) {
      json[r'issueTypeId'] = issueTypeId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (helpText != null) {
      json[r'helpText'] = helpText;
    }
    return json;
  }

  RequestTypeCreateDTO copyWith(
      {String? issueTypeId,
      String? name,
      String? description,
      String? helpText}) {
    return RequestTypeCreateDTO(
      issueTypeId: issueTypeId ?? this.issueTypeId,
      name: name ?? this.name,
      description: description ?? this.description,
      helpText: helpText ?? this.helpText,
    );
  }
}

class RequestTypeDTO {
  /// ID for the request type.
  final String? id;

  /// Short name for the request type.
  final String? name;

  /// Description of the request type.
  final String? description;

  /// Help text for the request type.
  final String? helpText;

  /// ID of the issue type the request type is based upon.
  final String? issueTypeId;

  /// ID of the service desk the request type belongs to.
  final String? serviceDeskId;

  /// List of the request type groups the request type belongs to.
  final List<String> groupIds;

  /// Links to the request type's icons.
  final RequestTypeIconDTO? icon;

  /// Fields and additional metadata for creating a request that uses the
  /// request type
  final CustomerRequestCreateMetaDTO? fields;

  /// The request type's practice
  final String? practice;

  /// List of items that can be expanded in the response by specifying the
  /// expand query parameter.
  final List<String> expands;

  /// REST API URL for the request type.
  final SelfLinkDTO? links;

  RequestTypeDTO(
      {this.id,
      this.name,
      this.description,
      this.helpText,
      this.issueTypeId,
      this.serviceDeskId,
      List<String>? groupIds,
      this.icon,
      this.fields,
      this.practice,
      List<String>? expands,
      this.links})
      : groupIds = groupIds ?? [],
        expands = expands ?? [];

  factory RequestTypeDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      description: json[r'description'] as String?,
      helpText: json[r'helpText'] as String?,
      issueTypeId: json[r'issueTypeId'] as String?,
      serviceDeskId: json[r'serviceDeskId'] as String?,
      groupIds: (json[r'groupIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      icon: json[r'icon'] != null
          ? RequestTypeIconDTO.fromJson(json[r'icon']! as Map<String, Object?>)
          : null,
      fields: json[r'fields'] != null
          ? CustomerRequestCreateMetaDTO.fromJson(
              json[r'fields']! as Map<String, Object?>)
          : null,
      practice: json[r'practice'] as String?,
      expands: (json[r'_expands'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var description = this.description;
    var helpText = this.helpText;
    var issueTypeId = this.issueTypeId;
    var serviceDeskId = this.serviceDeskId;
    var groupIds = this.groupIds;
    var icon = this.icon;
    var fields = this.fields;
    var practice = this.practice;
    var expands = this.expands;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (helpText != null) {
      json[r'helpText'] = helpText;
    }
    if (issueTypeId != null) {
      json[r'issueTypeId'] = issueTypeId;
    }
    if (serviceDeskId != null) {
      json[r'serviceDeskId'] = serviceDeskId;
    }
    json[r'groupIds'] = groupIds;
    if (icon != null) {
      json[r'icon'] = icon.toJson();
    }
    if (fields != null) {
      json[r'fields'] = fields.toJson();
    }
    if (practice != null) {
      json[r'practice'] = practice;
    }
    json[r'_expands'] = expands;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  RequestTypeDTO copyWith(
      {String? id,
      String? name,
      String? description,
      String? helpText,
      String? issueTypeId,
      String? serviceDeskId,
      List<String>? groupIds,
      RequestTypeIconDTO? icon,
      CustomerRequestCreateMetaDTO? fields,
      String? practice,
      List<String>? expands,
      SelfLinkDTO? links}) {
    return RequestTypeDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      helpText: helpText ?? this.helpText,
      issueTypeId: issueTypeId ?? this.issueTypeId,
      serviceDeskId: serviceDeskId ?? this.serviceDeskId,
      groupIds: groupIds ?? this.groupIds,
      icon: icon ?? this.icon,
      fields: fields ?? this.fields,
      practice: practice ?? this.practice,
      expands: expands ?? this.expands,
      links: links ?? this.links,
    );
  }
}

class RequestTypeFieldDTO {
  /// ID of the field.
  final String? fieldId;

  /// Name of the field.
  final String? name;

  /// Description of the field.
  final String? description;

  /// Indicates if the field is required (true) or not (false).
  final bool required;

  /// List of default values for the field.
  final List<RequestTypeFieldValueDTO> defaultValues;

  /// List of valid values for the field.
  final List<RequestTypeFieldValueDTO> validValues;

  /// List of preset values for the field.
  final List<String> presetValues;

  /// Jira specific implementation details for the field in the UI.
  final JsonTypeBean? jiraSchema;
  final bool visible;

  RequestTypeFieldDTO(
      {this.fieldId,
      this.name,
      this.description,
      bool? required,
      List<RequestTypeFieldValueDTO>? defaultValues,
      List<RequestTypeFieldValueDTO>? validValues,
      List<String>? presetValues,
      this.jiraSchema,
      bool? visible})
      : required = required ?? false,
        defaultValues = defaultValues ?? [],
        validValues = validValues ?? [],
        presetValues = presetValues ?? [],
        visible = visible ?? false;

  factory RequestTypeFieldDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeFieldDTO(
      fieldId: json[r'fieldId'] as String?,
      name: json[r'name'] as String?,
      description: json[r'description'] as String?,
      required: json[r'required'] as bool? ?? false,
      defaultValues: (json[r'defaultValues'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      validValues: (json[r'validValues'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      presetValues: (json[r'presetValues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      jiraSchema: json[r'jiraSchema'] != null
          ? JsonTypeBean.fromJson(json[r'jiraSchema']! as Map<String, Object?>)
          : null,
      visible: json[r'visible'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var name = this.name;
    var description = this.description;
    var required = this.required;
    var defaultValues = this.defaultValues;
    var validValues = this.validValues;
    var presetValues = this.presetValues;
    var jiraSchema = this.jiraSchema;
    var visible = this.visible;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    json[r'required'] = required;
    json[r'defaultValues'] = defaultValues.map((i) => i.toJson()).toList();
    json[r'validValues'] = validValues.map((i) => i.toJson()).toList();
    json[r'presetValues'] = presetValues;
    if (jiraSchema != null) {
      json[r'jiraSchema'] = jiraSchema.toJson();
    }
    json[r'visible'] = visible;
    return json;
  }

  RequestTypeFieldDTO copyWith(
      {String? fieldId,
      String? name,
      String? description,
      bool? required,
      List<RequestTypeFieldValueDTO>? defaultValues,
      List<RequestTypeFieldValueDTO>? validValues,
      List<String>? presetValues,
      JsonTypeBean? jiraSchema,
      bool? visible}) {
    return RequestTypeFieldDTO(
      fieldId: fieldId ?? this.fieldId,
      name: name ?? this.name,
      description: description ?? this.description,
      required: required ?? this.required,
      defaultValues: defaultValues ?? this.defaultValues,
      validValues: validValues ?? this.validValues,
      presetValues: presetValues ?? this.presetValues,
      jiraSchema: jiraSchema ?? this.jiraSchema,
      visible: visible ?? this.visible,
    );
  }
}

class RequestTypeFieldValueDTO {
  /// Value of the field.
  final String? value;

  /// Label for the field.
  final String? label;

  /// List of child fields.
  final List<RequestTypeFieldValueDTO> children;

  RequestTypeFieldValueDTO(
      {this.value, this.label, List<RequestTypeFieldValueDTO>? children})
      : children = children ?? [];

  factory RequestTypeFieldValueDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeFieldValueDTO(
      value: json[r'value'] as String?,
      label: json[r'label'] as String?,
      children: (json[r'children'] as List<Object?>?)
              ?.map((i) => RequestTypeFieldValueDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var label = this.label;
    var children = this.children;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    json[r'children'] = children.map((i) => i.toJson()).toList();
    return json;
  }

  RequestTypeFieldValueDTO copyWith(
      {String? value,
      String? label,
      List<RequestTypeFieldValueDTO>? children}) {
    return RequestTypeFieldValueDTO(
      value: value ?? this.value,
      label: label ?? this.label,
      children: children ?? this.children,
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
  /// ID of the request type icon.
  final String? id;

  /// Map of the URLs for the request type icons.
  final RequestTypeIconLinkDTO? links;

  RequestTypeIconDTO({this.id, this.links});

  factory RequestTypeIconDTO.fromJson(Map<String, Object?> json) {
    return RequestTypeIconDTO(
      id: json[r'id'] as String?,
      links: json[r'_links'] != null
          ? RequestTypeIconLinkDTO.fromJson(
              json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  RequestTypeIconDTO copyWith({String? id, RequestTypeIconLinkDTO? links}) {
    return RequestTypeIconDTO(
      id: id ?? this.id,
      links: links ?? this.links,
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
  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  /// List of users, specified by account IDs, to add to or remove from a
  /// service desk.
  final List<String> accountIds;

  ServiceDeskCustomerDTO({List<String>? usernames, List<String>? accountIds})
      : usernames = usernames ?? [],
        accountIds = accountIds ?? [];

  factory ServiceDeskCustomerDTO.fromJson(Map<String, Object?> json) {
    return ServiceDeskCustomerDTO(
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var usernames = this.usernames;
    var accountIds = this.accountIds;

    final json = <String, Object?>{};
    json[r'usernames'] = usernames;
    json[r'accountIds'] = accountIds;
    return json;
  }

  ServiceDeskCustomerDTO copyWith(
      {List<String>? usernames, List<String>? accountIds}) {
    return ServiceDeskCustomerDTO(
      usernames: usernames ?? this.usernames,
      accountIds: accountIds ?? this.accountIds,
    );
  }
}

class ServiceDeskDTO {
  /// ID of the service desk.
  final String? id;

  /// ID of the peer project for the service desk.
  final String? projectId;

  /// Name of the project and service desk.
  final String? projectName;

  /// Key of the peer project of the service desk.
  final String? projectKey;

  /// REST API URL to the service desk.
  final SelfLinkDTO? links;

  ServiceDeskDTO(
      {this.id, this.projectId, this.projectName, this.projectKey, this.links});

  factory ServiceDeskDTO.fromJson(Map<String, Object?> json) {
    return ServiceDeskDTO(
      id: json[r'id'] as String?,
      projectId: json[r'projectId'] as String?,
      projectName: json[r'projectName'] as String?,
      projectKey: json[r'projectKey'] as String?,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var projectId = this.projectId;
    var projectName = this.projectName;
    var projectKey = this.projectKey;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (projectId != null) {
      json[r'projectId'] = projectId;
    }
    if (projectName != null) {
      json[r'projectName'] = projectName;
    }
    if (projectKey != null) {
      json[r'projectKey'] = projectKey;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  ServiceDeskDTO copyWith(
      {String? id,
      String? projectId,
      String? projectName,
      String? projectKey,
      SelfLinkDTO? links}) {
    return ServiceDeskDTO(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      projectName: projectName ?? this.projectName,
      projectKey: projectKey ?? this.projectKey,
      links: links ?? this.links,
    );
  }
}

/// Details about the operations available in this version.
class SimpleLink {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  SimpleLink(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory SimpleLink.fromJson(Map<String, Object?> json) {
    return SimpleLink(
      id: json[r'id'] as String?,
      styleClass: json[r'styleClass'] as String?,
      iconClass: json[r'iconClass'] as String?,
      label: json[r'label'] as String?,
      title: json[r'title'] as String?,
      href: json[r'href'] as String?,
      weight: (json[r'weight'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var styleClass = this.styleClass;
    var iconClass = this.iconClass;
    var label = this.label;
    var title = this.title;
    var href = this.href;
    var weight = this.weight;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (styleClass != null) {
      json[r'styleClass'] = styleClass;
    }
    if (iconClass != null) {
      json[r'iconClass'] = iconClass;
    }
    if (label != null) {
      json[r'label'] = label;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (href != null) {
      json[r'href'] = href;
    }
    if (weight != null) {
      json[r'weight'] = weight;
    }
    return json;
  }

  SimpleLink copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return SimpleLink(
      id: id ?? this.id,
      styleClass: styleClass ?? this.styleClass,
      iconClass: iconClass ?? this.iconClass,
      label: label ?? this.label,
      title: title ?? this.title,
      href: href ?? this.href,
      weight: weight ?? this.weight,
    );
  }
}

class SlaInformationCompletedCycleDTO {
  /// Time and date at which the SLA cycle started.
  final DateDTO? startTime;

  /// Time and date at which the SLA cycle completed.
  final DateDTO? stopTime;

  /// Time and date at which the SLA cycle breached in case of completed
  /// breached cycle or would have breached in case of non-breached completed
  /// cycle.
  final DateDTO? breachTime;

  /// Indicates if the SLA (duration) was exceeded (true) or not (false).
  final bool breached;

  /// Duration within which the service should have been completed.
  final DurationDTO? goalDuration;

  /// Duration in which the service was completed.
  final DurationDTO? elapsedTime;

  /// Duration remaining after the service was completed.
  final DurationDTO? remainingTime;

  SlaInformationCompletedCycleDTO(
      {this.startTime,
      this.stopTime,
      this.breachTime,
      bool? breached,
      this.goalDuration,
      this.elapsedTime,
      this.remainingTime})
      : breached = breached ?? false;

  factory SlaInformationCompletedCycleDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationCompletedCycleDTO(
      startTime: json[r'startTime'] != null
          ? DateDTO.fromJson(json[r'startTime']! as Map<String, Object?>)
          : null,
      stopTime: json[r'stopTime'] != null
          ? DateDTO.fromJson(json[r'stopTime']! as Map<String, Object?>)
          : null,
      breachTime: json[r'breachTime'] != null
          ? DateDTO.fromJson(json[r'breachTime']! as Map<String, Object?>)
          : null,
      breached: json[r'breached'] as bool? ?? false,
      goalDuration: json[r'goalDuration'] != null
          ? DurationDTO.fromJson(json[r'goalDuration']! as Map<String, Object?>)
          : null,
      elapsedTime: json[r'elapsedTime'] != null
          ? DurationDTO.fromJson(json[r'elapsedTime']! as Map<String, Object?>)
          : null,
      remainingTime: json[r'remainingTime'] != null
          ? DurationDTO.fromJson(
              json[r'remainingTime']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var startTime = this.startTime;
    var stopTime = this.stopTime;
    var breachTime = this.breachTime;
    var breached = this.breached;
    var goalDuration = this.goalDuration;
    var elapsedTime = this.elapsedTime;
    var remainingTime = this.remainingTime;

    final json = <String, Object?>{};
    if (startTime != null) {
      json[r'startTime'] = startTime.toJson();
    }
    if (stopTime != null) {
      json[r'stopTime'] = stopTime.toJson();
    }
    if (breachTime != null) {
      json[r'breachTime'] = breachTime.toJson();
    }
    json[r'breached'] = breached;
    if (goalDuration != null) {
      json[r'goalDuration'] = goalDuration.toJson();
    }
    if (elapsedTime != null) {
      json[r'elapsedTime'] = elapsedTime.toJson();
    }
    if (remainingTime != null) {
      json[r'remainingTime'] = remainingTime.toJson();
    }
    return json;
  }

  SlaInformationCompletedCycleDTO copyWith(
      {DateDTO? startTime,
      DateDTO? stopTime,
      DateDTO? breachTime,
      bool? breached,
      DurationDTO? goalDuration,
      DurationDTO? elapsedTime,
      DurationDTO? remainingTime}) {
    return SlaInformationCompletedCycleDTO(
      startTime: startTime ?? this.startTime,
      stopTime: stopTime ?? this.stopTime,
      breachTime: breachTime ?? this.breachTime,
      breached: breached ?? this.breached,
      goalDuration: goalDuration ?? this.goalDuration,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      remainingTime: remainingTime ?? this.remainingTime,
    );
  }
}

class SlaInformationDTO {
  /// ID of the Service Level Agreement (SLA).
  final String? id;

  /// Description of the SLA.
  final String? name;

  /// List of completed cycles for the SLA.
  final List<SlaInformationCompletedCycleDTO> completedCycles;

  /// Details of the active cycle for the SLA.
  final SlaInformationOngoingCycleDTO? ongoingCycle;

  /// Format in which SLA is to be displayed in the UI
  final String? slaDisplayFormat;

  /// REST API URL for the SLA.
  final SelfLinkDTO? links;

  SlaInformationDTO(
      {this.id,
      this.name,
      List<SlaInformationCompletedCycleDTO>? completedCycles,
      this.ongoingCycle,
      this.slaDisplayFormat,
      this.links})
      : completedCycles = completedCycles ?? [];

  factory SlaInformationDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationDTO(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      completedCycles: (json[r'completedCycles'] as List<Object?>?)
              ?.map((i) => SlaInformationCompletedCycleDTO.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      ongoingCycle: json[r'ongoingCycle'] != null
          ? SlaInformationOngoingCycleDTO.fromJson(
              json[r'ongoingCycle']! as Map<String, Object?>)
          : null,
      slaDisplayFormat: json[r'slaDisplayFormat'] as String?,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var completedCycles = this.completedCycles;
    var ongoingCycle = this.ongoingCycle;
    var slaDisplayFormat = this.slaDisplayFormat;
    var links = this.links;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'completedCycles'] = completedCycles.map((i) => i.toJson()).toList();
    if (ongoingCycle != null) {
      json[r'ongoingCycle'] = ongoingCycle.toJson();
    }
    if (slaDisplayFormat != null) {
      json[r'slaDisplayFormat'] = slaDisplayFormat;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SlaInformationDTO copyWith(
      {String? id,
      String? name,
      List<SlaInformationCompletedCycleDTO>? completedCycles,
      SlaInformationOngoingCycleDTO? ongoingCycle,
      String? slaDisplayFormat,
      SelfLinkDTO? links}) {
    return SlaInformationDTO(
      id: id ?? this.id,
      name: name ?? this.name,
      completedCycles: completedCycles ?? this.completedCycles,
      ongoingCycle: ongoingCycle ?? this.ongoingCycle,
      slaDisplayFormat: slaDisplayFormat ?? this.slaDisplayFormat,
      links: links ?? this.links,
    );
  }
}

class SlaInformationOngoingCycleDTO {
  /// Time and date at which the SLA cycle started.
  final DateDTO? startTime;

  /// Time and date at which the SLA cycle would have breached its limit.
  final DateDTO? breachTime;

  /// Indicates whether the SLA has been breached (true) or not (false).
  final bool breached;

  /// Indicates whether the SLA is paused (true) or not (false).
  final bool paused;

  /// Indicates whether the SLA it timed during calendared working hours only
  /// (true) or not (false).
  final bool withinCalendarHours;

  /// Duration within which the service should be completed.
  final DurationDTO? goalDuration;

  /// Duration of the service.
  final DurationDTO? elapsedTime;

  /// Duration remaining in which to complete the service.
  final DurationDTO? remainingTime;

  SlaInformationOngoingCycleDTO(
      {this.startTime,
      this.breachTime,
      bool? breached,
      bool? paused,
      bool? withinCalendarHours,
      this.goalDuration,
      this.elapsedTime,
      this.remainingTime})
      : breached = breached ?? false,
        paused = paused ?? false,
        withinCalendarHours = withinCalendarHours ?? false;

  factory SlaInformationOngoingCycleDTO.fromJson(Map<String, Object?> json) {
    return SlaInformationOngoingCycleDTO(
      startTime: json[r'startTime'] != null
          ? DateDTO.fromJson(json[r'startTime']! as Map<String, Object?>)
          : null,
      breachTime: json[r'breachTime'] != null
          ? DateDTO.fromJson(json[r'breachTime']! as Map<String, Object?>)
          : null,
      breached: json[r'breached'] as bool? ?? false,
      paused: json[r'paused'] as bool? ?? false,
      withinCalendarHours: json[r'withinCalendarHours'] as bool? ?? false,
      goalDuration: json[r'goalDuration'] != null
          ? DurationDTO.fromJson(json[r'goalDuration']! as Map<String, Object?>)
          : null,
      elapsedTime: json[r'elapsedTime'] != null
          ? DurationDTO.fromJson(json[r'elapsedTime']! as Map<String, Object?>)
          : null,
      remainingTime: json[r'remainingTime'] != null
          ? DurationDTO.fromJson(
              json[r'remainingTime']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var startTime = this.startTime;
    var breachTime = this.breachTime;
    var breached = this.breached;
    var paused = this.paused;
    var withinCalendarHours = this.withinCalendarHours;
    var goalDuration = this.goalDuration;
    var elapsedTime = this.elapsedTime;
    var remainingTime = this.remainingTime;

    final json = <String, Object?>{};
    if (startTime != null) {
      json[r'startTime'] = startTime.toJson();
    }
    if (breachTime != null) {
      json[r'breachTime'] = breachTime.toJson();
    }
    json[r'breached'] = breached;
    json[r'paused'] = paused;
    json[r'withinCalendarHours'] = withinCalendarHours;
    if (goalDuration != null) {
      json[r'goalDuration'] = goalDuration.toJson();
    }
    if (elapsedTime != null) {
      json[r'elapsedTime'] = elapsedTime.toJson();
    }
    if (remainingTime != null) {
      json[r'remainingTime'] = remainingTime.toJson();
    }
    return json;
  }

  SlaInformationOngoingCycleDTO copyWith(
      {DateDTO? startTime,
      DateDTO? breachTime,
      bool? breached,
      bool? paused,
      bool? withinCalendarHours,
      DurationDTO? goalDuration,
      DurationDTO? elapsedTime,
      DurationDTO? remainingTime}) {
    return SlaInformationOngoingCycleDTO(
      startTime: startTime ?? this.startTime,
      breachTime: breachTime ?? this.breachTime,
      breached: breached ?? this.breached,
      paused: paused ?? this.paused,
      withinCalendarHours: withinCalendarHours ?? this.withinCalendarHours,
      goalDuration: goalDuration ?? this.goalDuration,
      elapsedTime: elapsedTime ?? this.elapsedTime,
      remainingTime: remainingTime ?? this.remainingTime,
    );
  }
}

class SoftwareInfoDTO {
  /// Jira Service Management version.
  final String? version;

  /// Jira Platform version upon which Service Desk is based.
  final String? platformVersion;

  /// Date of the current build.
  final DateDTO? buildDate;

  /// Reference of the change set included in the build.
  final String? buildChangeSet;

  /// Indicates whether the instance is licensed (true) or not (false).
  final bool isLicensedForUse;

  /// REST API URL of the instance.
  final SelfLinkDTO? links;

  SoftwareInfoDTO(
      {this.version,
      this.platformVersion,
      this.buildDate,
      this.buildChangeSet,
      bool? isLicensedForUse,
      this.links})
      : isLicensedForUse = isLicensedForUse ?? false;

  factory SoftwareInfoDTO.fromJson(Map<String, Object?> json) {
    return SoftwareInfoDTO(
      version: json[r'version'] as String?,
      platformVersion: json[r'platformVersion'] as String?,
      buildDate: json[r'buildDate'] != null
          ? DateDTO.fromJson(json[r'buildDate']! as Map<String, Object?>)
          : null,
      buildChangeSet: json[r'buildChangeSet'] as String?,
      isLicensedForUse: json[r'isLicensedForUse'] as bool? ?? false,
      links: json[r'_links'] != null
          ? SelfLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var version = this.version;
    var platformVersion = this.platformVersion;
    var buildDate = this.buildDate;
    var buildChangeSet = this.buildChangeSet;
    var isLicensedForUse = this.isLicensedForUse;
    var links = this.links;

    final json = <String, Object?>{};
    if (version != null) {
      json[r'version'] = version;
    }
    if (platformVersion != null) {
      json[r'platformVersion'] = platformVersion;
    }
    if (buildDate != null) {
      json[r'buildDate'] = buildDate.toJson();
    }
    if (buildChangeSet != null) {
      json[r'buildChangeSet'] = buildChangeSet;
    }
    json[r'isLicensedForUse'] = isLicensedForUse;
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  SoftwareInfoDTO copyWith(
      {String? version,
      String? platformVersion,
      DateDTO? buildDate,
      String? buildChangeSet,
      bool? isLicensedForUse,
      SelfLinkDTO? links}) {
    return SoftwareInfoDTO(
      version: version ?? this.version,
      platformVersion: platformVersion ?? this.platformVersion,
      buildDate: buildDate ?? this.buildDate,
      buildChangeSet: buildChangeSet ?? this.buildChangeSet,
      isLicensedForUse: isLicensedForUse ?? this.isLicensedForUse,
      links: links ?? this.links,
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
  /// The URL of the status category.
  final String? self;

  /// The ID of the status category.
  final int? id;

  /// The key of the status category.
  final String? key;

  /// The name of the color used to represent the status category.
  final String? colorName;

  /// The name of the status category.
  final String? name;

  StatusCategory({this.self, this.id, this.key, this.colorName, this.name});

  factory StatusCategory.fromJson(Map<String, Object?> json) {
    return StatusCategory(
      self: json[r'self'] as String?,
      id: (json[r'id'] as num?)?.toInt(),
      key: json[r'key'] as String?,
      colorName: json[r'colorName'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var id = this.id;
    var key = this.key;
    var colorName = this.colorName;
    var name = this.name;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (colorName != null) {
      json[r'colorName'] = colorName;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  StatusCategory copyWith(
      {String? self, int? id, String? key, String? colorName, String? name}) {
    return StatusCategory(
      self: self ?? this.self,
      id: id ?? this.id,
      key: key ?? this.key,
      colorName: colorName ?? this.colorName,
      name: name ?? this.name,
    );
  }
}

/// A status.
class StatusDetails {
  /// The URL of the status.
  final String? self;

  /// The description of the status.
  final String? description;

  /// The URL of the icon used to represent the status.
  final String? iconUrl;

  /// The name of the status.
  final String? name;

  /// The ID of the status.
  final String? id;

  /// The category assigned to the status.
  final StatusCategory? statusCategory;

  StatusDetails(
      {this.self,
      this.description,
      this.iconUrl,
      this.name,
      this.id,
      this.statusCategory});

  factory StatusDetails.fromJson(Map<String, Object?> json) {
    return StatusDetails(
      self: json[r'self'] as String?,
      description: json[r'description'] as String?,
      iconUrl: json[r'iconUrl'] as String?,
      name: json[r'name'] as String?,
      id: json[r'id'] as String?,
      statusCategory: json[r'statusCategory'] != null
          ? StatusCategory.fromJson(
              json[r'statusCategory']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var description = this.description;
    var iconUrl = this.iconUrl;
    var name = this.name;
    var id = this.id;
    var statusCategory = this.statusCategory;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (iconUrl != null) {
      json[r'iconUrl'] = iconUrl;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (statusCategory != null) {
      json[r'statusCategory'] = statusCategory.toJson();
    }
    return json;
  }

  StatusDetails copyWith(
      {String? self,
      String? description,
      String? iconUrl,
      String? name,
      String? id,
      StatusCategory? statusCategory}) {
    return StatusDetails(
      self: self ?? this.self,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      name: name ?? this.name,
      id: id ?? this.id,
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
  /// The accountId of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? name;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? key;

  /// Customer's email address. Depending on the customer’s privacy settings,
  /// this may be returned as null.
  final String? emailAddress;

  /// Customer's name for display in a UI. Depending on the customer’s privacy
  /// settings, this may return an alternative value.
  final String? displayName;

  /// Indicates if the customer is active (true) or inactive (false)
  final bool active;

  /// Customer time zone. Depending on the customer’s privacy settings, this may
  /// be returned as null.
  final String? timeZone;

  /// URLs for the customer record and related items.
  final UserLinkDTO? links;

  UserDTO(
      {this.accountId,
      this.name,
      this.key,
      this.emailAddress,
      this.displayName,
      bool? active,
      this.timeZone,
      this.links})
      : active = active ?? false;

  factory UserDTO.fromJson(Map<String, Object?> json) {
    return UserDTO(
      accountId: json[r'accountId'] as String?,
      name: json[r'name'] as String?,
      key: json[r'key'] as String?,
      emailAddress: json[r'emailAddress'] as String?,
      displayName: json[r'displayName'] as String?,
      active: json[r'active'] as bool? ?? false,
      timeZone: json[r'timeZone'] as String?,
      links: json[r'_links'] != null
          ? UserLinkDTO.fromJson(json[r'_links']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var name = this.name;
    var key = this.key;
    var emailAddress = this.emailAddress;
    var displayName = this.displayName;
    var active = this.active;
    var timeZone = this.timeZone;
    var links = this.links;

    final json = <String, Object?>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    json[r'active'] = active;
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    if (links != null) {
      json[r'_links'] = links.toJson();
    }
    return json;
  }

  UserDTO copyWith(
      {String? accountId,
      String? name,
      String? key,
      String? emailAddress,
      String? displayName,
      bool? active,
      String? timeZone,
      UserLinkDTO? links}) {
    return UserDTO(
      accountId: accountId ?? this.accountId,
      name: name ?? this.name,
      key: key ?? this.key,
      emailAddress: emailAddress ?? this.emailAddress,
      displayName: displayName ?? this.displayName,
      active: active ?? this.active,
      timeZone: timeZone ?? this.timeZone,
      links: links ?? this.links,
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
  /// The URL of the user.
  final String? self;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? name;

  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  final String? key;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// The email address of the user. Depending on the user’s privacy settings,
  /// this may be returned as null.
  final String? emailAddress;

  /// The avatars of the user.
  final AvatarUrlsBean? avatarUrls;

  /// The display name of the user. Depending on the user’s privacy settings,
  /// this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The time zone specified in the user's profile. Depending on the user’s
  /// privacy settings, this may be returned as null.
  final String? timeZone;

  /// The type of account represented by this user. This will be one of
  /// 'atlassian' (normal users), 'app' (application user) or 'customer' (Jira
  /// Service Desk customer user)
  final String? accountType;

  UserDetails(
      {this.self,
      this.name,
      this.key,
      this.accountId,
      this.emailAddress,
      this.avatarUrls,
      this.displayName,
      bool? active,
      this.timeZone,
      this.accountType})
      : active = active ?? false;

  factory UserDetails.fromJson(Map<String, Object?> json) {
    return UserDetails(
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
      key: json[r'key'] as String?,
      accountId: json[r'accountId'] as String?,
      emailAddress: json[r'emailAddress'] as String?,
      avatarUrls: json[r'avatarUrls'] != null
          ? AvatarUrlsBean.fromJson(
              json[r'avatarUrls']! as Map<String, Object?>)
          : null,
      displayName: json[r'displayName'] as String?,
      active: json[r'active'] as bool? ?? false,
      timeZone: json[r'timeZone'] as String?,
      accountType: json[r'accountType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var name = this.name;
    var key = this.key;
    var accountId = this.accountId;
    var emailAddress = this.emailAddress;
    var avatarUrls = this.avatarUrls;
    var displayName = this.displayName;
    var active = this.active;
    var timeZone = this.timeZone;
    var accountType = this.accountType;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (key != null) {
      json[r'key'] = key;
    }
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls.toJson();
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    json[r'active'] = active;
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    if (accountType != null) {
      json[r'accountType'] = accountType;
    }
    return json;
  }

  UserDetails copyWith(
      {String? self,
      String? name,
      String? key,
      String? accountId,
      String? emailAddress,
      AvatarUrlsBean? avatarUrls,
      String? displayName,
      bool? active,
      String? timeZone,
      String? accountType}) {
    return UserDetails(
      self: self ?? this.self,
      name: name ?? this.name,
      key: key ?? this.key,
      accountId: accountId ?? this.accountId,
      emailAddress: emailAddress ?? this.emailAddress,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      displayName: displayName ?? this.displayName,
      active: active ?? this.active,
      timeZone: timeZone ?? this.timeZone,
      accountType: accountType ?? this.accountType,
    );
  }
}

class UserLinkDTO {
  final String? self;

  /// REST API URL for the customer.
  final String? jiraRest;

  /// Links to the various sizes of the customer's avatar. Note that this
  /// property is deprecated, and will be removed in future versions.
  final Map<String, dynamic>? avatarUrls;

  UserLinkDTO({this.self, this.jiraRest, this.avatarUrls});

  factory UserLinkDTO.fromJson(Map<String, Object?> json) {
    return UserLinkDTO(
      self: json[r'self'] as String?,
      jiraRest: json[r'jiraRest'] as String?,
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var jiraRest = this.jiraRest;
    var avatarUrls = this.avatarUrls;

    final json = <String, Object?>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (jiraRest != null) {
      json[r'jiraRest'] = jiraRest;
    }
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    return json;
  }

  UserLinkDTO copyWith(
      {String? self, String? jiraRest, Map<String, dynamic>? avatarUrls}) {
    return UserLinkDTO(
      self: self ?? this.self,
      jiraRest: jiraRest ?? this.jiraRest,
      avatarUrls: avatarUrls ?? this.avatarUrls,
    );
  }
}

class UsersOrganizationUpdateDTO {
  /// This property is no longer available and will be removed from the
  /// documentation soon. See the
  /// [deprecation notice](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details. Use `accountIds` instead.
  final List<String> usernames;

  /// List of customers, specific by account IDs, to add to or remove from the
  /// organization.
  final List<String> accountIds;

  UsersOrganizationUpdateDTO(
      {List<String>? usernames, List<String>? accountIds})
      : usernames = usernames ?? [],
        accountIds = accountIds ?? [];

  factory UsersOrganizationUpdateDTO.fromJson(Map<String, Object?> json) {
    return UsersOrganizationUpdateDTO(
      usernames: (json[r'usernames'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      accountIds: (json[r'accountIds'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var usernames = this.usernames;
    var accountIds = this.accountIds;

    final json = <String, Object?>{};
    json[r'usernames'] = usernames;
    json[r'accountIds'] = accountIds;
    return json;
  }

  UsersOrganizationUpdateDTO copyWith(
      {List<String>? usernames, List<String>? accountIds}) {
    return UsersOrganizationUpdateDTO(
      usernames: usernames ?? this.usernames,
      accountIds: accountIds ?? this.accountIds,
    );
  }
}
