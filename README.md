# A client for the Atlassian REST APIs in Dart

This is a Dart client for the APIs of: 
- [Jira Cloud](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/)
- [Jira Software](https://developer.atlassian.com/cloud/jira/software/rest/intro/)
- [Jira Service management](https://developer.atlassian.com/cloud/jira/service-desk/rest/intro/)
- [Confluence](https://developer.atlassian.com/cloud/confluence/rest/intro/)
- [Cloud Admin](https://developer.atlassian.com/cloud/admin/rest-apis/)

All the client are generated from the OpenAPI definition files provided by Atlassian
See [Atlassian documentation of the APIs](https://developer.atlassian.com/cloud/)

## Usage

### Authentication

```dart
import 'dart:io';
import 'package:atlassian_apis/jira_platform.dart';

void main() async {
  // This example uses API Token authentication.
  // Alternatively, you can use OAuth.
  var user = Platform.environment['ATLASSIAN_USER']!;
  var apiToken = Platform.environment['ATLASSIAN_API_TOKEN']!;

  // Create an authenticated http client.
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
```

### Jira

```dart
import 'dart:convert';
import 'package:atlassian_apis/jira_platform.dart';

void main() async {
  // Create Jira API from an authenticated client
  var jira = JiraPlatformApi(apiClient);

  // Create a comment
  var info = await jira.issueComments
      .addComment(issueIdOrKey: 'BR-123', body: Comment(body: 'A comment'));
  printJson(info);
}
```

### Service desk

```dart
import 'dart:convert';
import 'dart:io';
import 'package:atlassian_apis/service_management.dart';
import 'package:path/path.dart' as path;

void main() async {
  // Create the API for Service Desk
  var serviceManagement = ServiceManagementApi(apiClient);

  // Fetch some data
  var desks = await serviceManagement.servicedesk.getServiceDesks();
  printJson(desks);

  // Create a new customer
  var newCustomer = await serviceManagement.customer
      .createCustomer(body: CustomerCreateDTO(email: '..', displayName: '...'));
  printJson(newCustomer);

  // Upload a file
  var file = File('some_file.png');
  var attachment = await serviceManagement.servicedesk.attachTemporaryFile(
      serviceDeskId: '1',
      file: MultipartFile('file', file.openRead(), file.lengthSync(),
          filename: path.basename(file.path)));

  // Create a new customer request with attachment
  await serviceManagement.request.createCustomerRequest(
      body: RequestCreateDTO(requestFieldValues: {
    'summary': 'The issue summary',
    'attachment': attachment.temporaryAttachments
        .map((e) => e.temporaryAttachmentId)
        .toList()
  }));
}
```