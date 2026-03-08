// https://leetcode.com/problems/greatest-common-divisor-of-strings/
class GreatestCommonDivisorOfStrings {
  String gcdOfStrings(String str1, String str2) {
    if (str1 + str2 != str2 + str1) {
      return '';
    }

    final endIndex = _gcd(str1.length, str2.length);

    return str1.substring(0, endIndex);
  }

  int _gcd(int a, int b) {
    return b == 0 ? a : _gcd(b, a % b);
  }
}
