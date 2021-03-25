// Generated code - Do not edit manually

import 'api_utils.dart' show ApiClient, Client, File;

// ignore_for_file: deprecated_member_use_from_same_package

class SoftwareApi {
  final ApiClient _client;

  SoftwareApi._(this._client);

  factory SoftwareApi(Client client) => SoftwareApi._(ApiClient(client));

  /// Apis related to the backlog
  late final backlog = BacklogApi._(_client);

  /// Apis related to boards
  late final board = BoardApi._(_client);

  /// Apis related to epics
  late final epic = EpicApi._(_client);

  /// Apis related to issues
  late final issue = IssueApi._(_client);

  /// Apis related to sprints
  late final sprint = SprintApi._(_client);

  /// APIs related to integrating development information (commits, branches and pull requests) with Jira. These APIs are available to Atlassian Connect apps and on-premise integrations using OAuth. Connect apps using these APIs must have the Development Tool module in the app descriptor, see https://developer.atlassian.com/cloud/jira/software/modules/development-tool/. For more details on integrating Jira Software Cloud with on-premises tools using OAuth 2.0 credentials, see https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final developmentInformation = DevelopmentInformationApi._(_client);

  /// Apis related to integrating Feature Flags with Jira Software. These apis are only available to Atlassian Connect apps. To use these apis you must have the Feature Flag module (see https://developer.atlassian.com/cloud/jira/software/modules/feature-flag/) in your app's descriptor
  late final featureFlags = FeatureFlagsApi._(_client);

  /// APIs related to integrating deployments data with Jira Software. These APIs
  /// are available to Atlassian Connect apps. To use these APIs you must
  /// have the Deployment module see https://developer.atlassian.com/cloud/jira/software/modules/deployment/
  /// in your app's descriptor. They are also related to integrating Jira
  /// Software Cloud with on-premises tools using
  /// OAuth 2.0 credentials, see https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final deployments = DeploymentsApi._(_client);

  /// APIs related to integrating builds data with Jira Software. These APIs
  /// are available to Atlassian Connect apps. To use these APIs you must
  /// have the Build module see https://developer.atlassian.com/cloud/jira/software/modules/build/
  /// in your app's descriptor. They are also related to integrating Jira
  /// Software Cloud with on-premises tools using
  /// OAuth 2.0 credentials, see https://developer.atlassian.com/cloud/jira/software/integrate-jsw-cloud-with-onpremises-tools/.
  late final builds = BuildsApi._(_client);

  /// APIs related to integrating Remote Links data with Jira Software. These APIs are available to Atlassian Connect
  /// apps. To use these APIs you must have the Remote Link module in your app's descriptor. Read more about Jira Software modules [here](https://developer.atlassian.com/cloud/jira/software/about-jira-modules/).
  ///
  /// # Module
  ///
  /// The Remote Link module allows third-party providers to add a generic link through a public REST API and associate it with Jira issues or services.
  ///
  /// Supplied remote link information will be presented in the right sidebar of the new Jira issue view under Releases.
  ///
  /// This module also provides actions, which allows users to perform an action on the remote link.
  ///
  /// Note that the module key and name are not private and should therefore not contain any sensitive or personally identifiable information.
  ///
  /// ## Example Module
  ///
  /// An example can also be found at [jira-data-provider-sample-addon](https://bitbucket.org/atlassianlabs/jira-data-provider-sample-addon/src/master/), which has an `atlassian-connect.json`.
  ///
  /// ```
  /// {
  ///   "modules": {
  ///     "jiraRemoteLinkInfoProvider": {
  ///       "homeUrl": "https://my-remotelink-provider.com",
  ///       "logoUrl": "https://my-remotelink-provider.com/images/logo.svg",
  ///       "documentationUrl": "https://my-remotelink-provider.com/docs/jira-integration",
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
  /// | Property         | type          | Description                                                                                                                                     | Required |
  /// |------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | key              | string        | A key to identify this module.  Must match `^[a-zA-Z0-9-]+$` pattern, with a max length of 100                                                  | Yes      |
  /// | name             | object (i18N) | A human readable name. This object supports  [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/). | Yes      |
  /// | homeUrl          | string        | URL to the provider’s homepage                                                                                                                  | Yes      |
  /// | logoUrl          | string        | Optional URL to the provider’s logo, which will be displayed in the UI                                                                          |          |
  /// | documentationUrl | string        | Optional URL to documentation about the provider’s Jira integration                                                                             |          |
  /// | actions          | object        | Optional actions that can be performed by Jira users on the remote link
  ///
  /// ### Actions object
  ///
  /// | Property    | type   | Description                                                                                                                                                                                                                                  | Required |
  /// |-------------|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | actionId    | string | A key to identify a specific action. Used for associating a specific Remote link to an action of this ID.  <br> The actionId of an action must be unique across all actions.                                                                     | Yes      |
  /// | actionLabel | object | The actionLabel of an Action is shown visibly to the User alongside the Remote Link.                                                                                                                                                         | Yes      |
  /// | templateUrl | string | The templateUrl of an Action is a template where strings can be substituted into the URL for a specific Remote Link. <br>  Strings used in the templateUrl must be passed in via an attribute map when associating an action with a remote link. | Yes      |
  ///
  /// ### ActionLabel Object
  ///
  /// | Property | type          | Description                                                                                                                                         | Required |
  /// |----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------|
  /// | value    | object (i18n) | The label shown on the UI. This object supports  [internationalization](https://developer.atlassian.com/cloud/jira/software/internationalization/). | Yes      |
  late final remoteLinks = RemoteLinksApi._(_client);

  void close() => _client.close();
}

/// Jira Software Cloud REST API documentation

class BacklogApi {
  final ApiClient _client;

  BacklogApi._(this._client);

  /// Move issues to the backlog.
  ///  <br />
  ///  This operation is equivalent to remove future and active sprints from a given set of issues.
  ///  At most 50 issues may be moved at once.
  Future<void> moveIssuesToBacklog({required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/backlog/issue',
      body: body,
    );
  }

