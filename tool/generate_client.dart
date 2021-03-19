import 'dart:convert';
import 'dart:io';

import 'swagger/swagger_spec.dart';
import 'package:dart_style/dart_style.dart';
//import 'swagger/dart.dart' as dart;
import 'update_swagger_file.dart' show schemaPath;

void main() {
  final spec = Spec.fromJson(jsonDecode(File(schemaPath).readAsStringSync()));

  /*
  var api = dart.Api(spec);
  var code = api.toCode();
  try {
    code = DartFormatter().format(code);
  } catch (e) {
    print('Code has syntax error');
  }

  File('lib/src/client.dart').writeAsStringSync(code);*/
}
