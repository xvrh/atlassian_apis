const Set<String> _dartKeywords = {
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
  'default', 'static' //
};

String preventKeywords(String input) {
  if (_dartKeywords.contains(input)) {
    return '$input\$';
  } else {
    return input;
  }
}
