var findDuplicates = function(nums) {
  var result = [];

  for (var i = 0; i < nums.length; i++) {
    var numAsIndex = Math.abs(nums[i]);
    var curr = nums[numAsIndex - 1];

    if (curr < 0) {
      result.push(Math.abs(numAsIndex));
    } else {
      nums[numAsIndex - 1] *= -1
    }
  }

  return result;
};
