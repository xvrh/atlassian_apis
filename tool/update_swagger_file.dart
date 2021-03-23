import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:http/http.dart';

final String apisPath = 'tool/apis';

class Api {
  final String name;
  final Uri uri;

  Api(this.name, this.uri);

  static final all = [
    Api(
        'platform',
        Uri.https('developer.atlassian.com',
            'cloud/jira/platform/swagger-v3.v3.json')),
    Api(
        'service_management',
        Uri.https('developer.atlassian.com',
            'cloud/jira/service-desk/swagger.v3.json')),
    Api(
        'confluence',
        Uri.https(
            'developer.atlassian.com', 'cloud/confluence/swagger.v3.json')),
    Api(
        'software',
        Uri.https(
            'developer.atlassian.com', 'cloud/jira/software/swagger.v3.json')),
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
