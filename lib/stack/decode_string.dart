class DecodeString {
  String decodeString(String s) {
    final repeatStack = <int>[];
    final stringStack = <String>[];

    var currentString = '';
    var currentCount = 0;

    for (var i = 0; i < s.length; i++) {
      final ch = s[i];
      final codeUnit = ch.codeUnitAt(0);

      if (codeUnit >= 48 && codeUnit <= 57) {
        currentCount = currentCount * 10 + int.parse(ch);
      } else if (ch == '[') {
        repeatStack.add(currentCount);
        stringStack.add(currentString);

        currentString = '';
        currentCount = 0;
      } else if (ch == ']') {
        final repeatTimes = repeatStack.removeLast();
        final prevString = stringStack.removeLast();

        currentString = prevString + currentString * repeatTimes;
      } else {
        currentString += ch;
      }
    }

    return currentString;
  }
}
