class MaxConsecutiveOnesIII {
  int longestOnes(List<int> nums, int k) {
    var left = 0;
    var zeroCount = 0;
    var maxLength = 0;

    for (var right = 0; right < nums.length; right++) {
      if (nums[right] == 0) {
        zeroCount++;
      }

      while (zeroCount > k) {
        if (nums[left] == 0) {
          zeroCount--;
        }

        left++;
      }

      final currLength = right - left + 1;
      if (maxLength < currLength) {
        maxLength = currLength;
      }
    }

    return maxLength;
  }
}
