// Generated code - Do not edit manually

import '../api_utils.dart';

// ignore_for_file: deprecated_member_use_from_same_package

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
  Future<dynamic> getBoardPropertyKeys(String boardId) async {
    return await _client.send(
      'get',
      'rest/agile/1.0/board/{boardId}/properties',
      pathParameters: {
        'boardId': boardId,
      },
    );
  }

  /// Returns the value of the property with a given key from the board
  /// identified by the provided id. The user who retrieves the property is
  /// required to have permissions to view the board.
  Future<dynamic> getBoardProperty(
      {required String boardId, required String propertyKey}) async {
    return await _client.send(
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
  Future<void> setBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'put',
      'rest/agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
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
      'builds/0.1/bulk',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> deleteBuildsByProperty({int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'builds/0.1/bulkByProperties',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> getBuildByKey(
      {required String pipelineId, required int buildNumber}) async {
    return await _client.send(
      'get',
      'builds/0.1/pipelines/{pipelineId}/builds/{buildNumber}',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> deleteBuildByKey(
      {required String pipelineId,
      required int buildNumber,
      int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'builds/0.1/pipelines/{pipelineId}/builds/{buildNumber}',
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
      'deployments/0.1/bulk',
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
      'deployments/0.1/bulkByProperties',
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
      'deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}',
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
      'deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}',
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
  /// environmentId + deploymentSequenceNumber` combination. Only apps that
  /// define the `jiraDeploymentInfoProvider` module can access this resource.
  /// This resource requires the 'READ' scope.
  Future<dynamic> getDeploymentGatingStatusByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber}) async {
    return await _client.send(
      'get',
      'deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}/gating-status',
      pathParameters: {
        'pipelineId': pipelineId,
        'environmentId': environmentId,
        'deploymentSequenceNumber': '$deploymentSequenceNumber',
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
      'devinfo/0.10/bulk',
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
      'devinfo/0.10/repository/{repositoryId}',
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
      'devinfo/0.10/repository/{repositoryId}',
      pathParameters: {
        'repositoryId': repositoryId,
      },
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }

  /// Deletes development information entities which have all the provided
  /// properties. Entities will be deleted that match ALL of the properties
  /// (i.e. treated as an AND). For example if request is `DELETE
  /// bulk?accountId=123&projectId=ABC` entities which have properties
  /// `accountId=123` and `projectId=ABC` will be deleted. Special property
  /// `_updateSequenceId` can be used to delete all entities with
  /// updateSequenceId less or equal than the value specified. In addition to
  /// the optional `_updateSequenceId`, one or more query params must be
  /// supplied to specify properties to delete by. Deletion is performed
  /// asynchronously: specified entities will eventually be removed from Jira.
  Future<void> deleteByProperties(
      {required String authorization, int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'devinfo/0.10/bulkByProperties',
      queryParameters: {
        if (updateSequenceId != null) '_updateSequenceId': '$updateSequenceId',
      },
    );
  }

  /// Checks if development information which have all the provided properties
  /// exists. For example, if request is `GET
  /// existsByProperties?accountId=123&projectId=ABC` then result will be
  /// positive only if there is at least one entity or repository with both
  /// properties `accountId=123` and `projectId=ABC`. Special property
  /// `_updateSequenceId` can be used to filter all entities with
  /// updateSequenceId less or equal than the value specified. In addition to
  /// the optional `_updateSequenceId`, one or more query params must be
  /// supplied to specify properties to search by.
  Future<Map<String, dynamic>> existsByProperties(
      {required String authorization, int? updateSequenceId}) async {
    return await _client.send(
      'get',
      'devinfo/0.10/existsByProperties',
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
      'devinfo/0.10/repository/{repositoryId}/{entityType}/{entityId}',
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
  /// Only apps that define the Feature Flags module can access this resource.
  /// This resource requires the 'WRITE' scope.
  Future<dynamic> submitFeatureFlags({required dynamic body}) async {
    return await _client.send(
      'post',
      'featureflags/0.1/bulk',
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
  /// Only apps that define the Feature Flags module can access this resource.
  /// This resource requires the 'DELETE' scope.
  Future<void> deleteFeatureFlagsByProperty({int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'featureflags/0.1/bulkByProperties',
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
  /// Only apps that define the Feature Flags module can access this resource.
  /// This resource requires the 'READ' scope.
  Future<dynamic> getFeatureFlagById(String featureFlagId) async {
    return await _client.send(
      'get',
      'featureflags/0.1/flag/{featureFlagId}',
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
  /// Only apps that define the Feature Flags module can access this resource.
  /// This resource requires the 'DELETE' scope.
  Future<void> deleteFeatureFlagById(
      {required String featureFlagId, int? updateSequenceId}) async {
    await _client.send(
      'delete',
      'featureflags/0.1/flag/{featureFlagId}',
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
      'remotelinks/1.0/bulk',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> deleteRemoteLinksByProperty(
      {int? updateSequenceNumber, Map<String, dynamic>? params}) async {
    await _client.send(
      'delete',
      'remotelinks/1.0/bulkByProperties',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<dynamic> getRemoteLinkById(String remoteLinkId) async {
    return await _client.send(
      'get',
      'remotelinks/1.0/remotelink/{remoteLinkId}',
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
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> deleteRemoteLinkById(
      {required String remoteLinkId, int? updateSequenceNumber}) async {
    await _client.send(
      'delete',
      'remotelinks/1.0/remotelink/{remoteLinkId}',
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

  /// Performs a full update of a sprint. A full update means that the result
  /// will be exactly the same as the request body. Any fields not present in
  /// the request JSON will be set to null.
  ///
  /// Notes:
  ///
  ///  *  Sprints that are in a closed state cannot be updated.
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

  /// Performs a partial update of a sprint. A partial update means that fields
  /// not present in the request JSON will not be updated.
  ///
  /// Notes:
  ///
  ///  *  Sprints that are in a closed state cannot be updated.
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
  Future<void> getPropertiesKeys(String sprintId) async {
    await _client.send(
      'get',
      'rest/agile/1.0/sprint/{sprintId}/properties',
      pathParameters: {
        'sprintId': sprintId,
      },
    );
  }

  /// Returns the value of the property with a given key from the sprint
  /// identified by the provided id. The user who retrieves the property is
  /// required to have permissions to view the sprint.
  Future<void> getProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
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
  Future<void> setProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
      'put',
      'rest/agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
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
  /// The ID of the board.
  final int? id;

  /// The URL of the board.
  final String? self;

  /// The name of the board.
  final String? name;

  /// The type the board.
  final String? type;
  final Map<String, dynamic>? admins;

  /// The container that the board is located in.
  final BoardLocation? location;

  /// Whether the board can be edited.
  final bool canEdit;

  /// Whether the board is private.
  final bool isPrivate;

  /// Whether the board is selected as a favorite.
  final bool favourite;

  Board(
      {this.id,
      this.self,
      this.name,
      this.type,
      this.admins,
      this.location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite})
      : canEdit = canEdit ?? false,
        isPrivate = isPrivate ?? false,
        favourite = favourite ?? false;

  factory Board.fromJson(Map<String, Object?> json) {
    return Board(
      id: (json[r'id'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      admins: json[r'admins'] as Map<String, Object?>?,
      location: json[r'location'] != null
          ? BoardLocation.fromJson(json[r'location']! as Map<String, Object?>)
          : null,
      canEdit: json[r'canEdit'] as bool? ?? false,
      isPrivate: json[r'isPrivate'] as bool? ?? false,
      favourite: json[r'favourite'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;
    var type = this.type;
    var admins = this.admins;
    var location = this.location;
    var canEdit = this.canEdit;
    var isPrivate = this.isPrivate;
    var favourite = this.favourite;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (admins != null) {
      json[r'admins'] = admins;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    json[r'canEdit'] = canEdit;
    json[r'isPrivate'] = isPrivate;
    json[r'favourite'] = favourite;
    return json;
  }

  Board copyWith(
      {int? id,
      String? self,
      String? name,
      String? type,
      Map<String, dynamic>? admins,
      BoardLocation? location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite}) {
    return Board(
      id: id ?? this.id,
      self: self ?? this.self,
      name: name ?? this.name,
      type: type ?? this.type,
      admins: admins ?? this.admins,
      location: location ?? this.location,
      canEdit: canEdit ?? this.canEdit,
      isPrivate: isPrivate ?? this.isPrivate,
      favourite: favourite ?? this.favourite,
    );
  }
}

/// The users and groups who own the board.
class BoardAdminsBean {
  final List<BoardAdminsBeanUsersItem> users;
  final List<BoardAdminsBeanGroupsItem> groups;

  BoardAdminsBean(
      {List<BoardAdminsBeanUsersItem>? users,
      List<BoardAdminsBeanGroupsItem>? groups})
      : users = users ?? [],
        groups = groups ?? [];

  factory BoardAdminsBean.fromJson(Map<String, Object?> json) {
    return BoardAdminsBean(
      users: (json[r'users'] as List<Object?>?)
              ?.map((i) => BoardAdminsBeanUsersItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json[r'groups'] as List<Object?>?)
              ?.map((i) => BoardAdminsBeanGroupsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var users = this.users;
    var groups = this.groups;

    final json = <String, Object?>{};
    json[r'users'] = users.map((i) => i.toJson()).toList();
    json[r'groups'] = groups.map((i) => i.toJson()).toList();
    return json;
  }

  BoardAdminsBean copyWith(
      {List<BoardAdminsBeanUsersItem>? users,
      List<BoardAdminsBeanGroupsItem>? groups}) {
    return BoardAdminsBean(
      users: users ?? this.users,
      groups: groups ?? this.groups,
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
  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting,
  /// this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  BoardAdminsBeanUsersItem(
      {this.key,
      this.self,
      this.name,
      this.displayName,
      bool? active,
      this.accountId,
      this.avatarUrls})
      : active = active ?? false;

  factory BoardAdminsBeanUsersItem.fromJson(Map<String, Object?> json) {
    return BoardAdminsBeanUsersItem(
      key: json[r'key'] as String?,
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
      displayName: json[r'displayName'] as String?,
      active: json[r'active'] as bool? ?? false,
      accountId: json[r'accountId'] as String?,
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var self = this.self;
    var name = this.name;
    var displayName = this.displayName;
    var active = this.active;
    var accountId = this.accountId;
    var avatarUrls = this.avatarUrls;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    json[r'active'] = active;
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    return json;
  }

  BoardAdminsBeanUsersItem copyWith(
      {String? key,
      String? self,
      String? name,
      String? displayName,
      bool? active,
      String? accountId,
      Map<String, dynamic>? avatarUrls}) {
    return BoardAdminsBeanUsersItem(
      key: key ?? this.key,
      self: self ?? this.self,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      active: active ?? this.active,
      accountId: accountId ?? this.accountId,
      avatarUrls: avatarUrls ?? this.avatarUrls,
    );
  }
}

class BoardConfigBean {
  final int? id;
  final String? name;
  final String? type;
  final String? self;
  final BoardConfigBeanLocation? location;
  final BoardConfigBeanFilter? filter;
  final BoardConfigBeanSubQuery? subQuery;
  final BoardConfigBeanColumnConfig? columnConfig;
  final BoardConfigBeanEstimation? estimation;
  final BoardConfigBeanRanking? ranking;

  BoardConfigBean(
      {this.id,
      this.name,
      this.type,
      this.self,
      this.location,
      this.filter,
      this.subQuery,
      this.columnConfig,
      this.estimation,
      this.ranking});

  factory BoardConfigBean.fromJson(Map<String, Object?> json) {
    return BoardConfigBean(
      id: (json[r'id'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      self: json[r'self'] as String?,
      location: json[r'location'] != null
          ? BoardConfigBeanLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
      filter: json[r'filter'] != null
          ? BoardConfigBeanFilter.fromJson(
              json[r'filter']! as Map<String, Object?>)
          : null,
      subQuery: json[r'subQuery'] != null
          ? BoardConfigBeanSubQuery.fromJson(
              json[r'subQuery']! as Map<String, Object?>)
          : null,
      columnConfig: json[r'columnConfig'] != null
          ? BoardConfigBeanColumnConfig.fromJson(
              json[r'columnConfig']! as Map<String, Object?>)
          : null,
      estimation: json[r'estimation'] != null
          ? BoardConfigBeanEstimation.fromJson(
              json[r'estimation']! as Map<String, Object?>)
          : null,
      ranking: json[r'ranking'] != null
          ? BoardConfigBeanRanking.fromJson(
              json[r'ranking']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var name = this.name;
    var type = this.type;
    var self = this.self;
    var location = this.location;
    var filter = this.filter;
    var subQuery = this.subQuery;
    var columnConfig = this.columnConfig;
    var estimation = this.estimation;
    var ranking = this.ranking;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    if (filter != null) {
      json[r'filter'] = filter.toJson();
    }
    if (subQuery != null) {
      json[r'subQuery'] = subQuery.toJson();
    }
    if (columnConfig != null) {
      json[r'columnConfig'] = columnConfig.toJson();
    }
    if (estimation != null) {
      json[r'estimation'] = estimation.toJson();
    }
    if (ranking != null) {
      json[r'ranking'] = ranking.toJson();
    }
    return json;
  }

  BoardConfigBean copyWith(
      {int? id,
      String? name,
      String? type,
      String? self,
      BoardConfigBeanLocation? location,
      BoardConfigBeanFilter? filter,
      BoardConfigBeanSubQuery? subQuery,
      BoardConfigBeanColumnConfig? columnConfig,
      BoardConfigBeanEstimation? estimation,
      BoardConfigBeanRanking? ranking}) {
    return BoardConfigBean(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      self: self ?? this.self,
      location: location ?? this.location,
      filter: filter ?? this.filter,
      subQuery: subQuery ?? this.subQuery,
      columnConfig: columnConfig ?? this.columnConfig,
      estimation: estimation ?? this.estimation,
      ranking: ranking ?? this.ranking,
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
  final String? name;
  final List<BoardConfigBeanColumnConfigColumnsItemStatusesItem> statuses;
  final int? min;
  final int? max;

  BoardConfigBeanColumnConfigColumnsItem(
      {this.name,
      List<BoardConfigBeanColumnConfigColumnsItemStatusesItem>? statuses,
      this.min,
      this.max})
      : statuses = statuses ?? [];

  factory BoardConfigBeanColumnConfigColumnsItem.fromJson(
      Map<String, Object?> json) {
    return BoardConfigBeanColumnConfigColumnsItem(
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) =>
                  BoardConfigBeanColumnConfigColumnsItemStatusesItem.fromJson(
                      i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json[r'min'] as num?)?.toInt(),
      max: (json[r'max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    return json;
  }

  BoardConfigBeanColumnConfigColumnsItem copyWith(
      {String? name,
      List<BoardConfigBeanColumnConfigColumnsItemStatusesItem>? statuses,
      int? min,
      int? max}) {
    return BoardConfigBeanColumnConfigColumnsItem(
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
      min: min ?? this.min,
      max: max ?? this.max,
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
  final String? type;
  final BoardConfigBeanEstimationField? field;

  BoardConfigBeanEstimation({this.type, this.field});

  factory BoardConfigBeanEstimation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimation(
      type: json[r'type'] as String?,
      field: json[r'field'] != null
          ? BoardConfigBeanEstimationField.fromJson(
              json[r'field']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var field = this.field;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (field != null) {
      json[r'field'] = field.toJson();
    }
    return json;
  }

  BoardConfigBeanEstimation copyWith(
      {String? type, BoardConfigBeanEstimationField? field}) {
    return BoardConfigBeanEstimation(
      type: type ?? this.type,
      field: field ?? this.field,
    );
  }
}

class BoardConfigBeanEstimationField {
  final String? fieldId;
  final String? displayName;

  BoardConfigBeanEstimationField({this.fieldId, this.displayName});

  factory BoardConfigBeanEstimationField.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimationField(
      fieldId: json[r'fieldId'] as String?,
      displayName: json[r'displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  BoardConfigBeanEstimationField copyWith(
      {String? fieldId, String? displayName}) {
    return BoardConfigBeanEstimationField(
      fieldId: fieldId ?? this.fieldId,
      displayName: displayName ?? this.displayName,
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
  final BoardConfigBeanLocationType? type;
  final String? projectKeyOrId;

  BoardConfigBeanLocation({this.type, this.projectKeyOrId});

  factory BoardConfigBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanLocation(
      type: json[r'type'] != null
          ? BoardConfigBeanLocationType.fromValue(json[r'type']! as String)
          : null,
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  BoardConfigBeanLocation copyWith(
      {BoardConfigBeanLocationType? type, String? projectKeyOrId}) {
    return BoardConfigBeanLocation(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
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
  final String? name;
  final BoardCreateBeanType? type;
  final int? filterId;
  final BoardCreateBeanLocation? location;

  BoardCreateBean({this.name, this.type, this.filterId, this.location});

  factory BoardCreateBean.fromJson(Map<String, Object?> json) {
    return BoardCreateBean(
      name: json[r'name'] as String?,
      type: json[r'type'] != null
          ? BoardCreateBeanType.fromValue(json[r'type']! as String)
          : null,
      filterId: (json[r'filterId'] as num?)?.toInt(),
      location: json[r'location'] != null
          ? BoardCreateBeanLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var type = this.type;
    var filterId = this.filterId;
    var location = this.location;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (filterId != null) {
      json[r'filterId'] = filterId;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    return json;
  }

  BoardCreateBean copyWith(
      {String? name,
      BoardCreateBeanType? type,
      int? filterId,
      BoardCreateBeanLocation? location}) {
    return BoardCreateBean(
      name: name ?? this.name,
      type: type ?? this.type,
      filterId: filterId ?? this.filterId,
      location: location ?? this.location,
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
  final BoardCreateBeanLocationType? type;
  final String? projectKeyOrId;

  BoardCreateBeanLocation({this.type, this.projectKeyOrId});

  factory BoardCreateBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardCreateBeanLocation(
      type: json[r'type'] != null
          ? BoardCreateBeanLocationType.fromValue(json[r'type']! as String)
          : null,
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  BoardCreateBeanLocation copyWith(
      {BoardCreateBeanLocationType? type, String? projectKeyOrId}) {
    return BoardCreateBeanLocation(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
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
  final String? self;
  final String? name;

  BoardFilterBean({this.id, this.self, this.name});

  factory BoardFilterBean.fromJson(Map<String, Object?> json) {
    return BoardFilterBean(
      id: (json[r'id'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  BoardFilterBean copyWith({int? id, String? self, String? name}) {
    return BoardFilterBean(
      id: id ?? this.id,
      self: self ?? this.self,
      name: name ?? this.name,
    );
  }
}

/// The container that the board is located in.
class BoardLocation {
  final int? projectId;
  final int? userId;
  final String? userAccountId;
  final String? displayName;
  final String? projectName;
  final String? projectKey;
  final String? projectTypeKey;
  final String? avatarUri;
  final String? name;

  BoardLocation(
      {this.projectId,
      this.userId,
      this.userAccountId,
      this.displayName,
      this.projectName,
      this.projectKey,
      this.projectTypeKey,
      this.avatarUri,
      this.name});

  factory BoardLocation.fromJson(Map<String, Object?> json) {
    return BoardLocation(
      projectId: (json[r'projectId'] as num?)?.toInt(),
      userId: (json[r'userId'] as num?)?.toInt(),
      userAccountId: json[r'userAccountId'] as String?,
      displayName: json[r'displayName'] as String?,
      projectName: json[r'projectName'] as String?,
      projectKey: json[r'projectKey'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      avatarUri: json[r'avatarURI'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var projectId = this.projectId;
    var userId = this.userId;
    var userAccountId = this.userAccountId;
    var displayName = this.displayName;
    var projectName = this.projectName;
    var projectKey = this.projectKey;
    var projectTypeKey = this.projectTypeKey;
    var avatarUri = this.avatarUri;
    var name = this.name;

    final json = <String, Object?>{};
    if (projectId != null) {
      json[r'projectId'] = projectId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (projectName != null) {
      json[r'projectName'] = projectName;
    }
    if (projectKey != null) {
      json[r'projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  BoardLocation copyWith(
      {int? projectId,
      int? userId,
      String? userAccountId,
      String? displayName,
      String? projectName,
      String? projectKey,
      String? projectTypeKey,
      String? avatarUri,
      String? name}) {
    return BoardLocation(
      projectId: projectId ?? this.projectId,
      userId: userId ?? this.userId,
      userAccountId: userAccountId ?? this.userAccountId,
      displayName: displayName ?? this.displayName,
      projectName: projectName ?? this.projectName,
      projectKey: projectKey ?? this.projectKey,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      avatarUri: avatarUri ?? this.avatarUri,
      name: name ?? this.name,
    );
  }
}

/// The container that the board is located in.
class BoardLocationBean {
  final int? projectId;
  final int? userId;
  final String? userAccountId;
  final String? displayName;
  final String? projectName;
  final String? projectKey;
  final String? projectTypeKey;
  final String? avatarUri;
  final String? name;

  BoardLocationBean(
      {this.projectId,
      this.userId,
      this.userAccountId,
      this.displayName,
      this.projectName,
      this.projectKey,
      this.projectTypeKey,
      this.avatarUri,
      this.name});

  factory BoardLocationBean.fromJson(Map<String, Object?> json) {
    return BoardLocationBean(
      projectId: (json[r'projectId'] as num?)?.toInt(),
      userId: (json[r'userId'] as num?)?.toInt(),
      userAccountId: json[r'userAccountId'] as String?,
      displayName: json[r'displayName'] as String?,
      projectName: json[r'projectName'] as String?,
      projectKey: json[r'projectKey'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      avatarUri: json[r'avatarURI'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var projectId = this.projectId;
    var userId = this.userId;
    var userAccountId = this.userAccountId;
    var displayName = this.displayName;
    var projectName = this.projectName;
    var projectKey = this.projectKey;
    var projectTypeKey = this.projectTypeKey;
    var avatarUri = this.avatarUri;
    var name = this.name;

    final json = <String, Object?>{};
    if (projectId != null) {
      json[r'projectId'] = projectId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (projectName != null) {
      json[r'projectName'] = projectName;
    }
    if (projectKey != null) {
      json[r'projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  BoardLocationBean copyWith(
      {int? projectId,
      int? userId,
      String? userAccountId,
      String? displayName,
      String? projectName,
      String? projectKey,
      String? projectTypeKey,
      String? avatarUri,
      String? name}) {
    return BoardLocationBean(
      projectId: projectId ?? this.projectId,
      userId: userId ?? this.userId,
      userAccountId: userAccountId ?? this.userAccountId,
      displayName: displayName ?? this.displayName,
      projectName: projectName ?? this.projectName,
      projectKey: projectKey ?? this.projectKey,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      avatarUri: avatarUri ?? this.avatarUri,
      name: name ?? this.name,
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
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The list of items changed.
  final List<ChangelogItemsItem> items;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  Changelog(
      {this.id,
      this.author,
      this.created,
      List<ChangelogItemsItem>? items,
      this.historyMetadata})
      : items = items ?? [];

  factory Changelog.fromJson(Map<String, Object?> json) {
    return Changelog(
      id: json[r'id'] as String?,
      author: json[r'author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => ChangelogItemsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      historyMetadata: json[r'historyMetadata'] as Map<String, Object?>?,
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
      json[r'author'] = author;
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata;
    }
    return json;
  }

  Changelog copyWith(
      {String? id,
      Map<String, dynamic>? author,
      DateTime? created,
      List<ChangelogItemsItem>? items,
      Map<String, dynamic>? historyMetadata}) {
    return Changelog(
      id: id ?? this.id,
      author: author ?? this.author,
      created: created ?? this.created,
      items: items ?? this.items,
      historyMetadata: historyMetadata ?? this.historyMetadata,
    );
  }
}

/// A change item.
class ChangelogItemsItem {
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

  ChangelogItemsItem(
      {this.field,
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangelogItemsItem.fromJson(Map<String, Object?> json) {
    return ChangelogItemsItem(
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

  ChangelogItemsItem copyWith(
      {String? field,
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangelogItemsItem(
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
  final String? name;
  final List<ColumnBeanStatusesItem> statuses;
  final int? min;
  final int? max;

  ColumnBean(
      {this.name, List<ColumnBeanStatusesItem>? statuses, this.min, this.max})
      : statuses = statuses ?? [];

  factory ColumnBean.fromJson(Map<String, Object?> json) {
    return ColumnBean(
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) => ColumnBeanStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json[r'min'] as num?)?.toInt(),
      max: (json[r'max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    return json;
  }

  ColumnBean copyWith(
      {String? name,
      List<ColumnBeanStatusesItem>? statuses,
      int? min,
      int? max}) {
    return ColumnBean(
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
      min: min ?? this.min,
      max: max ?? this.max,
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
  final String? name;
  final List<ColumnConfigBeanColumnsItemStatusesItem> statuses;
  final int? min;
  final int? max;

  ColumnConfigBeanColumnsItem(
      {this.name,
      List<ColumnConfigBeanColumnsItemStatusesItem>? statuses,
      this.min,
      this.max})
      : statuses = statuses ?? [];

  factory ColumnConfigBeanColumnsItem.fromJson(Map<String, Object?> json) {
    return ColumnConfigBeanColumnsItem(
      name: json[r'name'] as String?,
      statuses: (json[r'statuses'] as List<Object?>?)
              ?.map((i) => ColumnConfigBeanColumnsItemStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json[r'min'] as num?)?.toInt(),
      max: (json[r'max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    json[r'statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json[r'min'] = min;
    }
    if (max != null) {
      json[r'max'] = max;
    }
    return json;
  }

  ColumnConfigBeanColumnsItem copyWith(
      {String? name,
      List<ColumnConfigBeanColumnsItemStatusesItem>? statuses,
      int? min,
      int? max}) {
    return ColumnConfigBeanColumnsItem(
      name: name ?? this.name,
      statuses: statuses ?? this.statuses,
      min: min ?? this.min,
      max: max ?? this.max,
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
  final int? issueId;
  final String? issueKey;
  final int? status;
  final List<String> errors;

  Entry({this.issueId, this.issueKey, this.status, List<String>? errors})
      : errors = errors ?? [];

  factory Entry.fromJson(Map<String, Object?> json) {
    return Entry(
      issueId: (json[r'issueId'] as num?)?.toInt(),
      issueKey: json[r'issueKey'] as String?,
      status: (json[r'status'] as num?)?.toInt(),
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var status = this.status;
    var errors = this.errors;

    final json = <String, Object?>{};
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    json[r'errors'] = errors;
    return json;
  }

  Entry copyWith(
      {int? issueId, String? issueKey, int? status, List<String>? errors}) {
    return Entry(
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      status: status ?? this.status,
      errors: errors ?? this.errors,
    );
  }
}

class EpicRankRequestBean {
  final String? rankBeforeEpic;
  final String? rankAfterEpic;
  final int? rankCustomFieldId;

  EpicRankRequestBean(
      {this.rankBeforeEpic, this.rankAfterEpic, this.rankCustomFieldId});

  factory EpicRankRequestBean.fromJson(Map<String, Object?> json) {
    return EpicRankRequestBean(
      rankBeforeEpic: json[r'rankBeforeEpic'] as String?,
      rankAfterEpic: json[r'rankAfterEpic'] as String?,
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankBeforeEpic = this.rankBeforeEpic;
    var rankAfterEpic = this.rankAfterEpic;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankBeforeEpic != null) {
      json[r'rankBeforeEpic'] = rankBeforeEpic;
    }
    if (rankAfterEpic != null) {
      json[r'rankAfterEpic'] = rankAfterEpic;
    }
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  EpicRankRequestBean copyWith(
      {String? rankBeforeEpic, String? rankAfterEpic, int? rankCustomFieldId}) {
    return EpicRankRequestBean(
      rankBeforeEpic: rankBeforeEpic ?? this.rankBeforeEpic,
      rankAfterEpic: rankAfterEpic ?? this.rankAfterEpic,
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
    );
  }
}

class EpicUpdateBean {
  final String? name;
  final String? summary;
  final EpicUpdateBeanColor? color;
  final bool done;

  EpicUpdateBean({this.name, this.summary, this.color, bool? done})
      : done = done ?? false;

  factory EpicUpdateBean.fromJson(Map<String, Object?> json) {
    return EpicUpdateBean(
      name: json[r'name'] as String?,
      summary: json[r'summary'] as String?,
      color: json[r'color'] != null
          ? EpicUpdateBeanColor.fromJson(
              json[r'color']! as Map<String, Object?>)
          : null,
      done: json[r'done'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var summary = this.summary;
    var color = this.color;
    var done = this.done;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (color != null) {
      json[r'color'] = color.toJson();
    }
    json[r'done'] = done;
    return json;
  }

  EpicUpdateBean copyWith(
      {String? name, String? summary, EpicUpdateBeanColor? color, bool? done}) {
    return EpicUpdateBean(
      name: name ?? this.name,
      summary: summary ?? this.summary,
      color: color ?? this.color,
      done: done ?? this.done,
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
  final String? type;
  final EstimationConfigBeanField? field;

  EstimationConfigBean({this.type, this.field});

  factory EstimationConfigBean.fromJson(Map<String, Object?> json) {
    return EstimationConfigBean(
      type: json[r'type'] as String?,
      field: json[r'field'] != null
          ? EstimationConfigBeanField.fromJson(
              json[r'field']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var field = this.field;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type;
    }
    if (field != null) {
      json[r'field'] = field.toJson();
    }
    return json;
  }

  EstimationConfigBean copyWith(
      {String? type, EstimationConfigBeanField? field}) {
    return EstimationConfigBean(
      type: type ?? this.type,
      field: field ?? this.field,
    );
  }
}

class EstimationConfigBeanField {
  final String? fieldId;
  final String? displayName;

  EstimationConfigBeanField({this.fieldId, this.displayName});

  factory EstimationConfigBeanField.fromJson(Map<String, Object?> json) {
    return EstimationConfigBeanField(
      fieldId: json[r'fieldId'] as String?,
      displayName: json[r'displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  EstimationConfigBeanField copyWith({String? fieldId, String? displayName}) {
    return EstimationConfigBeanField(
      fieldId: fieldId ?? this.fieldId,
      displayName: displayName ?? this.displayName,
    );
  }
}

class EstimationConfigurationBean {
  final EstimationConfigurationBeanValue? value;
  final String? localisedName;
  final String? localisedDescription;

  EstimationConfigurationBean(
      {this.value, this.localisedName, this.localisedDescription});

  factory EstimationConfigurationBean.fromJson(Map<String, Object?> json) {
    return EstimationConfigurationBean(
      value: json[r'value'] != null
          ? EstimationConfigurationBeanValue.fromValue(
              json[r'value']! as String)
          : null,
      localisedName: json[r'localisedName'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var localisedName = this.localisedName;
    var localisedDescription = this.localisedDescription;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value.value;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    return json;
  }

  EstimationConfigurationBean copyWith(
      {EstimationConfigurationBeanValue? value,
      String? localisedName,
      String? localisedDescription}) {
    return EstimationConfigurationBean(
      value: value ?? this.value,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
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
  final String? fieldId;
  final String? displayName;

  EstimationFieldBean({this.fieldId, this.displayName});

  factory EstimationFieldBean.fromJson(Map<String, Object?> json) {
    return EstimationFieldBean(
      fieldId: json[r'fieldId'] as String?,
      displayName: json[r'displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json[r'fieldId'] = fieldId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    return json;
  }

  EstimationFieldBean copyWith({String? fieldId, String? displayName}) {
    return EstimationFieldBean(
      fieldId: fieldId ?? this.fieldId,
      displayName: displayName ?? this.displayName,
    );
  }
}

class FeatureBean {
  final FeatureBeanBoardFeature? boardFeature;
  final int? boardId;
  final FeatureBeanState? state;
  final String? localisedName;
  final String? localisedDescription;
  final String? learnMoreLink;
  final String? imageUri;
  final FeatureBeanFeatureType? featureType;
  final String? localisedGroup;
  final List<FeatureBeanPermissibleEstimationTypesItem>
      permissibleEstimationTypes;
  final String? featureId;
  final String? learnMoreArticleId;
  final bool toggleLocked;

  FeatureBean(
      {this.boardFeature,
      this.boardId,
      this.state,
      this.localisedName,
      this.localisedDescription,
      this.learnMoreLink,
      this.imageUri,
      this.featureType,
      this.localisedGroup,
      List<FeatureBeanPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      this.featureId,
      this.learnMoreArticleId,
      bool? toggleLocked})
      : permissibleEstimationTypes = permissibleEstimationTypes ?? [],
        toggleLocked = toggleLocked ?? false;

  factory FeatureBean.fromJson(Map<String, Object?> json) {
    return FeatureBean(
      boardFeature: json[r'boardFeature'] != null
          ? FeatureBeanBoardFeature.fromValue(json[r'boardFeature']! as String)
          : null,
      boardId: (json[r'boardId'] as num?)?.toInt(),
      state: json[r'state'] != null
          ? FeatureBeanState.fromValue(json[r'state']! as String)
          : null,
      localisedName: json[r'localisedName'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
      learnMoreLink: json[r'learnMoreLink'] as String?,
      imageUri: json[r'imageUri'] as String?,
      featureType: json[r'featureType'] != null
          ? FeatureBeanFeatureType.fromValue(json[r'featureType']! as String)
          : null,
      localisedGroup: json[r'localisedGroup'] as String?,
      permissibleEstimationTypes: (json[r'permissibleEstimationTypes']
                  as List<Object?>?)
              ?.map((i) => FeatureBeanPermissibleEstimationTypesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      featureId: json[r'featureId'] as String?,
      learnMoreArticleId: json[r'learnMoreArticleId'] as String?,
      toggleLocked: json[r'toggleLocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardFeature = this.boardFeature;
    var boardId = this.boardId;
    var state = this.state;
    var localisedName = this.localisedName;
    var localisedDescription = this.localisedDescription;
    var learnMoreLink = this.learnMoreLink;
    var imageUri = this.imageUri;
    var featureType = this.featureType;
    var localisedGroup = this.localisedGroup;
    var permissibleEstimationTypes = this.permissibleEstimationTypes;
    var featureId = this.featureId;
    var learnMoreArticleId = this.learnMoreArticleId;
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json[r'boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (state != null) {
      json[r'state'] = state.value;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (learnMoreLink != null) {
      json[r'learnMoreLink'] = learnMoreLink;
    }
    if (imageUri != null) {
      json[r'imageUri'] = imageUri;
    }
    if (featureType != null) {
      json[r'featureType'] = featureType.value;
    }
    if (localisedGroup != null) {
      json[r'localisedGroup'] = localisedGroup;
    }
    json[r'permissibleEstimationTypes'] =
        permissibleEstimationTypes.map((i) => i.toJson()).toList();
    if (featureId != null) {
      json[r'featureId'] = featureId;
    }
    if (learnMoreArticleId != null) {
      json[r'learnMoreArticleId'] = learnMoreArticleId;
    }
    json[r'toggleLocked'] = toggleLocked;
    return json;
  }

  FeatureBean copyWith(
      {FeatureBeanBoardFeature? boardFeature,
      int? boardId,
      FeatureBeanState? state,
      String? localisedName,
      String? localisedDescription,
      String? learnMoreLink,
      String? imageUri,
      FeatureBeanFeatureType? featureType,
      String? localisedGroup,
      List<FeatureBeanPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      String? featureId,
      String? learnMoreArticleId,
      bool? toggleLocked}) {
    return FeatureBean(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      state: state ?? this.state,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      imageUri: imageUri ?? this.imageUri,
      featureType: featureType ?? this.featureType,
      localisedGroup: localisedGroup ?? this.localisedGroup,
      permissibleEstimationTypes:
          permissibleEstimationTypes ?? this.permissibleEstimationTypes,
      featureId: featureId ?? this.featureId,
      learnMoreArticleId: learnMoreArticleId ?? this.learnMoreArticleId,
      toggleLocked: toggleLocked ?? this.toggleLocked,
    );
  }
}

class FeatureBeanBoardFeature {
  static const simpleRoadmap = FeatureBeanBoardFeature._('SIMPLE_ROADMAP');
  static const backlog = FeatureBeanBoardFeature._('BACKLOG');
  static const sprints = FeatureBeanBoardFeature._('SPRINTS');
  static const devtools = FeatureBeanBoardFeature._('DEVTOOLS');
  static const reports = FeatureBeanBoardFeature._('REPORTS');
  static const estimation = FeatureBeanBoardFeature._('ESTIMATION');
  static const pages = FeatureBeanBoardFeature._('PAGES');
  static const code = FeatureBeanBoardFeature._('CODE');
  static const releases = FeatureBeanBoardFeature._('RELEASES');
  static const deployments = FeatureBeanBoardFeature._('DEPLOYMENTS');
  static const issueNavigator = FeatureBeanBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule = FeatureBeanBoardFeature._('ON_CALL_SCHEDULE');
  static const board = FeatureBeanBoardFeature._('BOARD');

  static const values = [
    simpleRoadmap,
    backlog,
    sprints,
    devtools,
    reports,
    estimation,
    pages,
    code,
    releases,
    deployments,
    issueNavigator,
    onCallSchedule,
    board,
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

class FeatureBeanPermissibleEstimationTypesItem {
  final FeatureBeanPermissibleEstimationTypesItemValue? value;
  final String? localisedName;
  final String? localisedDescription;

  FeatureBeanPermissibleEstimationTypesItem(
      {this.value, this.localisedName, this.localisedDescription});

  factory FeatureBeanPermissibleEstimationTypesItem.fromJson(
      Map<String, Object?> json) {
    return FeatureBeanPermissibleEstimationTypesItem(
      value: json[r'value'] != null
          ? FeatureBeanPermissibleEstimationTypesItemValue.fromValue(
              json[r'value']! as String)
          : null,
      localisedName: json[r'localisedName'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var localisedName = this.localisedName;
    var localisedDescription = this.localisedDescription;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value.value;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    return json;
  }

  FeatureBeanPermissibleEstimationTypesItem copyWith(
      {FeatureBeanPermissibleEstimationTypesItemValue? value,
      String? localisedName,
      String? localisedDescription}) {
    return FeatureBeanPermissibleEstimationTypesItem(
      value: value ?? this.value,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
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
  final FeatureResponseBeanFeaturesItemState? state;
  final String? localisedName;
  final String? localisedDescription;
  final String? learnMoreLink;
  final String? imageUri;
  final FeatureResponseBeanFeaturesItemFeatureType? featureType;
  final String? localisedGroup;
  final List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>
      permissibleEstimationTypes;
  final String? featureId;
  final String? learnMoreArticleId;
  final bool toggleLocked;

  FeatureResponseBeanFeaturesItem(
      {this.boardFeature,
      this.boardId,
      this.state,
      this.localisedName,
      this.localisedDescription,
      this.learnMoreLink,
      this.imageUri,
      this.featureType,
      this.localisedGroup,
      List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      this.featureId,
      this.learnMoreArticleId,
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
      state: json[r'state'] != null
          ? FeatureResponseBeanFeaturesItemState.fromValue(
              json[r'state']! as String)
          : null,
      localisedName: json[r'localisedName'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
      learnMoreLink: json[r'learnMoreLink'] as String?,
      imageUri: json[r'imageUri'] as String?,
      featureType: json[r'featureType'] != null
          ? FeatureResponseBeanFeaturesItemFeatureType.fromValue(
              json[r'featureType']! as String)
          : null,
      localisedGroup: json[r'localisedGroup'] as String?,
      permissibleEstimationTypes: (json[r'permissibleEstimationTypes']
                  as List<Object?>?)
              ?.map((i) =>
                  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem
                      .fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      featureId: json[r'featureId'] as String?,
      learnMoreArticleId: json[r'learnMoreArticleId'] as String?,
      toggleLocked: json[r'toggleLocked'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardFeature = this.boardFeature;
    var boardId = this.boardId;
    var state = this.state;
    var localisedName = this.localisedName;
    var localisedDescription = this.localisedDescription;
    var learnMoreLink = this.learnMoreLink;
    var imageUri = this.imageUri;
    var featureType = this.featureType;
    var localisedGroup = this.localisedGroup;
    var permissibleEstimationTypes = this.permissibleEstimationTypes;
    var featureId = this.featureId;
    var learnMoreArticleId = this.learnMoreArticleId;
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json[r'boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (state != null) {
      json[r'state'] = state.value;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    if (learnMoreLink != null) {
      json[r'learnMoreLink'] = learnMoreLink;
    }
    if (imageUri != null) {
      json[r'imageUri'] = imageUri;
    }
    if (featureType != null) {
      json[r'featureType'] = featureType.value;
    }
    if (localisedGroup != null) {
      json[r'localisedGroup'] = localisedGroup;
    }
    json[r'permissibleEstimationTypes'] =
        permissibleEstimationTypes.map((i) => i.toJson()).toList();
    if (featureId != null) {
      json[r'featureId'] = featureId;
    }
    if (learnMoreArticleId != null) {
      json[r'learnMoreArticleId'] = learnMoreArticleId;
    }
    json[r'toggleLocked'] = toggleLocked;
    return json;
  }

  FeatureResponseBeanFeaturesItem copyWith(
      {FeatureResponseBeanFeaturesItemBoardFeature? boardFeature,
      int? boardId,
      FeatureResponseBeanFeaturesItemState? state,
      String? localisedName,
      String? localisedDescription,
      String? learnMoreLink,
      String? imageUri,
      FeatureResponseBeanFeaturesItemFeatureType? featureType,
      String? localisedGroup,
      List<FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem>?
          permissibleEstimationTypes,
      String? featureId,
      String? learnMoreArticleId,
      bool? toggleLocked}) {
    return FeatureResponseBeanFeaturesItem(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      state: state ?? this.state,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      imageUri: imageUri ?? this.imageUri,
      featureType: featureType ?? this.featureType,
      localisedGroup: localisedGroup ?? this.localisedGroup,
      permissibleEstimationTypes:
          permissibleEstimationTypes ?? this.permissibleEstimationTypes,
      featureId: featureId ?? this.featureId,
      learnMoreArticleId: learnMoreArticleId ?? this.learnMoreArticleId,
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
  static const devtools =
      FeatureResponseBeanFeaturesItemBoardFeature._('DEVTOOLS');
  static const reports =
      FeatureResponseBeanFeaturesItemBoardFeature._('REPORTS');
  static const estimation =
      FeatureResponseBeanFeaturesItemBoardFeature._('ESTIMATION');
  static const pages = FeatureResponseBeanFeaturesItemBoardFeature._('PAGES');
  static const code = FeatureResponseBeanFeaturesItemBoardFeature._('CODE');
  static const releases =
      FeatureResponseBeanFeaturesItemBoardFeature._('RELEASES');
  static const deployments =
      FeatureResponseBeanFeaturesItemBoardFeature._('DEPLOYMENTS');
  static const issueNavigator =
      FeatureResponseBeanFeaturesItemBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule =
      FeatureResponseBeanFeaturesItemBoardFeature._('ON_CALL_SCHEDULE');
  static const board = FeatureResponseBeanFeaturesItemBoardFeature._('BOARD');

  static const values = [
    simpleRoadmap,
    backlog,
    sprints,
    devtools,
    reports,
    estimation,
    pages,
    code,
    releases,
    deployments,
    issueNavigator,
    onCallSchedule,
    board,
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

class FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem {
  final FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue?
      value;
  final String? localisedName;
  final String? localisedDescription;

  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      {this.value, this.localisedName, this.localisedDescription});

  factory FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem.fromJson(
      Map<String, Object?> json) {
    return FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      value: json[r'value'] != null
          ? FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue
              .fromValue(json[r'value']! as String)
          : null,
      localisedName: json[r'localisedName'] as String?,
      localisedDescription: json[r'localisedDescription'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;
    var localisedName = this.localisedName;
    var localisedDescription = this.localisedDescription;

    final json = <String, Object?>{};
    if (value != null) {
      json[r'value'] = value.value;
    }
    if (localisedName != null) {
      json[r'localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json[r'localisedDescription'] = localisedDescription;
    }
    return json;
  }

  FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem copyWith(
      {FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItemValue?
          value,
      String? localisedName,
      String? localisedDescription}) {
    return FeatureResponseBeanFeaturesItemPermissibleEstimationTypesItem(
      value: value ?? this.value,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
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
  final String? feature;
  final bool enabling;

  FeatureToggleRequestBean({this.boardId, this.feature, bool? enabling})
      : enabling = enabling ?? false;

  factory FeatureToggleRequestBean.fromJson(Map<String, Object?> json) {
    return FeatureToggleRequestBean(
      boardId: (json[r'boardId'] as num?)?.toInt(),
      feature: json[r'feature'] as String?,
      enabling: json[r'enabling'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardId = this.boardId;
    var feature = this.feature;
    var enabling = this.enabling;

    final json = <String, Object?>{};
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (feature != null) {
      json[r'feature'] = feature;
    }
    json[r'enabling'] = enabling;
    return json;
  }

  FeatureToggleRequestBean copyWith(
      {int? boardId, String? feature, bool? enabling}) {
    return FeatureToggleRequestBean(
      boardId: boardId ?? this.boardId,
      feature: feature ?? this.feature,
      enabling: enabling ?? this.enabling,
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
  /// Whether the field is required.
  final bool required;

  /// The data type of the field.
  final Map<String, dynamic> schema;

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
      schema: json[r'schema'] as Map<String, Object?>? ?? {},
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
    json[r'schema'] = schema;
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
      Map<String, dynamic>? schema,
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
  final Map<String, dynamic>? actor;

  /// Details of the system that generated the history record.
  final Map<String, dynamic>? generator;

  /// Details of the cause that triggered the creation the history record.
  final Map<String, dynamic>? cause;

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
      actor: json[r'actor'] as Map<String, Object?>?,
      generator: json[r'generator'] as Map<String, Object?>?,
      cause: json[r'cause'] as Map<String, Object?>?,
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
      json[r'actor'] = actor;
    }
    if (generator != null) {
      json[r'generator'] = generator;
    }
    if (cause != null) {
      json[r'cause'] = cause;
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
      Map<String, dynamic>? actor,
      Map<String, dynamic>? generator,
      Map<String, dynamic>? cause,
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
  final List<IssueBeanTransitionsItem> transitions;

  /// The operations that can be performed on the issue.
  final Operations? operations;

  /// The metadata for the fields on the issue that can be amended.
  final Map<String, dynamic>? editmeta;

  /// Details of changelogs associated with the issue.
  final Map<String, dynamic>? changelog;

  /// The versions of each field on the issue.
  final Map<String, dynamic>? versionedRepresentations;
  final IssueBeanFieldsToInclude? fieldsToInclude;
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
      List<IssueBeanTransitionsItem>? transitions,
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
              ?.map((i) => IssueBeanTransitionsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      operations: json[r'operations'] != null
          ? Operations.fromJson(json[r'operations']! as Map<String, Object?>)
          : null,
      editmeta: json[r'editmeta'] as Map<String, Object?>?,
      changelog: json[r'changelog'] as Map<String, Object?>?,
      versionedRepresentations:
          json[r'versionedRepresentations'] as Map<String, Object?>?,
      fieldsToInclude: json[r'fieldsToInclude'] != null
          ? IssueBeanFieldsToInclude.fromJson(
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
      json[r'editmeta'] = editmeta;
    }
    if (changelog != null) {
      json[r'changelog'] = changelog;
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
      List<IssueBeanTransitionsItem>? transitions,
      Operations? operations,
      Map<String, dynamic>? editmeta,
      Map<String, dynamic>? changelog,
      Map<String, dynamic>? versionedRepresentations,
      IssueBeanFieldsToInclude? fieldsToInclude,
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
  /// The ID of the issue transition. Required when specifying a transition to
  /// undertake.
  final String? id;

  /// The name of the issue transition.
  final String? name;

  /// Details of the issue status after the transition.
  final Map<String, dynamic>? to;

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

  IssueBeanTransitionsItem(
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

  factory IssueBeanTransitionsItem.fromJson(Map<String, Object?> json) {
    return IssueBeanTransitionsItem(
      id: json[r'id'] as String?,
      name: json[r'name'] as String?,
      to: json[r'to'] as Map<String, Object?>?,
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
      json[r'to'] = to;
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

  IssueBeanTransitionsItem copyWith(
      {String? id,
      String? name,
      Map<String, dynamic>? to,
      bool? hasScreen,
      bool? isGlobal,
      bool? isInitial,
      bool? isAvailable,
      bool? isConditional,
      Map<String, dynamic>? fields,
      String? expand,
      bool? looped}) {
    return IssueBeanTransitionsItem(
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

class IssueRankRequestBean {
  final List<String> issues;
  final String? rankBeforeIssue;
  final String? rankAfterIssue;
  final int? rankCustomFieldId;

  IssueRankRequestBean(
      {List<String>? issues,
      this.rankBeforeIssue,
      this.rankAfterIssue,
      this.rankCustomFieldId})
      : issues = issues ?? [];

  factory IssueRankRequestBean.fromJson(Map<String, Object?> json) {
    return IssueRankRequestBean(
      issues: (json[r'issues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      rankBeforeIssue: json[r'rankBeforeIssue'] as String?,
      rankAfterIssue: json[r'rankAfterIssue'] as String?,
      rankCustomFieldId: (json[r'rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var issues = this.issues;
    var rankBeforeIssue = this.rankBeforeIssue;
    var rankAfterIssue = this.rankAfterIssue;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    json[r'issues'] = issues;
    if (rankBeforeIssue != null) {
      json[r'rankBeforeIssue'] = rankBeforeIssue;
    }
    if (rankAfterIssue != null) {
      json[r'rankAfterIssue'] = rankAfterIssue;
    }
    if (rankCustomFieldId != null) {
      json[r'rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  IssueRankRequestBean copyWith(
      {List<String>? issues,
      String? rankBeforeIssue,
      String? rankAfterIssue,
      int? rankCustomFieldId}) {
    return IssueRankRequestBean(
      issues: issues ?? this.issues,
      rankBeforeIssue: rankBeforeIssue ?? this.rankBeforeIssue,
      rankAfterIssue: rankAfterIssue ?? this.rankAfterIssue,
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
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
  final Map<String, dynamic>? to;

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
      to: json[r'to'] as Map<String, Object?>?,
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
      json[r'to'] = to;
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
      Map<String, dynamic>? to,
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

  /// Details about the operations available in this version.
  final LinkGroupHeader? header;
  final int? weight;
  final List<LinkGroupLinksItem> links;
  final List<LinkGroup> groups;

  LinkGroup(
      {this.id,
      this.styleClass,
      this.header,
      this.weight,
      List<LinkGroupLinksItem>? links,
      List<LinkGroup>? groups})
      : links = links ?? [],
        groups = groups ?? [];

  factory LinkGroup.fromJson(Map<String, Object?> json) {
    return LinkGroup(
      id: json[r'id'] as String?,
      styleClass: json[r'styleClass'] as String?,
      header: json[r'header'] != null
          ? LinkGroupHeader.fromJson(json[r'header']! as Map<String, Object?>)
          : null,
      weight: (json[r'weight'] as num?)?.toInt(),
      links: (json[r'links'] as List<Object?>?)
              ?.map((i) => LinkGroupLinksItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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
      LinkGroupHeader? header,
      int? weight,
      List<LinkGroupLinksItem>? links,
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

/// Details about the operations available in this version.
class LinkGroupHeader {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  LinkGroupHeader(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory LinkGroupHeader.fromJson(Map<String, Object?> json) {
    return LinkGroupHeader(
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

  LinkGroupHeader copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return LinkGroupHeader(
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

/// Details about the operations available in this version.
class LinkGroupLinksItem {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  LinkGroupLinksItem(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory LinkGroupLinksItem.fromJson(Map<String, Object?> json) {
    return LinkGroupLinksItem(
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

  LinkGroupLinksItem copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return LinkGroupLinksItem(
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

class LocationBean {
  final LocationBeanType? type;
  final String? projectKeyOrId;

  LocationBean({this.type, this.projectKeyOrId});

  factory LocationBean.fromJson(Map<String, Object?> json) {
    return LocationBean(
      type: json[r'type'] != null
          ? LocationBeanType.fromValue(json[r'type']! as String)
          : null,
      projectKeyOrId: json[r'projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json[r'type'] = type.value;
    }
    if (projectKeyOrId != null) {
      json[r'projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  LocationBean copyWith({LocationBeanType? type, String? projectKeyOrId}) {
    return LocationBean(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
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
  final int? maxResults;
  final int? startAt;
  final int? total;
  final bool isLast;
  final List<PageBeanBoardValuesItem> values;

  PageBeanBoard(
      {this.maxResults,
      this.startAt,
      this.total,
      bool? isLast,
      List<PageBeanBoardValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanBoard.fromJson(Map<String, Object?> json) {
    return PageBeanBoard(
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      isLast: json[r'isLast'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanBoardValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var isLast = this.isLast;
    var values = this.values;

    final json = <String, Object?>{};
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'isLast'] = isLast;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoard copyWith(
      {int? maxResults,
      int? startAt,
      int? total,
      bool? isLast,
      List<PageBeanBoardValuesItem>? values}) {
    return PageBeanBoard(
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      isLast: isLast ?? this.isLast,
      values: values ?? this.values,
    );
  }
}

class PageBeanBoardFilterBean {
  final int? maxResults;
  final int? startAt;
  final int? total;
  final bool isLast;
  final List<PageBeanBoardFilterBeanValuesItem> values;

  PageBeanBoardFilterBean(
      {this.maxResults,
      this.startAt,
      this.total,
      bool? isLast,
      List<PageBeanBoardFilterBeanValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanBoardFilterBean.fromJson(Map<String, Object?> json) {
    return PageBeanBoardFilterBean(
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      isLast: json[r'isLast'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanBoardFilterBeanValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var isLast = this.isLast;
    var values = this.values;

    final json = <String, Object?>{};
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'isLast'] = isLast;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoardFilterBean copyWith(
      {int? maxResults,
      int? startAt,
      int? total,
      bool? isLast,
      List<PageBeanBoardFilterBeanValuesItem>? values}) {
    return PageBeanBoardFilterBean(
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      isLast: isLast ?? this.isLast,
      values: values ?? this.values,
    );
  }
}

class PageBeanBoardFilterBeanValuesItem {
  final int? id;
  final String? self;
  final String? name;

  PageBeanBoardFilterBeanValuesItem({this.id, this.self, this.name});

  factory PageBeanBoardFilterBeanValuesItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardFilterBeanValuesItem(
      id: (json[r'id'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  PageBeanBoardFilterBeanValuesItem copyWith(
      {int? id, String? self, String? name}) {
    return PageBeanBoardFilterBeanValuesItem(
      id: id ?? this.id,
      self: self ?? this.self,
      name: name ?? this.name,
    );
  }
}

/// Details about a board.
class PageBeanBoardValuesItem {
  /// The ID of the board.
  final int? id;

  /// The URL of the board.
  final String? self;

  /// The name of the board.
  final String? name;

  /// The type the board.
  final String? type;
  final Map<String, dynamic>? admins;

  /// The container that the board is located in.
  final PageBeanBoardValuesItemLocation? location;

  /// Whether the board can be edited.
  final bool canEdit;

  /// Whether the board is private.
  final bool isPrivate;

  /// Whether the board is selected as a favorite.
  final bool favourite;

  PageBeanBoardValuesItem(
      {this.id,
      this.self,
      this.name,
      this.type,
      this.admins,
      this.location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite})
      : canEdit = canEdit ?? false,
        isPrivate = isPrivate ?? false,
        favourite = favourite ?? false;

  factory PageBeanBoardValuesItem.fromJson(Map<String, Object?> json) {
    return PageBeanBoardValuesItem(
      id: (json[r'id'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
      type: json[r'type'] as String?,
      admins: json[r'admins'] as Map<String, Object?>?,
      location: json[r'location'] != null
          ? PageBeanBoardValuesItemLocation.fromJson(
              json[r'location']! as Map<String, Object?>)
          : null,
      canEdit: json[r'canEdit'] as bool? ?? false,
      isPrivate: json[r'isPrivate'] as bool? ?? false,
      favourite: json[r'favourite'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;
    var type = this.type;
    var admins = this.admins;
    var location = this.location;
    var canEdit = this.canEdit;
    var isPrivate = this.isPrivate;
    var favourite = this.favourite;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (admins != null) {
      json[r'admins'] = admins;
    }
    if (location != null) {
      json[r'location'] = location.toJson();
    }
    json[r'canEdit'] = canEdit;
    json[r'isPrivate'] = isPrivate;
    json[r'favourite'] = favourite;
    return json;
  }

  PageBeanBoardValuesItem copyWith(
      {int? id,
      String? self,
      String? name,
      String? type,
      Map<String, dynamic>? admins,
      PageBeanBoardValuesItemLocation? location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite}) {
    return PageBeanBoardValuesItem(
      id: id ?? this.id,
      self: self ?? this.self,
      name: name ?? this.name,
      type: type ?? this.type,
      admins: admins ?? this.admins,
      location: location ?? this.location,
      canEdit: canEdit ?? this.canEdit,
      isPrivate: isPrivate ?? this.isPrivate,
      favourite: favourite ?? this.favourite,
    );
  }
}

/// The container that the board is located in.
class PageBeanBoardValuesItemLocation {
  final int? projectId;
  final int? userId;
  final String? userAccountId;
  final String? displayName;
  final String? projectName;
  final String? projectKey;
  final String? projectTypeKey;
  final String? avatarUri;
  final String? name;

  PageBeanBoardValuesItemLocation(
      {this.projectId,
      this.userId,
      this.userAccountId,
      this.displayName,
      this.projectName,
      this.projectKey,
      this.projectTypeKey,
      this.avatarUri,
      this.name});

  factory PageBeanBoardValuesItemLocation.fromJson(Map<String, Object?> json) {
    return PageBeanBoardValuesItemLocation(
      projectId: (json[r'projectId'] as num?)?.toInt(),
      userId: (json[r'userId'] as num?)?.toInt(),
      userAccountId: json[r'userAccountId'] as String?,
      displayName: json[r'displayName'] as String?,
      projectName: json[r'projectName'] as String?,
      projectKey: json[r'projectKey'] as String?,
      projectTypeKey: json[r'projectTypeKey'] as String?,
      avatarUri: json[r'avatarURI'] as String?,
      name: json[r'name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var projectId = this.projectId;
    var userId = this.userId;
    var userAccountId = this.userAccountId;
    var displayName = this.displayName;
    var projectName = this.projectName;
    var projectKey = this.projectKey;
    var projectTypeKey = this.projectTypeKey;
    var avatarUri = this.avatarUri;
    var name = this.name;

    final json = <String, Object?>{};
    if (projectId != null) {
      json[r'projectId'] = projectId;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (userAccountId != null) {
      json[r'userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    if (projectName != null) {
      json[r'projectName'] = projectName;
    }
    if (projectKey != null) {
      json[r'projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json[r'projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json[r'avatarURI'] = avatarUri;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  PageBeanBoardValuesItemLocation copyWith(
      {int? projectId,
      int? userId,
      String? userAccountId,
      String? displayName,
      String? projectName,
      String? projectKey,
      String? projectTypeKey,
      String? avatarUri,
      String? name}) {
    return PageBeanBoardValuesItemLocation(
      projectId: projectId ?? this.projectId,
      userId: userId ?? this.userId,
      userAccountId: userAccountId ?? this.userAccountId,
      displayName: displayName ?? this.displayName,
      projectName: projectName ?? this.projectName,
      projectKey: projectKey ?? this.projectKey,
      projectTypeKey: projectTypeKey ?? this.projectTypeKey,
      avatarUri: avatarUri ?? this.avatarUri,
      name: name ?? this.name,
    );
  }
}

class PageBeanQuickFilterBean {
  final int? maxResults;
  final int? startAt;
  final int? total;
  final bool isLast;
  final List<PageBeanQuickFilterBeanValuesItem> values;

  PageBeanQuickFilterBean(
      {this.maxResults,
      this.startAt,
      this.total,
      bool? isLast,
      List<PageBeanQuickFilterBeanValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanQuickFilterBean.fromJson(Map<String, Object?> json) {
    return PageBeanQuickFilterBean(
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      startAt: (json[r'startAt'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      isLast: json[r'isLast'] as bool? ?? false,
      values: (json[r'values'] as List<Object?>?)
              ?.map((i) => PageBeanQuickFilterBeanValuesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var maxResults = this.maxResults;
    var startAt = this.startAt;
    var total = this.total;
    var isLast = this.isLast;
    var values = this.values;

    final json = <String, Object?>{};
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'isLast'] = isLast;
    json[r'values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanQuickFilterBean copyWith(
      {int? maxResults,
      int? startAt,
      int? total,
      bool? isLast,
      List<PageBeanQuickFilterBeanValuesItem>? values}) {
    return PageBeanQuickFilterBean(
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      isLast: isLast ?? this.isLast,
      values: values ?? this.values,
    );
  }
}

class PageBeanQuickFilterBeanValuesItem {
  final int? id;
  final int? boardId;
  final String? name;
  final String? jql;
  final String? description;
  final int? position;

  PageBeanQuickFilterBeanValuesItem(
      {this.id,
      this.boardId,
      this.name,
      this.jql,
      this.description,
      this.position});

  factory PageBeanQuickFilterBeanValuesItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanQuickFilterBeanValuesItem(
      id: (json[r'id'] as num?)?.toInt(),
      boardId: (json[r'boardId'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      jql: json[r'jql'] as String?,
      description: json[r'description'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var boardId = this.boardId;
    var name = this.name;
    var jql = this.jql;
    var description = this.description;
    var position = this.position;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    return json;
  }

  PageBeanQuickFilterBeanValuesItem copyWith(
      {int? id,
      int? boardId,
      String? name,
      String? jql,
      String? description,
      int? position}) {
    return PageBeanQuickFilterBeanValuesItem(
      id: id ?? this.id,
      boardId: boardId ?? this.boardId,
      name: name ?? this.name,
      jql: jql ?? this.jql,
      description: description ?? this.description,
      position: position ?? this.position,
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
  final List<PageOfChangelogsHistoriesItem> histories;

  PageOfChangelogs(
      {this.startAt,
      this.maxResults,
      this.total,
      List<PageOfChangelogsHistoriesItem>? histories})
      : histories = histories ?? [];

  factory PageOfChangelogs.fromJson(Map<String, Object?> json) {
    return PageOfChangelogs(
      startAt: (json[r'startAt'] as num?)?.toInt(),
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      histories: (json[r'histories'] as List<Object?>?)
              ?.map((i) => PageOfChangelogsHistoriesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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
      {int? startAt,
      int? maxResults,
      int? total,
      List<PageOfChangelogsHistoriesItem>? histories}) {
    return PageOfChangelogs(
      startAt: startAt ?? this.startAt,
      maxResults: maxResults ?? this.maxResults,
      total: total ?? this.total,
      histories: histories ?? this.histories,
    );
  }
}

/// A changelog.
class PageOfChangelogsHistoriesItem {
  /// The ID of the changelog.
  final String? id;

  /// The user who made the change.
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The list of items changed.
  final List<PageOfChangelogsHistoriesItemItemsItem> items;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  PageOfChangelogsHistoriesItem(
      {this.id,
      this.author,
      this.created,
      List<PageOfChangelogsHistoriesItemItemsItem>? items,
      this.historyMetadata})
      : items = items ?? [];

  factory PageOfChangelogsHistoriesItem.fromJson(Map<String, Object?> json) {
    return PageOfChangelogsHistoriesItem(
      id: json[r'id'] as String?,
      author: json[r'author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json[r'created'] as String? ?? ''),
      items: (json[r'items'] as List<Object?>?)
              ?.map((i) => PageOfChangelogsHistoriesItemItemsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      historyMetadata: json[r'historyMetadata'] as Map<String, Object?>?,
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
      json[r'author'] = author;
    }
    if (created != null) {
      json[r'created'] = created.toIso8601String();
    }
    json[r'items'] = items.map((i) => i.toJson()).toList();
    if (historyMetadata != null) {
      json[r'historyMetadata'] = historyMetadata;
    }
    return json;
  }

  PageOfChangelogsHistoriesItem copyWith(
      {String? id,
      Map<String, dynamic>? author,
      DateTime? created,
      List<PageOfChangelogsHistoriesItemItemsItem>? items,
      Map<String, dynamic>? historyMetadata}) {
    return PageOfChangelogsHistoriesItem(
      id: id ?? this.id,
      author: author ?? this.author,
      created: created ?? this.created,
      items: items ?? this.items,
      historyMetadata: historyMetadata ?? this.historyMetadata,
    );
  }
}

/// A change item.
class PageOfChangelogsHistoriesItemItemsItem {
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

  PageOfChangelogsHistoriesItemItemsItem(
      {this.field,
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory PageOfChangelogsHistoriesItemItemsItem.fromJson(
      Map<String, Object?> json) {
    return PageOfChangelogsHistoriesItemItemsItem(
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

  PageOfChangelogsHistoriesItemItemsItem copyWith(
      {String? field,
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return PageOfChangelogsHistoriesItemItemsItem(
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
  final int? issueId;
  final String? issueKey;
  final int? status;
  final List<String> errors;

  PartialSuccessBeanEntriesItem(
      {this.issueId, this.issueKey, this.status, List<String>? errors})
      : errors = errors ?? [];

  factory PartialSuccessBeanEntriesItem.fromJson(Map<String, Object?> json) {
    return PartialSuccessBeanEntriesItem(
      issueId: (json[r'issueId'] as num?)?.toInt(),
      issueKey: json[r'issueKey'] as String?,
      status: (json[r'status'] as num?)?.toInt(),
      errors: (json[r'errors'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var issueId = this.issueId;
    var issueKey = this.issueKey;
    var status = this.status;
    var errors = this.errors;

    final json = <String, Object?>{};
    if (issueId != null) {
      json[r'issueId'] = issueId;
    }
    if (issueKey != null) {
      json[r'issueKey'] = issueKey;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    json[r'errors'] = errors;
    return json;
  }

  PartialSuccessBeanEntriesItem copyWith(
      {int? issueId, String? issueKey, int? status, List<String>? errors}) {
    return PartialSuccessBeanEntriesItem(
      issueId: issueId ?? this.issueId,
      issueKey: issueKey ?? this.issueKey,
      status: status ?? this.status,
      errors: errors ?? this.errors,
    );
  }
}

class QuickFilterBean {
  final int? id;
  final int? boardId;
  final String? name;
  final String? jql;
  final String? description;
  final int? position;

  QuickFilterBean(
      {this.id,
      this.boardId,
      this.name,
      this.jql,
      this.description,
      this.position});

  factory QuickFilterBean.fromJson(Map<String, Object?> json) {
    return QuickFilterBean(
      id: (json[r'id'] as num?)?.toInt(),
      boardId: (json[r'boardId'] as num?)?.toInt(),
      name: json[r'name'] as String?,
      jql: json[r'jql'] as String?,
      description: json[r'description'] as String?,
      position: (json[r'position'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var boardId = this.boardId;
    var name = this.name;
    var jql = this.jql;
    var description = this.description;
    var position = this.position;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (boardId != null) {
      json[r'boardId'] = boardId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (jql != null) {
      json[r'jql'] = jql;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    return json;
  }

  QuickFilterBean copyWith(
      {int? id,
      int? boardId,
      String? name,
      String? jql,
      String? description,
      int? position}) {
    return QuickFilterBean(
      id: id ?? this.id,
      boardId: boardId ?? this.boardId,
      name: name ?? this.name,
      jql: jql ?? this.jql,
      description: description ?? this.description,
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

/// The result of a JQL search.
class SearchResults {
  /// Expand options that include additional search result details in the
  /// response.
  final String? expand;

  /// The index of the first item returned on the page.
  final int? startAt;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The number of results on the page.
  final int? total;

  /// The list of issues found by the search.
  final List<IssueBean> issues;

  /// Any warnings related to the JQL query.
  final List<String> warningMessages;

  /// The ID and name of each field in the search results.
  final Map<String, dynamic>? names;

  /// The schema describing the field types in the search results.
  final Map<String, dynamic>? schema;

  SearchResults(
      {this.expand,
      this.startAt,
      this.maxResults,
      this.total,
      List<IssueBean>? issues,
      List<String>? warningMessages,
      this.names,
      this.schema})
      : issues = issues ?? [],
        warningMessages = warningMessages ?? [];

  factory SearchResults.fromJson(Map<String, Object?> json) {
    return SearchResults(
      expand: json[r'expand'] as String?,
      startAt: (json[r'startAt'] as num?)?.toInt(),
      maxResults: (json[r'maxResults'] as num?)?.toInt(),
      total: (json[r'total'] as num?)?.toInt(),
      issues: (json[r'issues'] as List<Object?>?)
              ?.map((i) =>
                  IssueBean.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      warningMessages: (json[r'warningMessages'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      names: json[r'names'] as Map<String, Object?>?,
      schema: json[r'schema'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var expand = this.expand;
    var startAt = this.startAt;
    var maxResults = this.maxResults;
    var total = this.total;
    var issues = this.issues;
    var warningMessages = this.warningMessages;
    var names = this.names;
    var schema = this.schema;

    final json = <String, Object?>{};
    if (expand != null) {
      json[r'expand'] = expand;
    }
    if (startAt != null) {
      json[r'startAt'] = startAt;
    }
    if (maxResults != null) {
      json[r'maxResults'] = maxResults;
    }
    if (total != null) {
      json[r'total'] = total;
    }
    json[r'issues'] = issues.map((i) => i.toJson()).toList();
    json[r'warningMessages'] = warningMessages;
    if (names != null) {
      json[r'names'] = names;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    return json;
  }

  SearchResults copyWith(
      {String? expand,
      int? startAt,
      int? maxResults,
      int? total,
      List<IssueBean>? issues,
      List<String>? warningMessages,
      Map<String, dynamic>? names,
      Map<String, dynamic>? schema}) {
    return SearchResults(
      expand: expand ?? this.expand,
      startAt: startAt ?? this.startAt,
      maxResults: maxResults ?? this.maxResults,
      total: total ?? this.total,
      issues: issues ?? this.issues,
      warningMessages: warningMessages ?? this.warningMessages,
      names: names ?? this.names,
      schema: schema ?? this.schema,
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

class SprintBean {
  final int? id;
  final String? self;
  final String? state;
  final String? name;
  final String? startDate;
  final String? endDate;
  final String? completeDate;
  final String? createdDate;
  final int? originBoardId;
  final String? goal;

  SprintBean(
      {this.id,
      this.self,
      this.state,
      this.name,
      this.startDate,
      this.endDate,
      this.completeDate,
      this.createdDate,
      this.originBoardId,
      this.goal});

  factory SprintBean.fromJson(Map<String, Object?> json) {
    return SprintBean(
      id: (json[r'id'] as num?)?.toInt(),
      self: json[r'self'] as String?,
      state: json[r'state'] as String?,
      name: json[r'name'] as String?,
      startDate: json[r'startDate'] as String?,
      endDate: json[r'endDate'] as String?,
      completeDate: json[r'completeDate'] as String?,
      createdDate: json[r'createdDate'] as String?,
      originBoardId: (json[r'originBoardId'] as num?)?.toInt(),
      goal: json[r'goal'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var state = this.state;
    var name = this.name;
    var startDate = this.startDate;
    var endDate = this.endDate;
    var completeDate = this.completeDate;
    var createdDate = this.createdDate;
    var originBoardId = this.originBoardId;
    var goal = this.goal;

    final json = <String, Object?>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (state != null) {
      json[r'state'] = state;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (completeDate != null) {
      json[r'completeDate'] = completeDate;
    }
    if (createdDate != null) {
      json[r'createdDate'] = createdDate;
    }
    if (originBoardId != null) {
      json[r'originBoardId'] = originBoardId;
    }
    if (goal != null) {
      json[r'goal'] = goal;
    }
    return json;
  }

  SprintBean copyWith(
      {int? id,
      String? self,
      String? state,
      String? name,
      String? startDate,
      String? endDate,
      String? completeDate,
      String? createdDate,
      int? originBoardId,
      String? goal}) {
    return SprintBean(
      id: id ?? this.id,
      self: self ?? this.self,
      state: state ?? this.state,
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      completeDate: completeDate ?? this.completeDate,
      createdDate: createdDate ?? this.createdDate,
      originBoardId: originBoardId ?? this.originBoardId,
      goal: goal ?? this.goal,
    );
  }
}

class SprintCreateBean {
  final String? name;
  final String? startDate;
  final String? endDate;
  final int? originBoardId;
  final String? goal;

  SprintCreateBean(
      {this.name, this.startDate, this.endDate, this.originBoardId, this.goal});

  factory SprintCreateBean.fromJson(Map<String, Object?> json) {
    return SprintCreateBean(
      name: json[r'name'] as String?,
      startDate: json[r'startDate'] as String?,
      endDate: json[r'endDate'] as String?,
      originBoardId: (json[r'originBoardId'] as num?)?.toInt(),
      goal: json[r'goal'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var startDate = this.startDate;
    var endDate = this.endDate;
    var originBoardId = this.originBoardId;
    var goal = this.goal;

    final json = <String, Object?>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate;
    }
    if (endDate != null) {
      json[r'endDate'] = endDate;
    }
    if (originBoardId != null) {
      json[r'originBoardId'] = originBoardId;
    }
    if (goal != null) {
      json[r'goal'] = goal;
    }
    return json;
  }

  SprintCreateBean copyWith(
      {String? name,
      String? startDate,
      String? endDate,
      int? originBoardId,
      String? goal}) {
    return SprintCreateBean(
      name: name ?? this.name,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      originBoardId: originBoardId ?? this.originBoardId,
      goal: goal ?? this.goal,
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
  final Map<String, dynamic>? statusCategory;

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
      statusCategory: json[r'statusCategory'] as Map<String, Object?>?,
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
      json[r'statusCategory'] = statusCategory;
    }
    return json;
  }

  StatusDetails copyWith(
      {String? self,
      String? description,
      String? iconUrl,
      String? name,
      String? id,
      Map<String, dynamic>? statusCategory}) {
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

class UserBean {
  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy
  /// changes. See the
  /// [migration guide](https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/)
  /// for details.
  /// The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting,
  /// this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all
  /// Atlassian products. For example, *5b10ac8d82e05b22cc7d4ef5*.
  final String? accountId;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  UserBean(
      {this.key,
      this.self,
      this.name,
      this.displayName,
      bool? active,
      this.accountId,
      this.avatarUrls})
      : active = active ?? false;

  factory UserBean.fromJson(Map<String, Object?> json) {
    return UserBean(
      key: json[r'key'] as String?,
      self: json[r'self'] as String?,
      name: json[r'name'] as String?,
      displayName: json[r'displayName'] as String?,
      active: json[r'active'] as bool? ?? false,
      accountId: json[r'accountId'] as String?,
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;
    var self = this.self;
    var name = this.name;
    var displayName = this.displayName;
    var active = this.active;
    var accountId = this.accountId;
    var avatarUrls = this.avatarUrls;

    final json = <String, Object?>{};
    if (key != null) {
      json[r'key'] = key;
    }
    if (self != null) {
      json[r'self'] = self;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (displayName != null) {
      json[r'displayName'] = displayName;
    }
    json[r'active'] = active;
    if (accountId != null) {
      json[r'accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json[r'avatarUrls'] = avatarUrls;
    }
    return json;
  }

  UserBean copyWith(
      {String? key,
      String? self,
      String? name,
      String? displayName,
      bool? active,
      String? accountId,
      Map<String, dynamic>? avatarUrls}) {
    return UserBean(
      key: key ?? this.key,
      self: self ?? this.self,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      active: active ?? this.active,
      accountId: accountId ?? this.accountId,
      avatarUrls: avatarUrls ?? this.avatarUrls,
    );
  }
}

class UserBeanAvatarUrls {
  /// The URL of the user's 32x32 pixel avatar.
  final String? $32X32;

  /// The URL of the user's 48x48 pixel avatar.
  final String? $48X48;

  /// The URL of the user's 24x24 pixel avatar.
  final String? $24X24;

  /// The URL of the user's 16x16 pixel avatar.
  final String? $16X16;

  UserBeanAvatarUrls({this.$32X32, this.$48X48, this.$24X24, this.$16X16});

  factory UserBeanAvatarUrls.fromJson(Map<String, Object?> json) {
    return UserBeanAvatarUrls(
      $32X32: json[r'32x32'] as String?,
      $48X48: json[r'48x48'] as String?,
      $24X24: json[r'24x24'] as String?,
      $16X16: json[r'16x16'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var $32X32 = this.$32X32;
    var $48X48 = this.$48X48;
    var $24X24 = this.$24X24;
    var $16X16 = this.$16X16;

    final json = <String, Object?>{};
    if ($32X32 != null) {
      json[r'32x32'] = $32X32;
    }
    if ($48X48 != null) {
      json[r'48x48'] = $48X48;
    }
    if ($24X24 != null) {
      json[r'24x24'] = $24X24;
    }
    if ($16X16 != null) {
      json[r'16x16'] = $16X16;
    }
    return json;
  }

  UserBeanAvatarUrls copyWith(
      {String? $32X32, String? $48X48, String? $24X24, String? $16X16}) {
    return UserBeanAvatarUrls(
      $32X32: $32X32 ?? this.$32X32,
      $48X48: $48X48 ?? this.$48X48,
      $24X24: $24X24 ?? this.$24X24,
      $16X16: $16X16 ?? this.$16X16,
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
  final Map<String, dynamic>? avatarUrls;

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
      avatarUrls: json[r'avatarUrls'] as Map<String, Object?>?,
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
      json[r'avatarUrls'] = avatarUrls;
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
      Map<String, dynamic>? avatarUrls,
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
