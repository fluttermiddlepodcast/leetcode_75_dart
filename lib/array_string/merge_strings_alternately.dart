// https://leetcode.com/problems/merge-strings-alternately/
class MergeStringsAlternately {
  String mergeAlternately(String word1, String word2) {
    final merged = StringBuffer();
    final length1 = word1.length;
    final length2 = word2.length;
    var minLength = length1 < length2 ? length1 : length2;

    for (int i = 0; i < minLength; i++) {
      merged.write(word1[i]);
      merged.write(word2[i]);
    }

    merged.write(word1.substring(minLength));
    merged.write(word2.substring(minLength));

    return merged.toString();
  }
}