  /// Move issues to the backlog of a particular board (if they are already on that board).
  ///  <br />
  ///  This operation is equivalent to remove future and active sprints from a given set of issues if the board has sprints
  ///  If the board does not have sprints this will put the issues back into the backlog from the board.
  ///  At most 50 issues may be moved at once.
  Future<void> moveIssuesToBacklogForBoard(
      {required int boardId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/backlog/{boardId}/issue',
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

  BoardApi._(this._client);

  /// Returns all boards. This only includes boards that the user has permission to view.
  Future<Map<String, dynamic>> getAllBoards(
      {int? startAt,
      int? maxResults,
      String? type,
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
      'agile/1.0/board',
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (type != null) 'type': type,
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
  ///  <ul>
  ///  <li>`name` - Must be less than 255 characters.</li>
  ///  <li>`type` - Valid values: scrum, kanban</li>
  ///  <li>`filterId` - ID of a filter that the user has permissions to view. Note, if the user does not have the 'Create shared objects'
  ///  permission and tries to create a shared board, a private board will be created instead (remember that board sharing depends on the filter sharing).</li>
  ///  <li>`location` - The container that the board will be located in. `location` must include the `type` property (Valid values: project, user).
  ///  If choosing 'project', then a project must be specified by a `projectKeyOrId` property in `location`.
  ///  If choosing 'user', the current user is chosen by default. The `projectKeyOrId` property should not be provided.
  ///  </li>
  ///  </ul>
  ///  <p>
  ///  Note:
  ///  <ul>
  ///  <li>
  ///  If you want to create a new project with an associated board, use the <a href="https://docs.atlassian.com/jira/REST/latest">Jira platform REST API</a>.
  ///  For more information, see the <a href="#api-rest-api-<ver>-project-post">Create project</a> method.
  ///  The `projectTypeKey` for software boards must be 'software' and the `projectTemplateKey` must be either
  ///  `com.pyxis.greenhopper.jira:gh-kanban-template` or `com.pyxis.greenhopper.jira:gh-scrum-template`.
  ///  </li>
  ///  <li>
  ///  You can create a filter using the <a href="https://docs.atlassian.com/jira/REST/latest">Jira REST API</a>.
  ///  For more information, see the <a href="#api-rest-api-<ver>-filter-post">Create filter</a> method.
  ///  </li>
  ///  <li>
  ///  If you do not ORDER BY the Rank field for the filter of your board, you will not be able to reorder issues on the board.
  ///  </li>
  ///  </ul>
  Future<Map<String, dynamic>> createBoard(
      {required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'agile/1.0/board',
      body: body,
    ) as Map<String, Object?>;
  }

  /// Returns any boards which use the provided filter id.  This method can be executed by users without a valid
  ///  software license in order to find which boards are using a particular filter.
  Future<Map<String, dynamic>> getBoardByFilterId(
      {required int filterId, int? startAt, int? maxResults}) async {
    return await _client.send(
      'get',
      'agile/1.0/board/filter/{filterId}',
      pathParameters: {
        'filterId': '$filterId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the board for the given board ID. This board will only be returned if the user has permission to view it.
  ///  Admins without the view permission will see the board as a private one, so will see only a subset of the board's
  ///  data (board location for instance).
  Future<Map<String, dynamic>> getBoard(int boardId) async {
    return await _client.send(
      'get',
      'agile/1.0/board/{boardId}',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Deletes the board. Admin without the view permission can still remove the board.
  Future<void> deleteBoard(int boardId) async {
    await _client.send(
      'delete',
      'agile/1.0/board/{boardId}',
      pathParameters: {
        'boardId': '$boardId',
      },
    );
  }

  /// Returns all issues from the board's backlog, for the given board ID. This only includes issues that the user has permission to view.
  ///  The backlog contains incomplete issues that are not assigned to any future or active sprint.
  ///  Note, if the user does not have permission to view the board, no issues will be returned at all.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  Future<SearchResultsBean> getIssuesForBacklog(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    return SearchResultsBean.fromJson(await _client.send(
      'get',
      'agile/1.0/board/{boardId}/backlog',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    ));
  }

  /// Get the board configuration.
  ///  The response contains the following fields:
  ///  <ul>
  ///  <li>`id` - ID of the board.</li>
  ///  <li>`name` - Name of the board.</li>
  ///  <li>`filter` - Reference to the filter used by the given board.</li>
  ///  <li>`location` - Reference to the container that the board is located in.
  ///  Includes the container type (Valid values: project, user).
  ///  </li>
  ///  <li>`subQuery` (Kanban only) - JQL subquery used by the given board.</li>
  ///  <li>`columnConfig` - The column configuration lists the columns for the board, in the order defined in the column configuration.
  ///  For each column, it shows the issue status mapping
  ///  as well as the constraint type (Valid values: none, issueCount, issueCountExclSubs) for the min/max number of issues.
  ///  Note, the last column with statuses mapped to it is treated as the "Done" column,
  ///  which means that issues in that column will be marked as already completed.</li>
  ///  <li>`estimation` (Scrum only) - Contains information about type of estimation used for the board. Valid values: none, issueCount, field.
  ///  If the estimation type is "field", the ID and display name of the field used for estimation is also returned.
  ///  Note, estimates for an issue can be updated by a PUT /rest/api/~ver~/issue/{issueIdOrKey} request, however the fields must be on the screen.
  ///  "timeoriginalestimate" field will never be on the screen, so in order to update it "originalEstimate" in "timetracking" field should be updated.
  ///  </li>
  ///  <li>`ranking` - Contains information about custom field used for ranking in the given board.</li>
  ///  </ul>
  Future<Map<String, dynamic>> getConfiguration(int boardId) async {
    return await _client.send(
      'get',
      'agile/1.0/board/{boardId}/configuration',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Returns all epics from the board, for the given board ID. This only includes epics that the user has permission to view.
  ///  Note, if the user does not have permission to view the board, no epics will be returned at all.
  Future<void> getEpics(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? done}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/epic',
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

  /// Returns all issues that do not belong to any epic on a board, for a given board ID.
  ///  This only includes issues that the user has permission to view.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  Future<void> getIssuesWithoutEpicForBoard(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/epic/none/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Returns all issues that belong to an epic on the board, for the given epic ID and the board ID.
  ///  This only includes issues that the user has permission to view.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  Future<void> getBoardIssuesForEpic(
      {required int boardId,
      required int epicId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/epic/{epicId}/issue',
      pathParameters: {
        'boardId': '$boardId',
        'epicId': '$epicId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  ///
  Future<Map<String, dynamic>> getFeaturesForBoard(int boardId) async {
    return await _client.send(
      'get',
      'agile/1.0/board/{boardId}/features',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  ///
  Future<Map<String, dynamic>> toggleFeatures(
      {required int boardId, required Map<String, dynamic> body}) async {
    return await _client.send(
      'put',
      'agile/1.0/board/{boardId}/features',
      pathParameters: {
        'boardId': '$boardId',
      },
      body: body,
    ) as Map<String, Object?>;
  }

  /// Returns all issues from a board, for a given board ID. This only includes issues that the user has permission to view.
  ///  An issue belongs to the board if its status is mapped to the board's column.
  ///  Epic issues do not belongs to the scrum boards.
  ///  Note, if the user does not have permission to view the board, no issues will be returned at all.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  Future<SearchResultsBean> getIssuesForBoard(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    return SearchResultsBean.fromJson(await _client.send(
      'get',
      'agile/1.0/board/{boardId}/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    ));
  }

  /// Move issues from the backog to the board (if they are already in the backlog of that board).
  ///  <br />
  ///  This operation either moves an issue(s) onto a board from the backlog (by adding it to the issueList for the board)
  ///  Or transitions the issue(s) to the first column for a kanban board with backlog.
  ///  At most 50 issues may be moved at once.
  Future<void> moveIssuesToBoard(
      {required int boardId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/board/{boardId}/issue',
      pathParameters: {
        'boardId': '$boardId',
      },
      body: body,
    );
  }

  /// Returns all projects that are associated with the board, for the given board ID.
  ///  If the user does not have permission to view the board, no projects will be returned at all.
  ///  Returned projects are ordered by the name.
  ///  </p>
  ///  A project is associated with a board if the board filter contains reference the project
  ///  or there is an issue from the project that belongs to the board.
  ///  </p>
  ///  The board filter contains reference the project only if JQL query guarantees that returned issues
  ///  will be returned from the project set defined in JQL.
  ///  For instance the query `project in (ABC, BCD) AND reporter = admin` have reference to ABC and BCD projects
  ///  but query `project in (ABC, BCD) OR reporter = admin` doesn't have reference to any project.
  ///  </p>
  ///  An issue belongs to the board if its status is mapped to the board's column.
  ///  Epic issues do not belongs to the scrum boards.
  ///  </p>
  Future<void> getProjects(
      {required int boardId, int? startAt, int? maxResults}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/project',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    );
  }

  /// Returns all projects that are statically associated with the board, for the given board ID.
  ///  Returned projects are ordered by the name.
  ///  </p>
  ///  A project is associated with a board if the board filter contains reference the project.
  ///  </p>
  ///  The board filter contains reference the project only if JQL query guarantees that returned issues
  ///  will be returned from the project set defined in JQL.
  ///  For instance the query `project in (ABC, BCD) AND reporter = admin` have reference to ABC and BCD projects
  ///  but query `project in (ABC, BCD) OR reporter = admin` doesn't have reference to any project.
  ///  </p>
  Future<void> getProjectsFull(int boardId) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/project/full',
      pathParameters: {
        'boardId': '$boardId',
      },
    );
  }

  /// Returns the keys of all properties for the board identified by the id.
  ///  The user who retrieves the property keys is required to have permissions to view the board.
  Future<void> getBoardPropertyKeys(String boardId) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/properties',
      pathParameters: {
        'boardId': boardId,
      },
    );
  }

  /// Returns the value of the property with a given key from the board identified by the provided id.
  ///  The user who retrieves the property is required to have permissions to view the board.
  Future<void> getBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Sets the value of the specified board's property.
  ///  <p>
  ///      You can use this resource to store a custom data against the board identified by the id. The user
  ///      who stores the data is required to have permissions to modify the board.
  ///  </p>
  Future<void> setBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'put',
      'agile/1.0/board/{boardId}/properties/{propertyKey}',
      pathParameters: {
        'boardId': boardId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Removes the property from the board identified by the id. Ths user removing the property is required
  ///  to have permissions to modify the board.
  Future<void> deleteBoardProperty(
      {required String boardId, required String propertyKey}) async {
    await _client.send(
      'delete',
      'agile/1.0/board/{boardId}/properties/{propertyKey}',
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
      'agile/1.0/board/{boardId}/quickfilter',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
      },
    ) as Map<String, Object?>;
  }

  /// Returns the quick filter for a given quick filter ID. The quick filter will only be returned if the user can view the board
  ///  that the quick filter belongs to.
  Future<Map<String, dynamic>> getQuickFilter(
      {required int boardId, required int quickFilterId}) async {
    return await _client.send(
      'get',
      'agile/1.0/board/{boardId}/quickfilter/{quickFilterId}',
      pathParameters: {
        'boardId': '$boardId',
        'quickFilterId': '$quickFilterId',
      },
    ) as Map<String, Object?>;
  }

  ///
  Future<Map<String, dynamic>> getReportsForBoard(int boardId) async {
    return await _client.send(
      'get',
      'agile/1.0/board/{boardId}/reports',
      pathParameters: {
        'boardId': '$boardId',
      },
    ) as Map<String, Object?>;
  }

  /// Returns all sprints from a board, for a given board ID. This only includes sprints that the user has permission to view.
  Future<void> getAllSprints(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? state}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/sprint',
      pathParameters: {
        'boardId': '$boardId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (state != null) 'state': state,
      },
    );
  }

  /// Get all issues you have access to that belong to the sprint from the board.
  ///  Issue returned from this resource contains additional fields like: sprint, closedSprints, flagged and epic.
  ///  Issues are returned ordered by rank. JQL order has higher priority than default rank.
  Future<void> getBoardIssuesForSprint(
      {required int boardId,
      required int sprintId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/sprint/{sprintId}/issue',
      pathParameters: {
        'boardId': '$boardId',
        'sprintId': '$sprintId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Returns all versions from a board, for a given board ID. This only includes versions that the user has permission to view.
  ///  Note, if the user does not have permission to view the board, no versions will be returned at all.
  ///  Returned versions are ordered by the name of the project from which they belong and then by sequence defined by user.
  Future<void> getAllVersions(
      {required int boardId,
      int? startAt,
      int? maxResults,
      String? released}) async {
    await _client.send(
      'get',
      'agile/1.0/board/{boardId}/version',
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

class EpicApi {
  final ApiClient _client;

  EpicApi._(this._client);

  /// Returns all issues that do not belong to any epic.
  ///  This only includes issues that the user has permission to view.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  ///
  ///  <b>Note:</b> If you are querying a next-gen project, do not use this operation.
  ///  Instead, search for issues that don't belong to an epic by using the
  ///  <a href="https://developer.atlassian.com/cloud/jira/platform/rest/v2/#api-rest-api-2-search-get">Search for issues using JQL</a>
  ///  operation in the Jira platform REST API. Build your JQL query using the `parent is empty` clause.
  ///  For more information on the `parent` JQL field, see <a href="https://confluence.atlassian.com/x/dAiiLQ#Advancedsearching-fieldsreference-Parent">Advanced searching</a>.
  Future<void> getIssuesWithoutEpic(
      {int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/epic/none/issue',
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Removes issues from epics.
  ///  The user needs to have the edit issue permission for all issue they want to remove from epics.
  ///  The maximum number of issues that can be moved in one operation is 50.
  ///
  ///  <b>Note:</b> This operation does not work for epics in next-gen projects.
  ///  Instead, update the issue using `{ fields: { parent: {} } }`
  Future<void> removeIssuesFromEpic(
      {required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/epic/none/issue',
      body: body,
    );
  }

  /// Returns searched epics according to provided parameters.
  Future<void> searchEpics(
      {int? maxResults,
      bool? excludeDone,
      String? query,
      String? projectKey}) async {
    await _client.send(
      'get',
      'agile/1.0/epic/search',
      queryParameters: {
        if (maxResults != null) 'maxResults': '$maxResults',
        if (excludeDone != null) 'excludeDone': '$excludeDone',
        if (query != null) 'query': query,
        if (projectKey != null) 'projectKey': projectKey,
      },
    );
  }

  /// Returns the epic for a given epic ID. This epic will only be returned if the user has permission to view it.
  ///
  ///  <b>Note:</b> This operation does not work for epics in next-gen projects.
  Future<void> getEpic(String epicIdOrKey) async {
    await _client.send(
      'get',
      'agile/1.0/epic/{epicIdOrKey}',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
    );
  }

  /// Performs a partial update of the epic.
  ///  A partial update means that fields not present in the request JSON will not be updated.
  ///  Valid values for color are `color_1` to `color_9`.
  ///
  ///  <b>Note:</b> This operation does not work for epics in next-gen projects.
  Future<void> partiallyUpdateEpic(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/epic/{epicIdOrKey}',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }

  /// Returns all issues that belong to the epic, for the given epic ID.
  ///  This only includes issues that the user has permission to view.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  ///  By default, the returned issues are ordered by rank.
  ///
  ///  <b>Note:</b> If you are querying a next-gen project, do not use this operation.
  ///  Instead, search for issues that belong to an epic by using the
  ///  <a href="https://developer.atlassian.com/cloud/jira/platform/rest/v2/#api-rest-api-2-search-get">Search for issues using JQL</a>
  ///  operation in the Jira platform REST API. Build your JQL query using the `parent` clause.
  ///  For more information on the `parent` JQL field, see <a href="https://confluence.atlassian.com/x/dAiiLQ#Advancedsearching-fieldsreference-Parent">Advanced searching</a>.
  Future<void> getIssuesForEpic(
      {required String epicIdOrKey,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/epic/{epicIdOrKey}/issue',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Moves issues to an epic, for a given epic id.
  ///  Issues can be only in a single epic at the same time.
  ///  That means that already assigned issues to an epic, will not be assigned to the previous epic anymore.
  ///  The user needs to have the edit issue permission for all issue they want to move and to the epic.
  ///  The maximum number of issues that can be moved in one operation is 50.
  ///
  ///  <b>Note:</b> This operation does not work for epics in next-gen projects.
  Future<void> moveIssuesToEpic(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/epic/{epicIdOrKey}/issue',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }

  /// Moves (ranks) an epic before or after a given epic.
  ///
  ///  <p>
  ///  If rankCustomFieldId is not defined, the default rank field will be used.
  ///  </p>
  ///
  ///  <b>Note:</b> This operation does not work for epics in next-gen projects.
  Future<void> rankEpics(
      {required String epicIdOrKey, required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'agile/1.0/epic/{epicIdOrKey}/rank',
      pathParameters: {
        'epicIdOrKey': epicIdOrKey,
      },
      body: body,
    );
  }
}

/// Jira Software Cloud REST API documentation

class IssueApi {
  final ApiClient _client;

  IssueApi._(this._client);

  /// Moves (ranks) issues before or after a given issue. At most 50 issues may be ranked at once.
  ///
  ///  <p>
  ///  This operation may fail for some issues, although this will be rare.
  ///  In that case the 207 status code is returned for the whole response and
  ///  detailed information regarding each issue is available in the response body.
  ///  </p>
  ///  <p>
  ///  If rankCustomFieldId is not defined, the default rank field will be used.
  ///  </p>
  Future<void> rankIssues({required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'agile/1.0/issue/rank',
      body: body,
    );
  }

  /// Returns a single issue, for a given issue ID or issue key.
  ///  Issues returned from this resource include Agile fields, like sprint, closedSprints, flagged, and epic.
  Future<void> getIssue(
      {required String issueIdOrKey,
      List<String>? fields,
      String? expand,
      bool? updateHistory}) async {
    await _client.send(
      'get',
      'agile/1.0/issue/{issueIdOrKey}',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
        if (updateHistory != null) 'updateHistory': '$updateHistory',
      },
    );
  }

  /// Returns the estimation of the issue and a fieldId of the field that is used for it.
  ///  `boardId` param is required. This param determines which field will be updated on a issue.
  ///  <p>
  ///  Original time internally stores and returns the estimation as a number of seconds.
  ///  </p>
  ///  <p>
  ///  The field used for estimation on the given board can be obtained from <a href="#agile/1.0/board-getConfiguration">board configuration resource</a>.
  ///  More information about the field are returned by
  ///  <a href="#api-rest-api-<ver>-issue-getEditIssueMeta">edit meta resource</a>
  ///  or <a href="#api-rest-api-<ver>-field-get">field resource</a>.
  ///  </p>
  Future<void> getIssueEstimationForBoard(
      {required String issueIdOrKey, int? boardId}) async {
    await _client.send(
      'get',
      'agile/1.0/issue/{issueIdOrKey}/estimation',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (boardId != null) 'boardId': '$boardId',
      },
    );
  }

  /// Updates the estimation of the issue.
  ///  boardId param is required. This param determines which field will be updated on a issue.
  ///  <p>
  ///  Note that this resource changes the estimation field of the issue regardless of appearance the field on the screen.
  ///  </p>
  ///  <p>
  ///  Original time tracking estimation field accepts estimation in formats like "1w", "2d", "3h", "20m" or number which represent number of minutes.
  ///  However, internally the field stores and returns the estimation as a number of seconds.
  ///  </p>
  ///  <p>
  ///  The field used for estimation on the given board can be obtained from <a href="#agile/1.0/board-getConfiguration">board configuration resource</a>.
  ///  More information about the field are returned by
  ///  <a href="#api-rest-api-<ver>-issue-issueIdOrKey-editmeta-get">edit meta resource</a>
  ///  or <a href="#api-rest-api-<ver>-field-get">field resource</a>.
  ///  </p>
  Future<void> estimateIssueForBoard(
      {required String issueIdOrKey,
      int? boardId,
      required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'agile/1.0/issue/{issueIdOrKey}/estimation',
      pathParameters: {
        'issueIdOrKey': issueIdOrKey,
      },
      queryParameters: {
        if (boardId != null) 'boardId': '$boardId',
      },
      body: body,
    );
  }

  ///
  Future<Map<String, dynamic>> getFeaturesForProject(
      String projectIdOrKey) async {
    return await _client.send(
      'get',
      'agile/1.0/project/{projectIdOrKey}/features',
      pathParameters: {
        'projectIdOrKey': projectIdOrKey,
      },
    ) as Map<String, Object?>;
  }
}

/// Jira Software Cloud REST API documentation

class SprintApi {
  final ApiClient _client;

  SprintApi._(this._client);

  /// Creates a future sprint. Sprint name and origin board id are required. Start date, end date, and goal are optional.
  ///
  ///  <p>
  ///  Note that the sprint name is trimmed. Also, when starting sprints from the UI, the "endDate" set through this
  ///  call is ignored and instead the last sprint's duration is used to fill the form.
  ///  </p>
  Future<void> createSprint({required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/sprint',
      body: body,
    );
  }

  /// Returns the sprint for a given sprint ID. The sprint will only be returned if the user can view the board
  ///  that the sprint was created on, or view at least one of the issues in the sprint.
  Future<void> getSprint(int sprintId) async {
    await _client.send(
      'get',
      'agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
    );
  }

  /// Performs a partial update of a sprint.
  ///  A partial update means that fields not present in the request JSON will not be updated.
  ///  <p>Notes:</p>
  ///  <ul>
  ///  <li>Sprints that are in a closed state cannot be updated.</li>
  ///  <li>A sprint can be started by updating the state to 'active'. This requires the sprint to
  ///  be in the 'future' state and have a startDate and endDate set.</li>
  ///  <li>A sprint can be completed by updating the state to 'closed'. This action requires the sprint to be in the 'active' state.
  ///  This sets the completeDate to the time of the request.</li>
  ///  <li>Other changes to state are not allowed.</li>
  ///  <li>The completeDate field cannot be updated manually.</li>
  ///  </ul>
  Future<void> partiallyUpdateSprint(
      {required int sprintId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Performs a full update of a sprint.
  ///  A full update means that the result will be exactly the same as the request body.
  ///  Any fields not present in the request JSON will be set to null.
  ///  <p>Notes:</p>
  ///  <ul>
  ///  <li>Sprints that are in a closed state cannot be updated.</li>
  ///  <li>A sprint can be started by updating the state to 'active'. This requires the sprint to
  ///  be in the 'future' state and have a startDate and endDate set.</li>
  ///  <li>A sprint can be completed by updating the state to 'closed'. This action requires the sprint to be in the 'active' state.
  ///  This sets the completeDate to the time of the request.</li>
  ///  <li>Other changes to state are not allowed.</li>
  ///  <li>The completeDate field cannot be updated manually.</li>
  ///  </ul>
  Future<void> updateSprint(
      {required int sprintId, required Map<String, dynamic> body}) async {
    await _client.send(
      'put',
      'agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Deletes a sprint. Once a sprint is deleted, all open issues in the sprint will be moved to the backlog.
  Future<void> deleteSprint(int sprintId) async {
    await _client.send(
      'delete',
      'agile/1.0/sprint/{sprintId}',
      pathParameters: {
        'sprintId': '$sprintId',
      },
    );
  }

  /// Returns all issues in a sprint, for a given sprint ID. This only includes issues that the user has permission to view.
  ///  By default, the returned issues are ordered by rank.
  Future<void> getIssuesForSprint(
      {required int sprintId,
      int? startAt,
      int? maxResults,
      String? jql,
      bool? validateQuery,
      List<String>? fields,
      String? expand}) async {
    await _client.send(
      'get',
      'agile/1.0/sprint/{sprintId}/issue',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      queryParameters: {
        if (startAt != null) 'startAt': '$startAt',
        if (maxResults != null) 'maxResults': '$maxResults',
        if (jql != null) 'jql': jql,
        if (validateQuery != null) 'validateQuery': '$validateQuery',
        if (fields != null) 'fields': '$fields',
        if (expand != null) 'expand': expand,
      },
    );
  }

  /// Moves issues to a sprint, for a given sprint ID.
  ///  Issues can only be moved to open or active sprints.
  ///  The maximum number of issues that can be moved in one operation is 50.
  Future<void> moveIssuesToSprintAndRank(
      {required int sprintId, required Map<String, dynamic> body}) async {
    await _client.send(
      'post',
      'agile/1.0/sprint/{sprintId}/issue',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }

  /// Returns the keys of all properties for the sprint identified by the id.
  ///  The user who retrieves the property keys is required to have permissions to view the sprint.
  Future<void> getPropertiesKeys(String sprintId) async {
    await _client.send(
      'get',
      'agile/1.0/sprint/{sprintId}/properties',
      pathParameters: {
        'sprintId': sprintId,
      },
    );
  }

  /// Returns the value of the property with a given key from the sprint identified by the provided id.
  ///  The user who retrieves the property is required to have permissions to view the sprint.
  Future<void> getProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
      'get',
      'agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Sets the value of the specified sprint's property.
  ///  <p>
  ///      You can use this resource to store a custom data against the sprint identified by the id. The user
  ///      who stores the data is required to have permissions to modify the sprint.
  ///  </p>
  Future<void> setProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
      'put',
      'agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
      pathParameters: {
        'sprintId': sprintId,
        'propertyKey': propertyKey,
      },
    );
  }

  /// Removes the property from the sprint identified by the id. Ths user removing the property is required
  ///  to have permissions to modify the sprint.
  Future<void> deleteProperty(
      {required String sprintId, required String propertyKey}) async {
    await _client.send(
      'delete',
      'agile/1.0/sprint/{sprintId}/properties/{propertyKey}',
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
      'agile/1.0/sprint/{sprintId}/swap',
      pathParameters: {
        'sprintId': '$sprintId',
      },
      body: body,
    );
  }
}

/// Jira Software Cloud REST API documentation

class DevelopmentInformationApi {
  final ApiClient _client;

  DevelopmentInformationApi._(this._client);

  /// Stores development information provided in the request to make it available when viewing issues in Jira. Existing repository and entity data for the same ID will be replaced if the updateSequenceId of existing data is less than the incoming data. Submissions are performed asynchronously. Submitted data will eventually be available in Jira; most updates are available within a short period of time, but may take some time during peak load and/or maintenance times.
  Future<Map<String, dynamic>> storeDevelopmentInformation(
      {required String authorization,
      required Map<String, dynamic> body}) async {
    return await _client.send(
      'post',
      'devinfo/0.10/bulk',
      body: body,
    ) as Map<String, Object?>;
  }

  /// For the specified repository ID, retrieves the repository and the most recent 400 development information entities. The result will be what is currently stored, ignoring any pending updates or deletes.
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

  /// Deletes the repository data stored by the given ID and all related development information entities. Deletion is performed asynchronously.
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

  /// Deletes development information entities which have all the provided properties. Entities will be deleted that match ALL of the properties (i.e. treated as an AND). For example if request is `DELETE bulk?accountId=123&projectId=ABC` entities which have properties `accountId=123` and `projectId=ABC` will be deleted. Special property `_updateSequenceId` can be used to delete all entities with updateSequenceId less or equal than the value specified. In addition to the optional `_updateSequenceId`, one or more query params must be supplied to specify properties to delete by. Deletion is performed asynchronously: specified entities will eventually be removed from Jira.
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

  /// Checks if development information which have all the provided properties exists. For example, if request is `GET existsByProperties?accountId=123&projectId=ABC` then result will be positive only if there is at least one entity or repository with both properties `accountId=123` and `projectId=ABC`. Special property `_updateSequenceId` can be used to filter all entities with updateSequenceId less or equal than the value specified. In addition to the optional `_updateSequenceId`, one or more query params must be supplied to specify properties to search by.
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

  /// Deletes particular development information entity. Deletion is performed asynchronously.
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

class FeatureFlagsApi {
  final ApiClient _client;

  FeatureFlagsApi._(this._client);

  /// Update / insert Feature Flag data.
  ///
  /// Feature Flags are identified by their ID, and existing Feature Flag data for the same ID will be replaced if it exists and the updateSequenceId of existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually be available in Jira; most updates are available within a short period of time, but may take some time during peak load and/or maintenance times. The getFeatureFlagById operation can be used to confirm that data has been stored successfully (if needed).
  ///
  /// In the case of multiple Feature Flags being submitted in one request, each is validated individually prior to submission. Details of which Feature Flags failed submission (if any) are available in the response object.
  ///
  /// Only apps that define the Feature Flags module can access this resource. This resource requires the 'WRITE' scope.
  Future<void> submitFeatureFlags({required Map<String, Object> body}) async {
    await _client.send(
      'post',
      'featureflags/0.1/bulk',
      body: body,
    );
  }

  /// Bulk delete all Feature Flags that match the given request.
  ///
  /// One or more query params must be supplied to specify Properties to delete by. Optional param `_updateSequenceId` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches ALL of the Properties (e.g. treated as an AND).
  /// See the documentation for the submitFeatureFlags operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The getFeatureFlagById operation can be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only apps that define the Feature Flags module can access this resource. This resource requires the 'DELETE' scope.
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
  /// The result will be what is currently stored, ignoring any pending updates or deletes.
  ///
  /// Only apps that define the Feature Flags module can access this resource. This resource requires the 'READ' scope.
  Future<void> getFeatureFlagById(String featureFlagId) async {
    await _client.send(
      'get',
      'featureflags/0.1/flag/{featureFlagId}',
      pathParameters: {
        'featureFlagId': featureFlagId,
      },
    );
  }

  /// Delete the Feature Flag data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The getFeatureFlagById operation can be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only apps that define the Feature Flags module can access this resource. This resource requires the 'DELETE' scope.
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

class DeploymentsApi {
  final ApiClient _client;

  DeploymentsApi._(this._client);

  /// Update / insert deployment data.
  ///
  /// Deployments are identified by the combination of `pipelineId`, `environmentId` and `deploymentSequenceNumber`, and existing deployment data for the same deployment will be replaced if it exists and the `updateSequenceNumber` of existing data is less than the incoming data.
  ///
  /// Submissions are processed asynchronously. Submitted data will eventually be available in Jira. Most updates are available within a short period of time, but may take some time during peak load and/or maintenance times. The `getDeploymentByKey` operation can be used to confirm that data has been stored successfully (if needed).
  ///
  /// In the case of multiple deployments being submitted in one request, each is validated individually prior to submission. Details of which deployments failed submission (if any) are available in the response object.
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and on-premise integrations, can access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> submitDeployments({required Map<String, Object> body}) async {
    await _client.send(
      'post',
      'deployments/0.1/bulk',
      body: body,
    );
  }

  /// Bulk delete all deployments that match the given request.
  ///
  /// One or more query params must be supplied to specify the Properties to delete by. Optional param `_updateSequenceNumber` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches ALL of the Properties (i.e. treated as AND).
  /// See the documentation for the `submitDeployments` operation for more details.
  ///
  /// Example operation: DELETE /bulkByProperties?accountId=account-123&createdBy=user-456
  ///
  /// Deletion is performed asynchronously. The `getDeploymentByKey` operation can be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and on-premise integrations, can access this resource.
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

  /// Retrieve the currently stored deployment data for the given `pipelineId`, `environmentId` and `deploymentSequenceNumber` combination.
  ///
  /// The result will be what is currently stored, ignoring any pending updates or deletes.
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and on-premise integrations, can access this resource.
  /// This resource requires the 'READ' scope for Connect apps.
  Future<void> getDeploymentByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber}) async {
    await _client.send(
      'get',
      'deployments/0.1/pipelines/{pipelineId}/environments/{environmentId}/deployments/{deploymentSequenceNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'environmentId': environmentId,
        'deploymentSequenceNumber': '$deploymentSequenceNumber',
      },
    );
  }

  /// Delete the currently stored deployment data for the given `pipelineId`, `environmentId` and `deploymentSequenceNumber` combination.
  ///
  /// Deletion is performed asynchronously. The `getDeploymentByKey` operation can be used to confirm that data has been deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraDeploymentInfoProvider` module, and on-premise integrations, can access this resource.
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

  /// Retrieve the  Deployment gating status for the given `pipelineId + environmentId + deploymentSequenceNumber` combination. Only apps that define the `jiraDeploymentInfoProvider` module can access this resource. This resource requires the 'READ' scope.
  Future<void> getDeploymentGatingStatusByKey(
      {required String pipelineId,
      required String environmentId,
      required int deploymentSequenceNumber}) async {
    await _client.send(
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

class BuildsApi {
  final ApiClient _client;

  BuildsApi._(this._client);

  /// Update / insert builds data.
  ///
  /// Builds are identified by the combination of `pipelineId` and `buildNumber`, and existing build data for the same
  /// build will be replaced if it exists and the `updateSequenceNumber` of the existing data is less than the
  /// incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually be available in Jira; most updates are
  /// available within a short period of time, but may take some time during peak load and/or maintenance times.
  /// The `getBuildByKey` operation can be used to confirm that data has been stored successfully (if needed).
  ///
  /// In the case of multiple builds being submitted in one request, each is validated individually prior to
  /// submission. Details of which build failed submission (if any) are available in the response object.
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and on-premise integrations, can access this resource.
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
  /// One or more query params must be supplied to specify Properties to delete by.
  /// Optional param `_updateSequenceNumber` is no longer supported.
  /// If more than one Property is provided, data will be deleted that matches ALL of the
  /// Properties (e.g. treated as an AND).
  ///
  /// See the documentation for the `submitBuilds` operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&repoId=repo-345
  ///
  /// Deletion is performed asynchronously. The `getBuildByKey` operation can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and on-premise integrations, can access this resource.
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

  /// Retrieve the currently stored build data for the given `pipelineId` and `buildNumber` combination.
  ///
  /// The result will be what is currently stored, ignoring any pending updates or deletes.
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and on-premise integrations, can access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> getBuildByKey(
      {required String pipelineId, required int buildNumber}) async {
    await _client.send(
      'get',
      'builds/0.1/pipelines/{pipelineId}/builds/{buildNumber}',
      pathParameters: {
        'pipelineId': pipelineId,
        'buildNumber': '$buildNumber',
      },
    );
  }

  /// Delete the build data currently stored for the given `pipelineId` and `buildNumber` combination.
  ///
  /// Deletion is performed asynchronously. The `getBuildByKey` operation can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraBuildInfoProvider` module, and on-premise integrations, can access this resource.
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

class RemoteLinksApi {
  final ApiClient _client;

  RemoteLinksApi._(this._client);

  /// Update / insert Remote Link data.
  ///
  /// Remote Links are identified by their ID, existing Remote Link data for the same ID will be replaced if it
  /// exists and the updateSequenceId of existing data is less than the incoming data.
  ///
  /// Submissions are performed asynchronously. Submitted data will eventually be available in Jira; most updates are
  /// available within a short period of time, but may take some time during peak load and/or maintenance times.
  /// The `getRemoteLinkById` operation can be used to confirm that data has been stored successfully (if needed).
  ///
  /// In the case of multiple Remote Links being submitted in one request, each is validated individually prior to
  /// submission. Details of which Remote LInk failed submission (if any) are available in the response object.
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module can access this resource. This resource
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
  /// One or more query params must be supplied to specify Properties to delete by.
  /// Optional param `_updateSequenceNumber` is no longer supported. If more than one Property is provided,
  /// data will be deleted that matches ALL of the Properties (e.g. treated as an AND).
  ///
  /// See the documentation for the `submitRemoteLinks` operation for more details.
  ///
  /// e.g. DELETE /bulkByProperties?accountId=account-123&repoId=repo-345
  ///
  /// Deletion is performed asynchronously. The `getRemoteLinkById` operation can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and on-premise integrations, can access this resource.
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
  /// The result will be what is currently stored, ignoring any pending updates or deletes.
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and on-premise integrations, can access this resource.
  /// This resource requires the 'WRITE' scope for Connect apps.
  Future<void> getRemoteLinkById(String remoteLinkId) async {
    await _client.send(
      'get',
      'remotelinks/1.0/remotelink/{remoteLinkId}',
      pathParameters: {
        'remoteLinkId': remoteLinkId,
      },
    );
  }

  /// Delete the Remote Link data currently stored for the given ID.
  ///
  /// Deletion is performed asynchronously. The `getRemoteLinkById` operation can be used to confirm that data has been
  /// deleted successfully (if needed).
  ///
  /// Only Connect apps that define the `jiraRemoteLinkInfoProvider` module, and on-premise integrations, can access this resource.
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

class ReportsResponseBean {
  final List<Map<String, dynamic>> reports;

  ReportsResponseBean({List<Map<String, dynamic>>? reports})
      : reports = reports ?? [];

  factory ReportsResponseBean.fromJson(Map<String, Object?> json) {
    return ReportsResponseBean(
      reports: (json['reports'] as List<Object?>?)
              ?.map((i) => i as Map<String, Object?>? ?? {})
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var reports = this.reports;

    final json = <String, Object?>{};
    json['reports'] = reports;
    return json;
  }

  ReportsResponseBean copyWith({List<Map<String, dynamic>>? reports}) {
    return ReportsResponseBean(
      reports: reports ?? this.reports,
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
      issues: (json['issues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      rankBeforeIssue: json['rankBeforeIssue'] as String?,
      rankAfterIssue: json['rankAfterIssue'] as String?,
      rankCustomFieldId: (json['rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var issues = this.issues;
    var rankBeforeIssue = this.rankBeforeIssue;
    var rankAfterIssue = this.rankAfterIssue;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    json['issues'] = issues;
    if (rankBeforeIssue != null) {
      json['rankBeforeIssue'] = rankBeforeIssue;
    }
    if (rankAfterIssue != null) {
      json['rankAfterIssue'] = rankAfterIssue;
    }
    if (rankCustomFieldId != null) {
      json['rankCustomFieldId'] = rankCustomFieldId;
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

class FieldEditBean {
  final String? value;

  FieldEditBean({this.value});

  factory FieldEditBean.fromJson(Map<String, Object?> json) {
    return FieldEditBean(
      value: json['value'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var value = this.value;

    final json = <String, Object?>{};
    if (value != null) {
      json['value'] = value;
    }
    return json;
  }

  FieldEditBean copyWith({String? value}) {
    return FieldEditBean(
      value: value ?? this.value,
    );
  }
}

class IssueAssignRequestBean {
  final List<String> issues;

  IssueAssignRequestBean({List<String>? issues}) : issues = issues ?? [];

  factory IssueAssignRequestBean.fromJson(Map<String, Object?> json) {
    return IssueAssignRequestBean(
      issues: (json['issues'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var issues = this.issues;

    final json = <String, Object?>{};
    json['issues'] = issues;
    return json;
  }

  IssueAssignRequestBean copyWith({List<String>? issues}) {
    return IssueAssignRequestBean(
      issues: issues ?? this.issues,
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
      rankBeforeEpic: json['rankBeforeEpic'] as String?,
      rankAfterEpic: json['rankAfterEpic'] as String?,
      rankCustomFieldId: (json['rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankBeforeEpic = this.rankBeforeEpic;
    var rankAfterEpic = this.rankAfterEpic;
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankBeforeEpic != null) {
      json['rankBeforeEpic'] = rankBeforeEpic;
    }
    if (rankAfterEpic != null) {
      json['rankAfterEpic'] = rankAfterEpic;
    }
    if (rankCustomFieldId != null) {
      json['rankCustomFieldId'] = rankCustomFieldId;
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

class ColorBean {
  final ColorBeanKey? key;

  ColorBean({this.key});

  factory ColorBean.fromJson(Map<String, Object?> json) {
    return ColorBean(
      key: json['key'] != null
          ? ColorBeanKey.fromValue(json['key']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    if (key != null) {
      json['key'] = key.value;
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

class EpicUpdateBeanColor {
  final EpicUpdateBeanColorKey? key;

  EpicUpdateBeanColor({this.key});

  factory EpicUpdateBeanColor.fromJson(Map<String, Object?> json) {
    return EpicUpdateBeanColor(
      key: json['key'] != null
          ? EpicUpdateBeanColorKey.fromValue(json['key']! as String)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var key = this.key;

    final json = <String, Object?>{};
    if (key != null) {
      json['key'] = key.value;
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

class EpicUpdateBean {
  final String? name;
  final String? summary;
  final EpicUpdateBeanColor? color;
  final bool done;

  EpicUpdateBean({this.name, this.summary, this.color, bool? done})
      : done = done ?? false;

  factory EpicUpdateBean.fromJson(Map<String, Object?> json) {
    return EpicUpdateBean(
      name: json['name'] as String?,
      summary: json['summary'] as String?,
      color: json['color'] != null
          ? EpicUpdateBeanColor.fromJson(json['color']! as Map<String, Object?>)
          : null,
      done: json['done'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var summary = this.summary;
    var color = this.color;
    var done = this.done;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    if (summary != null) {
      json['summary'] = summary;
    }
    if (color != null) {
      json['color'] = color.toJson();
    }
    json['done'] = done;
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

class BoardFeatureResponseBeanFeaturesItem {
  final BoardFeatureResponseBeanFeaturesItemBoardFeature? boardFeature;
  final int? boardId;
  final BoardFeatureResponseBeanFeaturesItemState? state;
  final String? localisedName;
  final String? localisedDescription;
  final String? learnMoreLink;
  final String? imageUri;
  final bool toggleLocked;

  BoardFeatureResponseBeanFeaturesItem(
      {this.boardFeature,
      this.boardId,
      this.state,
      this.localisedName,
      this.localisedDescription,
      this.learnMoreLink,
      this.imageUri,
      bool? toggleLocked})
      : toggleLocked = toggleLocked ?? false;

  factory BoardFeatureResponseBeanFeaturesItem.fromJson(
      Map<String, Object?> json) {
    return BoardFeatureResponseBeanFeaturesItem(
      boardFeature: json['boardFeature'] != null
          ? BoardFeatureResponseBeanFeaturesItemBoardFeature.fromValue(
              json['boardFeature']! as String)
          : null,
      boardId: (json['boardId'] as num?)?.toInt(),
      state: json['state'] != null
          ? BoardFeatureResponseBeanFeaturesItemState.fromValue(
              json['state']! as String)
          : null,
      localisedName: json['localisedName'] as String?,
      localisedDescription: json['localisedDescription'] as String?,
      learnMoreLink: json['learnMoreLink'] as String?,
      imageUri: json['imageUri'] as String?,
      toggleLocked: json['toggleLocked'] as bool? ?? false,
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
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json['boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json['boardId'] = boardId;
    }
    if (state != null) {
      json['state'] = state.value;
    }
    if (localisedName != null) {
      json['localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json['localisedDescription'] = localisedDescription;
    }
    if (learnMoreLink != null) {
      json['learnMoreLink'] = learnMoreLink;
    }
    if (imageUri != null) {
      json['imageUri'] = imageUri;
    }
    json['toggleLocked'] = toggleLocked;
    return json;
  }

  BoardFeatureResponseBeanFeaturesItem copyWith(
      {BoardFeatureResponseBeanFeaturesItemBoardFeature? boardFeature,
      int? boardId,
      BoardFeatureResponseBeanFeaturesItemState? state,
      String? localisedName,
      String? localisedDescription,
      String? learnMoreLink,
      String? imageUri,
      bool? toggleLocked}) {
    return BoardFeatureResponseBeanFeaturesItem(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      state: state ?? this.state,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      imageUri: imageUri ?? this.imageUri,
      toggleLocked: toggleLocked ?? this.toggleLocked,
    );
  }
}

class BoardFeatureResponseBeanFeaturesItemBoardFeature {
  static const simpleRoadmap =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('SIMPLE_ROADMAP');
  static const backlog =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('BACKLOG');
  static const sprints =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('SPRINTS');
  static const devtools =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('DEVTOOLS');
  static const reports =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('REPORTS');
  static const estimation =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('ESTIMATION');
  static const pages =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('PAGES');
  static const code =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('CODE');
  static const releases =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('RELEASES');
  static const deployments =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('DEPLOYMENTS');
  static const issueNavigator =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule =
      BoardFeatureResponseBeanFeaturesItemBoardFeature._('ON_CALL_SCHEDULE');

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
  ];
  final String value;

  const BoardFeatureResponseBeanFeaturesItemBoardFeature._(this.value);

  static BoardFeatureResponseBeanFeaturesItemBoardFeature fromValue(
          String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () =>
              BoardFeatureResponseBeanFeaturesItemBoardFeature._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardFeatureResponseBeanFeaturesItemState {
  static const enabled = BoardFeatureResponseBeanFeaturesItemState._('ENABLED');
  static const disabled =
      BoardFeatureResponseBeanFeaturesItemState._('DISABLED');
  static const comingSoon =
      BoardFeatureResponseBeanFeaturesItemState._('COMING_SOON');

  static const values = [
    enabled,
    disabled,
    comingSoon,
  ];
  final String value;

  const BoardFeatureResponseBeanFeaturesItemState._(this.value);

  static BoardFeatureResponseBeanFeaturesItemState fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardFeatureResponseBeanFeaturesItemState._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardFeatureResponseBean {
  final List<BoardFeatureResponseBeanFeaturesItem> features;

  BoardFeatureResponseBean(
      {List<BoardFeatureResponseBeanFeaturesItem>? features})
      : features = features ?? [];

  factory BoardFeatureResponseBean.fromJson(Map<String, Object?> json) {
    return BoardFeatureResponseBean(
      features: (json['features'] as List<Object?>?)
              ?.map((i) => BoardFeatureResponseBeanFeaturesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var features = this.features;

    final json = <String, Object?>{};
    json['features'] = features.map((i) => i.toJson()).toList();
    return json;
  }

  BoardFeatureResponseBean copyWith(
      {List<BoardFeatureResponseBeanFeaturesItem>? features}) {
    return BoardFeatureResponseBean(
      features: features ?? this.features,
    );
  }
}

class BoardFeatureBean {
  final BoardFeatureBeanBoardFeature? boardFeature;
  final int? boardId;
  final BoardFeatureBeanState? state;
  final String? localisedName;
  final String? localisedDescription;
  final String? learnMoreLink;
  final String? imageUri;
  final bool toggleLocked;

  BoardFeatureBean(
      {this.boardFeature,
      this.boardId,
      this.state,
      this.localisedName,
      this.localisedDescription,
      this.learnMoreLink,
      this.imageUri,
      bool? toggleLocked})
      : toggleLocked = toggleLocked ?? false;

  factory BoardFeatureBean.fromJson(Map<String, Object?> json) {
    return BoardFeatureBean(
      boardFeature: json['boardFeature'] != null
          ? BoardFeatureBeanBoardFeature.fromValue(
              json['boardFeature']! as String)
          : null,
      boardId: (json['boardId'] as num?)?.toInt(),
      state: json['state'] != null
          ? BoardFeatureBeanState.fromValue(json['state']! as String)
          : null,
      localisedName: json['localisedName'] as String?,
      localisedDescription: json['localisedDescription'] as String?,
      learnMoreLink: json['learnMoreLink'] as String?,
      imageUri: json['imageUri'] as String?,
      toggleLocked: json['toggleLocked'] as bool? ?? false,
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
    var toggleLocked = this.toggleLocked;

    final json = <String, Object?>{};
    if (boardFeature != null) {
      json['boardFeature'] = boardFeature.value;
    }
    if (boardId != null) {
      json['boardId'] = boardId;
    }
    if (state != null) {
      json['state'] = state.value;
    }
    if (localisedName != null) {
      json['localisedName'] = localisedName;
    }
    if (localisedDescription != null) {
      json['localisedDescription'] = localisedDescription;
    }
    if (learnMoreLink != null) {
      json['learnMoreLink'] = learnMoreLink;
    }
    if (imageUri != null) {
      json['imageUri'] = imageUri;
    }
    json['toggleLocked'] = toggleLocked;
    return json;
  }

  BoardFeatureBean copyWith(
      {BoardFeatureBeanBoardFeature? boardFeature,
      int? boardId,
      BoardFeatureBeanState? state,
      String? localisedName,
      String? localisedDescription,
      String? learnMoreLink,
      String? imageUri,
      bool? toggleLocked}) {
    return BoardFeatureBean(
      boardFeature: boardFeature ?? this.boardFeature,
      boardId: boardId ?? this.boardId,
      state: state ?? this.state,
      localisedName: localisedName ?? this.localisedName,
      localisedDescription: localisedDescription ?? this.localisedDescription,
      learnMoreLink: learnMoreLink ?? this.learnMoreLink,
      imageUri: imageUri ?? this.imageUri,
      toggleLocked: toggleLocked ?? this.toggleLocked,
    );
  }
}

class BoardFeatureBeanBoardFeature {
  static const simpleRoadmap = BoardFeatureBeanBoardFeature._('SIMPLE_ROADMAP');
  static const backlog = BoardFeatureBeanBoardFeature._('BACKLOG');
  static const sprints = BoardFeatureBeanBoardFeature._('SPRINTS');
  static const devtools = BoardFeatureBeanBoardFeature._('DEVTOOLS');
  static const reports = BoardFeatureBeanBoardFeature._('REPORTS');
  static const estimation = BoardFeatureBeanBoardFeature._('ESTIMATION');
  static const pages = BoardFeatureBeanBoardFeature._('PAGES');
  static const code = BoardFeatureBeanBoardFeature._('CODE');
  static const releases = BoardFeatureBeanBoardFeature._('RELEASES');
  static const deployments = BoardFeatureBeanBoardFeature._('DEPLOYMENTS');
  static const issueNavigator =
      BoardFeatureBeanBoardFeature._('ISSUE_NAVIGATOR');
  static const onCallSchedule =
      BoardFeatureBeanBoardFeature._('ON_CALL_SCHEDULE');

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
  ];
  final String value;

  const BoardFeatureBeanBoardFeature._(this.value);

  static BoardFeatureBeanBoardFeature fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardFeatureBeanBoardFeature._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardFeatureBeanState {
  static const enabled = BoardFeatureBeanState._('ENABLED');
  static const disabled = BoardFeatureBeanState._('DISABLED');
  static const comingSoon = BoardFeatureBeanState._('COMING_SOON');

  static const values = [
    enabled,
    disabled,
    comingSoon,
  ];
  final String value;

  const BoardFeatureBeanState._(this.value);

  static BoardFeatureBeanState fromValue(String value) =>
      values.firstWhere((e) => e.value == value,
          orElse: () => BoardFeatureBeanState._(value));

  /// An enum received from the server but this version of the client doesn't recognize it.
  bool get isUnknown => values.every((v) => v.value != value);

  @override
  String toString() => value;
}

class BoardFeatureToggleRequestBean {
  final int? boardId;
  final String? feature;
  final bool enabling;

  BoardFeatureToggleRequestBean({this.boardId, this.feature, bool? enabling})
      : enabling = enabling ?? false;

  factory BoardFeatureToggleRequestBean.fromJson(Map<String, Object?> json) {
    return BoardFeatureToggleRequestBean(
      boardId: (json['boardId'] as num?)?.toInt(),
      feature: json['feature'] as String?,
      enabling: json['enabling'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() {
    var boardId = this.boardId;
    var feature = this.feature;
    var enabling = this.enabling;

    final json = <String, Object?>{};
    if (boardId != null) {
      json['boardId'] = boardId;
    }
    if (feature != null) {
      json['feature'] = feature;
    }
    json['enabling'] = enabling;
    return json;
  }

  BoardFeatureToggleRequestBean copyWith(
      {int? boardId, String? feature, bool? enabling}) {
    return BoardFeatureToggleRequestBean(
      boardId: boardId ?? this.boardId,
      feature: feature ?? this.feature,
      enabling: enabling ?? this.enabling,
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
      id: (json['id'] as num?)?.toInt(),
      boardId: (json['boardId'] as num?)?.toInt(),
      name: json['name'] as String?,
      jql: json['jql'] as String?,
      description: json['description'] as String?,
      position: (json['position'] as num?)?.toInt(),
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
      json['id'] = id;
    }
    if (boardId != null) {
      json['boardId'] = boardId;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (jql != null) {
      json['jql'] = jql;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (position != null) {
      json['position'] = position;
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
      maxResults: (json['maxResults'] as num?)?.toInt(),
      startAt: (json['startAt'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      isLast: json['isLast'] as bool? ?? false,
      values: (json['values'] as List<Object?>?)
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
      json['maxResults'] = maxResults;
    }
    if (startAt != null) {
      json['startAt'] = startAt;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['isLast'] = isLast;
    json['values'] = values.map((i) => i.toJson()).toList();
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

class PageBean {
  final int? maxResults;
  final int? startAt;
  final int? total;
  final bool isLast;
  final List<Map<String, Object>> values;

  PageBean(
      {this.maxResults,
      this.startAt,
      this.total,
      bool? isLast,
      List<Map<String, Object>>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBean.fromJson(Map<String, Object?> json) {
    return PageBean(
      maxResults: (json['maxResults'] as num?)?.toInt(),
      startAt: (json['startAt'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      isLast: json['isLast'] as bool? ?? false,
      values: (json['values'] as List<Object?>?)
              ?.map((i) =>
                  (i as Map<String, Object?>?)
                      ?.map((k, v) => MapEntry(k, v ?? {})) ??
                  {})
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
      json['maxResults'] = maxResults;
    }
    if (startAt != null) {
      json['startAt'] = startAt;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['isLast'] = isLast;
    json['values'] = values;
    return json;
  }

  PageBean copyWith(
      {int? maxResults,
      int? startAt,
      int? total,
      bool? isLast,
      List<Map<String, Object>>? values}) {
    return PageBean(
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      isLast: isLast ?? this.isLast,
      values: values ?? this.values,
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
      id: (json['id'] as num?)?.toInt(),
      boardId: (json['boardId'] as num?)?.toInt(),
      name: json['name'] as String?,
      jql: json['jql'] as String?,
      description: json['description'] as String?,
      position: (json['position'] as num?)?.toInt(),
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
      json['id'] = id;
    }
    if (boardId != null) {
      json['boardId'] = boardId;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (jql != null) {
      json['jql'] = jql;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (position != null) {
      json['position'] = position;
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

/// Details of a user's active status, identifiers, name, and avatars as permitted by the user's Atlassian Account privacy settings. However, be aware of these exceptions:<ul><li>User record deleted from Atlassian: This occurs as the result of a right to be forgotten request. In this case, `displayName` provides an indication and other parameters have default values or are blank (for example, email is blank).</li><li>User record corrupted: This occurs as a results of events such as a server import and can only happen to deleted users. In this case, `accountId` returns <em>unknown</em> and all other parameters have fallback values.</li><li>User record unavailable: This usually occurs due to an internal service outage. In this case, all parameters have fallback values.</li></ul>
class PageBeanBoardBeanValuesItemAdminsUsersItem {
  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, <em>5b10ac8d82e05b22cc7d4ef5</em>.
  final String? accountId;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  PageBeanBoardBeanValuesItemAdminsUsersItem(
      {this.key,
      this.self,
      this.name,
      this.displayName,
      bool? active,
      this.accountId,
      this.avatarUrls})
      : active = active ?? false;

  factory PageBeanBoardBeanValuesItemAdminsUsersItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardBeanValuesItemAdminsUsersItem(
      key: json['key'] as String?,
      self: json['self'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      active: json['active'] as bool? ?? false,
      accountId: json['accountId'] as String?,
      avatarUrls: json['avatarUrls'] as Map<String, Object?>?,
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
      json['key'] = key;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    json['active'] = active;
    if (accountId != null) {
      json['accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json['avatarUrls'] = avatarUrls;
    }
    return json;
  }

  PageBeanBoardBeanValuesItemAdminsUsersItem copyWith(
      {String? key,
      String? self,
      String? name,
      String? displayName,
      bool? active,
      String? accountId,
      Map<String, dynamic>? avatarUrls}) {
    return PageBeanBoardBeanValuesItemAdminsUsersItem(
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

class PageBeanBoardBeanValuesItemAdminsGroupsItem {
  final String? name;
  final String? self;

  PageBeanBoardBeanValuesItemAdminsGroupsItem({this.name, this.self});

  factory PageBeanBoardBeanValuesItemAdminsGroupsItem.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardBeanValuesItemAdminsGroupsItem(
      name: json['name'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    if (self != null) {
      json['self'] = self;
    }
    return json;
  }

  PageBeanBoardBeanValuesItemAdminsGroupsItem copyWith(
      {String? name, String? self}) {
    return PageBeanBoardBeanValuesItemAdminsGroupsItem(
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class PageBeanBoardBeanValuesItemAdmins {
  final List<PageBeanBoardBeanValuesItemAdminsUsersItem> users;
  final List<PageBeanBoardBeanValuesItemAdminsGroupsItem> groups;

  PageBeanBoardBeanValuesItemAdmins(
      {List<PageBeanBoardBeanValuesItemAdminsUsersItem>? users,
      List<PageBeanBoardBeanValuesItemAdminsGroupsItem>? groups})
      : users = users ?? [],
        groups = groups ?? [];

  factory PageBeanBoardBeanValuesItemAdmins.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardBeanValuesItemAdmins(
      users: (json['users'] as List<Object?>?)
              ?.map((i) => PageBeanBoardBeanValuesItemAdminsUsersItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json['groups'] as List<Object?>?)
              ?.map((i) => PageBeanBoardBeanValuesItemAdminsGroupsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var users = this.users;
    var groups = this.groups;

    final json = <String, Object?>{};
    json['users'] = users.map((i) => i.toJson()).toList();
    json['groups'] = groups.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoardBeanValuesItemAdmins copyWith(
      {List<PageBeanBoardBeanValuesItemAdminsUsersItem>? users,
      List<PageBeanBoardBeanValuesItemAdminsGroupsItem>? groups}) {
    return PageBeanBoardBeanValuesItemAdmins(
      users: users ?? this.users,
      groups: groups ?? this.groups,
    );
  }
}

class PageBeanBoardBeanValuesItemLocation {
  final int? projectId;
  final int? userId;
  final String? userAccountId;
  final String? displayName;
  final String? projectName;
  final String? projectKey;
  final String? projectTypeKey;
  final String? avatarUri;
  final String? name;

  PageBeanBoardBeanValuesItemLocation(
      {this.projectId,
      this.userId,
      this.userAccountId,
      this.displayName,
      this.projectName,
      this.projectKey,
      this.projectTypeKey,
      this.avatarUri,
      this.name});

  factory PageBeanBoardBeanValuesItemLocation.fromJson(
      Map<String, Object?> json) {
    return PageBeanBoardBeanValuesItemLocation(
      projectId: (json['projectId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userAccountId: json['userAccountId'] as String?,
      displayName: json['displayName'] as String?,
      projectName: json['projectName'] as String?,
      projectKey: json['projectKey'] as String?,
      projectTypeKey: json['projectTypeKey'] as String?,
      avatarUri: json['avatarURI'] as String?,
      name: json['name'] as String?,
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
      json['projectId'] = projectId;
    }
    if (userId != null) {
      json['userId'] = userId;
    }
    if (userAccountId != null) {
      json['userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    if (projectName != null) {
      json['projectName'] = projectName;
    }
    if (projectKey != null) {
      json['projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json['projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json['avatarURI'] = avatarUri;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  PageBeanBoardBeanValuesItemLocation copyWith(
      {int? projectId,
      int? userId,
      String? userAccountId,
      String? displayName,
      String? projectName,
      String? projectKey,
      String? projectTypeKey,
      String? avatarUri,
      String? name}) {
    return PageBeanBoardBeanValuesItemLocation(
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

class PageBeanBoardBeanValuesItem {
  final int? id;
  final String? self;
  final String? name;
  final String? type;
  final PageBeanBoardBeanValuesItemAdmins? admins;
  final PageBeanBoardBeanValuesItemLocation? location;
  final bool canEdit;
  final bool isPrivate;
  final bool favourite;

  PageBeanBoardBeanValuesItem(
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

  factory PageBeanBoardBeanValuesItem.fromJson(Map<String, Object?> json) {
    return PageBeanBoardBeanValuesItem(
      id: (json['id'] as num?)?.toInt(),
      self: json['self'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      admins: json['admins'] != null
          ? PageBeanBoardBeanValuesItemAdmins.fromJson(
              json['admins']! as Map<String, Object?>)
          : null,
      location: json['location'] != null
          ? PageBeanBoardBeanValuesItemLocation.fromJson(
              json['location']! as Map<String, Object?>)
          : null,
      canEdit: json['canEdit'] as bool? ?? false,
      isPrivate: json['isPrivate'] as bool? ?? false,
      favourite: json['favourite'] as bool? ?? false,
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
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (admins != null) {
      json['admins'] = admins.toJson();
    }
    if (location != null) {
      json['location'] = location.toJson();
    }
    json['canEdit'] = canEdit;
    json['isPrivate'] = isPrivate;
    json['favourite'] = favourite;
    return json;
  }

  PageBeanBoardBeanValuesItem copyWith(
      {int? id,
      String? self,
      String? name,
      String? type,
      PageBeanBoardBeanValuesItemAdmins? admins,
      PageBeanBoardBeanValuesItemLocation? location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite}) {
    return PageBeanBoardBeanValuesItem(
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

class PageBeanBoardBean {
  final int? maxResults;
  final int? startAt;
  final int? total;
  final bool isLast;
  final List<PageBeanBoardBeanValuesItem> values;

  PageBeanBoardBean(
      {this.maxResults,
      this.startAt,
      this.total,
      bool? isLast,
      List<PageBeanBoardBeanValuesItem>? values})
      : isLast = isLast ?? false,
        values = values ?? [];

  factory PageBeanBoardBean.fromJson(Map<String, Object?> json) {
    return PageBeanBoardBean(
      maxResults: (json['maxResults'] as num?)?.toInt(),
      startAt: (json['startAt'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      isLast: json['isLast'] as bool? ?? false,
      values: (json['values'] as List<Object?>?)
              ?.map((i) => PageBeanBoardBeanValuesItem.fromJson(
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
      json['maxResults'] = maxResults;
    }
    if (startAt != null) {
      json['startAt'] = startAt;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['isLast'] = isLast;
    json['values'] = values.map((i) => i.toJson()).toList();
    return json;
  }

  PageBeanBoardBean copyWith(
      {int? maxResults,
      int? startAt,
      int? total,
      bool? isLast,
      List<PageBeanBoardBeanValuesItem>? values}) {
    return PageBeanBoardBean(
      maxResults: maxResults ?? this.maxResults,
      startAt: startAt ?? this.startAt,
      total: total ?? this.total,
      isLast: isLast ?? this.isLast,
      values: values ?? this.values,
    );
  }
}

/// Details of a user's active status, identifiers, name, and avatars as permitted by the user's Atlassian Account privacy settings. However, be aware of these exceptions:<ul><li>User record deleted from Atlassian: This occurs as the result of a right to be forgotten request. In this case, `displayName` provides an indication and other parameters have default values or are blank (for example, email is blank).</li><li>User record corrupted: This occurs as a results of events such as a server import and can only happen to deleted users. In this case, `accountId` returns <em>unknown</em> and all other parameters have fallback values.</li><li>User record unavailable: This usually occurs due to an internal service outage. In this case, all parameters have fallback values.</li></ul>
class BasicUser {
  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, <em>5b10ac8d82e05b22cc7d4ef5</em>.
  final String? accountId;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  BasicUser(
      {this.key,
      this.self,
      this.name,
      this.displayName,
      bool? active,
      this.accountId,
      this.avatarUrls})
      : active = active ?? false;

  factory BasicUser.fromJson(Map<String, Object?> json) {
    return BasicUser(
      key: json['key'] as String?,
      self: json['self'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      active: json['active'] as bool? ?? false,
      accountId: json['accountId'] as String?,
      avatarUrls: json['avatarUrls'] as Map<String, Object?>?,
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
      json['key'] = key;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    json['active'] = active;
    if (accountId != null) {
      json['accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json['avatarUrls'] = avatarUrls;
    }
    return json;
  }

  BasicUser copyWith(
      {String? key,
      String? self,
      String? name,
      String? displayName,
      bool? active,
      String? accountId,
      Map<String, dynamic>? avatarUrls}) {
    return BasicUser(
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

/// Details of a user's active status, identifiers, name, and avatars as permitted by the user's Atlassian Account privacy settings. However, be aware of these exceptions:<ul><li>User record deleted from Atlassian: This occurs as the result of a right to be forgotten request. In this case, `displayName` provides an indication and other parameters have default values or are blank (for example, email is blank).</li><li>User record corrupted: This occurs as a results of events such as a server import and can only happen to deleted users. In this case, `accountId` returns <em>unknown</em> and all other parameters have fallback values.</li><li>User record unavailable: This usually occurs due to an internal service outage. In this case, all parameters have fallback values.</li></ul>
class BoardAdminsBeanUsersItem {
  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, <em>5b10ac8d82e05b22cc7d4ef5</em>.
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
      key: json['key'] as String?,
      self: json['self'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      active: json['active'] as bool? ?? false,
      accountId: json['accountId'] as String?,
      avatarUrls: json['avatarUrls'] as Map<String, Object?>?,
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
      json['key'] = key;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    json['active'] = active;
    if (accountId != null) {
      json['accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json['avatarUrls'] = avatarUrls;
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

class BoardAdminsBeanGroupsItem {
  final String? name;
  final String? self;

  BoardAdminsBeanGroupsItem({this.name, this.self});

  factory BoardAdminsBeanGroupsItem.fromJson(Map<String, Object?> json) {
    return BoardAdminsBeanGroupsItem(
      name: json['name'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    if (self != null) {
      json['self'] = self;
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
      users: (json['users'] as List<Object?>?)
              ?.map((i) => BoardAdminsBeanUsersItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json['groups'] as List<Object?>?)
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
    json['users'] = users.map((i) => i.toJson()).toList();
    json['groups'] = groups.map((i) => i.toJson()).toList();
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

/// Details of a user's active status, identifiers, name, and avatars as permitted by the user's Atlassian Account privacy settings. However, be aware of these exceptions:<ul><li>User record deleted from Atlassian: This occurs as the result of a right to be forgotten request. In this case, `displayName` provides an indication and other parameters have default values or are blank (for example, email is blank).</li><li>User record corrupted: This occurs as a results of events such as a server import and can only happen to deleted users. In this case, `accountId` returns <em>unknown</em> and all other parameters have fallback values.</li><li>User record unavailable: This usually occurs due to an internal service outage. In this case, all parameters have fallback values.</li></ul>
class BoardBeanAdminsUsersItem {
  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The key of the user.
  final String? key;

  /// The URL of the user.
  final String? self;

  /// This property is deprecated in favor of `accountId` because of privacy changes. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">migration guide</a> for details. <br>The username of the user.
  final String? name;

  /// The display name of the user. Depending on the user’s privacy setting, this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, <em>5b10ac8d82e05b22cc7d4ef5</em>.
  final String? accountId;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  BoardBeanAdminsUsersItem(
      {this.key,
      this.self,
      this.name,
      this.displayName,
      bool? active,
      this.accountId,
      this.avatarUrls})
      : active = active ?? false;

  factory BoardBeanAdminsUsersItem.fromJson(Map<String, Object?> json) {
    return BoardBeanAdminsUsersItem(
      key: json['key'] as String?,
      self: json['self'] as String?,
      name: json['name'] as String?,
      displayName: json['displayName'] as String?,
      active: json['active'] as bool? ?? false,
      accountId: json['accountId'] as String?,
      avatarUrls: json['avatarUrls'] as Map<String, Object?>?,
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
      json['key'] = key;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    json['active'] = active;
    if (accountId != null) {
      json['accountId'] = accountId;
    }
    if (avatarUrls != null) {
      json['avatarUrls'] = avatarUrls;
    }
    return json;
  }

  BoardBeanAdminsUsersItem copyWith(
      {String? key,
      String? self,
      String? name,
      String? displayName,
      bool? active,
      String? accountId,
      Map<String, dynamic>? avatarUrls}) {
    return BoardBeanAdminsUsersItem(
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

class BoardBeanAdminsGroupsItem {
  final String? name;
  final String? self;

  BoardBeanAdminsGroupsItem({this.name, this.self});

  factory BoardBeanAdminsGroupsItem.fromJson(Map<String, Object?> json) {
    return BoardBeanAdminsGroupsItem(
      name: json['name'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    if (self != null) {
      json['self'] = self;
    }
    return json;
  }

  BoardBeanAdminsGroupsItem copyWith({String? name, String? self}) {
    return BoardBeanAdminsGroupsItem(
      name: name ?? this.name,
      self: self ?? this.self,
    );
  }
}

class BoardBeanAdmins {
  final List<BoardBeanAdminsUsersItem> users;
  final List<BoardBeanAdminsGroupsItem> groups;

  BoardBeanAdmins(
      {List<BoardBeanAdminsUsersItem>? users,
      List<BoardBeanAdminsGroupsItem>? groups})
      : users = users ?? [],
        groups = groups ?? [];

  factory BoardBeanAdmins.fromJson(Map<String, Object?> json) {
    return BoardBeanAdmins(
      users: (json['users'] as List<Object?>?)
              ?.map((i) => BoardBeanAdminsUsersItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json['groups'] as List<Object?>?)
              ?.map((i) => BoardBeanAdminsGroupsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var users = this.users;
    var groups = this.groups;

    final json = <String, Object?>{};
    json['users'] = users.map((i) => i.toJson()).toList();
    json['groups'] = groups.map((i) => i.toJson()).toList();
    return json;
  }

  BoardBeanAdmins copyWith(
      {List<BoardBeanAdminsUsersItem>? users,
      List<BoardBeanAdminsGroupsItem>? groups}) {
    return BoardBeanAdmins(
      users: users ?? this.users,
      groups: groups ?? this.groups,
    );
  }
}

class BoardBeanLocation {
  final int? projectId;
  final int? userId;
  final String? userAccountId;
  final String? displayName;
  final String? projectName;
  final String? projectKey;
  final String? projectTypeKey;
  final String? avatarUri;
  final String? name;

  BoardBeanLocation(
      {this.projectId,
      this.userId,
      this.userAccountId,
      this.displayName,
      this.projectName,
      this.projectKey,
      this.projectTypeKey,
      this.avatarUri,
      this.name});

  factory BoardBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardBeanLocation(
      projectId: (json['projectId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userAccountId: json['userAccountId'] as String?,
      displayName: json['displayName'] as String?,
      projectName: json['projectName'] as String?,
      projectKey: json['projectKey'] as String?,
      projectTypeKey: json['projectTypeKey'] as String?,
      avatarUri: json['avatarURI'] as String?,
      name: json['name'] as String?,
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
      json['projectId'] = projectId;
    }
    if (userId != null) {
      json['userId'] = userId;
    }
    if (userAccountId != null) {
      json['userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    if (projectName != null) {
      json['projectName'] = projectName;
    }
    if (projectKey != null) {
      json['projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json['projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json['avatarURI'] = avatarUri;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  BoardBeanLocation copyWith(
      {int? projectId,
      int? userId,
      String? userAccountId,
      String? displayName,
      String? projectName,
      String? projectKey,
      String? projectTypeKey,
      String? avatarUri,
      String? name}) {
    return BoardBeanLocation(
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

class BoardBean {
  final int? id;
  final String? self;
  final String? name;
  final String? type;
  final BoardBeanAdmins? admins;
  final BoardBeanLocation? location;
  final bool canEdit;
  final bool isPrivate;
  final bool favourite;

  BoardBean(
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

  factory BoardBean.fromJson(Map<String, Object?> json) {
    return BoardBean(
      id: (json['id'] as num?)?.toInt(),
      self: json['self'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      admins: json['admins'] != null
          ? BoardBeanAdmins.fromJson(json['admins']! as Map<String, Object?>)
          : null,
      location: json['location'] != null
          ? BoardBeanLocation.fromJson(
              json['location']! as Map<String, Object?>)
          : null,
      canEdit: json['canEdit'] as bool? ?? false,
      isPrivate: json['isPrivate'] as bool? ?? false,
      favourite: json['favourite'] as bool? ?? false,
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
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (admins != null) {
      json['admins'] = admins.toJson();
    }
    if (location != null) {
      json['location'] = location.toJson();
    }
    json['canEdit'] = canEdit;
    json['isPrivate'] = isPrivate;
    json['favourite'] = favourite;
    return json;
  }

  BoardBean copyWith(
      {int? id,
      String? self,
      String? name,
      String? type,
      BoardBeanAdmins? admins,
      BoardBeanLocation? location,
      bool? canEdit,
      bool? isPrivate,
      bool? favourite}) {
    return BoardBean(
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
      projectId: (json['projectId'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
      userAccountId: json['userAccountId'] as String?,
      displayName: json['displayName'] as String?,
      projectName: json['projectName'] as String?,
      projectKey: json['projectKey'] as String?,
      projectTypeKey: json['projectTypeKey'] as String?,
      avatarUri: json['avatarURI'] as String?,
      name: json['name'] as String?,
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
      json['projectId'] = projectId;
    }
    if (userId != null) {
      json['userId'] = userId;
    }
    if (userAccountId != null) {
      json['userAccountId'] = userAccountId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    if (projectName != null) {
      json['projectName'] = projectName;
    }
    if (projectKey != null) {
      json['projectKey'] = projectKey;
    }
    if (projectTypeKey != null) {
      json['projectTypeKey'] = projectTypeKey;
    }
    if (avatarUri != null) {
      json['avatarURI'] = avatarUri;
    }
    if (name != null) {
      json['name'] = name;
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

class GroupBean {
  final String? name;
  final String? self;

  GroupBean({this.name, this.self});

  factory GroupBean.fromJson(Map<String, Object?> json) {
    return GroupBean(
      name: json['name'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var self = this.self;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    if (self != null) {
      json['self'] = self;
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

/// Details of a user's avatars.
class UserAvatarUrls {
  /// The URL of the user's 24x24 pixel avatar.
  final String? $24X24;

  /// The URL of the user's 16x16 pixel avatar.
  final String? $16X16;

  /// The URL of the user's 32x32 pixel avatar.
  final String? $32X32;

  /// The URL of the user's 48x48 pixel avatar.
  final String? $48X48;

  UserAvatarUrls({this.$24X24, this.$16X16, this.$32X32, this.$48X48});

  factory UserAvatarUrls.fromJson(Map<String, Object?> json) {
    return UserAvatarUrls(
      $24X24: json['24x24'] as String?,
      $16X16: json['16x16'] as String?,
      $32X32: json['32x32'] as String?,
      $48X48: json['48x48'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var $24X24 = this.$24X24;
    var $16X16 = this.$16X16;
    var $32X32 = this.$32X32;
    var $48X48 = this.$48X48;

    final json = <String, Object?>{};
    if ($24X24 != null) {
      json['24x24'] = $24X24;
    }
    if ($16X16 != null) {
      json['16x16'] = $16X16;
    }
    if ($32X32 != null) {
      json['32x32'] = $32X32;
    }
    if ($48X48 != null) {
      json['48x48'] = $48X48;
    }
    return json;
  }

  UserAvatarUrls copyWith(
      {String? $24X24, String? $16X16, String? $32X32, String? $48X48}) {
    return UserAvatarUrls(
      $24X24: $24X24 ?? this.$24X24,
      $16X16: $16X16 ?? this.$16X16,
      $32X32: $32X32 ?? this.$32X32,
      $48X48: $48X48 ?? this.$48X48,
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
      id: (json['id'] as num?)?.toInt(),
      self: json['self'] as String?,
      name: json['name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
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
      maxResults: (json['maxResults'] as num?)?.toInt(),
      startAt: (json['startAt'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      isLast: json['isLast'] as bool? ?? false,
      values: (json['values'] as List<Object?>?)
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
      json['maxResults'] = maxResults;
    }
    if (startAt != null) {
      json['startAt'] = startAt;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['isLast'] = isLast;
    json['values'] = values.map((i) => i.toJson()).toList();
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

class BoardFilterBean {
  final int? id;
  final String? self;
  final String? name;

  BoardFilterBean({this.id, this.self, this.name});

  factory BoardFilterBean.fromJson(Map<String, Object?> json) {
    return BoardFilterBean(
      id: (json['id'] as num?)?.toInt(),
      self: json['self'] as String?,
      name: json['name'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;
    var name = this.name;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
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

class SearchResultsBean {
  /// Expand options that include additional search result details in the response.
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

  SearchResultsBean(
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

  factory SearchResultsBean.fromJson(Map<String, Object?> json) {
    return SearchResultsBean(
      expand: json['expand'] as String?,
      startAt: (json['startAt'] as num?)?.toInt(),
      maxResults: (json['maxResults'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      issues: (json['issues'] as List<Object?>?)
              ?.map((i) =>
                  IssueBean.fromJson(i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      warningMessages: (json['warningMessages'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      names: json['names'] as Map<String, Object?>?,
      schema: json['schema'] as Map<String, Object?>?,
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
      json['expand'] = expand;
    }
    if (startAt != null) {
      json['startAt'] = startAt;
    }
    if (maxResults != null) {
      json['maxResults'] = maxResults;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['issues'] = issues.map((i) => i.toJson()).toList();
    json['warningMessages'] = warningMessages;
    if (names != null) {
      json['names'] = names;
    }
    if (schema != null) {
      json['schema'] = schema;
    }
    return json;
  }

  SearchResultsBean copyWith(
      {String? expand,
      int? startAt,
      int? maxResults,
      int? total,
      List<IssueBean>? issues,
      List<String>? warningMessages,
      Map<String, dynamic>? names,
      Map<String, dynamic>? schema}) {
    return SearchResultsBean(
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

/// Details about the avatars for an item.
class AvatarUrls {
  /// The URL of the item's 16x16 pixel avatar.
  final String? $16X16;

  /// The URL of the item's 24x24 pixel avatar.
  final String? $24X24;

  /// The URL of the item's 32x32 pixel avatar.
  final String? $32X32;

  /// The URL of the item's 48x48 pixel avatar.
  final String? $48X48;

  AvatarUrls({this.$16X16, this.$24X24, this.$32X32, this.$48X48});

  factory AvatarUrls.fromJson(Map<String, Object?> json) {
    return AvatarUrls(
      $16X16: json['16x16'] as String?,
      $24X24: json['24x24'] as String?,
      $32X32: json['32x32'] as String?,
      $48X48: json['48x48'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var $16X16 = this.$16X16;
    var $24X24 = this.$24X24;
    var $32X32 = this.$32X32;
    var $48X48 = this.$48X48;

    final json = <String, Object?>{};
    if ($16X16 != null) {
      json['16x16'] = $16X16;
    }
    if ($24X24 != null) {
      json['24x24'] = $24X24;
    }
    if ($32X32 != null) {
      json['32x32'] = $32X32;
    }
    if ($48X48 != null) {
      json['48x48'] = $48X48;
    }
    return json;
  }

  AvatarUrls copyWith(
      {String? $16X16, String? $24X24, String? $32X32, String? $48X48}) {
    return AvatarUrls(
      $16X16: $16X16 ?? this.$16X16,
      $24X24: $24X24 ?? this.$24X24,
      $32X32: $32X32 ?? this.$32X32,
      $48X48: $48X48 ?? this.$48X48,
    );
  }
}

class ChangeHistoryBeanItemsItem {
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

  ChangeHistoryBeanItemsItem(
      {this.field,
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangeHistoryBeanItemsItem.fromJson(Map<String, Object?> json) {
    return ChangeHistoryBeanItemsItem(
      field: json['field'] as String?,
      fieldtype: json['fieldtype'] as String?,
      fieldId: json['fieldId'] as String?,
      from: json['from'] as String?,
      fromString: json['fromString'] as String?,
      to: json['to'] as String?,
      toString$: json['toString'] as String?,
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
      json['field'] = field;
    }
    if (fieldtype != null) {
      json['fieldtype'] = fieldtype;
    }
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (from != null) {
      json['from'] = from;
    }
    if (fromString != null) {
      json['fromString'] = fromString;
    }
    if (to != null) {
      json['to'] = to;
    }
    if (toString$ != null) {
      json['toString'] = toString$;
    }
    return json;
  }

  ChangeHistoryBeanItemsItem copyWith(
      {String? field,
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangeHistoryBeanItemsItem(
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

class ChangeHistoryBean {
  /// The ID of the changelog.
  final String? id;

  /// The user who made the change.
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The list of items changed.
  final List<ChangeHistoryBeanItemsItem> items;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  ChangeHistoryBean(
      {this.id,
      this.author,
      this.created,
      List<ChangeHistoryBeanItemsItem>? items,
      this.historyMetadata})
      : items = items ?? [];

  factory ChangeHistoryBean.fromJson(Map<String, Object?> json) {
    return ChangeHistoryBean(
      id: json['id'] as String?,
      author: json['author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json['created'] as String? ?? ''),
      items: (json['items'] as List<Object?>?)
              ?.map((i) => ChangeHistoryBeanItemsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      historyMetadata: json['historyMetadata'] as Map<String, Object?>?,
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
      json['id'] = id;
    }
    if (author != null) {
      json['author'] = author;
    }
    if (created != null) {
      json['created'] = created.toIso8601String();
    }
    json['items'] = items.map((i) => i.toJson()).toList();
    if (historyMetadata != null) {
      json['historyMetadata'] = historyMetadata;
    }
    return json;
  }

  ChangeHistoryBean copyWith(
      {String? id,
      Map<String, dynamic>? author,
      DateTime? created,
      List<ChangeHistoryBeanItemsItem>? items,
      Map<String, dynamic>? historyMetadata}) {
    return ChangeHistoryBean(
      id: id ?? this.id,
      author: author ?? this.author,
      created: created ?? this.created,
      items: items ?? this.items,
      historyMetadata: historyMetadata ?? this.historyMetadata,
    );
  }
}

class ChangeItemBean {
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

  ChangeItemBean(
      {this.field,
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangeItemBean.fromJson(Map<String, Object?> json) {
    return ChangeItemBean(
      field: json['field'] as String?,
      fieldtype: json['fieldtype'] as String?,
      fieldId: json['fieldId'] as String?,
      from: json['from'] as String?,
      fromString: json['fromString'] as String?,
      to: json['to'] as String?,
      toString$: json['toString'] as String?,
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
      json['field'] = field;
    }
    if (fieldtype != null) {
      json['fieldtype'] = fieldtype;
    }
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (from != null) {
      json['from'] = from;
    }
    if (fromString != null) {
      json['fromString'] = fromString;
    }
    if (to != null) {
      json['to'] = to;
    }
    if (toString$ != null) {
      json['toString'] = toString$;
    }
    return json;
  }

  ChangeItemBean copyWith(
      {String? field,
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangeItemBean(
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

class ChangelogBeanHistoriesItemItemsItem {
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

  ChangelogBeanHistoriesItemItemsItem(
      {this.field,
      this.fieldtype,
      this.fieldId,
      this.from,
      this.fromString,
      this.to,
      this.toString$});

  factory ChangelogBeanHistoriesItemItemsItem.fromJson(
      Map<String, Object?> json) {
    return ChangelogBeanHistoriesItemItemsItem(
      field: json['field'] as String?,
      fieldtype: json['fieldtype'] as String?,
      fieldId: json['fieldId'] as String?,
      from: json['from'] as String?,
      fromString: json['fromString'] as String?,
      to: json['to'] as String?,
      toString$: json['toString'] as String?,
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
      json['field'] = field;
    }
    if (fieldtype != null) {
      json['fieldtype'] = fieldtype;
    }
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (from != null) {
      json['from'] = from;
    }
    if (fromString != null) {
      json['fromString'] = fromString;
    }
    if (to != null) {
      json['to'] = to;
    }
    if (toString$ != null) {
      json['toString'] = toString$;
    }
    return json;
  }

  ChangelogBeanHistoriesItemItemsItem copyWith(
      {String? field,
      String? fieldtype,
      String? fieldId,
      String? from,
      String? fromString,
      String? to,
      String? toString$}) {
    return ChangelogBeanHistoriesItemItemsItem(
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

class ChangelogBeanHistoriesItem {
  /// The ID of the changelog.
  final String? id;

  /// The user who made the change.
  final Map<String, dynamic>? author;

  /// The date on which the change took place.
  final DateTime? created;

  /// The list of items changed.
  final List<ChangelogBeanHistoriesItemItemsItem> items;

  /// The history metadata associated with the changed.
  final Map<String, dynamic>? historyMetadata;

  ChangelogBeanHistoriesItem(
      {this.id,
      this.author,
      this.created,
      List<ChangelogBeanHistoriesItemItemsItem>? items,
      this.historyMetadata})
      : items = items ?? [];

  factory ChangelogBeanHistoriesItem.fromJson(Map<String, Object?> json) {
    return ChangelogBeanHistoriesItem(
      id: json['id'] as String?,
      author: json['author'] as Map<String, Object?>?,
      created: DateTime.tryParse(json['created'] as String? ?? ''),
      items: (json['items'] as List<Object?>?)
              ?.map((i) => ChangelogBeanHistoriesItemItemsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      historyMetadata: json['historyMetadata'] as Map<String, Object?>?,
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
      json['id'] = id;
    }
    if (author != null) {
      json['author'] = author;
    }
    if (created != null) {
      json['created'] = created.toIso8601String();
    }
    json['items'] = items.map((i) => i.toJson()).toList();
    if (historyMetadata != null) {
      json['historyMetadata'] = historyMetadata;
    }
    return json;
  }

  ChangelogBeanHistoriesItem copyWith(
      {String? id,
      Map<String, dynamic>? author,
      DateTime? created,
      List<ChangelogBeanHistoriesItemItemsItem>? items,
      Map<String, dynamic>? historyMetadata}) {
    return ChangelogBeanHistoriesItem(
      id: id ?? this.id,
      author: author ?? this.author,
      created: created ?? this.created,
      items: items ?? this.items,
      historyMetadata: historyMetadata ?? this.historyMetadata,
    );
  }
}

class ChangelogBean {
  /// The index of the first item returned on the page.
  final int? startAt;

  /// The maximum number of results that could be on the page.
  final int? maxResults;

  /// The number of results on the page.
  final int? total;

  /// The list of changelogs.
  final List<ChangelogBeanHistoriesItem> histories;

  ChangelogBean(
      {this.startAt,
      this.maxResults,
      this.total,
      List<ChangelogBeanHistoriesItem>? histories})
      : histories = histories ?? [];

  factory ChangelogBean.fromJson(Map<String, Object?> json) {
    return ChangelogBean(
      startAt: (json['startAt'] as num?)?.toInt(),
      maxResults: (json['maxResults'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      histories: (json['histories'] as List<Object?>?)
              ?.map((i) => ChangelogBeanHistoriesItem.fromJson(
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
      json['startAt'] = startAt;
    }
    if (maxResults != null) {
      json['maxResults'] = maxResults;
    }
    if (total != null) {
      json['total'] = total;
    }
    json['histories'] = histories.map((i) => i.toJson()).toList();
    return json;
  }

  ChangelogBean copyWith(
      {int? startAt,
      int? maxResults,
      int? total,
      List<ChangelogBeanHistoriesItem>? histories}) {
    return ChangelogBean(
      startAt: startAt ?? this.startAt,
      maxResults: maxResults ?? this.maxResults,
      total: total ?? this.total,
      histories: histories ?? this.histories,
    );
  }
}

class EditMetaBean {
  /// A list of editable field details.
  final Map<String, dynamic>? fields;

  EditMetaBean({this.fields});

  factory EditMetaBean.fromJson(Map<String, Object?> json) {
    return EditMetaBean(
      fields: json['fields'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var fields = this.fields;

    final json = <String, Object?>{};
    if (fields != null) {
      json['fields'] = fields;
    }
    return json;
  }

  EditMetaBean copyWith({Map<String, dynamic>? fields}) {
    return EditMetaBean(
      fields: fields ?? this.fields,
    );
  }
}

class FieldMetaBean {
  /// Whether the field is required.
  final bool required;

  /// The data type of the field.
  final Map<String, dynamic>? schema;

  /// The name of the field.
  final String? name;

  /// The key of the field.
  final String? key;

  /// The URL that can be used to automatically complete the field.
  final String? autoCompleteUrl;

  /// Whether the field has a default value.
  final bool hasDefaultValue;

  /// The list of operations that can be performed on the field.
  final List<String> operations;

  /// The list of values allowed in the field.
  final List<Map<String, Object>> allowedValues;

  /// The default value of the field.
  final Map<String, Object>? defaultValue;

  FieldMetaBean(
      {bool? required,
      this.schema,
      this.name,
      this.key,
      this.autoCompleteUrl,
      bool? hasDefaultValue,
      List<String>? operations,
      List<Map<String, Object>>? allowedValues,
      this.defaultValue})
      : required = required ?? false,
        hasDefaultValue = hasDefaultValue ?? false,
        operations = operations ?? [],
        allowedValues = allowedValues ?? [];

  factory FieldMetaBean.fromJson(Map<String, Object?> json) {
    return FieldMetaBean(
      required: json['required'] as bool? ?? false,
      schema: json['schema'] as Map<String, Object?>?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      autoCompleteUrl: json['autoCompleteUrl'] as String?,
      hasDefaultValue: json['hasDefaultValue'] as bool? ?? false,
      operations: (json['operations'] as List<Object?>?)
              ?.map((i) => i as String? ?? '')
              .toList() ??
          [],
      allowedValues: (json['allowedValues'] as List<Object?>?)
              ?.map((i) =>
                  (i as Map<String, Object?>?)
                      ?.map((k, v) => MapEntry(k, v ?? {})) ??
                  {})
              .toList() ??
          [],
      defaultValue: (json['defaultValue'] as Map<String, Object?>?)
          ?.map((k, v) => MapEntry(k, v ?? {})),
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

    final json = <String, Object?>{};
    json['required'] = required;
    if (schema != null) {
      json['schema'] = schema;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (key != null) {
      json['key'] = key;
    }
    if (autoCompleteUrl != null) {
      json['autoCompleteUrl'] = autoCompleteUrl;
    }
    json['hasDefaultValue'] = hasDefaultValue;
    json['operations'] = operations;
    json['allowedValues'] = allowedValues;
    if (defaultValue != null) {
      json['defaultValue'] = defaultValue;
    }
    return json;
  }

  FieldMetaBean copyWith(
      {bool? required,
      Map<String, dynamic>? schema,
      String? name,
      String? key,
      String? autoCompleteUrl,
      bool? hasDefaultValue,
      List<String>? operations,
      List<Map<String, Object>>? allowedValues,
      Map<String, Object>? defaultValue}) {
    return FieldMetaBean(
      required: required ?? this.required,
      schema: schema ?? this.schema,
      name: name ?? this.name,
      key: key ?? this.key,
      autoCompleteUrl: autoCompleteUrl ?? this.autoCompleteUrl,
      hasDefaultValue: hasDefaultValue ?? this.hasDefaultValue,
      operations: operations ?? this.operations,
      allowedValues: allowedValues ?? this.allowedValues,
      defaultValue: defaultValue ?? this.defaultValue,
    );
  }
}

/// Details of issue history metadata.
class HistoryMetadata {
  /// The type of the history record.
  final String? type;

  /// The description of the history record.
  final String? description;

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
      type: json['type'] as String?,
      description: json['description'] as String?,
      activityDescription: json['activityDescription'] as String?,
      activityDescriptionKey: json['activityDescriptionKey'] as String?,
      emailDescription: json['emailDescription'] as String?,
      emailDescriptionKey: json['emailDescriptionKey'] as String?,
      actor: json['actor'] as Map<String, Object?>?,
      generator: json['generator'] as Map<String, Object?>?,
      cause: json['cause'] as Map<String, Object?>?,
      extraData: json['extraData'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var description = this.description;
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
      json['type'] = type;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (activityDescription != null) {
      json['activityDescription'] = activityDescription;
    }
    if (activityDescriptionKey != null) {
      json['activityDescriptionKey'] = activityDescriptionKey;
    }
    if (emailDescription != null) {
      json['emailDescription'] = emailDescription;
    }
    if (emailDescriptionKey != null) {
      json['emailDescriptionKey'] = emailDescriptionKey;
    }
    if (actor != null) {
      json['actor'] = actor;
    }
    if (generator != null) {
      json['generator'] = generator;
    }
    if (cause != null) {
      json['cause'] = cause;
    }
    if (extraData != null) {
      json['extraData'] = extraData;
    }
    return json;
  }

  HistoryMetadata copyWith(
      {String? type,
      String? description,
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

  /// The key of the display name of the user or system associated with a history record.
  final String? displayNameKey;

  /// The type of the user or system associated with a history record.
  final String? type;

  /// The URL to an avatar for the user or system associated with a history record.
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
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      displayNameKey: json['displayNameKey'] as String?,
      type: json['type'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      url: json['url'] as String?,
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
      json['id'] = id;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    if (displayNameKey != null) {
      json['displayNameKey'] = displayNameKey;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (avatarUrl != null) {
      json['avatarUrl'] = avatarUrl;
    }
    if (url != null) {
      json['url'] = url;
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

class IssueBeanTransitionsItem {
  /// The ID of the issue transition. Required when specifying a transition to undertake.
  final String? id;

  /// The name of the issue transition.
  final String? name;

  /// Details of the issue status after the transition.
  final Map<String, dynamic>? to;

  /// Whether there is a screen associated with the issue transition.
  final bool hasScreen;

  /// Whether the issue transition is global, that is, the transition is applied to issues regardless of their status.
  final bool isGlobal;

  /// Whether this is the initial issue transition for the workflow.
  final bool isInitial;

  /// Whether the transition is available to be performed.
  final bool isAvailable;

  /// Whether the issue has to meet criteria before the issue transition is applied.
  final bool isConditional;

  /// Details of the fields associated with the issue transition screen. Use this information to populate `fields` and `update` in a transition request.
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
      id: json['id'] as String?,
      name: json['name'] as String?,
      to: json['to'] as Map<String, Object?>?,
      hasScreen: json['hasScreen'] as bool? ?? false,
      isGlobal: json['isGlobal'] as bool? ?? false,
      isInitial: json['isInitial'] as bool? ?? false,
      isAvailable: json['isAvailable'] as bool? ?? false,
      isConditional: json['isConditional'] as bool? ?? false,
      fields: json['fields'] as Map<String, Object?>?,
      expand: json['expand'] as String?,
      looped: json['looped'] as bool? ?? false,
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
      json['id'] = id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (to != null) {
      json['to'] = to;
    }
    json['hasScreen'] = hasScreen;
    json['isGlobal'] = isGlobal;
    json['isInitial'] = isInitial;
    json['isAvailable'] = isAvailable;
    json['isConditional'] = isConditional;
    if (fields != null) {
      json['fields'] = fields;
    }
    if (expand != null) {
      json['expand'] = expand;
    }
    json['looped'] = looped;
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
  final Map<String, dynamic>? operations;

  /// The metadata for the fields on the issue that can be amended.
  final Map<String, dynamic>? editmeta;

  ///  Details of changelogs associated with the issue.
  final Map<String, dynamic>? changelog;

  /// The versions of each field on the issue.
  final Map<String, dynamic>? versionedRepresentations;
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
      this.fields})
      : transitions = transitions ?? [];

  factory IssueBean.fromJson(Map<String, Object?> json) {
    return IssueBean(
      expand: json['expand'] as String?,
      id: json['id'] as String?,
      self: json['self'] as String?,
      key: json['key'] as String?,
      renderedFields: json['renderedFields'] as Map<String, Object?>?,
      properties: json['properties'] as Map<String, Object?>?,
      names: json['names'] as Map<String, Object?>?,
      schema: json['schema'] as Map<String, Object?>?,
      transitions: (json['transitions'] as List<Object?>?)
              ?.map((i) => IssueBeanTransitionsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      operations: json['operations'] as Map<String, Object?>?,
      editmeta: json['editmeta'] as Map<String, Object?>?,
      changelog: json['changelog'] as Map<String, Object?>?,
      versionedRepresentations:
          json['versionedRepresentations'] as Map<String, Object?>?,
      fields: json['fields'] as Map<String, Object?>?,
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
    var fields = this.fields;

    final json = <String, Object?>{};
    if (expand != null) {
      json['expand'] = expand;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (key != null) {
      json['key'] = key;
    }
    if (renderedFields != null) {
      json['renderedFields'] = renderedFields;
    }
    if (properties != null) {
      json['properties'] = properties;
    }
    if (names != null) {
      json['names'] = names;
    }
    if (schema != null) {
      json['schema'] = schema;
    }
    json['transitions'] = transitions.map((i) => i.toJson()).toList();
    if (operations != null) {
      json['operations'] = operations;
    }
    if (editmeta != null) {
      json['editmeta'] = editmeta;
    }
    if (changelog != null) {
      json['changelog'] = changelog;
    }
    if (versionedRepresentations != null) {
      json['versionedRepresentations'] = versionedRepresentations;
    }
    if (fields != null) {
      json['fields'] = fields;
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
      Map<String, dynamic>? operations,
      Map<String, dynamic>? editmeta,
      Map<String, dynamic>? changelog,
      Map<String, dynamic>? versionedRepresentations,
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
      fields: fields ?? this.fields,
    );
  }
}

class IssueTransitionBean {
  /// The ID of the issue transition. Required when specifying a transition to undertake.
  final String? id;

  /// The name of the issue transition.
  final String? name;

  /// Details of the issue status after the transition.
  final Map<String, dynamic>? to;

  /// Whether there is a screen associated with the issue transition.
  final bool hasScreen;

  /// Whether the issue transition is global, that is, the transition is applied to issues regardless of their status.
  final bool isGlobal;

  /// Whether this is the initial issue transition for the workflow.
  final bool isInitial;

  /// Whether the transition is available to be performed.
  final bool isAvailable;

  /// Whether the issue has to meet criteria before the issue transition is applied.
  final bool isConditional;

  /// Details of the fields associated with the issue transition screen. Use this information to populate `fields` and `update` in a transition request.
  final Map<String, dynamic>? fields;

  /// Expand options that include additional transition details in the response.
  final String? expand;
  final bool looped;

  IssueTransitionBean(
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

  factory IssueTransitionBean.fromJson(Map<String, Object?> json) {
    return IssueTransitionBean(
      id: json['id'] as String?,
      name: json['name'] as String?,
      to: json['to'] as Map<String, Object?>?,
      hasScreen: json['hasScreen'] as bool? ?? false,
      isGlobal: json['isGlobal'] as bool? ?? false,
      isInitial: json['isInitial'] as bool? ?? false,
      isAvailable: json['isAvailable'] as bool? ?? false,
      isConditional: json['isConditional'] as bool? ?? false,
      fields: json['fields'] as Map<String, Object?>?,
      expand: json['expand'] as String?,
      looped: json['looped'] as bool? ?? false,
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
      json['id'] = id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (to != null) {
      json['to'] = to;
    }
    json['hasScreen'] = hasScreen;
    json['isGlobal'] = isGlobal;
    json['isInitial'] = isInitial;
    json['isAvailable'] = isAvailable;
    json['isConditional'] = isConditional;
    if (fields != null) {
      json['fields'] = fields;
    }
    if (expand != null) {
      json['expand'] = expand;
    }
    json['looped'] = looped;
    return json;
  }

  IssueTransitionBean copyWith(
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
    return IssueTransitionBean(
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

class JsonTypeBean {
  /// The data type of the field.
  final String? type;

  /// When the data type is an array, the name of the field items within the array.
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
      {this.type,
      this.items,
      this.system,
      this.custom,
      this.customId,
      this.configuration});

  factory JsonTypeBean.fromJson(Map<String, Object?> json) {
    return JsonTypeBean(
      type: json['type'] as String?,
      items: json['items'] as String?,
      system: json['system'] as String?,
      custom: json['custom'] as String?,
      customId: (json['customId'] as num?)?.toInt(),
      configuration: json['configuration'] as Map<String, Object?>?,
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
    if (type != null) {
      json['type'] = type;
    }
    if (items != null) {
      json['items'] = items;
    }
    if (system != null) {
      json['system'] = system;
    }
    if (custom != null) {
      json['custom'] = custom;
    }
    if (customId != null) {
      json['customId'] = customId;
    }
    if (configuration != null) {
      json['configuration'] = configuration;
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

class LinkGroupBeanHeader {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  LinkGroupBeanHeader(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory LinkGroupBeanHeader.fromJson(Map<String, Object?> json) {
    return LinkGroupBeanHeader(
      id: json['id'] as String?,
      styleClass: json['styleClass'] as String?,
      iconClass: json['iconClass'] as String?,
      label: json['label'] as String?,
      title: json['title'] as String?,
      href: json['href'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
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
      json['id'] = id;
    }
    if (styleClass != null) {
      json['styleClass'] = styleClass;
    }
    if (iconClass != null) {
      json['iconClass'] = iconClass;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (href != null) {
      json['href'] = href;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    return json;
  }

  LinkGroupBeanHeader copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return LinkGroupBeanHeader(
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

class LinkGroupBeanLinksItem {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  LinkGroupBeanLinksItem(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory LinkGroupBeanLinksItem.fromJson(Map<String, Object?> json) {
    return LinkGroupBeanLinksItem(
      id: json['id'] as String?,
      styleClass: json['styleClass'] as String?,
      iconClass: json['iconClass'] as String?,
      label: json['label'] as String?,
      title: json['title'] as String?,
      href: json['href'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
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
      json['id'] = id;
    }
    if (styleClass != null) {
      json['styleClass'] = styleClass;
    }
    if (iconClass != null) {
      json['iconClass'] = iconClass;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (href != null) {
      json['href'] = href;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    return json;
  }

  LinkGroupBeanLinksItem copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return LinkGroupBeanLinksItem(
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

class LinkGroupBean {
  final String? id;
  final String? styleClass;
  final LinkGroupBeanHeader? header;
  final int? weight;
  final List<LinkGroupBeanLinksItem> links;
  final List<LinkGroupBean> groups;

  LinkGroupBean(
      {this.id,
      this.styleClass,
      this.header,
      this.weight,
      List<LinkGroupBeanLinksItem>? links,
      List<LinkGroupBean>? groups})
      : links = links ?? [],
        groups = groups ?? [];

  factory LinkGroupBean.fromJson(Map<String, Object?> json) {
    return LinkGroupBean(
      id: json['id'] as String?,
      styleClass: json['styleClass'] as String?,
      header: json['header'] != null
          ? LinkGroupBeanHeader.fromJson(
              json['header']! as Map<String, Object?>)
          : null,
      weight: (json['weight'] as num?)?.toInt(),
      links: (json['links'] as List<Object?>?)
              ?.map((i) => LinkGroupBeanLinksItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      groups: (json['groups'] as List<Object?>?)
              ?.map((i) => LinkGroupBean.fromJson(
                  i as Map<String, Object?>? ?? const {}))
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
      json['id'] = id;
    }
    if (styleClass != null) {
      json['styleClass'] = styleClass;
    }
    if (header != null) {
      json['header'] = header.toJson();
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    json['links'] = links.map((i) => i.toJson()).toList();
    json['groups'] = groups.map((i) => i.toJson()).toList();
    return json;
  }

  LinkGroupBean copyWith(
      {String? id,
      String? styleClass,
      LinkGroupBeanHeader? header,
      int? weight,
      List<LinkGroupBeanLinksItem>? links,
      List<LinkGroupBean>? groups}) {
    return LinkGroupBean(
      id: id ?? this.id,
      styleClass: styleClass ?? this.styleClass,
      header: header ?? this.header,
      weight: weight ?? this.weight,
      links: links ?? this.links,
      groups: groups ?? this.groups,
    );
  }
}

class OpsbarBean {
  /// Details of the link groups defining issue operations.
  final List<LinkGroupBean> linkGroups;

  OpsbarBean({List<LinkGroupBean>? linkGroups}) : linkGroups = linkGroups ?? [];

  factory OpsbarBean.fromJson(Map<String, Object?> json) {
    return OpsbarBean(
      linkGroups: (json['linkGroups'] as List<Object?>?)
              ?.map((i) => LinkGroupBean.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var linkGroups = this.linkGroups;

    final json = <String, Object?>{};
    json['linkGroups'] = linkGroups.map((i) => i.toJson()).toList();
    return json;
  }

  OpsbarBean copyWith({List<LinkGroupBean>? linkGroups}) {
    return OpsbarBean(
      linkGroups: linkGroups ?? this.linkGroups,
    );
  }
}

class SimpleLinkBean {
  final String? id;
  final String? styleClass;
  final String? iconClass;
  final String? label;
  final String? title;
  final String? href;
  final int? weight;

  SimpleLinkBean(
      {this.id,
      this.styleClass,
      this.iconClass,
      this.label,
      this.title,
      this.href,
      this.weight});

  factory SimpleLinkBean.fromJson(Map<String, Object?> json) {
    return SimpleLinkBean(
      id: json['id'] as String?,
      styleClass: json['styleClass'] as String?,
      iconClass: json['iconClass'] as String?,
      label: json['label'] as String?,
      title: json['title'] as String?,
      href: json['href'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
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
      json['id'] = id;
    }
    if (styleClass != null) {
      json['styleClass'] = styleClass;
    }
    if (iconClass != null) {
      json['iconClass'] = iconClass;
    }
    if (label != null) {
      json['label'] = label;
    }
    if (title != null) {
      json['title'] = title;
    }
    if (href != null) {
      json['href'] = href;
    }
    if (weight != null) {
      json['weight'] = weight;
    }
    return json;
  }

  SimpleLinkBean copyWith(
      {String? id,
      String? styleClass,
      String? iconClass,
      String? label,
      String? title,
      String? href,
      int? weight}) {
    return SimpleLinkBean(
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

class StatusCategoryJsonBean {
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

  StatusCategoryJsonBean(
      {this.self, this.id, this.key, this.colorName, this.name});

  factory StatusCategoryJsonBean.fromJson(Map<String, Object?> json) {
    return StatusCategoryJsonBean(
      self: json['self'] as String?,
      id: (json['id'] as num?)?.toInt(),
      key: json['key'] as String?,
      colorName: json['colorName'] as String?,
      name: json['name'] as String?,
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
      json['self'] = self;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (key != null) {
      json['key'] = key;
    }
    if (colorName != null) {
      json['colorName'] = colorName;
    }
    if (name != null) {
      json['name'] = name;
    }
    return json;
  }

  StatusCategoryJsonBean copyWith(
      {String? self, int? id, String? key, String? colorName, String? name}) {
    return StatusCategoryJsonBean(
      self: self ?? this.self,
      id: id ?? this.id,
      key: key ?? this.key,
      colorName: colorName ?? this.colorName,
      name: name ?? this.name,
    );
  }
}

class StatusJsonBean {
  /// The URL of the status.
  final String? self;
  final String? statusColor;

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

  StatusJsonBean(
      {this.self,
      this.statusColor,
      this.description,
      this.iconUrl,
      this.name,
      this.id,
      this.statusCategory});

  factory StatusJsonBean.fromJson(Map<String, Object?> json) {
    return StatusJsonBean(
      self: json['self'] as String?,
      statusColor: json['statusColor'] as String?,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
      name: json['name'] as String?,
      id: json['id'] as String?,
      statusCategory: json['statusCategory'] as Map<String, Object?>?,
    );
  }

  Map<String, Object?> toJson() {
    var self = this.self;
    var statusColor = this.statusColor;
    var description = this.description;
    var iconUrl = this.iconUrl;
    var name = this.name;
    var id = this.id;
    var statusCategory = this.statusCategory;

    final json = <String, Object?>{};
    if (self != null) {
      json['self'] = self;
    }
    if (statusColor != null) {
      json['statusColor'] = statusColor;
    }
    if (description != null) {
      json['description'] = description;
    }
    if (iconUrl != null) {
      json['iconUrl'] = iconUrl;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (id != null) {
      json['id'] = id;
    }
    if (statusCategory != null) {
      json['statusCategory'] = statusCategory;
    }
    return json;
  }

  StatusJsonBean copyWith(
      {String? self,
      String? statusColor,
      String? description,
      String? iconUrl,
      String? name,
      String? id,
      Map<String, dynamic>? statusCategory}) {
    return StatusJsonBean(
      self: self ?? this.self,
      statusColor: statusColor ?? this.statusColor,
      description: description ?? this.description,
      iconUrl: iconUrl ?? this.iconUrl,
      name: name ?? this.name,
      id: id ?? this.id,
      statusCategory: statusCategory ?? this.statusCategory,
    );
  }
}

class UserJsonBean {
  /// The URL of the user.
  final String? self;

  /// This property is no longer available and will be removed from the documentation soon. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">deprecation notice</a> for details.
  final String? name;

  /// This property is no longer available and will be removed from the documentation soon. See the <a href="https://developer.atlassian.com/cloud/jira/platform/deprecation-notice-user-privacy-api-migration-guide/">deprecation notice</a> for details.
  final String? key;

  /// The account ID of the user, which uniquely identifies the user across all Atlassian products. For example, <em>5b10ac8d82e05b22cc7d4ef5</em>.
  final String? accountId;

  /// The email address of the user. Depending on the user’s privacy settings, this may be returned as null.
  final String? emailAddress;

  /// The avatars of the user.
  final Map<String, dynamic>? avatarUrls;

  /// The display name of the user. Depending on the user’s privacy settings, this may return an alternative value.
  final String? displayName;

  /// Whether the user is active.
  final bool active;

  /// The time zone specified in the user's profile. Depending on the user’s privacy settings, this may be returned as null.
  final String? timeZone;

  /// The type of account represented by this user. This will be one of 'atlassian' (normal users), 'app' (application user) or 'customer' (Jira Service Desk customer user)
  final String? accountType;

  UserJsonBean(
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

  factory UserJsonBean.fromJson(Map<String, Object?> json) {
    return UserJsonBean(
      self: json['self'] as String?,
      name: json['name'] as String?,
      key: json['key'] as String?,
      accountId: json['accountId'] as String?,
      emailAddress: json['emailAddress'] as String?,
      avatarUrls: json['avatarUrls'] as Map<String, Object?>?,
      displayName: json['displayName'] as String?,
      active: json['active'] as bool? ?? false,
      timeZone: json['timeZone'] as String?,
      accountType: json['accountType'] as String?,
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
      json['self'] = self;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (key != null) {
      json['key'] = key;
    }
    if (accountId != null) {
      json['accountId'] = accountId;
    }
    if (emailAddress != null) {
      json['emailAddress'] = emailAddress;
    }
    if (avatarUrls != null) {
      json['avatarUrls'] = avatarUrls;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
    }
    json['active'] = active;
    if (timeZone != null) {
      json['timeZone'] = timeZone;
    }
    if (accountType != null) {
      json['accountType'] = accountType;
    }
    return json;
  }

  UserJsonBean copyWith(
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
    return UserJsonBean(
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
      issueId: (json['issueId'] as num?)?.toInt(),
      issueKey: json['issueKey'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: (json['errors'] as List<Object?>?)
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
      json['issueId'] = issueId;
    }
    if (issueKey != null) {
      json['issueKey'] = issueKey;
    }
    if (status != null) {
      json['status'] = status;
    }
    json['errors'] = errors;
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

class PartialSuccessBean {
  final List<PartialSuccessBeanEntriesItem> entries;

  PartialSuccessBean({List<PartialSuccessBeanEntriesItem>? entries})
      : entries = entries ?? [];

  factory PartialSuccessBean.fromJson(Map<String, Object?> json) {
    return PartialSuccessBean(
      entries: (json['entries'] as List<Object?>?)
              ?.map((i) => PartialSuccessBeanEntriesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
    );
  }

  Map<String, Object?> toJson() {
    var entries = this.entries;

    final json = <String, Object?>{};
    json['entries'] = entries.map((i) => i.toJson()).toList();
    return json;
  }

  PartialSuccessBean copyWith({List<PartialSuccessBeanEntriesItem>? entries}) {
    return PartialSuccessBean(
      entries: entries ?? this.entries,
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
      issueId: (json['issueId'] as num?)?.toInt(),
      issueKey: json['issueKey'] as String?,
      status: (json['status'] as num?)?.toInt(),
      errors: (json['errors'] as List<Object?>?)
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
      json['issueId'] = issueId;
    }
    if (issueKey != null) {
      json['issueKey'] = issueKey;
    }
    if (status != null) {
      json['status'] = status;
    }
    json['errors'] = errors;
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

class BoardConfigBeanLocation {
  final String? type;
  final String? projectKeyOrId;

  BoardConfigBeanLocation({this.type, this.projectKeyOrId});

  factory BoardConfigBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanLocation(
      type: json['type'] as String?,
      projectKeyOrId: json['projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json['type'] = type;
    }
    if (projectKeyOrId != null) {
      json['projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  BoardConfigBeanLocation copyWith({String? type, String? projectKeyOrId}) {
    return BoardConfigBeanLocation(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
    );
  }
}

class BoardConfigBeanFilter {
  final String? id;
  final String? self;

  BoardConfigBeanFilter({this.id, this.self});

  factory BoardConfigBeanFilter.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanFilter(
      id: json['id'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
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

class BoardConfigBeanSubQuery {
  final String? query;

  BoardConfigBeanSubQuery({this.query});

  factory BoardConfigBeanSubQuery.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanSubQuery(
      query: json['query'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var query = this.query;

    final json = <String, Object?>{};
    if (query != null) {
      json['query'] = query;
    }
    return json;
  }

  BoardConfigBeanSubQuery copyWith({String? query}) {
    return BoardConfigBeanSubQuery(
      query: query ?? this.query,
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
      id: json['id'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
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
      name: json['name'] as String?,
      statuses: (json['statuses'] as List<Object?>?)
              ?.map((i) =>
                  BoardConfigBeanColumnConfigColumnsItemStatusesItem.fromJson(
                      i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    json['statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json['min'] = min;
    }
    if (max != null) {
      json['max'] = max;
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

class BoardConfigBeanColumnConfig {
  final List<BoardConfigBeanColumnConfigColumnsItem> columns;
  final String? constraintType;

  BoardConfigBeanColumnConfig(
      {List<BoardConfigBeanColumnConfigColumnsItem>? columns,
      this.constraintType})
      : columns = columns ?? [];

  factory BoardConfigBeanColumnConfig.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanColumnConfig(
      columns: (json['columns'] as List<Object?>?)
              ?.map((i) => BoardConfigBeanColumnConfigColumnsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      constraintType: json['constraintType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var columns = this.columns;
    var constraintType = this.constraintType;

    final json = <String, Object?>{};
    json['columns'] = columns.map((i) => i.toJson()).toList();
    if (constraintType != null) {
      json['constraintType'] = constraintType;
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

class BoardConfigBeanEstimationField {
  final String? fieldId;
  final String? displayName;

  BoardConfigBeanEstimationField({this.fieldId, this.displayName});

  factory BoardConfigBeanEstimationField.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimationField(
      fieldId: json['fieldId'] as String?,
      displayName: json['displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
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

class BoardConfigBeanEstimation {
  final String? type;
  final BoardConfigBeanEstimationField? field;

  BoardConfigBeanEstimation({this.type, this.field});

  factory BoardConfigBeanEstimation.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanEstimation(
      type: json['type'] as String?,
      field: json['field'] != null
          ? BoardConfigBeanEstimationField.fromJson(
              json['field']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var field = this.field;

    final json = <String, Object?>{};
    if (type != null) {
      json['type'] = type;
    }
    if (field != null) {
      json['field'] = field.toJson();
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

class BoardConfigBeanRanking {
  final int? rankCustomFieldId;

  BoardConfigBeanRanking({this.rankCustomFieldId});

  factory BoardConfigBeanRanking.fromJson(Map<String, Object?> json) {
    return BoardConfigBeanRanking(
      rankCustomFieldId: (json['rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankCustomFieldId != null) {
      json['rankCustomFieldId'] = rankCustomFieldId;
    }
    return json;
  }

  BoardConfigBeanRanking copyWith({int? rankCustomFieldId}) {
    return BoardConfigBeanRanking(
      rankCustomFieldId: rankCustomFieldId ?? this.rankCustomFieldId,
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
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      self: json['self'] as String?,
      location: json['location'] != null
          ? BoardConfigBeanLocation.fromJson(
              json['location']! as Map<String, Object?>)
          : null,
      filter: json['filter'] != null
          ? BoardConfigBeanFilter.fromJson(
              json['filter']! as Map<String, Object?>)
          : null,
      subQuery: json['subQuery'] != null
          ? BoardConfigBeanSubQuery.fromJson(
              json['subQuery']! as Map<String, Object?>)
          : null,
      columnConfig: json['columnConfig'] != null
          ? BoardConfigBeanColumnConfig.fromJson(
              json['columnConfig']! as Map<String, Object?>)
          : null,
      estimation: json['estimation'] != null
          ? BoardConfigBeanEstimation.fromJson(
              json['estimation']! as Map<String, Object?>)
          : null,
      ranking: json['ranking'] != null
          ? BoardConfigBeanRanking.fromJson(
              json['ranking']! as Map<String, Object?>)
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
      json['id'] = id;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (location != null) {
      json['location'] = location.toJson();
    }
    if (filter != null) {
      json['filter'] = filter.toJson();
    }
    if (subQuery != null) {
      json['subQuery'] = subQuery.toJson();
    }
    if (columnConfig != null) {
      json['columnConfig'] = columnConfig.toJson();
    }
    if (estimation != null) {
      json['estimation'] = estimation.toJson();
    }
    if (ranking != null) {
      json['ranking'] = ranking.toJson();
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

class ColumnBeanStatusesItem {
  final String? id;
  final String? self;

  ColumnBeanStatusesItem({this.id, this.self});

  factory ColumnBeanStatusesItem.fromJson(Map<String, Object?> json) {
    return ColumnBeanStatusesItem(
      id: json['id'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
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
      name: json['name'] as String?,
      statuses: (json['statuses'] as List<Object?>?)
              ?.map((i) => ColumnBeanStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    json['statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json['min'] = min;
    }
    if (max != null) {
      json['max'] = max;
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

class ColumnConfigBeanColumnsItemStatusesItem {
  final String? id;
  final String? self;

  ColumnConfigBeanColumnsItemStatusesItem({this.id, this.self});

  factory ColumnConfigBeanColumnsItemStatusesItem.fromJson(
      Map<String, Object?> json) {
    return ColumnConfigBeanColumnsItemStatusesItem(
      id: json['id'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
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
      name: json['name'] as String?,
      statuses: (json['statuses'] as List<Object?>?)
              ?.map((i) => ColumnConfigBeanColumnsItemStatusesItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      min: (json['min'] as num?)?.toInt(),
      max: (json['max'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var name = this.name;
    var statuses = this.statuses;
    var min = this.min;
    var max = this.max;

    final json = <String, Object?>{};
    if (name != null) {
      json['name'] = name;
    }
    json['statuses'] = statuses.map((i) => i.toJson()).toList();
    if (min != null) {
      json['min'] = min;
    }
    if (max != null) {
      json['max'] = max;
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

class ColumnConfigBean {
  final List<ColumnConfigBeanColumnsItem> columns;
  final String? constraintType;

  ColumnConfigBean(
      {List<ColumnConfigBeanColumnsItem>? columns, this.constraintType})
      : columns = columns ?? [];

  factory ColumnConfigBean.fromJson(Map<String, Object?> json) {
    return ColumnConfigBean(
      columns: (json['columns'] as List<Object?>?)
              ?.map((i) => ColumnConfigBeanColumnsItem.fromJson(
                  i as Map<String, Object?>? ?? const {}))
              .toList() ??
          [],
      constraintType: json['constraintType'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var columns = this.columns;
    var constraintType = this.constraintType;

    final json = <String, Object?>{};
    json['columns'] = columns.map((i) => i.toJson()).toList();
    if (constraintType != null) {
      json['constraintType'] = constraintType;
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

class EstimationConfigBeanField {
  final String? fieldId;
  final String? displayName;

  EstimationConfigBeanField({this.fieldId, this.displayName});

  factory EstimationConfigBeanField.fromJson(Map<String, Object?> json) {
    return EstimationConfigBeanField(
      fieldId: json['fieldId'] as String?,
      displayName: json['displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
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

class EstimationConfigBean {
  final String? type;
  final EstimationConfigBeanField? field;

  EstimationConfigBean({this.type, this.field});

  factory EstimationConfigBean.fromJson(Map<String, Object?> json) {
    return EstimationConfigBean(
      type: json['type'] as String?,
      field: json['field'] != null
          ? EstimationConfigBeanField.fromJson(
              json['field']! as Map<String, Object?>)
          : null,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var field = this.field;

    final json = <String, Object?>{};
    if (type != null) {
      json['type'] = type;
    }
    if (field != null) {
      json['field'] = field.toJson();
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

class EstimationFieldBean {
  final String? fieldId;
  final String? displayName;

  EstimationFieldBean({this.fieldId, this.displayName});

  factory EstimationFieldBean.fromJson(Map<String, Object?> json) {
    return EstimationFieldBean(
      fieldId: json['fieldId'] as String?,
      displayName: json['displayName'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var fieldId = this.fieldId;
    var displayName = this.displayName;

    final json = <String, Object?>{};
    if (fieldId != null) {
      json['fieldId'] = fieldId;
    }
    if (displayName != null) {
      json['displayName'] = displayName;
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

class LocationBean {
  final String? type;
  final String? projectKeyOrId;

  LocationBean({this.type, this.projectKeyOrId});

  factory LocationBean.fromJson(Map<String, Object?> json) {
    return LocationBean(
      type: json['type'] as String?,
      projectKeyOrId: json['projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json['type'] = type;
    }
    if (projectKeyOrId != null) {
      json['projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  LocationBean copyWith({String? type, String? projectKeyOrId}) {
    return LocationBean(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
    );
  }
}

class RankingConfigBean {
  final int? rankCustomFieldId;

  RankingConfigBean({this.rankCustomFieldId});

  factory RankingConfigBean.fromJson(Map<String, Object?> json) {
    return RankingConfigBean(
      rankCustomFieldId: (json['rankCustomFieldId'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var rankCustomFieldId = this.rankCustomFieldId;

    final json = <String, Object?>{};
    if (rankCustomFieldId != null) {
      json['rankCustomFieldId'] = rankCustomFieldId;
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
      id: json['id'] as String?,
      self: json['self'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var id = this.id;
    var self = this.self;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
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

class SubqueryBean {
  final String? query;

  SubqueryBean({this.query});

  factory SubqueryBean.fromJson(Map<String, Object?> json) {
    return SubqueryBean(
      query: json['query'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var query = this.query;

    final json = <String, Object?>{};
    if (query != null) {
      json['query'] = query;
    }
    return json;
  }

  SubqueryBean copyWith({String? query}) {
    return SubqueryBean(
      query: query ?? this.query,
    );
  }
}

class BoardCreateBeanLocation {
  final String? type;
  final String? projectKeyOrId;

  BoardCreateBeanLocation({this.type, this.projectKeyOrId});

  factory BoardCreateBeanLocation.fromJson(Map<String, Object?> json) {
    return BoardCreateBeanLocation(
      type: json['type'] as String?,
      projectKeyOrId: json['projectKeyOrId'] as String?,
    );
  }

  Map<String, Object?> toJson() {
    var type = this.type;
    var projectKeyOrId = this.projectKeyOrId;

    final json = <String, Object?>{};
    if (type != null) {
      json['type'] = type;
    }
    if (projectKeyOrId != null) {
      json['projectKeyOrId'] = projectKeyOrId;
    }
    return json;
  }

  BoardCreateBeanLocation copyWith({String? type, String? projectKeyOrId}) {
    return BoardCreateBeanLocation(
      type: type ?? this.type,
      projectKeyOrId: projectKeyOrId ?? this.projectKeyOrId,
    );
  }
}

class BoardCreateBean {
  final String? name;
  final String? type;
  final int? filterId;
  final BoardCreateBeanLocation? location;

  BoardCreateBean({this.name, this.type, this.filterId, this.location});

  factory BoardCreateBean.fromJson(Map<String, Object?> json) {
    return BoardCreateBean(
      name: json['name'] as String?,
      type: json['type'] as String?,
      filterId: (json['filterId'] as num?)?.toInt(),
      location: json['location'] != null
          ? BoardCreateBeanLocation.fromJson(
              json['location']! as Map<String, Object?>)
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
      json['name'] = name;
    }
    if (type != null) {
      json['type'] = type;
    }
    if (filterId != null) {
      json['filterId'] = filterId;
    }
    if (location != null) {
      json['location'] = location.toJson();
    }
    return json;
  }

  BoardCreateBean copyWith(
      {String? name,
      String? type,
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
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      originBoardId: (json['originBoardId'] as num?)?.toInt(),
      goal: json['goal'] as String?,
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
      json['name'] = name;
    }
    if (startDate != null) {
      json['startDate'] = startDate;
    }
    if (endDate != null) {
      json['endDate'] = endDate;
    }
    if (originBoardId != null) {
      json['originBoardId'] = originBoardId;
    }
    if (goal != null) {
      json['goal'] = goal;
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

class SprintBean {
  final int? id;
  final String? self;
  final String? state;
  final String? name;
  final String? startDate;
  final String? endDate;
  final String? completeDate;
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
      this.originBoardId,
      this.goal});

  factory SprintBean.fromJson(Map<String, Object?> json) {
    return SprintBean(
      id: (json['id'] as num?)?.toInt(),
      self: json['self'] as String?,
      state: json['state'] as String?,
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      completeDate: json['completeDate'] as String?,
      originBoardId: (json['originBoardId'] as num?)?.toInt(),
      goal: json['goal'] as String?,
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
    var originBoardId = this.originBoardId;
    var goal = this.goal;

    final json = <String, Object?>{};
    if (id != null) {
      json['id'] = id;
    }
    if (self != null) {
      json['self'] = self;
    }
    if (state != null) {
      json['state'] = state;
    }
    if (name != null) {
      json['name'] = name;
    }
    if (startDate != null) {
      json['startDate'] = startDate;
    }
    if (endDate != null) {
      json['endDate'] = endDate;
    }
    if (completeDate != null) {
      json['completeDate'] = completeDate;
    }
    if (originBoardId != null) {
      json['originBoardId'] = originBoardId;
    }
    if (goal != null) {
      json['goal'] = goal;
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
      sprintToSwapWith: (json['sprintToSwapWith'] as num?)?.toInt(),
    );
  }

  Map<String, Object?> toJson() {
    var sprintToSwapWith = this.sprintToSwapWith;

    final json = <String, Object?>{};
    if (sprintToSwapWith != null) {
      json['sprintToSwapWith'] = sprintToSwapWith;
    }
    return json;
  }

  SprintSwapBean copyWith({int? sprintToSwapWith}) {
    return SprintSwapBean(
      sprintToSwapWith: sprintToSwapWith ?? this.sprintToSwapWith,
    );
  }
}
