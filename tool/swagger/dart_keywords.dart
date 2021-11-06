import '../utils/string.dart';

const _dartKeywords = <String>{
  'abstract', 'deferred', 'if', 'super',
  'as', 'do', 'implements', 'switch',
  'assert', 'dynamic', 'import', 'sync',
  'async', 'else', 'in', 'this',
  'enum', 'is', 'throw',
  'await', 'export', 'library', 'true',
  'break', 'external', 'new', 'try',
  'case', 'extends', 'null', 'typedef',
  'catch', 'factory', 'operator', 'var',
  'class', 'false', 'part', 'void',
  'const', 'final', 'rethrow', 'while',
  'continue', 'finally', 'return', 'with',
  'covariant', 'for', 'yield',
  'default', 'static', 'toString', 'int', 'double', 'bool', //
};

const _replacements = {
  '!=': 'different',
  '>=': 'greaterThanOrEquals',
  '<=': 'lessThanOrEquals',
  '~=': 'tildeEqual',
  '~': 'tilde',
  '>': 'greaterThan',
  '<': 'lessThan',
  '=': 'equal',
};

final _digitRegex = RegExp('[0-9]');

String dartIdentifier(String input) {
  for (var replace in _replacements.entries) {
    input = input.replaceAll(replace.key, replace.value);
  }

  input = input.words.map((e) => e.toLowerCase()).toLowerCamel();

  if (input.startsWith(_digitRegex)) {
    return '\$$input';
  } else if (_dartKeywords.contains(input)) {
    return '$input\$';
  } else if (input.isEmpty) {
    return r'$';
  } else {
    return input;
  }
}
