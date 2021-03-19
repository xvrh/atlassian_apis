String capitalize(String word) {
  if (word.isEmpty) return word;

  return replaceAt(word, 0, transformer: (s) => s.toUpperCase());
}

String replaceAt(String input, int startIndex,
    {int? endIndex, required String Function(String) transformer}) {
  endIndex ??= startIndex + 1;

  if (startIndex < 0) throw RangeError.value(startIndex);
  if (startIndex > endIndex) throw RangeError.value(startIndex);
  if (endIndex > input.length) throw RangeError.value(endIndex);

  var before = input.substring(0, startIndex);
  var toReplace = input.substring(startIndex, endIndex);
  var after = input.substring(endIndex);

  var replace = transformer(toReplace);
  return '$before$replace$after';
}
