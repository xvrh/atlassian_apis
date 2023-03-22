import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:path/path.dart' as p;

final String apisPath = 'tool/apis';

class Api {
  final String name;
  final Uri uri;

  Api(this.name, this.uri);

  static final all = [
    Api(
      'jira_platform',
      Uri.https(
          'developer.atlassian.com', 'cloud/jira/platform/swagger-v3.v3.json'),
    ),
    Api(
      'jira_software',
      Uri.https(
          'developer.atlassian.com', 'cloud/jira/software/swagger.v3.json'),
    ),
    Api(
      'service_management',
      Uri.https(
          'developer.atlassian.com', 'cloud/jira/service-desk/swagger.v3.json'),
    ),
    Api(
      'confluence',
      Uri.https('developer.atlassian.com', 'cloud/confluence/swagger.v3.json'),
    ),
    Api(
      'confluence_v2',
      Uri.https(
          'developer.atlassian.com', 'cloud/confluence/openapi-v2.v3.json'),
    ),
    Api(
      'admin_organization',
      Uri.https('developer.atlassian.com',
          'cloud/admin/organization/swagger.v3.json'),
    ),
    Api(
      'admin_user',
      Uri.https('developer.atlassian.com',
          'cloud/admin/user-management/swagger.v3.json'),
    ),
    Api(
      'admin_user_provisioning',
      Uri.https('developer.atlassian.com',
          'cloud/admin/user-provisioning/swagger.v3.json'),
    ),
    //Api(
    //  'bitbucket',
    //  Uri.https('bitbucket.org', 'api/swagger.json'),
    //),
  ];
}

void main() async {
  for (var api in Api.all) {
    var content = await read(api.uri);
    var json = jsonDecode(content);
    var indentedJson = JsonEncoder.withIndent('  ').convert(json);
    File(p.join(apisPath, '${api.name}.json')).writeAsStringSync(indentedJson);
  }
}
