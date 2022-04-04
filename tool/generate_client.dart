import 'dart:convert';
import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'swagger/dart.dart' as dart;
import 'swagger/swagger_spec.dart';
import 'update_swagger_files.dart' show Api;

void main() {
  for (var api in Api.all) {
    var jsonSpec =
        jsonDecode(File('tool/apis/${api.name}.json').readAsStringSync())
            as Map<String, dynamic>;
    fixApi(api.name, jsonSpec);

    final spec = Spec.fromJson(jsonSpec);

    var apiGenerator = dart.Api(api.name, spec);
    var code = apiGenerator.toCode().replaceAll('dynamic?', 'dynamic');
    try {
      code = DartFormatter().format(code);
    } catch (e) {
      print('Code has syntax error');
    }

    File('lib/src/generated/${api.name}.dart').writeAsStringSync(code);
  }
}

void fixApi(String name, Map<String, dynamic> api) {
  if (name == 'service_management') {
    // ignore: avoid_dynamic_calls
    var schemas = api['components']!['schemas']! as Map<String, dynamic>;
    schemas['TemporaryAttachments'] = jsonDecode(r'''
      {
        "type": "object",
        "properties": {
          "temporaryAttachments": {
            "type": "array",
            "items": {
              "$ref": "#/components/schemas/TemporaryAttachment"
            }
          }
        },
        "additionalProperties": false
      }''');
    schemas['TemporaryAttachment'] = jsonDecode(r'''
      {
        "type": "object",
        "properties": {
          "temporaryAttachmentId": {
            "type": "string"
          },
          "fileName": {
            "type": "string"
          }
        },
        "additionalProperties": false
      }''');
    // ignore: avoid_dynamic_calls
    var content = api['paths'][
                '/rest/servicedeskapi/servicedesk/{serviceDeskId}/attachTemporaryFile']
            ['post']['responses']['201']['content']['application/json']
        as Map<String, dynamic>;
    assert(!content.containsKey('schema'));
    content['schema'] = {r'$ref': '#/components/schemas/TemporaryAttachments'};
  }
}
