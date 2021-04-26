import 'dart:io';
import 'package:dart_style/dart_style.dart';

final RegExp _importRegex = RegExp(r"import '([^']+)';\r?\n");

final DartFormatter _dartFormatter =
    DartFormatter(lineEnding: Platform.isWindows ? '\r\n' : '\n');

void main() {
  File('README.md').writeAsStringSync(generateReadme());
}

String generateReadme() {
  var template = File('README.template.md').readAsStringSync();

  var readme = template.replaceAllMapped(_importRegex, (match) {
    var filePath = match.group(1)!;

    var fileContent = File(filePath).readAsStringSync();

    fileContent = _dartFormatter.format(fileContent);

    return fileContent;
  });
  return readme;
}
