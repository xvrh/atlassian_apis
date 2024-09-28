// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: provide_deprecation_message

class JiraSoftwareApi {
  final ApiClient _client;

  JiraSoftwareApi(this._client);

  /// Apis related to the backlog
  late final backlog = BacklogApi(_client);

  /// Apis related to boards
  late final board = BoardApi(_client);

  /// APIs related to integrating builds data with Jira Software. These APIs
  /// are available to Atlassian Connect apps. To use these APIs you must
  /// have the Build module see
  /// https://developer.atlassian.com/cloud/jira/software/modules/build/
  /// in your app's descriptor. They are also related to integrating Jira
  /// Software Cloud with on-premises tools using
  /// OAuth 2.0 credentials, see
  /// https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final builds = BuildsApi(_client);

  /// APIs related to integrating deployments data with Jira Software. These
  /// APIs
  /// are available to Atlassian Connect apps. To use these APIs you must
  /// have the Deployment module see
  /// https://developer.atlassian.com/cloud/jira/software/modules/deployment/
  /// in your app's descriptor. They are also related to integrating Jira
  /// Software Cloud with on-premises tools using
  /// OAuth 2.0 credentials, see
  /// https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final deployments = DeploymentsApi(_client);

  /// APIs related to integrating Dev Ops Components affected by Incident data
  /// with Jira Software. These APIs are available to Atlassian Connect
  /// apps. To use these APIs you must have the DevOps Component module in your
  /// app's descriptor. Read more about Jira Software modules
  /// [here](https://developer.atlassian.com/cloud/jira/software/about-jira-modules/).
  ///
  /// # Module
  /// The DevOps Component module allows third-party providers to add devops
  /// components through a public REST API.
  ///
  /// Supplied devops components information will be used by the Connection
  /// Manager tab in Jira to allow users to associate devops components with
  /// Jira projects. All incident and PIR information related to that devops
  /// component will be presented in the Incidents page in Jira Software, and as
  /// a link to any issues created via the Incidents Page.
  ///
  /// This module also provides actions, two will be used by Jira to let the
  /// provider know when the devops component has been associated or
  /// disassociated with a Jira project, and two can be used by the Provider to
  /// associate a devops component with a Jira Issue.
  ///
  /// Note that the module key and name are not private and therefore should not
  /// contain any sensitive or personally identifiable information.
  ///
  /// ## Example Module
  ///
  /// An example can also be found at
  /// [jira-data-provider-sample-addon](https://bitbucket.org/atlassianlabs/jira-data-provider-sample-addon/src/master/),
  /// which has an `atlassian-connect.json`.
  ///
  /// ```
  /// {
  ///   "modules": {
  ///     "jiraDevOpsComponentProvider": {
  ///       "homeUrl": "https://my-operations-provider.com",
  ///       "logoUrl": "https://my-operations-provider.com/images/logo.svg",
  ///       "documentationUrl":
  /// "https://my-operations-provider.com/docs/jira-integration",
  ///       "actions": {
  ///         "associateEntity": {
  ///             "templateUrl": "/components/associate"
  ///         },
  ///         "disassociateEntity": {
  ///             "templateUrl": "/components/disassociate"
  ///         },
  ///         "onEntityAssociated": {
  ///             "templateUrl": "/components/associate"
  ///         },
  ///         "onEntityDisassociated": {
  ///             "templateUrl": "/components/disassociate"
  ///         }
  ///       },
  ///       "name": {
  ///         "value": "My DevOps Component Provider"
  ///       },
  ///       "key": "devops-component-integration"
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// ### Properties
  ///
  /// | Property         | type          | Description
  ///
  ///                                | Required |
  /// |------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | key              | string        | A key to identify this module.  Must
  /// match `^[a-zA-Z0-9-]+$` pattern, with a max length of 100
  ///                                 | Yes      |
  /// | name             | object (i18N) | A human readable name. This object
  /// supports
  /// [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/).
  /// | Yes      |
  /// | homeUrl          | string        | URL to the provider’s homepage
  ///
  ///                                | Yes      |
  /// | logoUrl          | string        | Optional URL to the provider’s logo,
  /// which will be displayed in the UI
  ///                                 |          |
  /// | documentationUrl | string        | Optional URL to documentation about
  /// the provider’s Jira integration
  ///                                  |          |
  /// | actions          | object        | Actions the can be used by Jira to
  /// improve the integrated experience
  ///                                   | Yes      |
  ///
  /// ### Actions object
  ///
  /// | Property               | type   | Description
  ///
  ///
  ///                                                 | Required |
  /// |------------------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | associateEntity | object | An action defined by the provider to allow
  /// Jira to retrieve details about operations workspaces via a post endpoint.
  ///
  ///
  ///  | Yes      |
  /// | disassociateEntity | object | An action defined by the provider to allow
  /// Jira to search using details about operations workspaces via a get
  /// endpoint.
  ///
  ///             | Yes      |
  /// | onEntityAssociated | object | An action defined by the provider to allow
  /// Jira to create a new operations container via a post endpoint.
  ///
  ///                                                                  |
  ///  |
  /// | onEntityDisassociated | object | An action defined by the provider to
  /// allow Jira to create a new Post-Incident Review object via a post
  /// endpoint.
  ///
  ///             |       |
  late final devOpsComponents = DevOpsComponentsApi(_client);

  /// APIs related to integrating development information (commits, branches and
  /// pull requests) with Jira. These APIs are available to Atlassian Connect
  /// apps and on-premise integrations using OAuth. Connect apps using these
  /// APIs must have the Development Tool module in the app descriptor, see
  /// https://developer.atlassian.com/cloud/jira/software/modules/development-tool/.
  /// For more details on integrating Jira Software Cloud with on-premises tools
  /// using OAuth 2.0 credentials, see
  /// https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final developmentInformation = DevelopmentInformationApi(_client);

  /// Apis related to epics
  late final epic = EpicApi(_client);

  /// Apis related to integrating Feature Flags with Jira Software. These apis
  /// are only available to Atlassian Connect apps. To use these apis you must
  /// have the Feature Flag module (see
  /// https://developer.atlassian.com/cloud/jira/software/modules/feature-flag/)
  /// in your app's descriptor
  late final featureFlags = FeatureFlagsApi(_client);

  /// Apis related to issues
  late final issue = IssueApi(_client);

  /// APIs related to integrating Incident and Post-Incident Review (PIR) data
  /// with Jira Software. These APIs are available to Atlassian Connect
  /// apps. To use these APIs you must have the Operations module in your app's
  /// descriptor. Read more about Jira Software modules
  /// [here](https://developer.atlassian.com/cloud/jira/software/about-jira-modules/).
  ///
  /// # Module
  ///
  /// The Operations module allows third-party providers to add incident and PIR
  /// information through a public REST API.
  ///
  /// Supplied incident information will be presented in the Incidents page in
  /// Jira Software, and as a link to any issues created via the Incidents Page.
  ///
  /// This module also provides actions, one which allows Jira to provide a
  /// direct link to the operations provider where the user can create a
  /// post-incident review and two which allow Jira to search for relevant
  /// workspaces and devops components.
  ///
  /// Note that the module key and name are not private and therefore should not
  /// contain any sensitive or personally identifiable information.
  ///
  /// ## Example Module
  ///
  /// An example can also be found at
  /// [jira-data-provider-sample-addon](https://bitbucket.org/atlassianlabs/jira-data-provider-sample-addon/src/master/),
  /// which has an `atlassian-connect.json`.
  ///
  /// ```
  /// {
  ///   "modules": {
  ///     "jiraOperationsInfoProvider": {
  ///       "homeUrl": "https://my-operations-provider.com",
  ///       "logoUrl": "https://my-operations-provider.com/images/logo.svg",
  ///       "documentationUrl":
  /// "https://my-operations-provider.com/docs/jira-integration",
  ///       "actions": {
  ///           "fetchWorkspaces": {
  ///               "templateUrl": "/workspaces/list"
  ///           },
  ///           "searchContainers": {
  ///               "templateUrl": "/containers/search"
  ///           },
  ///           "createPostIncidentReview": {
  ///               "url":
  /// "https://my-operations-provider.com/my-workspace/create-post-incident-review?affected-component={component-id}&incident={incident-id}
  ///           }
  ///       },
  ///       "name": {
  ///         "value": "My Operations Provider"
  ///       },
  ///       "key": "operations-integration"
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// ### Properties
  ///
  /// | Property         | type          | Description
  ///
  ///                                | Required |
  /// |------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | key              | string        | A key to identify this module.  Must
  /// match `^[a-zA-Z0-9-]+$` pattern, with a max length of 100
  ///                                 | Yes      |
  /// | name             | object (i18N) | A human readable name. This object
  /// supports
  /// [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/).
  /// | Yes      |
  /// | homeUrl          | string        | URL to the provider’s homepage
  ///
  ///                                | Yes      |
  /// | logoUrl          | string        | Optional URL to the provider’s logo,
  /// which will be displayed in the UI
  ///                                 |          |
  /// | documentationUrl | string        | Optional URL to documentation about
  /// the provider’s Jira integration
  ///                                  |          |
  /// | actions          | object        | Actions the can be used by Jira to
  /// improve the integrated experience
  ///                                   | Yes      |
  ///
  /// ### Actions object
  ///
  /// | Property               | type   | Description
  ///
  ///
  ///                                                 | Required |
  /// |------------------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | fetchWorkspaces | object | An action defined by the provider to allow
  /// Jira to retrieve details about operations workspaces via a post endpoint.
  ///
  ///
  ///  | Yes      |
  /// | searchContainers | object | An action defined by the provider to allow
  /// Jira to search using details about devops components via a get endpoint.
  ///
  ///
  /// | Yes      |
  /// | createPostIncidentReview | object | An action defined by the provider to
  /// allow Jira to create a new Post-Incident Review object via a post
  /// endpoint.
  ///
  ///             |       |
  late final operations = OperationsApi(_client);

  /// APIs related to integrating Remote Links data with Jira Software. These
  /// APIs are available to Atlassian Connect
  /// apps. To use these APIs you must have the Remote Link module in your app's
  /// descriptor. Read more about Jira Software modules
  /// [here](https://developer.atlassian.com/cloud/jira/software/about-jira-modules/).
  ///
  /// # Module
  ///
  /// The Remote Link module allows third-party providers to add a generic link
  /// through a public REST API and associate it with Jira issues or services.
  ///
  /// Supplied remote link information will be presented in the right sidebar of
  /// the new Jira issue view under Releases.
  ///
  /// This module also provides actions, which allows users to perform an action
  /// on the remote link.
  ///
  /// Note that the module key and name are not private and should therefore not
  /// contain any sensitive or personally identifiable information.
  ///
  /// ## Example Module
  ///
  /// An example can also be found at
  /// [jira-data-provider-sample-addon](https://bitbucket.org/atlassianlabs/jira-data-provider-sample-addon/src/master/),
  /// which has an `atlassian-connect.json`.
  ///
  /// ```
  /// {
  ///   "modules": {
  ///     "jiraRemoteLinkInfoProvider": {
  ///       "homeUrl": "https://my-remotelink-provider.com",
  ///       "logoUrl": "https://my-remotelink-provider.com/images/logo.svg",
  ///       "documentationUrl":
  /// "https://my-remotelink-provider.com/docs/jira-integration",
  ///       "actions": [
  ///         {
  ///           "actionId": "action-1",
  ///           "actionLabel": {
  ///             "value": {
  ///               "value": "Acknowledge"
  ///             }
  ///           },
  ///           "templateUrl": "https://my-remotelink-provider.com/ack/{ack-id}"
  ///         }
  ///       ],
  ///       "name": {
  ///         "value": "My Remote Link Provider"
  ///       },
  ///       "key": "remotelink-integration"
  ///     }
  ///   }
  /// }
  /// ```
  ///
  /// ### Properties
  ///
  /// | Property         | type          | Description
  ///
  ///                                | Required |
  /// |------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | key              | string        | A key to identify this module.  Must
  /// match `^[a-zA-Z0-9-]+$` pattern, with a max length of 100
  ///                                 | Yes      |
  /// | name             | object (i18N) | A human readable name. This object
  /// supports
  /// [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/).
  /// | Yes      |
  /// | homeUrl          | string        | URL to the provider’s homepage
  ///
  ///                                | Yes      |
  /// | logoUrl          | string        | Optional URL to the provider’s logo,
  /// which will be displayed in the UI
  ///                                 |          |
  /// | documentationUrl | string        | Optional URL to documentation about
  /// the provider’s Jira integration
  ///                                  |          |
  /// | actions          | object        | Optional actions that can be
  /// performed by Jira users on the remote link
  ///
  /// ### Actions object
  ///
  /// | Property    | type   | Description
  ///
  ///
  ///                                      | Required |
  /// |-------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | actionId    | string | A key to identify a specific action. Used for
  /// associating a specific Remote link to an action of this ID.
  ///  The actionId of an action must be unique across all actions.
  ///                                                        | Yes      |
  /// | actionLabel | object | The actionLabel of an Action is shown visibly to
  /// the User alongside the Remote Link.
  ///
  ///                                       | Yes      |
  /// | templateUrl | string | The templateUrl of an Action is a template where
  /// strings can be substituted into the URL for a specific Remote Link.
  ///   Strings used in the templateUrl must be passed in via an attribute map
  /// when associating an action with a remote link. | Yes      |
  ///
  /// ### ActionLabel Object
  ///
  /// | Property | type          | Description
  ///
  ///                            | Required |
  /// |----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | value    | object (i18n) | The label shown on the UI. This object
  /// supports
  /// [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/).
  /// | Yes      |
  late final remoteLinks = RemoteLinksApi(_client);

  /// Send security information to Jira Software and enable your teams to turn
  /// unplanned vulnerabilities into planned and tracked work.
  ///
  /// Security is everyone's responsibility, and the security feature in Jira
  /// lets you triage and track relevant vulnerabilities as a team. Discuss and
  /// prioritise issues, minimise errors and duplication, and plan security work
  /// to complete in your sprints.
  ///
  /// APIs related to integrating Security information with Jira Software are
  /// available to Atlassian Connect apps. To use these APIs you must have the
  /// Security module in your app's descriptor. Read more about Jira Software
  /// modules
  /// [here](https://developer.atlassian.com/cloud/jira/software/about-jira-modules/).
  late final securityInformation = SecurityInformationApi(_client);

  /// Apis related to sprints
  late final sprint = SprintApi(_client);

  void close() => _client.close();
}

/// Jira Software Cloud REST API documentation

class BacklogApi {
  final ApiClient _client;

  BacklogApi(this._client);

  /// Move issues to the backlog.
  /// This operation is equivalent to remove future and active sprints from a
  /// given set of issues. At most 50 issues may be moved at once.
  Future<void> moveIssuesToBacklog({required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/backlog/issue',
      body: body,
    );
  }

  /// Move issues to the backlog of a particular board (if they are already on
  /// that board).
  /// This operation is equivalent to remove future and active sprints from a
  /// given set of issues if the board has sprints If the board does not have
  /// sprints this will put the issues back into the backlog from the board. At
  /// most 50 issues may be moved at once.
  Future<void> moveIssuesToBacklogForBoard(
      {required int boardId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/backlog/{boardId}/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      body: body,
    );
  }
}

/// Jira Software Cloud REST API documentation

class BoardApi {
  final ApiClient _client;

  BoardApi(this._client);

