import 'package:jira/jira.dart';

void main() {
  var jira = JiraClient();

  jira.getAlternativeIssueTypes();
  jira.issueTypes.getAlternative('');

  jira.close();
}
