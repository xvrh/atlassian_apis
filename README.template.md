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
import 'example/main.dart';
```

### Jira

```dart
import 'example/jira.dart#example';
```

### Service desk

```dart
import 'example/service_management.dart#example';
```