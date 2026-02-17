class StringCompression {
  int compress(List<String> chars) {
    var write = 0;
    var read = 0;

    while (read < chars.length) {
      final curr = chars[read];
      var count = 0;

      while (read < chars.length && chars[read] == curr) {
        read++;
        count++;
      }

      chars[write++] = curr;

      if (count > 1) {
        final countStr = count.toString();
        for (var i = 0; i < countStr.length; i++) {
          chars[write++] = countStr[i];
        }
      }
    }

    return write;
  }
}