  /// Returns all boards. This only includes boards that the user has permission
  /// to view.
  ///
  /// **Deprecation notice:** The required OAuth 2.0 scopes will be updated on
  /// February 15, 2024.
  ///
  ///  *  `read:board-scope:jira-software`, `read:project:jira`
  Future<Map<String, dynamic>> getAllBoards(
      {int? startAt,
      int? maxResults,
      Map<String, dynamic>? type,
      String? name,
      String? projectKeyOrId,
      String? accountIdLocation,
      String? projectLocation,
      bool? includePrivate,
      bool? negateLocationFiltering,
      String? orderBy,
      String? expand,
      List<String>? projectTypeLocation,
      int? filterId}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board',
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (type != null) 'type': '$type',
        if (name != null) 'name': name,
        if (projectKeyOrId != null) 'projectKeyOrId': projectKeyOrId,
        if (accountIdLocation != null) 'accountIdLocation': accountIdLocation,
        if (projectLocation != null) 'projectLocation': projectLocation,
        if (includePrivate != null) 'includePrivate': '$includePrivate',
        if (negateLocationFiltering != null)
          'negateLocationFiltering': '$negateLocationFiltering',
        if (orderBy != null) 'orderBy': orderBy,
        if (expand != null) 'expand': expand,
        if (projectTypeLocation != null)
          'projectTypeLocation': projectTypeLocation.map((e) => e).join(','),
        if (filterId != null) 'filterId': '$filterId',
      },
    ) as Map<String, Object?>;
  }

  /// Creates a new board. Board name, type and filter ID is required.
  ///
  ///  *  `name` - Must be less than 255 characters.
  ///  *  `type` - Valid values: scrum, kanban
  ///  *  `filterId` - ID of a filter that the user has permissions to view.
  /// Note, if the user does not have the 'Create shared objects' permission and
  /// tries to create a shared board, a private board will be created instead
  /// (remember that board sharing depends on the filter sharing).
  ///  *  `location` - The container that the board will be located in.
  /// `location` must include the `type` property (Valid values: project, user).
  /// If choosing 'project', then a project must be specified by a
  /// `projectKeyOrId` property in `location`. If choosing 'user', the current
  /// user is chosen by default. The `projectKeyOrId` property should not be
  /// provided.
  ///
  /// Note:
  ///
  ///  *  If you want to create a new project with an associated board, use the
  /// [Jira platform REST API](https://docs.atlassian.com/jira/REST/latest). For
  /// more information, see the [Create project](#api-rest-api-3-project-post)
  /// method. The `projectTypeKey` for software boards must be 'software' and
  /// the `projectTemplateKey` must be either
  /// `com.pyxis.greenhopper.jira:gh-kanban-template` or
  /// `com.pyxis.greenhopper.jira:gh-scrum-template`.
  ///  *  You can create a filter using the
  /// [Jira REST API](https://docs.atlassian.com/jira/REST/latest). For more
  /// information, see the [Create filter](#api-rest-api-3-filter-post) method.
  ///  *  If you do not ORDER BY the Rank field for the filter of your board,
  /// you will not be able to reorder issues on the board.
  Future<Map<String, dynamic>> createBoard(
      {required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/agile/1.0/board',
      body: body,
    ) as Map<String, Object?>;
  }

  /// Returns any boards which use the provided filter id. This method can be
  /// executed by users without a valid software license in order to find which
  /// boards are using a particular filter.
  Future<Map<String, dynamic>> getBoardByFilterId(
      {int? startAt, int? maxResults, required int filterId}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/filter/{filterId}',
      pathParameters: {
        'filterId': '$filterId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    ) as Map<String, Object?>;
  }

  /// Deletes the board. Admin without the view permission can still remove the
  /// board.
  Future<void> deleteBoard(int boardId) async {
    await _client.send(
      'delete',
      'rest/agile/1.0/board/{boardId}',
      pathParameters: {
        'boardId': '$boardId',
      },
    );
  }

  /// Returns the board for the given board ID. This board will only be returned
  /// if the user has permission to view it. Admins without the view permission
  /// will see the board as a private one, so will see only a subset of the
  /// board's data (board location for instance).
  Future<Map<String, dynamic>> getBoard(int boardId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Returns all issues from the board's backlog, for the given board ID. This
  /// only includes issues that the user has permission to view. The backlog
  /// contains incomplete issues that are not assigned to any future or active
  /// sprint. Note, if the user does not have permission to view the board, no
  /// issues will be returned at all. Issues returned from this resource include
  /// Agile fields, like sprint, closedSprints, flagged, and epic. By default,
  /// the returned issues are ordered by rank.
  Future<SearchResults> getIssuesForBacklog(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return SearchResults.fromJson(await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/backlog',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    ));
  }

  /// Get the board configuration. The response contains the following fields:
  ///
  ///  *  `id` - ID of the board.
  ///  *  `name` - Name of the board.
  ///  *  `filter` - Reference to the filter used by the given board.
  ///  *  `location` - Reference to the container that the board is located in.
  /// Includes the container type (Valid values: project, user).
  ///  *  `subQuery` (Kanban only) - JQL subquery used by the given board.
  ///  *  `columnConfig` - The column configuration lists the columns for the
  /// board, in the order defined in the column configuration. For each column,
  /// it shows the issue status mapping as well as the constraint type (Valid
  /// values: none, issueCount, issueCountExclSubs) for the min/max number of
  /// issues. Note, the last column with statuses mapped to it is treated as the
  /// "Done" column, which means that issues in that column will be marked as
  /// already completed.
  ///  *  `estimation` (Scrum only) - Contains information about type of
  /// estimation used for the board. Valid values: none, issueCount, field. If
  /// the estimation type is "field", the ID and display name of the field used
  /// for estimation is also returned. Note, estimates for an issue can be
  /// updated by a PUT /rest/api/3/issue/{issueIdOrKey} request, however the
  /// fields must be on the screen. "timeoriginalestimate" field will never be
  /// on the screen, so in order to update it "originalEstimate" in
  /// "timetracking" field should be updated.
  ///  *  `ranking` - Contains information about custom field used for ranking
  /// in the given board.
  Future<Map<String, dynamic>> getConfiguration(int boardId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/configuration',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Returns all epics from the board, for the given board ID. This only
  /// includes epics that the user has permission to view. Note, if the user
  /// does not have permission to view the board, no epics will be returned at
  /// all.
  Future<dynamic> getEpics(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? done}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/epic',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (done != null) 'done': done,
      },
    );
  }

  /// Returns all issues that do not belong to any epic on a board, for a given
  /// board ID. This only includes issues that the user has permission to view.
  /// Issues returned from this resource include Agile fields, like sprint,
  /// closedSprints, flagged, and epic. By default, the returned issues are
  /// ordered by rank.
  Future<dynamic> getIssuesWithoutEpicForBoard(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/epic/none/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Returns all issues that belong to an epic on the board, for the given epic
  /// ID and the board ID. This only includes issues that the user has
  /// permission to view. Issues returned from this resource include Agile
  /// fields, like sprint, closedSprints, flagged, and epic. By default, the
  /// returned issues are ordered by rank.
  Future<dynamic> getBoardIssuesForEpic(
      {required int boardId,
      required int epicId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/epic/{epicId}/issue',
      pathParameters: {
        'boardId': '$boardId',
        'epicId': '$epicId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  Future<Map<String, dynamic>> getFeaturesForBoard(int boardId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/features',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  Future<Map<String, dynamic>> toggleFeatures(
      {required int boardId, required Map<String, dynamic> body}) async {
    return await _client.send(
      'put',
      'rest/agile/1.0/board/{boardId}/features',
      pathParameters: {
        'boardId': '$boardId',
      },
      body: body,
    ) as Map<String, Object?>;
  }

  /// Returns all issues from a board, for a given board ID. This only includes
  /// issues that the user has permission to view. An issue belongs to the board
  /// if its status is mapped to the board's column. Epic issues do not belongs
  /// to the scrum boards. Note, if the user does not have permission to view
  /// the board, no issues will be returned at all. Issues returned from this
  /// resource include Agile fields, like sprint, closedSprints, flagged, and
  /// epic. By default, the returned issues are ordered by rank.
  Future<SearchResults> getIssuesForBoard(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return SearchResults.fromJson(await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    ));
  }

  /// Move issues from the backog to the board (if they are already in the
  /// backlog of that board).
  /// This operation either moves an issue(s) onto a board from the backlog (by
  /// adding it to the issueList for the board) Or transitions the issue(s) to
  /// the first column for a kanban board with backlog. At most 50 issues may be
  /// moved at once.
  Future<void> moveIssuesToBoard(
      {required int boardId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/board/{boardId}/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      body: body,
    );
  }

  /// Returns all projects that are associated with the board, for the given
  /// board ID. If the user does not have permission to view the board, no
  /// projects will be returned at all. Returned projects are ordered by the
  /// name.
  ///
  /// A project is associated with a board if the board filter contains
  /// reference the project or there is an issue from the project that belongs
  /// to the board.
  ///
  /// The board filter contains reference the project only if JQL query
  /// guarantees that returned issues will be returned from the project set
  /// defined in JQL. For instance the query `project in (ABC, BCD) AND reporter
  /// = admin` have reference to ABC and BCD projects but query `project in
  /// (ABC, BCD) OR reporter = admin` doesn't have reference to any project.
  ///
  /// An issue belongs to the board if its status is mapped to the board's
  /// column. Epic issues do not belongs to the scrum boards.
  Future<dynamic> getProjects(
      {required int boardId, int? startAt, int? maxResults}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/project',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    );
  }

  /// Returns all projects that are statically associated with the board, for
  /// the given board ID. Returned projects are ordered by the name.
  ///
  /// A project is associated with a board if the board filter contains
  /// reference the project.
  ///
  /// The board filter contains reference the project only if JQL query
  /// guarantees that returned issues will be returned from the project set
  /// defined in JQL. For instance the query `project in (ABC, BCD) AND reporter
  /// = admin` have reference to ABC and BCD projects but query `project in
  /// (ABC, BCD) OR reporter = admin` doesn't have reference to any project.
  Future<void> getProjectsFull(int boardId) async {
    await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/project/full',
      pathParameters: {
        'boardId': '$boardId',
      },
    );
  }

  /// Returns the keys of all properties for the board identified by the id. The
  /// user who retrieves the property keys is required to have permissions to
  /// view the board.
  Future<void> getBoardPropertyKeys(String boardId) async {
    await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/properties',
      pathParameters: {
        'boardId': boardId,
      },
    );
  }

  /// Removes the property from the board identified by the id. Ths user
  /// removing the property is required to have permissions to modify the board.
  Future<void> deleteBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'delete',
      'rest/agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Returns the value of the property with a given key from the board
  /// identified by the provided id. The user who retrieves the property is
  /// required to have permissions to view the board.
  Future<void> getBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Sets the value of the specified board's property.
  ///
  /// You can use this resource to store a custom data against the board
  /// identified by the id. The user who stores the data is required to have
  /// permissions to modify the board.
  Future<dynamic> setBoardProperty(
      {required String boardId,
      required String propertyKey,
      required dynamic body}) async {
    return await _client.send(
      'put',
      'rest/agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
      },
      body: body,
    );
  }

  /// Returns all quick filters from a board, for a given board ID.
  Future<Map<String, dynamic>> getAllQuickFilters(
      {required int boardId, int? startAt, int? maxResults}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/quickfilter',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the quick filter for a given quick filter ID. The quick filter
  /// will only be returned if the user can view the board that the quick filter
  /// belongs to.
  Future<Map<String, dynamic>> getQuickFilter(
      {required int boardId, required int quickFilterId}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/quickfilter/{quickFilterId}',
      pathParameters: {
        'boardId': '$boardId',
        'quickFilterId': '$quickFilterId',
      },
    ) as Map<String, Object?>;
  }

  Future<Map<String, dynamic>> getReportsForBoard(int boardId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/reports',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Returns all sprints from a board, for a given board ID. This only includes
  /// sprints that the user has permission to view.
  Future<dynamic> getAllSprints(
      {required int boardId,
      int? startAt,
      int? maxResults,
      Map<String, dynamic>? state}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/sprint',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (state != null) 'state': '$state',
      },
    );
  }

  /// Get all issues you have access to that belong to the sprint from the
  /// board. Issue returned from this resource contains additional fields like:
  /// sprint, closedSprints, flagged and epic. Issues are returned ordered by
  /// rank. JQL order has higher priority than default rank.
  Future<dynamic> getBoardIssuesForSprint(
      {required int boardId,
      required int sprintId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/sprint/{sprintId}/issue',
      pathParameters: {
        'boardId': '$boardId',
        'sprintId': '$sprintId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Returns all versions from a board, for a given board ID. This only
  /// includes versions that the user has permission to view. Note, if the user
  /// does not have permission to view the board, no versions will be returned
  /// at all. Returned versions are ordered by the name of the project from
  /// which they belong and then by sequence defined by user.
  Future<dynamic> getAllVersions(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? released}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/version',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (released != null) 'released': released,
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class BuildsApi {
  final ApiClient _client;

  BuildsApi(this._client);

  /// Update / insert builds data.
  ///
  /// Builds are identified by the combination of `pipelineId` and
  /// `buildNumber`, and existing build data for the same
  /// build will be replaced if it exists and the `updateSequenceNumber` of the
  /// existing data is less than the
  /// incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually
  /// be available in Jira; most updates are
  /// available within a short period of time, but may take some time during
  /// peak load and/or maintenance times.
  /// The `getBuildByKey` operation can be used to confirm that data has been
  /// stored successfully (if needed).
  ///
  /// In the case of multiple builds being submitted in one request, each is
  /// validated individually prior to
  /// submission. Details of which build failed submission (if any) are
  /// available in the response object.
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<Map<String, dynamic>> submitBuilds(
      {required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/builds/0.1/bulk',
      body: body,
    ) as Map<String, Object?>;
  }

  /// Bulk delete all builds data that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by.
  /// Optional param `_updateSequenceNumber` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the
  /// Properties (e.g. treated as an AND).
  ///
  /// See the documentation for the `submitBuilds` operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&repoId=repo-345
  ///
  /// Deletion is performed asynchronously. The `getBuildByKey` operation can be
  /// used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteBuildsByProperty({int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'rest/builds/0.1/bulkByProperties',
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
      },
    );
  }

  /// Retrieve the currently stored build data for the given `pipelineId` and
  /// `buildNumber` combination.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getBuildByKey(
      {required String pipelineId, required int buildNumber}) async {
    return await _client.send(
      'get',
      'rest/builds/0.1/pipelines/{pipelineId}/builds/{buildNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'buildNumber': '$buildNumber',
      },
    );
  }

  /// Delete the build data currently stored for the given `pipelineId` and
  /// `buildNumber` combination.
  ///
  /// Deletion is performed asynchronously. The `getBuildByKey` operation can be
  /// used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteBuildByKey(
      {required String pipelineId,
      required int buildNumber,
      int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'rest/builds/0.1/pipelines/{pipelineId}/builds/{buildNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'buildNumber': '$buildNumber',
      },
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class DeploymentsApi {
  final ApiClient _client;

  DeploymentsApi(this._client);

  /// Update / insert deployment data.
  ///
  /// Deployments are identified by the combination of `pipelineId`,
  /// `environmentId` and `deploymentSequenceNumber`, and existing deployment
  /// data for the same deployment will be replaced if it exists and the
  /// `updateSequenceNumber` of existing data is less than the incoming data.
  ///
  /// Submissions are processed asynchronously. Submitted data will eventually
  /// be available in Jira. Most updates are available within a short period of
  /// time, but may take some time during peak load and/or maintenance times.
  /// The `getDeploymentByKey` operation can be used to confirm that data has
  /// been stored successfully (if needed).
  ///
  /// In the case of multiple deployments being submitted in one request, each
  /// is validated individually prior to submission. Details of which
  /// deployments failed submission (if any) are available in the response
  /// object.
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitDeployments({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/deployments/0.1/bulk',
      body: body,
    );
  }

  /// Bulk delete all deployments that match the given request.
  ///
  /// One or more query params must be supplied to specify the Properties to
  /// delete by. Optional param `_updateSequenceNumber` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the Properties (i.e. treated as AND).
  /// See the documentation for the `submitDeployments` operation for more
  /// details.
  ///
  /// Example operation: DELETE
  /// /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The `getDeploymentByKey` operation
  /// can be used to confirm that data has been deleted successfully (if
  /// needed).
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteDeploymentsByProperty({int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'rest/deployments/0.1/bulkByProperties',
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
      },
    );
  }

  /// Retrieve the currently stored deployment data for the given `pipelineId`,
  /// `environmentId` and `deploymentSequenceNumber` combination.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getDeploymentByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber}) async {
    return await _client.send(
      'get',
      'rest/deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'environmentId': environmentId,
        'deploymentSequenceNumber': '$deploymentSequenceNumber',
      },
    );
  }

  /// Delete the currently stored deployment data for the given `pipelineId`,
  /// `environmentId` and `deploymentSequenceNumber` combination.
  ///
  /// Deletion is performed asynchronously. The `getDeploymentByKey` operation
  /// can be used to confirm that data has been deleted successfully (if
  /// needed).
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteDeploymentByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber,
      int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'rest/deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'environmentId': environmentId,
        'deploymentSequenceNumber': '$deploymentSequenceNumber',
      },
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
      },
    );
  }

  /// Retrieve the  Deployment gating status for the given `pipelineId +
  /// environmentId + deploymentSequenceNumber` combination.
  /// Only apps that define the `jiraDeploymentInfoProvider` module can access
  /// this resource. This resource requires the 'READ' scope.
  Future<dynamic> getDeploymentGatingStatusByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber}) async {
    return await _client.send(
      'get',
      'rest/deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}/gating-status',
      pathParameters: {
        'pipelineId': pipelineId,
        'environmentId': environmentId,
        'deploymentSequenceNumber': '$deploymentSequenceNumber',
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class DevOpsComponentsApi {
  final ApiClient _client;

  DevOpsComponentsApi(this._client);

  /// Update / insert DevOps Component data.
  ///
  /// Components are identified by their ID, and existing Component data for the
  /// same ID will be replaced if it exists and the updateSequenceNumber of
  /// existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually
  /// be available in Jira; most updates are available within a short period of
  /// time, but may take some time during peak load and/or maintenance times.
  /// The getComponentById operation can be used to confirm that data has been
  /// stored successfully (if needed).
  ///
  /// In the case of multiple Components being submitted in one request, each is
  /// validated individually prior to submission. Details of which Components
  /// failed submission (if any) are available in the response object.
  ///
  /// A maximum of 1000 components can be submitted in one request.
  ///
  /// Only Connect apps that define the `jiraDevOpsComponentProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitComponents({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/devopscomponents/1.0/bulk',
      body: body,
    );
  }

  /// Bulk delete all Components that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the Properties (e.g. treated as an AND).
  /// See the documentation for the submitComponents operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The getComponentById operation can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraDevOpsComponentProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteComponentsByProperty() async {
    await _client.send(
      'delete',
      'rest/devopscomponents/1.0/bulkByProperties',
    );
  }

  /// Retrieve the currently stored Component data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraDevOpsComponentProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getComponentById(String componentId) async {
    return await _client.send(
      'get',
      'rest/devopscomponents/1.0/{componentId}',
      pathParameters: {
        'componentId': componentId,
      },
    );
  }

  /// Delete the Component data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The getComponentById operation can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraDevOpsComponentProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteComponentById(String componentId) async {
    await _client.send(
      'delete',
      'rest/devopscomponents/1.0/{componentId}',
      pathParameters: {
        'componentId': componentId,
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class DevelopmentInformationApi {
  final ApiClient _client;

  DevelopmentInformationApi(this._client);

  /// Stores development information provided in the request to make it
  /// available when viewing issues in Jira. Existing repository and entity data
  /// for the same ID will be replaced if the updateSequenceId of existing data
  /// is less than the incoming data. Submissions are performed asynchronously.
  /// Submitted data will eventually be available in Jira; most updates are
  /// available within a short period of time, but may take some time during
  /// peak load and/or maintenance times.
  Future<Map<String, dynamic>> storeDevelopmentInformation(
      {required String authorization,
      required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/devinfo/0.10/bulk',
      body: body,
    ) as Map<String, Object?>;
  }

  /// For the specified repository ID, retrieves the repository and the most
  /// recent 400 development information entities. The result will be what is
  /// currently stored, ignoring any pending updates or deletes.
  Future<Map<String, dynamic>> getRepository(
      {required String repositoryId, required String authorization}) async {
    return await _client.send(
      'get',
      'rest/devinfo/0.10/repository/{repositoryId}',
      pathParameters: {
        'repositoryId': repositoryId,
      },
    ) as Map<String, Object?>;
  }

  /// Deletes the repository data stored by the given ID and all related
  /// development information entities. Deletion is performed asynchronously.
  Future<void> deleteRepository(
      {required String repositoryId,
      int? updateSequenceId,
      required String authorization}) async {
    await _client.send(
      'delete',
      'rest/devinfo/0.10/repository/{repositoryId}',
      pathParameters: {
        'repositoryId': repositoryId,
      },
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }

  /// Deletes development information entities which have all the provided
  /// properties. Repositories which have properties that match ALL of the
  /// properties (i.e. treated as an AND), and all their related development
  /// information (such as commits, branches and pull requests), will be
  /// deleted. For example if request is `DELETE
  /// bulk?accountId=123&projectId=ABC` entities which have properties
  /// `accountId=123` and `projectId=ABC` will be deleted. Optional param
  /// `_updateSequenceId` is no longer supported. Deletion is performed
  /// asynchronously: specified entities will eventually be removed from Jira.
  Future<void> deleteByProperties(
      {required String authorization, int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'rest/devinfo/0.10/bulkByProperties',
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }

  /// Checks if repositories which have all the provided properties exists. For
  /// example, if request is `GET
  /// existsByProperties?accountId=123&projectId=ABC` then result will be
  /// positive only if there is at least one repository with both properties
  /// `accountId=123` and `projectId=ABC`. Special property `_updateSequenceId`
  /// can be used to filter all entities with updateSequenceId less or equal
  /// than the value specified. In addition to the optional `_updateSequenceId`,
  /// one or more query params must be supplied to specify properties to search
  /// by.
  Future<Map<String, dynamic>> existsByProperties(
      {required String authorization, int? updateSequenceId}) async {
    return await _client.send(
      'get',
      'rest/devinfo/0.10/existsByProperties',
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    ) as Map<String, Object?>;
  }

  /// Deletes particular development information entity. Deletion is performed
  /// asynchronously.
  Future<void> deleteEntity(
      {required String repositoryId,
      required String entityType,
      required String entityId,
      int? updateSequenceId,
      required String authorization}) async {
    await _client.send(
      'delete',
      'rest/devinfo/0.10/repository/{repositoryId}/{entityType}/{entityId}',
      pathParameters: {
        'repositoryId': repositoryId,
        'entityType': entityType,
        'entityId': entityId,
      },
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class EpicApi {
  final ApiClient _client;

  EpicApi(this._client);

  /// Returns all issues that do not belong to any epic. This only includes
  /// issues that the user has permission to view. Issues returned from this
  /// resource include Agile fields, like sprint, closedSprints, flagged, and
  /// epic. By default, the returned issues are ordered by rank. **Note:** If
  /// you are querying a next-gen project, do not use this operation. Instead,
  /// search for issues that don't belong to an epic by using the
  /// [Search for issues using JQL](https://developer.atlassian.com/cloud/jira/platform/rest/v2/#api-rest-api-2-search-get)
  /// operation in the Jira platform REST API. Build your JQL query using the
  /// `parent is empty` clause. For more information on the `parent` JQL field,
  /// see
  /// [Advanced searching](https://confluence.atlassian.com/x/dAiiLQ#Advancedsearching-fieldsreference-Parent).
  Future<dynamic> getIssuesWithoutEpic(
      {int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/epic/none/issue',
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Removes issues from epics. The user needs to have the edit issue
  /// permission for all issue they want to remove from epics. The maximum
  /// number of issues that can be moved in one operation is 50. **Note:** This
  /// operation does not work for epics in next-gen projects. Instead, update
  /// the issue using `{ fields: { parent: {} } }`
  Future<void> removeIssuesFromEpic(
      {required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/epic/none/issue',
      body: body,
    );
  }

  /// Returns the epic for a given epic ID. This epic will only be returned if
  /// the user has permission to view it. **Note:** This operation does not work
  /// for epics in next-gen projects.
  Future<dynamic> getEpic(String epicIdOrKey) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/epic/{epicIdOrKey}',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
    );
  }

  /// Performs a partial update of the epic. A partial update means that fields
  /// not present in the request JSON will not be updated. Valid values for
  /// color are `color_1` to `color_9`. **Note:** This operation does not work
  /// for epics in next-gen projects.
  Future<dynamic> partiallyUpdateEpic(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/agile/1.0/epic/{epicIdOrKey}',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }

  /// Returns all issues that belong to the epic, for the given epic ID. This
  /// only includes issues that the user has permission to view. Issues returned
  /// from this resource include Agile fields, like sprint, closedSprints,
  /// flagged, and epic. By default, the returned issues are ordered by rank.
  /// **Note:** If you are querying a next-gen project, do not use this
  /// operation. Instead, search for issues that belong to an epic by using the
  /// [Search for issues using JQL](https://developer.atlassian.com/cloud/jira/platform/rest/v2/#api-rest-api-2-search-get)
  /// operation in the Jira platform REST API. Build your JQL query using the
  /// `parent` clause. For more information on the `parent` JQL field, see
  /// [Advanced searching](https://confluence.atlassian.com/x/dAiiLQ#Advancedsearching-fieldsreference-Parent).
  Future<dynamic> getIssuesForEpic(
      {required String epicIdOrKey,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/epic/{epicIdOrKey}/issue',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Moves issues to an epic, for a given epic id. Issues can be only in a
  /// single epic at the same time. That means that already assigned issues to
  /// an epic, will not be assigned to the previous epic anymore. The user needs
  /// to have the edit issue permission for all issue they want to move and to
  /// the epic. The maximum number of issues that can be moved in one operation
  /// is 50. **Note:** This operation does not work for epics in next-gen
  /// projects.
  Future<void> moveIssuesToEpic(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/epic/{epicIdOrKey}/issue',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }

  /// Moves (ranks) an epic before or after a given epic.
  ///
  /// If rankCustomFieldId is not defined, the default rank field will be used.
  ///
  /// **Note:** This operation does not work for epics in next-gen projects.
  Future<void> rankEpics(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'rest/agile/1.0/epic/{epicIdOrKey}/rank',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }
}

/// Jira Software Cloud REST API documentation

class FeatureFlagsApi {
  final ApiClient _client;

  FeatureFlagsApi(this._client);

  /// Update / insert Feature Flag data.
  ///
  /// Feature Flags are identified by their ID, and existing Feature Flag data
  /// for the same ID will be replaced if it exists and the updateSequenceId of
  /// existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually
  /// be available in Jira; most updates are available within a short period of
  /// time, but may take some time during peak load and/or maintenance times.
  /// The getFeatureFlagById operation can be used to confirm that data has been
  /// stored successfully (if needed).
  ///
  /// In the case of multiple Feature Flags being submitted in one request, each
  /// is validated individually prior to submission. Details of which Feature
  /// Flags failed submission (if any) are available in the response object.
  ///
  /// Only Connect apps that define the `jiraFeatureFlagInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitFeatureFlags({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/featureflags/0.1/bulk',
      body: body,
    );
  }

  /// Bulk delete all Feature Flags that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by. Optional param `_updateSequenceId` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the Properties (e.g. treated as an AND).
  /// See the documentation for the submitFeatureFlags operation for more
  /// details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The getFeatureFlagById operation can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraFeatureFlagInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteFeatureFlagsByProperty({int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'rest/featureflags/0.1/bulkByProperties',
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }

  /// Retrieve the currently stored Feature Flag data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraFeatureFlagInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getFeatureFlagById(String featureFlagId) async {
    return await _client.send(
      'get',
      'rest/featureflags/0.1/flag/{featureFlagId}',
      pathParameters: {
        'featureFlagId': featureFlagId,
      },
    );
  }

  /// Delete the Feature Flag data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The getFeatureFlagById operation can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraFeatureFlagInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteFeatureFlagById(
      {required String featureFlagId, int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'rest/featureflags/0.1/flag/{featureFlagId}',
      pathParameters: {
        'featureFlagId': featureFlagId,
      },
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class IssueApi {
  final ApiClient _client;

  IssueApi(this._client);

  /// Moves (ranks) issues before or after a given issue. At most 50 issues may
  /// be ranked at once.
  ///
  /// This operation may fail for some issues, although this will be rare. In
  /// that case the 207 status code is returned for the whole response and
  /// detailed information regarding each issue is available in the response
  /// body.
  ///
  /// If rankCustomFieldId is not defined, the default rank field will be used.
  Future<void> rankIssues({required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'rest/agile/1.0/issue/rank',
      body: body,
    );
  }

  /// Returns a single issue, for a given issue ID or issue key. Issues returned
  /// from this resource include Agile fields, like sprint, closedSprints,
  /// flagged, and epic.
  Future<dynamic> getIssue(
      {required String issueIdOrKey,
      List<Map<String, dynamic>>? fields,
      String? expand,
      bool? updateHistory}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/issue/{issueIdOrKey}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
        if (updateHistory != null) 'updateHistory': '$updateHistory',
      },
    );
  }

  /// Returns the estimation of the issue and a fieldId of the field that is
  /// used for it. `boardId` param is required. This param determines which
  /// field will be updated on a issue.
  ///
  /// Original time internally stores and returns the estimation as a number of
  /// seconds.
  ///
  /// The field used for estimation on the given board can be obtained from
  /// [board configuration resource](#agile/1.0/board-getConfiguration). More
  /// information about the field are returned by
  /// [edit meta resource](#api-rest-api-3-issue-getEditIssueMeta) or
  /// [field resource](#api-rest-api-3-field-get).
  Future<dynamic> getIssueEstimationForBoard(
      {required String issueIdOrKey, int? boardId}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/issue/{issueIdOrKey}/estimation',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (boardId != null) 'boardId': '$boardId',
      },
    );
  }

  /// Updates the estimation of the issue. boardId param is required. This param
  /// determines which field will be updated on a issue.
  ///
  /// Note that this resource changes the estimation field of the issue
  /// regardless of appearance the field on the screen.
  ///
  /// Original time tracking estimation field accepts estimation in formats like
  /// "1w", "2d", "3h", "20m" or number which represent number of minutes.
  /// However, internally the field stores and returns the estimation as a
  /// number of seconds.
  ///
  /// The field used for estimation on the given board can be obtained from
  /// [board configuration resource](#agile/1.0/board-getConfiguration). More
  /// information about the field are returned by
  /// [edit meta resource](#api-rest-api-3-issue-issueIdOrKey-editmeta-get) or
  /// [field resource](#api-rest-api-3-field-get).
  Future<dynamic> estimateIssueForBoard(
      {required String issueIdOrKey,
      int? boardId,
      required Map<String, dynamic> body}) async {
    return await _client.send(
      'put',
      'rest/agile/1.0/issue/{issueIdOrKey}/estimation',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (boardId != null) 'boardId': '$boardId',
      },
      body: body,
    );
  }
}

/// Jira Software Cloud REST API documentation

class OperationsApi {
  final ApiClient _client;

  OperationsApi(this._client);

  /// Insert Operations Workspace IDs to establish a relationship between them
  /// and the Jira site the app is installed in. If a relationship between the
  /// Workspace ID and Jira already exists then the workspace ID will be ignored
  /// and Jira will process the rest of the entries.
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitOperationsWorkspaces({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/operations/1.0/linkedWorkspaces/bulk',
      body: body,
    );
  }

  /// Bulk delete all Operations Workspaces that match the given request.
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  ///
  /// e.g. DELETE /bulk?workspaceIds=111-222-333,444-555-666
  Future<void> deleteWorkspaces() async {
    await _client.send(
      'delete',
      'rest/operations/1.0/linkedWorkspaces/bulk',
    );
  }

  /// Retrieve the either all Operations Workspace IDs associated with the Jira
  /// site or a specific Operations Workspace ID for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// e.g. GET /workspace?workspaceId=111-222-333
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getWorkspaces() async {
    return await _client.send(
      'get',
      'rest/operations/1.0/linkedWorkspaces',
    );
  }

  /// Update / insert Incident or Review data.
  ///
  /// Incidents and reviews are identified by their ID, and existing Incident
  /// and Review data for the same ID will be replaced if it exists and the
  /// updateSequenceNumber of existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually
  /// be available in Jira; most updates are available within a short period of
  /// time, but may take some time during peak load and/or maintenance times.
  /// The getIncidentById or getReviewById operation can be used to confirm that
  /// data has been stored successfully (if needed).
  ///
  /// In the case of multiple Incidents and Reviews being submitted in one
  /// request, each is validated individually prior to submission. Details of
  /// which entities failed submission (if any) are available in the response
  /// object.
  ///
  /// A maximum of 1000 incidents can be submitted in one request.
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitEntity({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/operations/1.0/bulk',
      body: body,
    );
  }

  /// Bulk delete all Entties that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the Properties (e.g. treated as an AND).
  /// See the documentation for the submitEntity operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The getIncidentById operation can be
  /// used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteEntityByProperty() async {
    await _client.send(
      'delete',
      'rest/operations/1.0/bulkByProperties',
    );
  }

  /// Retrieve the currently stored Incident data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getIncidentById(String incidentId) async {
    return await _client.send(
      'get',
      'rest/operations/1.0/incidents/{incidentId}',
      pathParameters: {
        'incidentId': incidentId,
      },
    );
  }

  /// Delete the Incident data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The getIncidentById operation can be
  /// used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteIncidentById(String incidentId) async {
    await _client.send(
      'delete',
      'rest/operations/1.0/incidents/{incidentId}',
      pathParameters: {
        'incidentId': incidentId,
      },
    );
  }

  /// Retrieve the currently stored Review data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getReviewById(String reviewId) async {
    return await _client.send(
      'get',
      'rest/operations/1.0/post-incident-reviews/{reviewId}',
      pathParameters: {
        'reviewId': reviewId,
      },
    );
  }

  /// Delete the Review data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The getReviewById operation can be
  /// used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraOperationsInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteReviewById(String reviewId) async {
    await _client.send(
      'delete',
      'rest/operations/1.0/post-incident-reviews/{reviewId}',
      pathParameters: {
        'reviewId': reviewId,
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class RemoteLinksApi {
  final ApiClient _client;

  RemoteLinksApi(this._client);

  /// Update / insert Remote Link data.
  ///
  /// Remote Links are identified by their ID, existing Remote Link data for the
  /// same ID will be replaced if it
  /// exists and the updateSequenceId of existing data is less than the incoming
  /// data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually
  /// be available in Jira; most updates are
  /// available within a short period of time, but may take some time during
  /// peak load and/or maintenance times.
  /// The `getRemoteLinkById` operation can be used to confirm that data has
  /// been stored successfully (if needed).
  ///
  /// In the case of multiple Remote Links being submitted in one request, each
  /// is validated individually prior to
  /// submission. Details of which Remote LInk failed submission (if any) are
  /// available in the response object.
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module can
  /// access this resource. This resource
  /// requires the 'WRITE' scope for Connect apps.
  Future<Map<String, dynamic>> submitRemoteLinks(
      {required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/remotelinks/1.0/bulk',
      body: body,
    ) as Map<String, Object?>;
  }

  /// Bulk delete all Remote Links data that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by.
  /// Optional param `_updateSequenceNumber` is no longer supported. If more
  /// than one Property is provided,
  /// data will be deleted that matches ALL of the Properties (e.g. treated as
  /// an AND).
  ///
  /// See the documentation for the `submitRemoteLinks` operation for more
  /// details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&repoId=repo-345
  ///
  /// Deletion is performed asynchronously. The `getRemoteLinkById` operation
  /// can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteRemoteLinksByProperty(
      {int? updateSequenceNumber, Map<String, dynamic>? params}) async {
    await _client.send(
      'delete',
      'rest/remotelinks/1.0/bulkByProperties',
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
        if (params != null) 'params': '$params',
      },
    );
  }

  /// Retrieve the currently stored Remote Link data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getRemoteLinkById(String remoteLinkId) async {
    return await _client.send(
      'get',
      'rest/remotelinks/1.0/remotelink/{remoteLinkId}',
      pathParameters: {
        'remoteLinkId': remoteLinkId,
      },
    );
  }

  /// Delete the Remote Link data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The `getRemoteLinkById` operation
  /// can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and
  /// on-premise integrations, can access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteRemoteLinkById(
      {required String remoteLinkId, int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'rest/remotelinks/1.0/remotelink/{remoteLinkId}',
      pathParameters: {
        'remoteLinkId': remoteLinkId,
      },
      queryParameters: {
        if (updateSequenceNumber != null)
          '_updateSequenceNumber': '$updateSequenceNumber',
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class SecurityInformationApi {
  final ApiClient _client;

  SecurityInformationApi(this._client);

  /// Insert Security Workspace IDs to establish a relationship between them and
  /// the Jira site the app is installed on. If a relationship between the
  /// workspace ID and Jira already exists then the workspace ID will be ignored
  /// and Jira will process the rest of the entries.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> submitWorkspaces({required dynamic body}) async {
    await _client.send(
      'post',
      'rest/security/1.0/linkedWorkspaces/bulk',
      body: body,
    );
  }

  /// Bulk delete all linked Security Workspaces that match the given request.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  ///
  /// e.g. DELETE /bulk?workspaceIds=111-222-333,444-555-666
  Future<void> deleteLinkedWorkspaces() async {
    await _client.send(
      'delete',
      'rest/security/1.0/linkedWorkspaces/bulk',
    );
  }

  /// Retrieve all Security Workspaces linked with the Jira site.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getLinkedWorkspaces() async {
    return await _client.send(
      'get',
      'rest/security/1.0/linkedWorkspaces',
    );
  }

  /// Retrieve a specific Security Workspace linked to the Jira site for the
  /// given workspace ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getLinkedWorkspaceById(String workspaceId) async {
    return await _client.send(
      'get',
      'rest/security/1.0/linkedWorkspaces/{workspaceId}',
      pathParameters: {
        'workspaceId': workspaceId,
      },
    );
  }

  /// Update / Insert Vulnerability data.
  ///
  /// Vulnerabilities are identified by their ID, any existing Vulnerability
  /// data with the same ID will be replaced if it exists and the
  /// updateSequenceNumber of the existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Most updates are available
  /// within a short period of time but may take some time during peak load
  /// and/or maintenance times. The GET vulnerability endpoint can be used to
  /// confirm that data has been stored successfully (if needed).
  ///
  /// In the case of multiple Vulnerabilities being submitted in one request,
  /// each is validated individually prior to submission. Details of
  /// Vulnerabilities that failed submission (if any) are available in the
  /// response object.
  ///
  /// A maximum of 1000 vulnerabilities can be submitted in one request.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> submitVulnerabilities({required dynamic body}) async {
    return await _client.send(
      'post',
      'rest/security/1.0/bulk',
      body: body,
    );
  }

  /// Bulk delete all Vulnerabilities that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete
  /// by.
  /// If more than one Property is provided, data will be deleted that matches
  /// ALL of the Properties (e.g. treated as an AND).
  /// Read the POST bulk endpoint documentation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The GET vulnerability endpoint can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteVulnerabilitiesByProperty() async {
    await _client.send(
      'delete',
      'rest/security/1.0/bulkByProperties',
    );
  }

  /// Retrieve the currently stored Vulnerability data for the given ID.
  ///
  /// The result will be what is currently stored, ignoring any pending updates
  /// or deletes.
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<dynamic> getVulnerabilityById(String vulnerabilityId) async {
    return await _client.send(
      'get',
      'rest/security/1.0/vulnerability/{vulnerabilityId}',
      pathParameters: {
        'vulnerabilityId': vulnerabilityId,
      },
    );
  }

  /// Delete the Vulnerability data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The GET vulnerability endpoint can
  /// be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraSecurityInfoProvider` module can
  /// access this resource.
  /// This resource requires the 'DELETE' scope for Connect apps.
  Future<void> deleteVulnerabilityById(String vulnerabilityId) async {
    await _client.send(
      'delete',
      'rest/security/1.0/vulnerability/{vulnerabilityId}',
      pathParameters: {
        'vulnerabilityId': vulnerabilityId,
      },
    );
  }
}

