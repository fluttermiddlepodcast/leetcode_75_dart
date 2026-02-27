class LongestSubarrayOf1sAfterDeletingOneElement {
  int longestSubarray(List<int> nums) {
    var left = 0;
    var zeros = 0;
    var maxLength = 0;

    for (var right = 0; right < nums.length; right++) {
      if (nums[right] == 0) {
        zeros++;
      }

      while (zeros > 1) {
        if (nums[left] == 0) {
          zeros--;
        }

        left++;
      }

      final currLength = right - left;
      if (maxLength < currLength) {
        maxLength = currLength;
      }
    }

    return maxLength;
  }
}
