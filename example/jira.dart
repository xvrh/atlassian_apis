//--- example

import 'dart:convert';
import 'package:atlassian_apis/jira_platform.dart';
import 'package:atlassian_apis/service_management.dart';

void main() async {
  // Create Jira API from an authenticated client
  var jira = JiraPlatformApi(apiClient);

  // Create a comment
  var info = await jira.issueComments
      .addComment(issueIdOrKey: 'BR-123', body: Comment(body: 'A comment'));
  printJson(info);
}
//---

ApiClient get apiClient => throw UnimplementedError();

void printJson(object) {
  print(jsonEncode(object));
}
