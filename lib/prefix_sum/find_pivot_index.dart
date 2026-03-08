// https://leetcode.com/problems/find-pivot-index/
class FindPivotIndex {
  int pivotIndex(List<int> nums) {
    var sum = 0;

    for (var num in nums) {
      sum += num;
    }

    var atLeft = 0;
    for (var i = 0; i < nums.length; i++) {
      if (atLeft == sum - atLeft - nums[i]) {
        return i;
      }

      atLeft += nums[i];
    }

    return -1;
  }
}
