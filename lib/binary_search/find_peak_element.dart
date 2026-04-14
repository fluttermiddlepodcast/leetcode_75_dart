// https://leetcode.com/problems/find-peak-element/
class FindPeakElement {
  int findPeakElement(List<int> nums) {
    var left = 0;
    var right = nums.length - 1;

    while (left < right) {
      final middle = left + (right - left) ~/ 2;

      if (nums[middle] < nums[middle + 1]) {
        left = middle + 1;
      } else {
        right = middle;
      }
    }

    return left;
  }
}
