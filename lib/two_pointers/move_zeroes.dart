// https://leetcode.com/problems/move-zeroes/
class MoveZeroes {
  void moveZeroes(List<int> nums) {
    var pointer = 0;

    for (var i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[pointer] = nums[i];
        pointer++;
      }
    }

    for (var j = pointer; j < nums.length; j++) {
      nums[j] = 0;
    }
  }
}
