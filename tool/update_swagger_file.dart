import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

final uri = Uri.https(
    'developer.atlassian.com', 'cloud/jira/platform/swagger-v3.v3.json');

final schemaPath = 'tool/swagger_v3.json';

void main() async {
  var content = await read(uri);
  var json = jsonDecode(content);
  var indentedJson = JsonEncoder.withIndent('  ').convert(json);
  File(schemaPath).writeAsStringSync(indentedJson);
}