/// Jira Software Cloud REST API documentation

class SprintApi {
  final ApiClient _client;

  SprintApi(this._client);

  /// Creates a future sprint. Sprint name and origin board id are required.
  /// Start date, end date, and goal are optional.
  ///
  /// Note that the sprint name is trimmed. Also, when starting sprints from the
  /// UI, the "endDate" set through this call is ignored and instead the last
  /// sprint's duration is used to fill the form.
  Future<dynamic> createSprint({required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/agile/1.0/sprint',
      body: body,
    );
  }

  /// Deletes a sprint. Once a sprint is deleted, all open issues in the sprint
  /// will be moved to the backlog.
  Future<void> deleteSprint(int sprintId) async {
    await _client.send(
      'delete',
      'rest/agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
    );
  }

  /// Returns the sprint for a given sprint ID. The sprint will only be returned
  /// if the user can view the board that the sprint was created on, or view at
  /// least one of the issues in the sprint.
  Future<dynamic> getSprint(int sprintId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
    );
  }

  /// Performs a partial update of a sprint. A partial update means that fields
  /// not present in the request JSON will not be updated.
  ///
  /// Notes:
  ///
  ///  *  For closed sprints, only the name and goal can be updated; changes to
  /// other fields will be ignored.
  ///  *  A sprint can be started by updating the state to 'active'. This
  /// requires the sprint to be in the 'future' state and have a startDate and
  /// endDate set.
  ///  *  A sprint can be completed by updating the state to 'closed'. This
  /// action requires the sprint to be in the 'active' state. This sets the
  /// completeDate to the time of the request.
  ///  *  Other changes to state are not allowed.
  ///  *  The completeDate field cannot be updated manually.
  Future<dynamic> partiallyUpdateSprint(
      {required int sprintId, required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'rest/agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Performs a full update of a sprint. A full update means that the result
  /// will be exactly the same as the request body. Any fields not present in
  /// the request JSON will be set to null.
  ///
  /// Notes:
  ///
  ///  *  For closed sprints, only the name and goal can be updated; changes to
  /// other fields will be ignored.
  ///  *  A sprint can be started by updating the state to 'active'. This
  /// requires the sprint to be in the 'future' state and have a startDate and
  /// endDate set.
  ///  *  A sprint can be completed by updating the state to 'closed'. This
  /// action requires the sprint to be in the 'active' state. This sets the
  /// completeDate to the time of the request.
  ///  *  Other changes to state are not allowed.
  ///  *  The completeDate field cannot be updated manually.
  Future<dynamic> updateSprint(
      {required int sprintId, required Map<String, dynamic> body}) async {
    return await _client.send(
      'put',
      'rest/agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Returns all issues in a sprint, for a given sprint ID. This only includes
  /// issues that the user has permission to view. By default, the returned
  /// issues are ordered by rank.
  Future<dynamic> getIssuesForSprint(
      {required int sprintId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<Map<String, dynamic>>? fields,
      String? expand}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/sprint/{sprintId}/issue',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': fields.map((e) => '$e').join(','),
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Moves issues to a sprint, for a given sprint ID. Issues can only be moved
  /// to open or active sprints. The maximum number of issues that can be moved
  /// in one operation is 50.
  Future<void> moveIssuesToSprintAndRank(
      {required int sprintId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/sprint/{sprintId}/issue',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Returns the keys of all properties for the sprint identified by the id.
  /// The user who retrieves the property keys is required to have permissions
  /// to view the sprint.
  Future<dynamic> getPropertiesKeys(String sprintId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/sprint/{sprintId}/properties',
      pathParameters: {
        'sprintId': sprintId,
      },
    );
  }

  /// Removes the property from the sprint identified by the id. Ths user
  /// removing the property is required to have permissions to modify the
  /// sprint.
  Future<void> deleteProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
      'delete',
      'rest/agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Returns the value of the property with a given key from the sprint
  /// identified by the provided id. The user who retrieves the property is
  /// required to have permissions to view the sprint.
  Future<dynamic> getProperty(
      {required String sprintId, required String propertyKey}) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Sets the value of the specified sprint's property.
  ///
  /// You can use this resource to store a custom data against the sprint
  /// identified by the id. The user who stores the data is required to have
  /// permissions to modify the sprint.
  Future<dynamic> setProperty(
      {required String sprintId,
      required String propertyKey,
      required dynamic body}) async {
    return await _client.send(
      'put',
      'rest/agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
      },
      body: body,
    );
  }

  /// Swap the position of the sprint with the second sprint.
  Future<void> swapSprint(
      {required int sprintId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'rest/agile/1.0/sprint/{sprintId}/swap',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
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

/// Details about a board.
class Board {
  final Map<String, dynamic>? admins;

  /// Whether the board can be edited.
  final bool canEdit;

  /// Whether the board is selected as a favorite.
  final bool favourite;

  /// The ID of the board.
  final int? id;

  /// Whether the board is private.
  final bool isPrivate;

  /// The container that the board is located in.
  final BoardLocation? location;

  /// The name of the board.
  final String? name;

  /// The URL of the board.
  final String? self;

  /// The type the board.
  final String? type;

  Board(
      {this.admins,
      bool? canEdit,
      bool? favourite,
      this.id,
      bool? isPrivate,
      this.location,
      this.name,
      this.self,
      this.type})
      : canEdit = canEdit ?? false,
        favourite = favourite ?? false,
        isPrivate = isPrivate ?? false;

  factory Board.fromJson(Map<String, Object?> json) {
    return Board(
      admins: json[r'admins'] as Map<String, Object?>?,
      canEdit: json[r'canEdit'] as bool? ?? false,
      favourite: json[r'favourite'] as bool? ?? false,
      id: (json[r'id'] as num?)?.toInt(),
      isPrivate: json[r'isPrivate'] as bool? ?? false,
      location: json[r'location'] != null
          ? BoardLocation.fromJson(json[r'location']! as Map<String, Object?>)
          : null,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var admins = this.admins;
    var canEdit = this.canEdit;
    var favourite = this.favourite;
    var id = this.id;
    var isPrivate = this.isPrivate;
    var location = this.location;
    var name = this.name;
    var self = this.self;
    var type = this.type;

    final json = <String, Object?>{};
    if (admins != null) {
      json[r'admins'] = admins;
    }
    json[r'canEdit'] = canEdit;
    json[r'favourite'] = favourite;
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'isPrivate'] = isPrivate;
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  Board copyWith(
      {Map<String, dynamic>? admins,
      bool? canEdit,
      bool? favourite,
      int? id,
      bool? isPrivate,
      BoardLocation? location,
      String? name,
      String? self,
      String? type}) {
    return Board(
      admins: admins ?? this.admins,
      canEdit: canEdit ?? this.canEdit,
      favourite: favourite ?? this.favourite,
      id: id ?? this.id,
      isPrivate: isPrivate ?? this.isPrivate,
      location: location ?? this.location,
      name: name ?? this.name,
      self: self ?? this.self,
      type: type ?? this.type,
    );
  }
}

/// The users and groups who own the board.
class BoardAdminsBean {
  final List<BoardAdminsBeanGroupsItem> groups;
  final List<BoardAdminsBeanUsersItem> users;

  BoardAdminsBean(
      {List<BoardAdminsBeanGroupsItem>? groups,
      List<BoardAdminsBeanUsersItem>? users})
      : groups = groups ?? [],
        users = users ?? [];

  factory BoardAdminsBean.fromJson(Map<String, Object?> json) {
    return BoardAdminsBean(
      groups: (json[r'groups'] as List<Object?>?)
              ?.map((i) => BoardAdminsBeanGroupsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      users: (json[r'users'] as List<Object?>?)
              ?.map((i) => BoardAdminsBeanUsersItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var groups = this.groups;
    var users = this.users;

    final json = <String, Object?>{};
    json[r'groups'] = groups.map((i) => i.toJson()).toList();
    json[r'users'] = users.map((i) => i.toJson()).toList();
    return json;
  }

  BoardAdminsBean copyWith(
      {List<BoardAdminsBeanGroupsItem>? groups,
      List<BoardAdminsBeanUsersItem>? users}) {
    return BoardAdminsBean(
      groups: groups ?? this.groups,
      users: users ?? this.users,
    );
  }
}

class BoardAdminsBeanGroupsItem {
  final String? name;
  final String? self;

  BoardAdminsBeanGroupsItem({this.name, this.self});

  factory BoardAdminsBeanGroupsItem.fromJson(Map<String, Object?> json) {
    return BoardAdminsBeanGroupsItem(
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  BoardAdminsBeanGroupsItem copyWith({String? name, String? self}) {
    return BoardAdminsBeanGroupsItem(
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class BoardAdminsBeanUsersItem {
  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// Whether the user is active.
  final bool active;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  /// The display name of the user. Depending on the user’s privacy setting,
  /// this may return an alternative value.
  final String? displayName;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The key of the user.
  final String? key;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The username of the user.
  final String? name;

  /// The URL of the user.
  final String? self;

  BoardAdminsBeanUsersItem(
      {this.accountId,
      bool? active,
      this.avatarUrls,
      this.displayName,
      this.key,
      this.name,
      this.self})
      : active = active ?? false;

  factory BoardAdminsBeanUsersItem.fromJson(Map<String, Object?> json) {
    return BoardAdminsBeanUsersItem(
      accountId: json[r'accountId'] as String?,
      active: json[r'active'] as bool? ?? false,
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
      displayName: json[r'displayName'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var active = this.active;
    var avatarUrls = this.avatarUrls;
    var displayName = this.displayName;
    var key = this.key;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    json[r'active'] = active;
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
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

  BoardAdminsBeanUsersItem copyWith(
      {String? accountId,
      bool? active,
      Map<String, dynamic>? avatarUrls,
      String? displayName,
      String? key,
      String? name,
      String? self}) {
    return BoardAdminsBeanUsersItem(
      accountId: accountId ?? this.accountId,
      active: active ?? this.active,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      displayName: displayName ?? this.displayName,
      key: key ?? this.key,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class BoardConfigBean {
  final BoardConfigBeanColumnConfig? columnConfig;
  final BoardConfigBeanEstimation? estimation;
  final BoardConfigBeanFilter? filter;
  final int? id;
  final BoardConfigBeanLocation? location;
  final String? name;
  final BoardConfigBeanRanking? ranking;
  final String? self;
  final BoardConfigBeanSubQuery? subQuery;
  final String? type;

  BoardConfigBean(
      {this.columnConfig,
      this.estimation,
      this.filter,
      this.id,
      this.location,
      this.name,
      this.ranking,
      this.self,
      this.subQuery,
      this.type});

  factory BoardConfigBean.fromJson(Map<String, Object?> json) {
    return BoardConfigBean(
      columnConfig: json[r'columnConfig'] != null
          ? BoardConfigBeanColumnConfig.fromJson(
              json[r'columnConfig']! as Map<String, Object?>)
          : null,
      estimation: json[r'estimation'] != null
          ? BoardConfigBeanEstimation.fromJson(
              json[r'estimation']! as Map<String, Object?>)
          : null,
      filter: json[r'filter'] != null
          ? BoardConfigBeanFilter.fromJson(
              json[r'filter']! as Map<String, Object?>)
          : null,
      id: (json[r'id'] as num?)?.toInt(),
      location: json[r'location'] != null
          ? BoardConfigBeanLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
      name: json[r'name'] as String?,
      ranking: json[r'ranking'] != null
          ? BoardConfigBeanRanking.fromJson(
              json[r'ranking']! as Map<String, Object?>)
          : null,
      self: json[r'self'] as String?,
      subQuery: json[r'subQuery'] != null
          ? BoardConfigBeanSubQuery.fromJson(
              json[r'subQuery']! as Map<String, Object?>)
          : null,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var columnConfig = this.columnConfig;
    var estimation = this.estimation;
    var filter = this.filter;
    var id = this.id;
    var location = this.location;
    var name = this.name;
    var ranking = this.ranking;
    var self = this.self;
    var subQuery = this.subQuery;
    var type = this.type;

    final json = <String, Object?>{};
    if (columnConfig != null) {
      json[r'columnConfig'] = columnConfig.toJson();
    }
    if (estimation != null) {
      json[r'estimation'] = estimation.toJson();
    }
    if (filter != null) {
      json[r'filter'] = filter.toJson();
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (ranking != null) {
      json[r'ranking'] = ranking.toJson();
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (subQuery != null) {
      json[r'subQuery'] = subQuery.toJson();
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  BoardConfigBean copyWith(
      {BoardConfigBeanColumnConfig? columnConfig,
      BoardConfigBeanEstimation? estimation,
      BoardConfigBeanFilter? filter,
      int? id,
      BoardConfigBeanLocation? location,
      String? name,
      BoardConfigBeanRanking? ranking,
      String? self,
      BoardConfigBeanSubQuery? subQuery,
      String? type}) {
    return BoardConfigBean(
      columnConfig: columnConfig ?? this.columnConfig,
      estimation: estimation ?? this.estimation,
      filter: filter ?? this.filter,
      id: id ?? this.id,
      location: location ?? this.location,
      name: name ?? this.name,
      ranking: ranking ?? this.ranking,
      self: self ?? this.self,
      subQuery: subQuery ?? this.subQuery,
      type: type ?? this.type,
    );
  }
}

class BoardConfigBeanColumnConfig {
  final List<BoardConfigBeanColumnConfigColumnsItem> columns;
  final String? constraintType;

  BoardConfigBeanColumnConfig(
      {List<BoardConfigBeanColumnConfigColumnsItem>? columns,
      this.constraintType})
      : columns = columns ?? [];

  factory BoardConfigBeanColumnConfig.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanColumnConfig(
      columns: (json[r'columns'] as List<Object?>?)
              ?.map((i) => BoardConfigBeanColumnConfigColumnsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      constraintType: json[r'constraintType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var columns = this.columns;
    var constraintType = this.constraintType;

    final json = <String, Object?>{};
    json[r'columns'] = columns.map((i) => i.toJson()).toList();
    if (constraintType != null) {
      json[r'constraintType'] = constraintType;
    }
    return json;
  }

  BoardConfigBeanColumnConfig copyWith(
      {List<BoardConfigBeanColumnConfigColumnsItem>? columns,
      String? constraintType}) {
    return BoardConfigBeanColumnConfig(
      columns: columns ?? this.columns,
      constraintType: constraintType ?? this.constraintType,
    );
  }
}

class BoardConfigBeanColumnConfigColumnsItem {
  final int? max;
  final int? min;
  final String? name;
  final List<BoardConfigBeanColumnConfigColumnsItemStatusesItem> statuses;

  BoardConfigBeanColumnConfigColumnsItem(
      {this.max,
      this.min,
      this.name,
      List<BoardConfigBeanColumnConfigColumnsItemStatusesItem>? statuses})
      : statuses = statuses ?? [];

  factory BoardConfigBeanColumnConfigColumnsItem.fromJson(
      Map<String, Object?> json) {
    return BoardConfigBeanColumnConfigColumnsItem(
      max: (json[r'max'] as num?)?.toInt(),
      min: (json[r'min'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) =>
                  BoardConfigBeanColumnConfigColumnsItemStatusesItem.fromJson(
                      i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var max = this.max;
    var min = this.min;
    var name = this.name;
    var statuses = this.statuses;

    final json = <String, Object?>{};
    if (max != null) {
      json[r'max'] = max;
    }
    if (min != null) {
      json[r'min'] = min;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    return json;
  }

  BoardConfigBeanColumnConfigColumnsItem copyWith(
      {int? max,
      int? min,
      String? name,
      List<BoardConfigBeanColumnConfigColumnsItemStatusesItem>? statuses}) {
    return BoardConfigBeanColumnConfigColumnsItem(
      max: max ?? this.max,
      min: min ?? this.min,
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
    );
  }
}

class BoardConfigBeanColumnConfigColumnsItemStatusesItem {
  final String? id;
  final String? self;

  BoardConfigBeanColumnConfigColumnsItemStatusesItem({this.id, this.self});

  factory BoardConfigBeanColumnConfigColumnsItemStatusesItem.fromJson(
      Map<String, Object?> json) {
    return BoardConfigBeanColumnConfigColumnsItemStatusesItem(
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  BoardConfigBeanColumnConfigColumnsItemStatusesItem copyWith(
      {String? id, String? self}) {
    return BoardConfigBeanColumnConfigColumnsItemStatusesItem(
      id: id ?? this.id,
      self: self ?? this.self,
    );
  }
}

class BoardConfigBeanEstimation {
  final BoardConfigBeanEstimationField? field;
  final String? type;

  BoardConfigBeanEstimation({this.field, this.type});

  factory BoardConfigBeanEstimation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimation(
      field: json[r'field'] != null
          ? BoardConfigBeanEstimationField.fromJson(
              json[r'field']! as Map<String, Object?>)
          : null,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var type = this.type;

    final json = <String, Object?>{};
    if (field != null) {
      json[r'field'] = field.toJson();
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  BoardConfigBeanEstimation copyWith(
      {BoardConfigBeanEstimationField? field, String? type}) {
    return BoardConfigBeanEstimation(
      field: field ?? this.field,
      type: type ?? this.type,
    );
  }
}

class BoardConfigBeanEstimationField {
  final String? displayName;
  final String? fieldId;

  BoardConfigBeanEstimationField({this.displayName, this.fieldId});

  factory BoardConfigBeanEstimationField.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimationField(
      displayName: json[r'displayName'] as String?,
      fieldId: json[r'fieldId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var fieldId = this.fieldId;

    final json = <String, Object?>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    return json;
  }

  BoardConfigBeanEstimationField copyWith(
      {String? displayName, String? fieldId}) {
    return BoardConfigBeanEstimationField(
      displayName: displayName ?? this.displayName,
      fieldId: fieldId ?? this.fieldId,
    );
  }
}

class BoardConfigBeanFilter {
  final String? id;
  final String? self;

  BoardConfigBeanFilter({this.id, this.self});

  factory BoardConfigBeanFilter.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanFilter(
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  BoardConfigBeanFilter copyWith({String? id, String? self}) {
    return BoardConfigBeanFilter(
      id: id ?? this.id,
      self: self ?? this.self,
    );
  }
}

class BoardConfigBeanLocation {
  final String? projectKeyOrId;
  final BoardConfigBeanLocationType? type;

  BoardConfigBeanLocation({this.projectKeyOrId, this.type});

  factory BoardConfigBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanLocation(
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
      type: json[r'type'] != null
          ? BoardConfigBeanLocationType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var projectKeyOrId = this.projectKeyOrId;
    var type = this.type;

    final json = <String, Object?>{};
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  BoardConfigBeanLocation copyWith(
      {String? projectKeyOrId, BoardConfigBeanLocationType? type}) {
    return BoardConfigBeanLocation(
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
      type: type ?? this.type,
    );
  }
}

class BoardConfigBeanLocationType {
  static const project = BoardConfigBeanLocationType._('project');
  static const user = BoardConfigBeanLocationType._('user');

  static const values = [
    project,
    user,
  ];
  final String value;

  const BoardConfigBeanLocationType._(this.value);

  static BoardConfigBeanLocationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardConfigBeanLocationType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardConfigBeanRanking {
  final int? rankCustomFieldId;

  BoardConfigBeanRanking({this.rankCustomFieldId});

  factory BoardConfigBeanRanking.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanRanking(
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  BoardConfigBeanRanking copyWith({int? rankCustomFieldId}) {
    return BoardConfigBeanRanking(
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
    );
  }
}

class BoardConfigBeanSubQuery {
  final String? query;

  BoardConfigBeanSubQuery({this.query});

  factory BoardConfigBeanSubQuery.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanSubQuery(
      query: json[r'query'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var query = this.query;

    final json = <String, Object?>{};
    if (query != null) {
      json[r'query'] = query;
    }
    return json;
  }

  BoardConfigBeanSubQuery copyWith({String? query}) {
    return BoardConfigBeanSubQuery(
      query: query ?? this.query,
    );
  }
}

class BoardCreateBean {
  final int? filterId;
  final BoardCreateBeanLocation? location;
  final String? name;
  final BoardCreateBeanType? type;

  BoardCreateBean({this.filterId, this.location, this.name, this.type});

  factory BoardCreateBean.fromJson(Map<String, Object?> json) {
    return BoardCreateBean(
      filterId: (json[r'filterId'] as num?)?.toInt(),
      location: json[r'location'] != null
          ? BoardCreateBeanLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
      name: json[r'name'] as String?,
      type: json[r'type'] != null
          ? BoardCreateBeanType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var filterId = this.filterId;
    var location = this.location;
    var name = this.name;
    var type = this.type;

    final json = <String, Object?>{};
    if (filterId != null) {
      json[r'filterId'] = filterId;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  BoardCreateBean copyWith(
      {int? filterId,
      BoardCreateBeanLocation? location,
      String? name,
      BoardCreateBeanType? type}) {
    return BoardCreateBean(
      filterId: filterId ?? this.filterId,
      location: location ?? this.location,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }
}

class BoardCreateBeanType {
  static const kanban = BoardCreateBeanType._('kanban');
  static const scrum = BoardCreateBeanType._('scrum');
  static const agility = BoardCreateBeanType._('agility');

  static const values = [
    kanban,
    scrum,
    agility,
  ];
  final String value;

  const BoardCreateBeanType._(this.value);

  static BoardCreateBeanType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardCreateBeanType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardCreateBeanLocation {
  final String? projectKeyOrId;
  final BoardCreateBeanLocationType? type;

  BoardCreateBeanLocation({this.projectKeyOrId, this.type});

  factory BoardCreateBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardCreateBeanLocation(
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
      type: json[r'type'] != null
          ? BoardCreateBeanLocationType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var projectKeyOrId = this.projectKeyOrId;
    var type = this.type;

    final json = <String, Object?>{};
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  BoardCreateBeanLocation copyWith(
      {String? projectKeyOrId, BoardCreateBeanLocationType? type}) {
    return BoardCreateBeanLocation(
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
      type: type ?? this.type,
    );
  }
}

class BoardCreateBeanLocationType {
  static const project = BoardCreateBeanLocationType._('project');
  static const user = BoardCreateBeanLocationType._('user');

  static const values = [
    project,
    user,
  ];
  final String value;

  const BoardCreateBeanLocationType._(this.value);

  static BoardCreateBeanLocationType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardCreateBeanLocationType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardFilterBean {
  final int? id;
  final String? name;
  final String? self;

  BoardFilterBean({this.id, this.name, this.self});

  factory BoardFilterBean.fromJson(Map<String, Object?> json) {
    return BoardFilterBean(
      id: (json[r'id'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  BoardFilterBean copyWith({int? id, String? name, String? self}) {
    return BoardFilterBean(
      id: id ?? this.id,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

/// The container that the board is located in.
class BoardLocation {
  final String? avatarUri;
  final String? displayName;
  final String? name;
  final int? projectId;
  final String? projectKey;
  final String? projectName;
  final String? projectTypeKey;
  final String? userAccountId;
  final int? userId;

  BoardLocation(
      {this.avatarUri,
      this.displayName,
      this.name,
      this.projectId,
      this.projectKey,
      this.projectName,
      this.projectTypeKey,
      this.userAccountId,
      this.userId});

  factory BoardLocation.fromJson(Map<String, Object?> json) {
    return BoardLocation(
      avatarUri: json[r'avatarURI'] as String?,
      displayName: json[r'displayName'] as String?,
      name: json[r'name'] as String?,
      projectId: (json[r'projectId'] as num?)?.toInt(),
      projectKey: json[r'projectKey'] as String?,
      projectName: json[r'projectName'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      userAccountId: json[r'userAccountId'] as String?,
      userId: (json[r'userId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var avatarUri = this.avatarUri;
    var displayName = this.displayName;
    var name = this.name;
    var projectId = this.projectId;
    var projectKey = this.projectKey;
    var projectName = this.projectName;
    var projectTypeKey = this.projectTypeKey;
    var userAccountId = this.userAccountId;
    var userId = this.userId;

    final json = <String, Object?>{};
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (name != null) {
      json[r'name'] = name;
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
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  BoardLocation copyWith(
      {String? avatarUri,
      String? displayName,
      String? name,
      int? projectId,
      String? projectKey,
      String? projectName,
      String? projectTypeKey,
      String? userAccountId,
      int? userId}) {
    return BoardLocation(
      avatarUri: avatarUri ?? this.avatarUri,
      displayName: displayName ?? this.displayName,
      name: name ?? this.name,
      projectId: projectId ?? this.projectId,
      projectKey: projectKey ?? this.projectKey,
      projectName: projectName ?? this.projectName,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      userAccountId: userAccountId ?? this.userAccountId,
      userId: userId ?? this.userId,
    );
  }
}

/// The container that the board is located in.
class BoardLocationBean {
  final String? avatarUri;
  final String? displayName;
  final String? name;
  final int? projectId;
  final String? projectKey;
  final String? projectName;
  final String? projectTypeKey;
  final String? userAccountId;
  final int? userId;

  BoardLocationBean(
      {this.avatarUri,
      this.displayName,
      this.name,
      this.projectId,
      this.projectKey,
      this.projectName,
      this.projectTypeKey,
      this.userAccountId,
      this.userId});

  factory BoardLocationBean.fromJson(Map<String, Object?> json) {
    return BoardLocationBean(
      avatarUri: json[r'avatarURI'] as String?,
      displayName: json[r'displayName'] as String?,
      name: json[r'name'] as String?,
      projectId: (json[r'projectId'] as num?)?.toInt(),
      projectKey: json[r'projectKey'] as String?,
      projectName: json[r'projectName'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      userAccountId: json[r'userAccountId'] as String?,
      userId: (json[r'userId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var avatarUri = this.avatarUri;
    var displayName = this.displayName;
    var name = this.name;
    var projectId = this.projectId;
    var projectKey = this.projectKey;
    var projectName = this.projectName;
    var projectTypeKey = this.projectTypeKey;
    var userAccountId = this.userAccountId;
    var userId = this.userId;

    final json = <String, Object?>{};
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (name != null) {
      json[r'name'] = name;
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
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  BoardLocationBean copyWith(
      {String? avatarUri,
      String? displayName,
      String? name,
      int? projectId,
      String? projectKey,
      String? projectName,
      String? projectTypeKey,
      String? userAccountId,
      int? userId}) {
    return BoardLocationBean(
      avatarUri: avatarUri ?? this.avatarUri,
      displayName: displayName ?? this.displayName,
      name: name ?? this.name,
      projectId: projectId ?? this.projectId,
      projectKey: projectKey ?? this.projectKey,
      projectName: projectName ?? this.projectName,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      userAccountId: userAccountId ?? this.userAccountId,
      userId: userId ?? this.userId,
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
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  /// The ID of the changelog.
  final String? id;

  /// The list of items changed.
  final List<ChangelogItemsItem> items;

  Changelog(
      {this.author,
      this.created,
      this.historyMetadata,
      this.id,
      List<ChangelogItemsItem>? items})
      : items = items ?? [];

  factory Changelog.fromJson(Map<String, Object?> json) {
    return Changelog(
      author: json[r'author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      historyMetadata: json[r'historyMetadata'] as Map<String, Object?>?,
      id: json[r'id'] as String?,
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => ChangelogItemsItem.fromJson(
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
      json[r'author'] = author;
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    return json;
  }

  Changelog copyWith(
      {Map<String, dynamic>? author,
      DateTime? created,
      Map<String, dynamic>? historyMetadata,
      String? id,
      List<ChangelogItemsItem>? items}) {
    return Changelog(
      author: author ?? this.author,
      created: created ?? this.created,
      historyMetadata: historyMetadata ?? this.historyMetadata,
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }
}

/// A change item.
class ChangelogItemsItem {
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

  ChangelogItemsItem(
      {this.field,
      this.fieldId,
      this.fieldtype,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangelogItemsItem.fromJson(Map<String, Object?> json) {
    return ChangelogItemsItem(
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

  ChangelogItemsItem copyWith(
      {String? field,
      String? fieldId,
      String? fieldtype,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangelogItemsItem(
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

class ColorBean {
  final ColorBeanKey? key;

  ColorBean({this.key});

  factory ColorBean.fromJson(Map<String, Object?> json) {
    return ColorBean(
      key: json[r'key'] != null
          ? ColorBeanKey.fromValue(json[r'key']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key.value;
    }
    return json;
  }

  ColorBean copyWith({ColorBeanKey? key}) {
    return ColorBean(
      key: key ?? this.key,
    );
  }
}

class ColorBeanKey {
  static const color1 = ColorBeanKey._('color_1');
  static const color2 = ColorBeanKey._('color_2');
  static const color3 = ColorBeanKey._('color_3');
  static const color4 = ColorBeanKey._('color_4');
  static const color5 = ColorBeanKey._('color_5');
  static const color6 = ColorBeanKey._('color_6');
  static const color7 = ColorBeanKey._('color_7');
  static const color8 = ColorBeanKey._('color_8');
  static const color9 = ColorBeanKey._('color_9');
  static const color10 = ColorBeanKey._('color_10');
  static const color11 = ColorBeanKey._('color_11');
  static const color12 = ColorBeanKey._('color_12');
  static const color13 = ColorBeanKey._('color_13');
  static const color14 = ColorBeanKey._('color_14');

  static const values = [
    color1,
    color2,
    color3,
    color4,
    color5,
    color6,
    color7,
    color8,
    color9,
    color10,
    color11,
    color12,
    color13,
    color14,
  ];
  final String value;

  const ColorBeanKey._(this.value);

  static ColorBeanKey fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => ColorBeanKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class ColumnBean {
  final int? max;
  final int? min;
  final String? name;
  final List<ColumnBeanStatusesItem> statuses;

  ColumnBean(
      {this.max, this.min, this.name, List<ColumnBeanStatusesItem>? statuses})
      : statuses = statuses ?? [];

  factory ColumnBean.fromJson(Map<String, Object?> json) {
    return ColumnBean(
      max: (json[r'max'] as num?)?.toInt(),
      min: (json[r'min'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) => ColumnBeanStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var max = this.max;
    var min = this.min;
    var name = this.name;
    var statuses = this.statuses;

    final json = <String, Object?>{};
    if (max != null) {
      json[r'max'] = max;
    }
    if (min != null) {
      json[r'min'] = min;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    return json;
  }

  ColumnBean copyWith(
      {int? max,
      int? min,
      String? name,
      List<ColumnBeanStatusesItem>? statuses}) {
    return ColumnBean(
      max: max ?? this.max,
      min: min ?? this.min,
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
    );
  }
}

class ColumnBeanStatusesItem {
  final String? id;
  final String? self;

  ColumnBeanStatusesItem({this.id, this.self});

  factory ColumnBeanStatusesItem.fromJson(Map<String, Object?> json) {
    return ColumnBeanStatusesItem(
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  ColumnBeanStatusesItem copyWith({String? id, String? self}) {
    return ColumnBeanStatusesItem(
      id: id ?? this.id,
      self: self ?? this.self,
    );
  }
}

class ColumnConfigBean {
  final List<ColumnConfigBeanColumnsItem> columns;
  final String? constraintType;

  ColumnConfigBean(
      {List<ColumnConfigBeanColumnsItem>? columns, this.constraintType})
      : columns = columns ?? [];

  factory ColumnConfigBean.fromJson(Map<String, Object?> json) {
    return ColumnConfigBean(
      columns: (json[r'columns'] as List<Object?>?)
              ?.map((i) => ColumnConfigBeanColumnsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      constraintType: json[r'constraintType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var columns = this.columns;
    var constraintType = this.constraintType;

    final json = <String, Object?>{};
    json[r'columns'] = columns.map((i) => i.toJson()).toList();
    if (constraintType != null) {
      json[r'constraintType'] = constraintType;
    }
    return json;
  }

  ColumnConfigBean copyWith(
      {List<ColumnConfigBeanColumnsItem>? columns, String? constraintType}) {
    return ColumnConfigBean(
      columns: columns ?? this.columns,
      constraintType: constraintType ?? this.constraintType,
    );
  }
}

class ColumnConfigBeanColumnsItem {
  final int? max;
  final int? min;
  final String? name;
  final List<ColumnConfigBeanColumnsItemStatusesItem> statuses;

  ColumnConfigBeanColumnsItem(
      {this.max,
      this.min,
      this.name,
      List<ColumnConfigBeanColumnsItemStatusesItem>? statuses})
      : statuses = statuses ?? [];

  factory ColumnConfigBeanColumnsItem.fromJson(Map<String, Object?> json) {
    return ColumnConfigBeanColumnsItem(
      max: (json[r'max'] as num?)?.toInt(),
      min: (json[r'min'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) => ColumnConfigBeanColumnsItemStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var max = this.max;
    var min = this.min;
    var name = this.name;
    var statuses = this.statuses;

    final json = <String, Object?>{};
    if (max != null) {
      json[r'max'] = max;
    }
    if (min != null) {
      json[r'min'] = min;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    return json;
  }

  ColumnConfigBeanColumnsItem copyWith(
      {int? max,
      int? min,
      String? name,
      List<ColumnConfigBeanColumnsItemStatusesItem>? statuses}) {
    return ColumnConfigBeanColumnsItem(
      max: max ?? this.max,
      min: min ?? this.min,
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
    );
  }
}

class ColumnConfigBeanColumnsItemStatusesItem {
  final String? id;
  final String? self;

  ColumnConfigBeanColumnsItemStatusesItem({this.id, this.self});

  factory ColumnConfigBeanColumnsItemStatusesItem.fromJson(
      Map<String, Object?> json) {
    return ColumnConfigBeanColumnsItemStatusesItem(
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  ColumnConfigBeanColumnsItemStatusesItem copyWith({String? id, String? self}) {
    return ColumnConfigBeanColumnsItemStatusesItem(
      id: id ?? this.id,
      self: self ?? this.self,
    );
  }
}

class Entry {
  final List<String> errors;
  final int? issueId;
  final String? issueKey;
  final int? status;

  Entry({List<String>? errors, this.issueId, this.issueKey, this.status})
      : errors = errors ?? [];

  factory Entry.fromJson(Map<String, Object?> json) {
    return Entry(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      issueId: (json[r'issueId'] as num?)?.toInt(),
      issueKey: json[r'issueKey'] as String?,
      status: (json[r'status'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'errors'] = errors;
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  Entry copyWith(
      {List<String>? errors, int? issueId, String? issueKey, int? status}) {
    return Entry(
      errors: errors ?? this.errors,
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      status: status ?? this.status,
    );
  }
}

class EpicRankRequestBean {
  final String? rankAfterEpic;
  final String? rankBeforeEpic;
  final int? rankCustomFieldId;

  EpicRankRequestBean(
      {this.rankAfterEpic, this.rankBeforeEpic, this.rankCustomFieldId});

  factory EpicRankRequestBean.fromJson(Map<String, Object?> json) {
    return EpicRankRequestBean(
      rankAfterEpic: json[r'rankAfterEpic'] as String?,
      rankBeforeEpic: json[r'rankBeforeEpic'] as String?,
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankAfterEpic = this.rankAfterEpic;
    var rankBeforeEpic = this.rankBeforeEpic;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankAfterEpic != null) {
      json[r'rankAfterEpic'] = rankAfterEpic;
    }
    if (rankBeforeEpic != null) {
      json[r'rankBeforeEpic'] = rankBeforeEpic;
    }
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  EpicRankRequestBean copyWith(
      {String? rankAfterEpic, String? rankBeforeEpic, int? rankCustomFieldId}) {
    return EpicRankRequestBean(
      rankAfterEpic: rankAfterEpic ?? this.rankAfterEpic,
      rankBeforeEpic: rankBeforeEpic ?? this.rankBeforeEpic,
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
    );
  }
}

class EpicUpdateBean {
  final EpicUpdateBeanColor? color;
  final bool done;
  final String? name;
  final String? summary;

  EpicUpdateBean({this.color, bool? done, this.name, this.summary})
      : done = done ?? false;

  factory EpicUpdateBean.fromJson(Map<String, Object?> json) {
    return EpicUpdateBean(
      color: json[r'color'] != null
          ? EpicUpdateBeanColor.fromJson(
              json[r'color']! as Map<String, Object?>)
          : null,
      done: json[r'done'] as bool? ?? false,
      name: json[r'name'] as String?,
      summary: json[r'summary'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var color = this.color;
    var done = this.done;
    var name = this.name;
    var summary = this.summary;

    final json = <String, Object?>{};
    if (color != null) {
      json[r'color'] = color.toJson();
    }
    json[r'done'] = done;
    if (name != null) {
      json[r'name'] = name;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    return json;
  }

  EpicUpdateBean copyWith(
      {EpicUpdateBeanColor? color, bool? done, String? name, String? summary}) {
    return EpicUpdateBean(
      color: color ?? this.color,
      done: done ?? this.done,
      name: name ?? this.name,
      summary: summary ?? this.summary,
    );
  }
}

class EpicUpdateBeanColor {
  final EpicUpdateBeanColorKey? key;

  EpicUpdateBeanColor({this.key});

  factory EpicUpdateBeanColor.fromJson(Map<String, Object?> json) {
    return EpicUpdateBeanColor(
      key: json[r'key'] != null
          ? EpicUpdateBeanColorKey.fromValue(json[r'key']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key.value;
    }
    return json;
  }

  EpicUpdateBeanColor copyWith({EpicUpdateBeanColorKey? key}) {
    return EpicUpdateBeanColor(
      key: key ?? this.key,
    );
  }
}

class EpicUpdateBeanColorKey {
  static const color1 = EpicUpdateBeanColorKey._('color_1');
  static const color2 = EpicUpdateBeanColorKey._('color_2');
  static const color3 = EpicUpdateBeanColorKey._('color_3');
  static const color4 = EpicUpdateBeanColorKey._('color_4');
  static const color5 = EpicUpdateBeanColorKey._('color_5');
  static const color6 = EpicUpdateBeanColorKey._('color_6');
  static const color7 = EpicUpdateBeanColorKey._('color_7');
  static const color8 = EpicUpdateBeanColorKey._('color_8');
  static const color9 = EpicUpdateBeanColorKey._('color_9');
  static const color10 = EpicUpdateBeanColorKey._('color_10');
  static const color11 = EpicUpdateBeanColorKey._('color_11');
  static const color12 = EpicUpdateBeanColorKey._('color_12');
  static const color13 = EpicUpdateBeanColorKey._('color_13');
  static const color14 = EpicUpdateBeanColorKey._('color_14');

  static const values = [
    color1,
    color2,
    color3,
    color4,
    color5,
    color6,
    color7,
    color8,
    color9,
    color10,
    color11,
    color12,
    color13,
    color14,
  ];
  final String value;

  const EpicUpdateBeanColorKey._(this.value);

  static EpicUpdateBeanColorKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => EpicUpdateBeanColorKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class EstimationConfigBean {
  final EstimationConfigBeanField? field;
  final String? type;

  EstimationConfigBean({this.field, this.type});

  factory EstimationConfigBean.fromJson(Map<String, Object?> json) {
    return EstimationConfigBean(
      field: json[r'field'] != null
          ? EstimationConfigBeanField.fromJson(
              json[r'field']! as Map<String, Object?>)
          : null,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var field = this.field;
    var type = this.type;

    final json = <String, Object?>{};
    if (field != null) {
      json[r'field'] = field.toJson();
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  EstimationConfigBean copyWith(
      {EstimationConfigBeanField? field, String? type}) {
    return EstimationConfigBean(
      field: field ?? this.field,
      type: type ?? this.type,
    );
  }
}

class EstimationConfigBeanField {
  final String? displayName;
  final String? fieldId;

  EstimationConfigBeanField({this.displayName, this.fieldId});

  factory EstimationConfigBeanField.fromJson(Map<String, Object?> json) {
    return EstimationConfigBeanField(
      displayName: json[r'displayName'] as String?,
      fieldId: json[r'fieldId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var fieldId = this.fieldId;

    final json = <String, Object?>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    return json;
  }

  EstimationConfigBeanField copyWith({String? displayName, String? fieldId}) {
    return EstimationConfigBeanField(
      displayName: displayName ?? this.displayName,
      fieldId: fieldId ?? this.fieldId,
    );
  }
}

class EstimationConfigurationBean {
  final String? localisedDescription;
  final String? localisedName;
  final EstimationConfigurationBeanValue? value;

  EstimationConfigurationBean(
      {this.localisedDescription, this.localisedName, this.value});

  factory EstimationConfigurationBean.fromJson(Map<String, Object?> json) {
    return EstimationConfigurationBean(
      localisedDescription: json[r'localisedDescription'] as String?,
      localisedName: json[r'localisedName'] as String?,
      value: json[r'value'] != null
          ? EstimationConfigurationBeanValue.fromValue(
              json[r'value']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var localisedDescription = this.localisedDescription;
    var localisedName = this.localisedName;
    var value = this.value;

    final json = <String, Object?>{};
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (value != null) {
      json[r'value'] = value.value;
    }
    return json;
  }

  EstimationConfigurationBean copyWith(
      {String? localisedDescription,
      String? localisedName,
      EstimationConfigurationBeanValue? value}) {
    return EstimationConfigurationBean(
      localisedDescription: localisedDescription ?? this.localisedDescription,
      localisedName: localisedName ?? this.localisedName,
      value: value ?? this.value,
    );
  }
}

class EstimationConfigurationBeanValue {
  static const storyPoints = EstimationConfigurationBeanValue._('STORY_POINTS');
  static const originalEstimate =
      EstimationConfigurationBeanValue._('ORIGINAL_ESTIMATE');

  static const values = [
    storyPoints,
    originalEstimate,
  ];
  final String value;

  const EstimationConfigurationBeanValue._(this.value);

  static EstimationConfigurationBeanValue fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => EstimationConfigurationBeanValue._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class EstimationFieldBean {
  final String? displayName;
  final String? fieldId;

  EstimationFieldBean({this.displayName, this.fieldId});

  factory EstimationFieldBean.fromJson(Map<String, Object?> json) {
    return EstimationFieldBean(
      displayName: json[r'displayName'] as String?,
      fieldId: json[r'fieldId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var displayName = this.displayName;
    var fieldId = this.fieldId;

    final json = <String, Object?>{};
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    return json;
  }

  EstimationFieldBean copyWith({String? displayName, String? fieldId}) {
    return EstimationFieldBean(
      displayName: displayName ?? this.displayName,
      fieldId: fieldId ?? this.fieldId,
    );
  }
}

class FeatureBean {
  final FeatureBeanBoardFeature? boardFeature;
  final int? boardId;
  final String? featureId;
  final FeatureBeanFeatureType? featureType;
  final String? imageUri;
  final String? learnMoreArticleId;
  final String? learnMoreLink;
  final String? localisedDescription;
  final String? localisedGroup;
  final String? localisedName;
  final List<FeatureBeanPermissibleEstimationTypesItem>
      permissibleEstimationTypes;
  final FeatureBeanState? state;
  final bool toggleLocked;

  FeatureBean(
      {this.boardFeature,
      this.boardId,
      this.featureId,
      this.featureType,
      this.imageUri,
      this.learnMoreArticleId,
      this.learnMoreLink,
      this.localisedDescription,
      this.localisedGroup,
      this.localisedName,
      List<FeatureBeanPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      this.state,
      bool? toggleLocked})
      : permissibleEstimationTypes = permissibleEstimationTypes ?? [],
        toggleLocked = toggleLocked ?? false;

  factory FeatureBean.fromJson(Map<String, Object?> json) {
    return FeatureBean(
      boardFeature: json[r'boardFeature'] != null
          ? FeatureBeanBoardFeature.fromValue(json[r'boardFeature']! as String)
          : null,
      boardId: (json[r'boardId'] as num?)?.toInt(),
      featureId: json[r'featureId'] as String?,
      featureType: json[r'featureType'] != null
          ? FeatureBeanFeatureType.fromValue(json[r'featureType']! as String)
          : null,
      imageUri: json[r'imageUri'] as String?,
      learnMoreArticleId: json[r'learnMoreArticleId'] as String?,
      learnMoreLink: json[r'learnMoreLink'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
      localisedGroup: json[r'localisedGroup'] as String?,
      localisedName: json[r'localisedName'] as String?,
      permissibleEstimationTypes: (json[r'permissibleEstimationTypes']
                  as List<Object?>?)
              ?.map((i) => FeatureBeanPermissibleEstimationTypesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      state: json[r'state'] != null
          ? FeatureBeanState.fromValue(json[r'state']! as String)
          : null,
      toggleLocked: json[r'toggleLocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardFeature = this.boardFeature;
    var boardId = this.boardId;
    var featureId = this.featureId;
    var featureType = this.featureType;
    var imageUri = this.imageUri;
    var learnMoreArticleId = this.learnMoreArticleId;
    var learnMoreLink = this.learnMoreLink;
    var localisedDescription = this.localisedDescription;
    var localisedGroup = this.localisedGroup;
    var localisedName = this.localisedName;
    var permissibleEstimationTypes = this.permissibleEstimationTypes;
    var state = this.state;
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json[r'boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (featureId != null) {
      json[r'featureId'] = featureId;
    }
    if (featureType != null) {
      json[r'featureType'] = featureType.value;
    }
    if (imageUri != null) {
      json[r'imageUri'] = imageUri;
    }
    if (learnMoreArticleId != null) {
      json[r'learnMoreArticleId'] = learnMoreArticleId;
    }
    if (learnMoreLink != null) {
      json[r'learnMoreLink'] = learnMoreLink;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (localisedGroup != null) {
      json[r'localisedGroup'] = localisedGroup;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    json[r'permissibleEstimationTypes'] =
        permissibleEstimationTypes.map((i) => i.toJson()).toList();
    if (state != null) {
      json[r'state'] = state.value;
    }
    json[r'toggleLocked'] = toggleLocked;
    return json;
  }

  FeatureBean copyWith(
      {FeatureBeanBoardFeature? boardFeature,
      int? boardId,
      String? featureId,
      FeatureBeanFeatureType? featureType,
      String? imageUri,
      String? learnMoreArticleId,
      String? learnMoreLink,
      String? localisedDescription,
      String? localisedGroup,
      String? localisedName,
      List<FeatureBeanPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      FeatureBeanState? state,
      bool? toggleLocked}) {
    return FeatureBean(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      featureId: featureId ?? this.featureId,
      featureType: featureType ?? this.featureType,
      imageUri: imageUri ?? this.imageUri,
      learnMoreArticleId: learnMoreArticleId ?? this.learnMoreArticleId,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      localisedGroup: localisedGroup ?? this.localisedGroup,
      localisedName: localisedName ?? this.localisedName,
      permissibleEstimationTypes:
          permissibleEstimationTypes ?? this.permissibleEstimationTypes,
      state: state ?? this.state,
      toggleLocked: toggleLocked ?? this.toggleLocked,
    );
  }
}

class FeatureBeanBoardFeature {
  static const simpleRoadmap = FeatureBeanBoardFeature._('SIMPLE_ROADMAP');
  static const backlog = FeatureBeanBoardFeature._('BACKLOG');
  static const sprints = FeatureBeanBoardFeature._('SPRINTS');
  static const calendar = FeatureBeanBoardFeature._('CALENDAR');
  static const devtools = FeatureBeanBoardFeature._('DEVTOOLS');
  static const reports = FeatureBeanBoardFeature._('REPORTS');
  static const estimation = FeatureBeanBoardFeature._('ESTIMATION');
  static const pages = FeatureBeanBoardFeature._('PAGES');
  static const code = FeatureBeanBoardFeature._('CODE');
  static const security = FeatureBeanBoardFeature._('SECURITY');
  static const requests = FeatureBeanBoardFeature._('REQUESTS');
  static const incidents = FeatureBeanBoardFeature._('INCIDENTS');
  static const releases = FeatureBeanBoardFeature._('RELEASES');
  static const deployments = FeatureBeanBoardFeature._('DEPLOYMENTS');
  static const issueNavigator = FeatureBeanBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule = FeatureBeanBoardFeature._('ON_CALL_SCHEDULE');
  static const board = FeatureBeanBoardFeature._('BOARD');
  static const goals = FeatureBeanBoardFeature._('GOALS');
  static const listView = FeatureBeanBoardFeature._('LIST_VIEW');

  static const values = [
    simpleRoadmap,
    backlog,
    sprints,
    calendar,
    devtools,
    reports,
    estimation,
    pages,
    code,
    security,
    requests,
    incidents,
    releases,
    deployments,
    issueNavigator,
    onCallSchedule,
    board,
    goals,
    listView,
  ];
  final String value;

  const FeatureBeanBoardFeature._(this.value);

  static FeatureBeanBoardFeature fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureBeanBoardFeature._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureBeanFeatureType {
  static const basic = FeatureBeanFeatureType._('BASIC');
  static const estimation = FeatureBeanFeatureType._('ESTIMATION');

  static const values = [
    basic,
    estimation,
  ];
  final String value;

  const FeatureBeanFeatureType._(this.value);

  static FeatureBeanFeatureType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureBeanFeatureType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureBeanState {
  static const enabled = FeatureBeanState._('ENABLED');
  static const disabled = FeatureBeanState._('DISABLED');
  static const comingSoon = FeatureBeanState._('COMING_SOON');

  static const values = [
    enabled,
    disabled,
    comingSoon,
  ];
  final String value;

  const FeatureBeanState._(this.value);

  static FeatureBeanState fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureBeanState._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureBeanPermissibleEstimationTypesItem {
  final String? localisedDescription;
  final String? localisedName;
  final FeatureBeanPermissibleEstimationTypesItemValue? value;

  FeatureBeanPermissibleEstimationTypesItem(
      {this.localisedDescription, this.localisedName, this.value});

  factory FeatureBeanPermissibleEstimationTypesItem.fromJson(
      Map<String, Object?> json) {
    return FeatureBeanPermissibleEstimationTypesItem(
      localisedDescription: json[r'localisedDescription'] as String?,
      localisedName: json[r'localisedName'] as String?,
      value: json[r'value'] != null
          ? FeatureBeanPermissibleEstimationTypesItemValue.fromValue(
              json[r'value']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var localisedDescription = this.localisedDescription;
    var localisedName = this.localisedName;
    var value = this.value;

    final json = <String, Object?>{};
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (value != null) {
      json[r'value'] = value.value;
    }
    return json;
  }

  FeatureBeanPermissibleEstimationTypesItem copyWith(
      {String? localisedDescription,
      String? localisedName,
      FeatureBeanPermissibleEstimationTypesItemValue? value}) {
    return FeatureBeanPermissibleEstimationTypesItem(
      localisedDescription: localisedDescription ?? this.localisedDescription,
      localisedName: localisedName ?? this.localisedName,
      value: value ?? this.value,
    );
  }
}

class FeatureBeanPermissibleEstimationTypesItemValue {
  static const storyPoints =
      FeatureBeanPermissibleEstimationTypesItemValue._('STORY_POINTS');
  static const originalEstimate =
      FeatureBeanPermissibleEstimationTypesItemValue._('ORIGINAL_ESTIMATE');

  static const values = [
    storyPoints,
    originalEstimate,
  ];
  final String value;

  const FeatureBeanPermissibleEstimationTypesItemValue._(this.value);

  static FeatureBeanPermissibleEstimationTypesItemValue fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              FeatureBeanPermissibleEstimationTypesItemValue._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureResponseBean {
  final List<FeatureResponseBeanFeaturesItem> features;

  FeatureResponseBean({List<FeatureResponseBeanFeaturesItem>? features})
      : features = features ?? [];

  factory FeatureResponseBean.fromJson(Map<String, Object?> json) {
    return FeatureResponseBean(
      features: (json[r'features'] as List<Object?>?)
              ?.map((i) => FeatureResponseBeanFeaturesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var features = this.features;

    final json = <String, Object?>{};
    json[r'features'] = features.map((i) => i.toJson()).toList();
    return json;
  }

  FeatureResponseBean copyWith(
      {List<FeatureResponseBeanFeaturesItem>? features}) {
    return FeatureResponseBean(
      features: features ?? this.features,
    );
  }
}

class FeatureResponseBeanFeaturesItem {
  final FeatureResponseBeanFeaturesItemBoardFeature? boardFeature;
  final int? boardId;
  final String? featureId;
  final FeatureResponseBeanFeaturesItemFeatureType? featureType;
  final String? imageUri;
  final String? learnMoreArticleId;
  final String? learnMoreLink;
  final String? localisedDescription;
  final String? localisedGroup;
  final String? localisedName;
  final List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>
      permissibleEstimationTypes;
  final FeatureResponseBeanFeaturesItemState? state;
  final bool toggleLocked;

  FeatureResponseBeanFeaturesItem(
      {this.boardFeature,
      this.boardId,
      this.featureId,
      this.featureType,
      this.imageUri,
      this.learnMoreArticleId,
      this.learnMoreLink,
      this.localisedDescription,
      this.localisedGroup,
      this.localisedName,
      List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      this.state,
      bool? toggleLocked})
      : permissibleEstimationTypes = permissibleEstimationTypes ?? [],
        toggleLocked = toggleLocked ?? false;

  factory FeatureResponseBeanFeaturesItem.fromJson(Map<String, Object?> json) {
    return FeatureResponseBeanFeaturesItem(
      boardFeature: json[r'boardFeature'] != null
          ? FeatureResponseBeanFeaturesItemBoardFeature.fromValue(
              json[r'boardFeature']! as String)
          : null,
      boardId: (json[r'boardId'] as num?)?.toInt(),
      featureId: json[r'featureId'] as String?,
      featureType: json[r'featureType'] != null
          ? FeatureResponseBeanFeaturesItemFeatureType.fromValue(
              json[r'featureType']! as String)
          : null,
      imageUri: json[r'imageUri'] as String?,
      learnMoreArticleId: json[r'learnMoreArticleId'] as String?,
      learnMoreLink: json[r'learnMoreLink'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
      localisedGroup: json[r'localisedGroup'] as String?,
      localisedName: json[r'localisedName'] as String?,
      permissibleEstimationTypes: (json[r'permissibleEstimationTypes']
                  as List<Object?>?)
              ?.map((i) =>
                  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem
                      .fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      state: json[r'state'] != null
          ? FeatureResponseBeanFeaturesItemState.fromValue(
              json[r'state']! as String)
          : null,
      toggleLocked: json[r'toggleLocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardFeature = this.boardFeature;
    var boardId = this.boardId;
    var featureId = this.featureId;
    var featureType = this.featureType;
    var imageUri = this.imageUri;
    var learnMoreArticleId = this.learnMoreArticleId;
    var learnMoreLink = this.learnMoreLink;
    var localisedDescription = this.localisedDescription;
    var localisedGroup = this.localisedGroup;
    var localisedName = this.localisedName;
    var permissibleEstimationTypes = this.permissibleEstimationTypes;
    var state = this.state;
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json[r'boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (featureId != null) {
      json[r'featureId'] = featureId;
    }
    if (featureType != null) {
      json[r'featureType'] = featureType.value;
    }
    if (imageUri != null) {
      json[r'imageUri'] = imageUri;
    }
    if (learnMoreArticleId != null) {
      json[r'learnMoreArticleId'] = learnMoreArticleId;
    }
    if (learnMoreLink != null) {
      json[r'learnMoreLink'] = learnMoreLink;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (localisedGroup != null) {
      json[r'localisedGroup'] = localisedGroup;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    json[r'permissibleEstimationTypes'] =
        permissibleEstimationTypes.map((i) => i.toJson()).toList();
    if (state != null) {
      json[r'state'] = state.value;
    }
    json[r'toggleLocked'] = toggleLocked;
    return json;
  }

  FeatureResponseBeanFeaturesItem copyWith(
      {FeatureResponseBeanFeaturesItemBoardFeature? boardFeature,
      int? boardId,
      String? featureId,
      FeatureResponseBeanFeaturesItemFeatureType? featureType,
      String? imageUri,
      String? learnMoreArticleId,
      String? learnMoreLink,
      String? localisedDescription,
      String? localisedGroup,
      String? localisedName,
      List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      FeatureResponseBeanFeaturesItemState? state,
      bool? toggleLocked}) {
    return FeatureResponseBeanFeaturesItem(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      featureId: featureId ?? this.featureId,
      featureType: featureType ?? this.featureType,
      imageUri: imageUri ?? this.imageUri,
      learnMoreArticleId: learnMoreArticleId ?? this.learnMoreArticleId,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      localisedGroup: localisedGroup ?? this.localisedGroup,
      localisedName: localisedName ?? this.localisedName,
      permissibleEstimationTypes:
          permissibleEstimationTypes ?? this.permissibleEstimationTypes,
      state: state ?? this.state,
      toggleLocked: toggleLocked ?? this.toggleLocked,
    );
  }
}

class FeatureResponseBeanFeaturesItemBoardFeature {
  static const simpleRoadmap =
      FeatureResponseBeanFeaturesItemBoardFeature._('SIMPLE_ROADMAP');
  static const backlog =
      FeatureResponseBeanFeaturesItemBoardFeature._('BACKLOG');
  static const sprints =
      FeatureResponseBeanFeaturesItemBoardFeature._('SPRINTS');
  static const calendar =
      FeatureResponseBeanFeaturesItemBoardFeature._('CALENDAR');
  static const devtools =
      FeatureResponseBeanFeaturesItemBoardFeature._('DEVTOOLS');
  static const reports =
      FeatureResponseBeanFeaturesItemBoardFeature._('REPORTS');
  static const estimation =
      FeatureResponseBeanFeaturesItemBoardFeature._('ESTIMATION');
  static const pages = FeatureResponseBeanFeaturesItemBoardFeature._('PAGES');
  static const code = FeatureResponseBeanFeaturesItemBoardFeature._('CODE');
  static const security =
      FeatureResponseBeanFeaturesItemBoardFeature._('SECURITY');
  static const requests =
      FeatureResponseBeanFeaturesItemBoardFeature._('REQUESTS');
  static const incidents =
      FeatureResponseBeanFeaturesItemBoardFeature._('INCIDENTS');
  static const releases =
      FeatureResponseBeanFeaturesItemBoardFeature._('RELEASES');
  static const deployments =
      FeatureResponseBeanFeaturesItemBoardFeature._('DEPLOYMENTS');
  static const issueNavigator =
      FeatureResponseBeanFeaturesItemBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule =
      FeatureResponseBeanFeaturesItemBoardFeature._('ON_CALL_SCHEDULE');
  static const board = FeatureResponseBeanFeaturesItemBoardFeature._('BOARD');
  static const goals = FeatureResponseBeanFeaturesItemBoardFeature._('GOALS');
  static const listView =
      FeatureResponseBeanFeaturesItemBoardFeature._('LIST_VIEW');

  static const values = [
    simpleRoadmap,
    backlog,
    sprints,
    calendar,
    devtools,
    reports,
    estimation,
    pages,
    code,
    security,
    requests,
    incidents,
    releases,
    deployments,
    issueNavigator,
    onCallSchedule,
    board,
    goals,
    listView,
  ];
  final String value;

  const FeatureResponseBeanFeaturesItemBoardFeature._(this.value);

  static FeatureResponseBeanFeaturesItemBoardFeature fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureResponseBeanFeaturesItemBoardFeature._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureResponseBeanFeaturesItemFeatureType {
  static const basic = FeatureResponseBeanFeaturesItemFeatureType._('BASIC');
  static const estimation =
      FeatureResponseBeanFeaturesItemFeatureType._('ESTIMATION');

  static const values = [
    basic,
    estimation,
  ];
  final String value;

  const FeatureResponseBeanFeaturesItemFeatureType._(this.value);

  static FeatureResponseBeanFeaturesItemFeatureType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureResponseBeanFeaturesItemFeatureType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureResponseBeanFeaturesItemState {
  static const enabled = FeatureResponseBeanFeaturesItemState._('ENABLED');
  static const disabled = FeatureResponseBeanFeaturesItemState._('DISABLED');
  static const comingSoon =
      FeatureResponseBeanFeaturesItemState._('COMING_SOON');

  static const values = [
    enabled,
    disabled,
    comingSoon,
  ];
  final String value;

  const FeatureResponseBeanFeaturesItemState._(this.value);

  static FeatureResponseBeanFeaturesItemState fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => FeatureResponseBeanFeaturesItemState._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem {
  final String? localisedDescription;
  final String? localisedName;
  final FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue?
      value;

  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      {this.localisedDescription, this.localisedName, this.value});

  factory FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem.fromJson(
      Map<String, Object?> json) {
    return FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      localisedDescription: json[r'localisedDescription'] as String?,
      localisedName: json[r'localisedName'] as String?,
      value: json[r'value'] != null
          ? FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue
              .fromValue(json[r'value']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var localisedDescription = this.localisedDescription;
    var localisedName = this.localisedName;
    var value = this.value;

    final json = <String, Object?>{};
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (value != null) {
      json[r'value'] = value.value;
    }
    return json;
  }

  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem copyWith(
      {String? localisedDescription,
      String? localisedName,
      FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue?
          value}) {
    return FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      localisedDescription: localisedDescription ?? this.localisedDescription,
      localisedName: localisedName ?? this.localisedName,
      value: value ?? this.value,
    );
  }
}

class FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue {
  static const storyPoints =
      FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue._(
          'STORY_POINTS');
  static const originalEstimate =
      FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue._(
          'ORIGINAL_ESTIMATE');

  static const values = [
    storyPoints,
    originalEstimate,
  ];
  final String value;

  const FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue._(
      this.value);

  static FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue
      fromValue(String value) => values.firstWhere((e) => e.value == value,
          orElse: () =>
              FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue
                  ._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class FeatureToggleRequestBean {
  final int? boardId;
  final bool enabling;
  final String? feature;

  FeatureToggleRequestBean({this.boardId, bool? enabling, this.feature})
      : enabling = enabling ?? false;

  factory FeatureToggleRequestBean.fromJson(Map<String, Object?> json) {
    return FeatureToggleRequestBean(
      boardId: (json[r'boardId'] as num?)?.toInt(),
      enabling: json[r'enabling'] as bool? ?? false,
      feature: json[r'feature'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var boardId = this.boardId;
    var enabling = this.enabling;
    var feature = this.feature;

    final json = <String, Object?>{};
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    json[r'enabling'] = enabling;
    if (feature != null) {
      json[r'feature'] = feature;
    }
    return json;
  }

  FeatureToggleRequestBean copyWith(
      {int? boardId, bool? enabling, String? feature}) {
    return FeatureToggleRequestBean(
      boardId: boardId ?? this.boardId,
      enabling: enabling ?? this.enabling,
      feature: feature ?? this.feature,
    );
  }
}

class FieldEditBean {
  final String? value;

  FieldEditBean({this.value});

  factory FieldEditBean.fromJson(Map<String, Object?> json) {
    return FieldEditBean(
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

  FieldEditBean copyWith({String? value}) {
    return FieldEditBean(
      value: value ?? this.value,
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
  final Map<String, dynamic> schema;

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
      schema: json[r'schema'] as Map<String, Object?>? ?? {},
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
    json[r'schema'] = schema;
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
      Map<String, dynamic>? schema}) {
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

class GroupBean {
  final String? name;
  final String? self;

  GroupBean({this.name, this.self});

  factory GroupBean.fromJson(Map<String, Object?> json) {
    return GroupBean(
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  GroupBean copyWith({String? name, String? self}) {
    return GroupBean(
      name: name ?? this.name,
      self: self ?? this.self,
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
  final Map<String, dynamic>? actor;

  /// Details of the cause that triggered the creation the history record.
  final Map<String, dynamic>? cause;

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
  final Map<String, dynamic>? generator;

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
      actor: json[r'actor'] as Map<String, Object?>?,
      cause: json[r'cause'] as Map<String, Object?>?,
      description: json[r'description'] as String?,
      descriptionKey: json[r'descriptionKey'] as String?,
      emailDescription: json[r'emailDescription'] as String?,
      emailDescriptionKey: json[r'emailDescriptionKey'] as String?,
      extraData: json[r'extraData'] as Map<String, Object?>?,
      generator: json[r'generator'] as Map<String, Object?>?,
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
      json[r'actor'] = actor;
    }
    if (cause != null) {
      json[r'cause'] = cause;
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
      json[r'generator'] = generator;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  HistoryMetadata copyWith(
      {String? activityDescription,
      String? activityDescriptionKey,
      Map<String, dynamic>? actor,
      Map<String, dynamic>? cause,
      String? description,
      String? descriptionKey,
      String? emailDescription,
      String? emailDescriptionKey,
      Map<String, dynamic>? extraData,
      Map<String, dynamic>? generator,
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

class IssueAssignRequestBean {
  final List<String> issues;

  IssueAssignRequestBean({List<String>? issues}) : issues = issues ?? [];

  factory IssueAssignRequestBean.fromJson(Map<String, Object?> json) {
    return IssueAssignRequestBean(
      issues: (json[r'issues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var issues = this.issues;

    final json = <String, Object?>{};
    json[r'issues'] = issues;
    return json;
  }

  IssueAssignRequestBean copyWith({List<String>? issues}) {
    return IssueAssignRequestBean(
      issues: issues ?? this.issues,
    );
  }
}

/// Details about an issue.
class IssueBean {
  /// Details of changelogs associated with the issue.
  final Map<String, dynamic>? changelog;

  /// The metadata for the fields on the issue that can be amended.
  final Map<String, dynamic>? editmeta;

  /// Expand options that include additional issue details in the response.
  final String? expand;
  final Map<String, dynamic>? fields;
  final IssueBeanFieldsToInclude? fieldsToInclude;

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
  final List<IssueBeanTransitionsItem> transitions;

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
      List<IssueBeanTransitionsItem>? transitions,
      this.versionedRepresentations})
      : transitions = transitions ?? [];

  factory IssueBean.fromJson(Map<String, Object?> json) {
    return IssueBean(
      changelog: json[r'changelog'] as Map<String, Object?>?,
      editmeta: json[r'editmeta'] as Map<String, Object?>?,
      expand: json[r'expand'] as String?,
      fields: json[r'fields'] as Map<String, Object?>?,
      fieldsToInclude: json[r'fieldsToInclude'] != null
          ? IssueBeanFieldsToInclude.fromJson(
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
              ?.map((i) => IssueBeanTransitionsItem.fromJson(
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
      json[r'changelog'] = changelog;
    }
    if (editmeta != null) {
      json[r'editmeta'] = editmeta;
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
      {Map<String, dynamic>? changelog,
      Map<String, dynamic>? editmeta,
      String? expand,
      Map<String, dynamic>? fields,
      IssueBeanFieldsToInclude? fieldsToInclude,
      String? id,
      String? key,
      Map<String, dynamic>? names,
      Operations? operations,
      Map<String, dynamic>? properties,
      Map<String, dynamic>? renderedFields,
      Map<String, dynamic>? schema,
      String? self,
      List<IssueBeanTransitionsItem>? transitions,
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

class IssueBeanFieldsToInclude {
  final List<String> actuallyIncluded;
  final List<String> excluded;
  final List<String> included;

  IssueBeanFieldsToInclude(
      {List<String>? actuallyIncluded,
      List<String>? excluded,
      List<String>? included})
      : actuallyIncluded = actuallyIncluded ?? [],
        excluded = excluded ?? [],
        included = included ?? [];

  factory IssueBeanFieldsToInclude.fromJson(Map<String, Object?> json) {
    return IssueBeanFieldsToInclude(
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

  IssueBeanFieldsToInclude copyWith(
      {List<String>? actuallyIncluded,
      List<String>? excluded,
      List<String>? included}) {
    return IssueBeanFieldsToInclude(
      actuallyIncluded: actuallyIncluded ?? this.actuallyIncluded,
      excluded: excluded ?? this.excluded,
      included: included ?? this.included,
    );
  }
}

/// Details of an issue transition.
class IssueBeanTransitionsItem {
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
  final Map<String, dynamic>? to;

  IssueBeanTransitionsItem(
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

  factory IssueBeanTransitionsItem.fromJson(Map<String, Object?> json) {
    return IssueBeanTransitionsItem(
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
      to: json[r'to'] as Map<String, Object?>?,
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
      json[r'to'] = to;
    }
    return json;
  }

  IssueBeanTransitionsItem copyWith(
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
      Map<String, dynamic>? to}) {
    return IssueBeanTransitionsItem(
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

class IssueRankRequestBean {
  final List<String> issues;
  final String? rankAfterIssue;
  final String? rankBeforeIssue;
  final int? rankCustomFieldId;

  IssueRankRequestBean(
      {List<String>? issues,
      this.rankAfterIssue,
      this.rankBeforeIssue,
      this.rankCustomFieldId})
      : issues = issues ?? [];

  factory IssueRankRequestBean.fromJson(Map<String, Object?> json) {
    return IssueRankRequestBean(
      issues: (json[r'issues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      rankAfterIssue: json[r'rankAfterIssue'] as String?,
      rankBeforeIssue: json[r'rankBeforeIssue'] as String?,
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var issues = this.issues;
    var rankAfterIssue = this.rankAfterIssue;
    var rankBeforeIssue = this.rankBeforeIssue;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    json[r'issues'] = issues;
    if (rankAfterIssue != null) {
      json[r'rankAfterIssue'] = rankAfterIssue;
    }
    if (rankBeforeIssue != null) {
      json[r'rankBeforeIssue'] = rankBeforeIssue;
    }
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  IssueRankRequestBean copyWith(
      {List<String>? issues,
      String? rankAfterIssue,
      String? rankBeforeIssue,
      int? rankCustomFieldId}) {
    return IssueRankRequestBean(
      issues: issues ?? this.issues,
      rankAfterIssue: rankAfterIssue ?? this.rankAfterIssue,
      rankBeforeIssue: rankBeforeIssue ?? this.rankBeforeIssue,
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
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
  final Map<String, dynamic>? to;

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
      to: json[r'to'] as Map<String, Object?>?,
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
      json[r'to'] = to;
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
      Map<String, dynamic>? to}) {
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

  /// Details about the operations available in this version.
  final LinkGroupHeader? header;
  final String? id;
  final List<LinkGroupLinksItem> links;
  final String? styleClass;
  final int? weight;

  LinkGroup(
      {List<LinkGroup>? groups,
      this.header,
      this.id,
      List<LinkGroupLinksItem>? links,
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
          ? LinkGroupHeader.fromJson(json[r'header']! as Map<String, Object?>)
          : null,
      id: json[r'id'] as String?,
      links: (json[r'links'] as List<Object?>?)
              ?.map((i) => LinkGroupLinksItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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
      LinkGroupHeader? header,
      String? id,
      List<LinkGroupLinksItem>? links,
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

/// Details about the operations available in this version.
class LinkGroupHeader {
  final String? href;
  final String? iconClass;
  final String? id;
  final String? label;
  final String? styleClass;
  final String? title;
  final int? weight;

  LinkGroupHeader(
      {this.href,
      this.iconClass,
      this.id,
      this.label,
      this.styleClass,
      this.title,
      this.weight});

  factory LinkGroupHeader.fromJson(Map<String, Object?> json) {
    return LinkGroupHeader(
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

  LinkGroupHeader copyWith(
      {String? href,
      String? iconClass,
      String? id,
      String? label,
      String? styleClass,
      String? title,
      int? weight}) {
    return LinkGroupHeader(
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

/// Details about the operations available in this version.
class LinkGroupLinksItem {
  final String? href;
  final String? iconClass;
  final String? id;
  final String? label;
  final String? styleClass;
  final String? title;
  final int? weight;

  LinkGroupLinksItem(
      {this.href,
      this.iconClass,
      this.id,
      this.label,
      this.styleClass,
      this.title,
      this.weight});

  factory LinkGroupLinksItem.fromJson(Map<String, Object?> json) {
    return LinkGroupLinksItem(
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

  LinkGroupLinksItem copyWith(
      {String? href,
      String? iconClass,
      String? id,
      String? label,
      String? styleClass,
      String? title,
      int? weight}) {
    return LinkGroupLinksItem(
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

class LocationBean {
  final String? projectKeyOrId;
  final LocationBeanType? type;

  LocationBean({this.projectKeyOrId, this.type});

  factory LocationBean.fromJson(Map<String, Object?> json) {
    return LocationBean(
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
      type: json[r'type'] != null
          ? LocationBeanType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var projectKeyOrId = this.projectKeyOrId;
    var type = this.type;

    final json = <String, Object?>{};
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  LocationBean copyWith({String? projectKeyOrId, LocationBeanType? type}) {
    return LocationBean(
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
      type: type ?? this.type,
    );
  }
}

class LocationBeanType {
  static const project = LocationBeanType._('project');
  static const user = LocationBeanType._('user');

  static const values = [
    project,
    user,
  ];
  final String value;

  const LocationBeanType._(this.value);

  static LocationBeanType fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => LocationBeanType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
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

class PageBeanBoard {
  final bool isLast;
  final int? maxResults;
  final int? startAt;
  final int? total;
  final List<PageBeanBoardValuesItem> values;

  PageBeanBoard(
      {bool? isLast,
      this.maxResults,
      this.startAt,
      this.total,
      List<PageBeanBoardValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanBoard.fromJson(Map<String, Object?> json) {
    return PageBeanBoard(
      isLast: json[r'isLast'] as bool? ?? false,
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanBoardValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var isLast = this.isLast;
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'isLast'] = isLast;
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoard copyWith(
      {bool? isLast,
      int? maxResults,
      int? startAt,
      int? total,
      List<PageBeanBoardValuesItem>? values}) {
    return PageBeanBoard(
      isLast: isLast ?? this.isLast,
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      values: values ?? this.values,
    );
  }
}

class PageBeanBoardFilterBean {
  final bool isLast;
  final int? maxResults;
  final int? startAt;
  final int? total;
  final List<PageBeanBoardFilterBeanValuesItem> values;

  PageBeanBoardFilterBean(
      {bool? isLast,
      this.maxResults,
      this.startAt,
      this.total,
      List<PageBeanBoardFilterBeanValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanBoardFilterBean.fromJson(Map<String, Object?> json) {
    return PageBeanBoardFilterBean(
      isLast: json[r'isLast'] as bool? ?? false,
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanBoardFilterBeanValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var isLast = this.isLast;
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'isLast'] = isLast;
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoardFilterBean copyWith(
      {bool? isLast,
      int? maxResults,
      int? startAt,
      int? total,
      List<PageBeanBoardFilterBeanValuesItem>? values}) {
    return PageBeanBoardFilterBean(
      isLast: isLast ?? this.isLast,
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      values: values ?? this.values,
    );
  }
}

class PageBeanBoardFilterBeanValuesItem {
  final int? id;
  final String? name;
  final String? self;

  PageBeanBoardFilterBeanValuesItem({this.id, this.name, this.self});

  factory PageBeanBoardFilterBeanValuesItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardFilterBeanValuesItem(
      id: (json[r'id'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  PageBeanBoardFilterBeanValuesItem copyWith(
      {int? id, String? name, String? self}) {
    return PageBeanBoardFilterBeanValuesItem(
      id: id ?? this.id,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

/// Details about a board.
class PageBeanBoardValuesItem {
  final Map<String, dynamic>? admins;

  /// Whether the board can be edited.
  final bool canEdit;

  /// Whether the board is selected as a favorite.
  final bool favourite;

  /// The ID of the board.
  final int? id;

  /// Whether the board is private.
  final bool isPrivate;

  /// The container that the board is located in.
  final PageBeanBoardValuesItemLocation? location;

  /// The name of the board.
  final String? name;

  /// The URL of the board.
  final String? self;

  /// The type the board.
  final String? type;

  PageBeanBoardValuesItem(
      {this.admins,
      bool? canEdit,
      bool? favourite,
      this.id,
      bool? isPrivate,
      this.location,
      this.name,
      this.self,
      this.type})
      : canEdit = canEdit ?? false,
        favourite = favourite ?? false,
        isPrivate = isPrivate ?? false;

  factory PageBeanBoardValuesItem.fromJson(Map<String, Object?> json) {
    return PageBeanBoardValuesItem(
      admins: json[r'admins'] as Map<String, Object?>?,
      canEdit: json[r'canEdit'] as bool? ?? false,
      favourite: json[r'favourite'] as bool? ?? false,
      id: (json[r'id'] as num?)?.toInt(),
      isPrivate: json[r'isPrivate'] as bool? ?? false,
      location: json[r'location'] != null
          ? PageBeanBoardValuesItemLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
      type: json[r'type'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var admins = this.admins;
    var canEdit = this.canEdit;
    var favourite = this.favourite;
    var id = this.id;
    var isPrivate = this.isPrivate;
    var location = this.location;
    var name = this.name;
    var self = this.self;
    var type = this.type;

    final json = <String, Object?>{};
    if (admins != null) {
      json[r'admins'] = admins;
    }
    json[r'canEdit'] = canEdit;
    json[r'favourite'] = favourite;
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'isPrivate'] = isPrivate;
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    return json;
  }

  PageBeanBoardValuesItem copyWith(
      {Map<String, dynamic>? admins,
      bool? canEdit,
      bool? favourite,
      int? id,
      bool? isPrivate,
      PageBeanBoardValuesItemLocation? location,
      String? name,
      String? self,
      String? type}) {
    return PageBeanBoardValuesItem(
      admins: admins ?? this.admins,
      canEdit: canEdit ?? this.canEdit,
      favourite: favourite ?? this.favourite,
      id: id ?? this.id,
      isPrivate: isPrivate ?? this.isPrivate,
      location: location ?? this.location,
      name: name ?? this.name,
      self: self ?? this.self,
      type: type ?? this.type,
    );
  }
}

/// The container that the board is located in.
class PageBeanBoardValuesItemLocation {
  final String? avatarUri;
  final String? displayName;
  final String? name;
  final int? projectId;
  final String? projectKey;
  final String? projectName;
  final String? projectTypeKey;
  final String? userAccountId;
  final int? userId;

  PageBeanBoardValuesItemLocation(
      {this.avatarUri,
      this.displayName,
      this.name,
      this.projectId,
      this.projectKey,
      this.projectName,
      this.projectTypeKey,
      this.userAccountId,
      this.userId});

  factory PageBeanBoardValuesItemLocation.fromJson(Map<String, Object?> json) {
    return PageBeanBoardValuesItemLocation(
      avatarUri: json[r'avatarURI'] as String?,
      displayName: json[r'displayName'] as String?,
      name: json[r'name'] as String?,
      projectId: (json[r'projectId'] as num?)?.toInt(),
      projectKey: json[r'projectKey'] as String?,
      projectName: json[r'projectName'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      userAccountId: json[r'userAccountId'] as String?,
      userId: (json[r'userId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var avatarUri = this.avatarUri;
    var displayName = this.displayName;
    var name = this.name;
    var projectId = this.projectId;
    var projectKey = this.projectKey;
    var projectName = this.projectName;
    var projectTypeKey = this.projectTypeKey;
    var userAccountId = this.userAccountId;
    var userId = this.userId;

    final json = <String, Object?>{};
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (name != null) {
      json[r'name'] = name;
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
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  PageBeanBoardValuesItemLocation copyWith(
      {String? avatarUri,
      String? displayName,
      String? name,
      int? projectId,
      String? projectKey,
      String? projectName,
      String? projectTypeKey,
      String? userAccountId,
      int? userId}) {
    return PageBeanBoardValuesItemLocation(
      avatarUri: avatarUri ?? this.avatarUri,
      displayName: displayName ?? this.displayName,
      name: name ?? this.name,
      projectId: projectId ?? this.projectId,
      projectKey: projectKey ?? this.projectKey,
      projectName: projectName ?? this.projectName,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      userAccountId: userAccountId ?? this.userAccountId,
      userId: userId ?? this.userId,
    );
  }
}

class PageBeanQuickFilterBean {
  final bool isLast;
  final int? maxResults;
  final int? startAt;
  final int? total;
  final List<PageBeanQuickFilterBeanValuesItem> values;

  PageBeanQuickFilterBean(
      {bool? isLast,
      this.maxResults,
      this.startAt,
      this.total,
      List<PageBeanQuickFilterBeanValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanQuickFilterBean.fromJson(Map<String, Object?> json) {
    return PageBeanQuickFilterBean(
      isLast: json[r'isLast'] as bool? ?? false,
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanQuickFilterBeanValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var isLast = this.isLast;
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var values = this.values;

    final json = <String, Object?>{};
    json[r'isLast'] = isLast;
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanQuickFilterBean copyWith(
      {bool? isLast,
      int? maxResults,
      int? startAt,
      int? total,
      List<PageBeanQuickFilterBeanValuesItem>? values}) {
    return PageBeanQuickFilterBean(
      isLast: isLast ?? this.isLast,
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      values: values ?? this.values,
    );
  }
}

class PageBeanQuickFilterBeanValuesItem {
  final int? boardId;
  final String? description;
  final int? id;
  final String? jql;
  final String? name;
  final int? position;

  PageBeanQuickFilterBeanValuesItem(
      {this.boardId,
      this.description,
      this.id,
      this.jql,
      this.name,
      this.position});

  factory PageBeanQuickFilterBeanValuesItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanQuickFilterBeanValuesItem(
      boardId: (json[r'boardId'] as num?)?.toInt(),
      description: json[r'description'] as String?,
      id: (json[r'id'] as num?)?.toInt(),
      jql: json[r'jql'] as String?,
      name: json[r'name'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var boardId = this.boardId;
    var description = this.description;
    var id = this.id;
    var jql = this.jql;
    var name = this.name;
    var position = this.position;

    final json = <String, Object?>{};
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    return json;
  }

  PageBeanQuickFilterBeanValuesItem copyWith(
      {int? boardId,
      String? description,
      int? id,
      String? jql,
      String? name,
      int? position}) {
    return PageBeanQuickFilterBeanValuesItem(
      boardId: boardId ?? this.boardId,
      description: description ?? this.description,
      id: id ?? this.id,
      jql: jql ?? this.jql,
      name: name ?? this.name,
      position: position ?? this.position,
    );
  }
}

/// A page of changelogs.
class PageOfChangelogs {
  /// The list of changelogs.
  final List<PageOfChangelogsHistoriesItem> histories;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The index of the first item returned on the page.
  final int? startAt;

  /// The number of results on the page.
  final int? total;

  PageOfChangelogs(
      {List<PageOfChangelogsHistoriesItem>? histories,
      this.maxResults,
      this.startAt,
      this.total})
      : histories = histories ?? [];

  factory PageOfChangelogs.fromJson(Map<String, Object?> json) {
    return PageOfChangelogs(
      histories: (json[r'histories'] as List<Object?>?)
              ?.map((i) => PageOfChangelogsHistoriesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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
      {List<PageOfChangelogsHistoriesItem>? histories,
      int? maxResults,
      int? startAt,
      int? total}) {
    return PageOfChangelogs(
      histories: histories ?? this.histories,
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
    );
  }
}

/// A log of changes made to issue fields. Changelogs related to workflow
/// associations are currently being deprecated.
class PageOfChangelogsHistoriesItem {
  /// The user who made the change.
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  /// The ID of the changelog.
  final String? id;

  /// The list of items changed.
  final List<PageOfChangelogsHistoriesItemItemsItem> items;

  PageOfChangelogsHistoriesItem(
      {this.author,
      this.created,
      this.historyMetadata,
      this.id,
      List<PageOfChangelogsHistoriesItemItemsItem>? items})
      : items = items ?? [];

  factory PageOfChangelogsHistoriesItem.fromJson(Map<String, Object?> json) {
    return PageOfChangelogsHistoriesItem(
      author: json[r'author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      historyMetadata: json[r'historyMetadata'] as Map<String, Object?>?,
      id: json[r'id'] as String?,
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => PageOfChangelogsHistoriesItemItemsItem.fromJson(
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
      json[r'author'] = author;
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    return json;
  }

  PageOfChangelogsHistoriesItem copyWith(
      {Map<String, dynamic>? author,
      DateTime? created,
      Map<String, dynamic>? historyMetadata,
      String? id,
      List<PageOfChangelogsHistoriesItemItemsItem>? items}) {
    return PageOfChangelogsHistoriesItem(
      author: author ?? this.author,
      created: created ?? this.created,
      historyMetadata: historyMetadata ?? this.historyMetadata,
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }
}

/// A change item.
class PageOfChangelogsHistoriesItemItemsItem {
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

  PageOfChangelogsHistoriesItemItemsItem(
      {this.field,
      this.fieldId,
      this.fieldtype,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory PageOfChangelogsHistoriesItemItemsItem.fromJson(
      Map<String, Object?> json) {
    return PageOfChangelogsHistoriesItemItemsItem(
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

  PageOfChangelogsHistoriesItemItemsItem copyWith(
      {String? field,
      String? fieldId,
      String? fieldtype,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return PageOfChangelogsHistoriesItemItemsItem(
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

class PartialSuccessBean {
  final List<PartialSuccessBeanEntriesItem> entries;

  PartialSuccessBean({List<PartialSuccessBeanEntriesItem>? entries})
      : entries = entries ?? [];

  factory PartialSuccessBean.fromJson(Map<String, Object?> json) {
    return PartialSuccessBean(
      entries: (json[r'entries'] as List<Object?>?)
              ?.map((i) => PartialSuccessBeanEntriesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var entries = this.entries;

    final json = <String, Object?>{};
    json[r'entries'] = entries.map((i) => i.toJson()).toList();
    return json;
  }

  PartialSuccessBean copyWith({List<PartialSuccessBeanEntriesItem>? entries}) {
    return PartialSuccessBean(
      entries: entries ?? this.entries,
    );
  }
}

class PartialSuccessBeanEntriesItem {
  final List<String> errors;
  final int? issueId;
  final String? issueKey;
  final int? status;

  PartialSuccessBeanEntriesItem(
      {List<String>? errors, this.issueId, this.issueKey, this.status})
      : errors = errors ?? [];

  factory PartialSuccessBeanEntriesItem.fromJson(Map<String, Object?> json) {
    return PartialSuccessBeanEntriesItem(
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      issueId: (json[r'issueId'] as num?)?.toInt(),
      issueKey: json[r'issueKey'] as String?,
      status: (json[r'status'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var errors = this.errors;
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var status = this.status;

    final json = <String, Object?>{};
    json[r'errors'] = errors;
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    return json;
  }

  PartialSuccessBeanEntriesItem copyWith(
      {List<String>? errors, int? issueId, String? issueKey, int? status}) {
    return PartialSuccessBeanEntriesItem(
      errors: errors ?? this.errors,
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      status: status ?? this.status,
    );
  }
}

/// Details about a project.
class ProjectDetails {
  /// The URLs of the project's avatars.
  final Map<String, dynamic>? avatarUrls;

  /// The ID of the project.
  final String? id;

  /// The key of the project.
  final String? key;

  /// The name of the project.
  final String? name;

  /// The category the project belongs to.
  final Map<String, dynamic>? projectCategory;

  /// The
  /// [project type](https://confluence.atlassian.com/x/GwiiLQ#Jiraapplicationsoverview-Productfeaturesandprojecttypes)
  /// of the project.
  final ProjectDetailsProjectTypeKey? projectTypeKey;

  /// The URL of the project details.
  final String? self;

  /// Whether or not the project is simplified.
  final bool simplified;

  ProjectDetails(
      {this.avatarUrls,
      this.id,
      this.key,
      this.name,
      this.projectCategory,
      this.projectTypeKey,
      this.self,
      bool? simplified})
      : simplified = simplified ?? false;

  factory ProjectDetails.fromJson(Map<String, Object?> json) {
    return ProjectDetails(
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
      id: json[r'id'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      projectCategory: json[r'projectCategory'] as Map<String, Object?>?,
      projectTypeKey: json[r'projectTypeKey'] != null
          ? ProjectDetailsProjectTypeKey.fromValue(
              json[r'projectTypeKey']! as String)
          : null,
      self: json[r'self'] as String?,
      simplified: json[r'simplified'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var avatarUrls = this.avatarUrls;
    var id = this.id;
    var key = this.key;
    var name = this.name;
    var projectCategory = this.projectCategory;
    var projectTypeKey = this.projectTypeKey;
    var self = this.self;
    var simplified = this.simplified;

    final json = <String, Object?>{};
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
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
    if (projectCategory != null) {
      json[r'projectCategory'] = projectCategory;
    }
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey.value;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    json[r'simplified'] = simplified;
    return json;
  }

  ProjectDetails copyWith(
      {Map<String, dynamic>? avatarUrls,
      String? id,
      String? key,
      String? name,
      Map<String, dynamic>? projectCategory,
      ProjectDetailsProjectTypeKey? projectTypeKey,
      String? self,
      bool? simplified}) {
    return ProjectDetails(
      avatarUrls: avatarUrls ?? this.avatarUrls,
      id: id ?? this.id,
      key: key ?? this.key,
      name: name ?? this.name,
      projectCategory: projectCategory ?? this.projectCategory,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      self: self ?? this.self,
      simplified: simplified ?? this.simplified,
    );
  }
}

class ProjectDetailsProjectTypeKey {
  static const software = ProjectDetailsProjectTypeKey._('software');
  static const serviceDesk = ProjectDetailsProjectTypeKey._('service_desk');
  static const business = ProjectDetailsProjectTypeKey._('business');

  static const values = [
    software,
    serviceDesk,
    business,
  ];
  final String value;

  const ProjectDetailsProjectTypeKey._(this.value);

  static ProjectDetailsProjectTypeKey fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => ProjectDetailsProjectTypeKey._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class QuickFilterBean {
  final int? boardId;
  final String? description;
  final int? id;
  final String? jql;
  final String? name;
  final int? position;

  QuickFilterBean(
      {this.boardId,
      this.description,
      this.id,
      this.jql,
      this.name,
      this.position});

  factory QuickFilterBean.fromJson(Map<String, Object?> json) {
    return QuickFilterBean(
      boardId: (json[r'boardId'] as num?)?.toInt(),
      description: json[r'description'] as String?,
      id: (json[r'id'] as num?)?.toInt(),
      jql: json[r'jql'] as String?,
      name: json[r'name'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var boardId = this.boardId;
    var description = this.description;
    var id = this.id;
    var jql = this.jql;
    var name = this.name;
    var position = this.position;

    final json = <String, Object?>{};
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    return json;
  }

  QuickFilterBean copyWith(
      {int? boardId,
      String? description,
      int? id,
      String? jql,
      String? name,
      int? position}) {
    return QuickFilterBean(
      boardId: boardId ?? this.boardId,
      description: description ?? this.description,
      id: id ?? this.id,
      jql: jql ?? this.jql,
      name: name ?? this.name,
      position: position ?? this.position,
    );
  }
}

class RankingConfigBean {
  final int? rankCustomFieldId;

  RankingConfigBean({this.rankCustomFieldId});

  factory RankingConfigBean.fromJson(Map<String, Object?> json) {
    return RankingConfigBean(
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  RankingConfigBean copyWith({int? rankCustomFieldId}) {
    return RankingConfigBean(
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
    );
  }
}

class RelationBean {
  final String? id;
  final String? self;

  RelationBean({this.id, this.self});

  factory RelationBean.fromJson(Map<String, Object?> json) {
    return RelationBean(
      id: json[r'id'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  RelationBean copyWith({String? id, String? self}) {
    return RelationBean(
      id: id ?? this.id,
      self: self ?? this.self,
    );
  }
}

class ReportBean {
  ReportBean();

  factory ReportBean.fromJson(Map<String, Object?> json) {
    return ReportBean();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class ReportsResponseBean {
  final List<Map<String, dynamic>> reports;

  ReportsResponseBean({List<Map<String, dynamic>>? reports})
      : reports = reports ?? [];

  factory ReportsResponseBean.fromJson(Map<String, Object?> json) {
    return ReportsResponseBean(
      reports: (json[r'reports'] as List<Object?>?)
              ?.map((i) => i as Map<String, Object?>? ?? {})
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var reports = this.reports;

    final json = <String, Object?>{};
    json[r'reports'] = reports;
    return json;
  }

  ReportsResponseBean copyWith({List<Map<String, dynamic>>? reports}) {
    return ReportsResponseBean(
      reports: reports ?? this.reports,
    );
  }
}

/// The projects the item is associated with. Indicated for items associated
/// with [next-gen projects](https://confluence.atlassian.com/x/loMyO).
class Scope {
  /// The project the item has scope in.
  final Map<String, dynamic>? project;

  /// The type of scope.
  final ScopeType? type;

  Scope({this.project, this.type});

  factory Scope.fromJson(Map<String, Object?> json) {
    return Scope(
      project: json[r'project'] as Map<String, Object?>?,
      type: json[r'type'] != null
          ? ScopeType.fromValue(json[r'type']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var project = this.project;
    var type = this.type;

    final json = <String, Object?>{};
    if (project != null) {
      json[r'project'] = project;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    return json;
  }

  Scope copyWith({Map<String, dynamic>? project, ScopeType? type}) {
    return Scope(
      project: project ?? this.project,
      type: type ?? this.type,
    );
  }
}

class ScopeType {
  static const project = ScopeType._('PROJECT');
  static const template = ScopeType._('TEMPLATE');

  static const values = [
    project,
    template,
  ];
  final String value;

  const ScopeType._(this.value);

  static ScopeType fromValue(String value) => values
      .firstWhere((e) => e.value == value, orElse: () => ScopeType._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

/// The result of a JQL search.
class SearchResults {
  /// Expand options that include additional search result details in the
  /// response.
  final String? expand;

  /// The list of issues found by the search.
  final List<IssueBean> issues;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The ID and name of each field in the search results.
  final Map<String, dynamic>? names;

  /// The schema describing the field types in the search results.
  final Map<String, dynamic>? schema;

  /// The index of the first item returned on the page.
  final int? startAt;

  /// The number of results on the page.
  final int? total;

  /// Any warnings related to the JQL query.
  final List<String> warningMessages;

  SearchResults(
      {this.expand,
      List<IssueBean>? issues,
      this.maxResults,
      this.names,
      this.schema,
      this.startAt,
      this.total,
      List<String>? warningMessages})
      : issues = issues ?? [],
        warningMessages = warningMessages ?? [];

  factory SearchResults.fromJson(Map<String, Object?> json) {
    return SearchResults(
      expand: json[r'expand'] as String?,
      issues: (json[r'issues'] as List<Object?>?)
              ?.map((i) =>
                  IssueBean.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      names: json[r'names'] as Map<String, Object?>?,
      schema: json[r'schema'] as Map<String, Object?>?,
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      warningMessages: (json[r'warningMessages'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var expand = this.expand;
    var issues = this.issues;
    var maxResults = this.maxResults;
    var names = this.names;
    var schema = this.schema;
    var startAt = this.startAt;
    var total = this.total;
    var warningMessages = this.warningMessages;

    final json = <String, Object?>{};
    if (expand != null) {
      json[r'expand'] = expand;
    }
    json[r'issues'] = issues.map((i) => i.toJson()).toList();
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (names != null) {
      json[r'names'] = names;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'warningMessages'] = warningMessages;
    return json;
  }

  SearchResults copyWith(
      {String? expand,
      List<IssueBean>? issues,
      int? maxResults,
      Map<String, dynamic>? names,
      Map<String, dynamic>? schema,
      int? startAt,
      int? total,
      List<String>? warningMessages}) {
    return SearchResults(
      expand: expand ?? this.expand,
      issues: issues ?? this.issues,
      maxResults: maxResults ?? this.maxResults,
      names: names ?? this.names,
      schema: schema ?? this.schema,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      warningMessages: warningMessages ?? this.warningMessages,
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

class SprintBean {
  final String? completeDate;
  final String? createdDate;
  final String? endDate;
  final String? goal;
  final int? id;
  final String? name;
  final int? originBoardId;
  final String? self;
  final String? startDate;
  final String? state;

  SprintBean(
      {this.completeDate,
      this.createdDate,
      this.endDate,
      this.goal,
      this.id,
      this.name,
      this.originBoardId,
      this.self,
      this.startDate,
      this.state});

  factory SprintBean.fromJson(Map<String, Object?> json) {
    return SprintBean(
      completeDate: json[r'completeDate'] as String?,
      createdDate: json[r'createdDate'] as String?,
      endDate: json[r'endDate'] as String?,
      goal: json[r'goal'] as String?,
      id: (json[r'id'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      originBoardId: (json[r'originBoardId'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      startDate: json[r'startDate'] as String?,
      state: json[r'state'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var completeDate = this.completeDate;
    var createdDate = this.createdDate;
    var endDate = this.endDate;
    var goal = this.goal;
    var id = this.id;
    var name = this.name;
    var originBoardId = this.originBoardId;
    var self = this.self;
    var startDate = this.startDate;
    var state = this.state;

    final json = <String, Object?>{};
    if (completeDate != null) {
      json[r'completeDate'] = completeDate;
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (goal != null) {
      json[r'goal'] = goal;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (originBoardId != null) {
      json[r'originBoardId'] = originBoardId;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    return json;
  }

  SprintBean copyWith(
      {String? completeDate,
      String? createdDate,
      String? endDate,
      String? goal,
      int? id,
      String? name,
      int? originBoardId,
      String? self,
      String? startDate,
      String? state}) {
    return SprintBean(
      completeDate: completeDate ?? this.completeDate,
      createdDate: createdDate ?? this.createdDate,
      endDate: endDate ?? this.endDate,
      goal: goal ?? this.goal,
      id: id ?? this.id,
      name: name ?? this.name,
      originBoardId: originBoardId ?? this.originBoardId,
      self: self ?? this.self,
      startDate: startDate ?? this.startDate,
      state: state ?? this.state,
    );
  }
}

class SprintCreateBean {
  final String? endDate;
  final String? goal;
  final String? name;
  final int? originBoardId;
  final String? startDate;

  SprintCreateBean(
      {this.endDate, this.goal, this.name, this.originBoardId, this.startDate});

  factory SprintCreateBean.fromJson(Map<String, Object?> json) {
    return SprintCreateBean(
      endDate: json[r'endDate'] as String?,
      goal: json[r'goal'] as String?,
      name: json[r'name'] as String?,
      originBoardId: (json[r'originBoardId'] as num?)?.toInt(),
      startDate: json[r'startDate'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var endDate = this.endDate;
    var goal = this.goal;
    var name = this.name;
    var originBoardId = this.originBoardId;
    var startDate = this.startDate;

    final json = <String, Object?>{};
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (goal != null) {
      json[r'goal'] = goal;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (originBoardId != null) {
      json[r'originBoardId'] = originBoardId;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    return json;
  }

  SprintCreateBean copyWith(
      {String? endDate,
      String? goal,
      String? name,
      int? originBoardId,
      String? startDate}) {
    return SprintCreateBean(
      endDate: endDate ?? this.endDate,
      goal: goal ?? this.goal,
      name: name ?? this.name,
      originBoardId: originBoardId ?? this.originBoardId,
      startDate: startDate ?? this.startDate,
    );
  }
}

class SprintSwapBean {
  final int? sprintToSwapWith;

  SprintSwapBean({this.sprintToSwapWith});

  factory SprintSwapBean.fromJson(Map<String, Object?> json) {
    return SprintSwapBean(
      sprintToSwapWith: (json[r'sprintToSwapWith'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var sprintToSwapWith = this.sprintToSwapWith;

    final json = <String, Object?>{};
    if (sprintToSwapWith != null) {
      json[r'sprintToSwapWith'] = sprintToSwapWith;
    }
    return json;
  }

  SprintSwapBean copyWith({int? sprintToSwapWith}) {
    return SprintSwapBean(
      sprintToSwapWith: sprintToSwapWith ?? this.sprintToSwapWith,
    );
  }
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

  /// The scope of the field.
  final Map<String, dynamic>? scope;

  /// The URL of the status.
  final String? self;

  /// The category assigned to the status.
  final Map<String, dynamic>? statusCategory;

  StatusDetails(
      {this.description,
      this.iconUrl,
      this.id,
      this.name,
      this.scope,
      this.self,
      this.statusCategory});

  factory StatusDetails.fromJson(Map<String, Object?> json) {
    return StatusDetails(
      description: json[r'description'] as String?,
      iconUrl: json[r'iconUrl'] as String?,
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      scope: json[r'scope'] as Map<String, Object?>?,
      self: json[r'self'] as String?,
      statusCategory: json[r'statusCategory'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var description = this.description;
    var iconUrl = this.iconUrl;
    var id = this.id;
    var name = this.name;
    var scope = this.scope;
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
    if (scope != null) {
      json[r'scope'] = scope;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (statusCategory != null) {
      json[r'statusCategory'] = statusCategory;
    }
    return json;
  }

  StatusDetails copyWith(
      {String? description,
      String? iconUrl,
      String? id,
      String? name,
      Map<String, dynamic>? scope,
      String? self,
      Map<String, dynamic>? statusCategory}) {
    return StatusDetails(
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      id: id ?? this.id,
      name: name ?? this.name,
      scope: scope ?? this.scope,
      self: self ?? this.self,
      statusCategory: statusCategory ?? this.statusCategory,
    );
  }
}

class StringList {
  StringList();

  factory StringList.fromJson(Map<String, Object?> json) {
    return StringList();
  }

  Map<String, Object?> toJson() {
    final json = <String, Object?>{};
    return json;
  }
}

class SubqueryBean {
  final String? query;

  SubqueryBean({this.query});

  factory SubqueryBean.fromJson(Map<String, Object?> json) {
    return SubqueryBean(
      query: json[r'query'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var query = this.query;

    final json = <String, Object?>{};
    if (query != null) {
      json[r'query'] = query;
    }
    return json;
  }

  SubqueryBean copyWith({String? query}) {
    return SubqueryBean(
      query: query ?? this.query,
    );
  }
}

/// A project category.
class UpdatedProjectCategory {
  /// The name of the project category.
  final String? description;

  /// The ID of the project category.
  final String? id;

  /// The description of the project category.
  final String? name;

  /// The URL of the project category.
  final String? self;

  UpdatedProjectCategory({this.description, this.id, this.name, this.self});

  factory UpdatedProjectCategory.fromJson(Map<String, Object?> json) {
    return UpdatedProjectCategory(
      description: json[r'description'] as String?,
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var description = this.description;
    var id = this.id;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (description != null) {
      json[r'description'] = description;
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
    return json;
  }

  UpdatedProjectCategory copyWith(
      {String? description, String? id, String? name, String? self}) {
    return UpdatedProjectCategory(
      description: description ?? this.description,
      id: id ?? this.id,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class UserBean {
  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// Whether the user is active.
  final bool active;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  /// The display name of the user. Depending on the user’s privacy setting,
  /// this may return an alternative value.
  final String? displayName;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The key of the user.
  final String? key;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The username of the user.
  final String? name;

  /// The URL of the user.
  final String? self;

  UserBean(
      {this.accountId,
      bool? active,
      this.avatarUrls,
      this.displayName,
      this.key,
      this.name,
      this.self})
      : active = active ?? false;

  factory UserBean.fromJson(Map<String, Object?> json) {
    return UserBean(
      accountId: json[r'accountId'] as String?,
      active: json[r'active'] as bool? ?? false,
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
      displayName: json[r'displayName'] as String?,
      key: json[r'key'] as String?,
      name: json[r'name'] as String?,
      self: json[r'self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var accountId = this.accountId;
    var active = this.active;
    var avatarUrls = this.avatarUrls;
    var displayName = this.displayName;
    var key = this.key;
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    json[r'active'] = active;
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
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

  UserBean copyWith(
      {String? accountId,
      bool? active,
      Map<String, dynamic>? avatarUrls,
      String? displayName,
      String? key,
      String? name,
      String? self}) {
    return UserBean(
      accountId: accountId ?? this.accountId,
      active: active ?? this.active,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      displayName: displayName ?? this.displayName,
      key: key ?? this.key,
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class UserBeanAvatarUrls {
  /// The URL of the user's 16x16 pixel avatar.
  final String? $16X16;

  /// The URL of the user's 24x24 pixel avatar.
  final String? $24X24;

  /// The URL of the user's 32x32 pixel avatar.
  final String? $32X32;

  /// The URL of the user's 48x48 pixel avatar.
  final String? $48X48;

  UserBeanAvatarUrls({this.$16X16, this.$24X24, this.$32X32, this.$48X48});

  factory UserBeanAvatarUrls.fromJson(Map<String, Object?> json) {
    return UserBeanAvatarUrls(
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

  UserBeanAvatarUrls copyWith(
      {String? $16X16, String? $24X24, String? $32X32, String? $48X48}) {
    return UserBeanAvatarUrls(
      $16X16: $16X16 ?? this.$16X16,
      $24X24: $24X24 ?? this.$24X24,
      $32X32: $32X32 ?? this.$32X32,
      $48X48: $48X48 ?? this.$48X48,
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
  final Map<String, dynamic>? avatarUrls;

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
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
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
      json[r'avatarUrls'] = avatarUrls;
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
      Map<String, dynamic>? avatarUrls,
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
