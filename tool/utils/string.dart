import 'string/case.dart' as case_string;
import 'string/case_format.dart';
import 'string/split_words.dart';

extension StringExtensions on String {
  List<String> get words => splitWords(this);

  String replaceCharAt(int startIndex,
          {int? endIndex, required String Function(String) transformer}) =>
      case_string.replaceAt(this, startIndex,
          endIndex: endIndex, transformer: transformer);

  String toCapitalized() => case_string.capitalize(this);
}

extension ListStringExtensions on Iterable<String> {
  String toLowerCamel() => lowerCamel(this);

  String toUpperCamel() => upperCamel(this);

  String toLowerHyphen() => lowerHyphen(this);

  String toSnakeCase() => snakeCase(this);
}

const nonBreakableSpace = '\u00A0';
const thinSpace = '\u202F';
