import 'dart:io';
import 'package:atlassian_apis/jira_platform.dart';
import 'package:atlassian_apis/service_management.dart';

void main() async {
  // Get your user/api token
  var user = Platform.environment['ATLASSIAN_USER']!;
  var apiToken = Platform.environment['ATLASSIAN_API_TOKEN']!;

  // Create an authenticated http client.
  // This example uses API Token authentication.
  // Alternatively, you can use OAuth1 with RSA.
  var client = ApiClient.basicAuthentication(
      Uri.https('<your-account>.atlassian.net', ''),
      user: user,
      apiToken: apiToken);

  // Create the API wrapper from the http client
  var jira = JiraPlatformApi(client);

  // Communicate with the APIs..
  await jira.projects.searchProjects();

  // Close the client to quickly terminate the process
  client.close();
}
