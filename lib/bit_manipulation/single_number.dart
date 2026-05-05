// https://leetcode.com/problems/single-number/
class SingleNumber {
  int singleNumber(List<int> nums) {
    var result = 0;
    for (final num in nums) {
      result ^= num;
    }

    return result;
  }
}
