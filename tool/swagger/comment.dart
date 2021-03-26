import 'dart:convert';

String documentationComment(String documentation,
    {String? argumentName, required int indent}) {
  documentation = documentation
      .replaceAll('\u2028', '\n')
      .replaceAll(RegExp(r'<br[ /]*>'), '\n');

  if (argumentName != null) {
    documentation = '[$argumentName]: $documentation';
  }

  documentation = documentation
      .replaceAll(r'\[Required\]', '*required*')
      .replaceAll(r'\', '');

  return _toComment(documentation, indent: indent);
}

final _bracketExtractor = RegExp(r'\[[^\]]+\]');
final _nonBreakingSpace = '\u00A0';
String _toComment(String? comment, {int indent = 0, int lineLength = 80}) {
  if (comment != null && comment.isNotEmpty) {
    var commentLines = <String>[];

    comment = comment
        .replaceAllMapped(_bracketExtractor,
            (match) => match.group(0)!.replaceAll(' ', _nonBreakingSpace))
        .replaceAll('<code>', '`')
        .replaceAll('</code>', '`');

    const docStarter = '/// ';
    var maxLineLength = lineLength - indent - docStarter.length;

    for (var hardLine in LineSplitter.split(comment)) {
      var currentLine = <String>[];
      var currentLineLength = 0;
      for (var word in hardLine.split(' ')) {
        if (currentLine.isEmpty ||
            currentLineLength + word.length < maxLineLength) {
          currentLineLength += word.length + (currentLine.isEmpty ? 0 : 1);
          currentLine.add(word);
        } else {
          commentLines.add(currentLine.join(' '));
          currentLine = [word];
          currentLineLength = word.length;
        }
      }
      if (currentLine.isNotEmpty) {
        commentLines.add(currentLine.join(' '));
      }
    }

    return commentLines
        .map((line) => line.replaceAll(_nonBreakingSpace, ' '))
        .map((line) => '${' ' * indent}$docStarter$line')
        .join('\n');
  } else {
    return '';
  }
}
