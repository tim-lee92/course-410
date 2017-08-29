def search_insert(nums, target)
  return 0 if nums.length == 0
  return 0 if nums.length == 1 && nums[0] > target
  return 1 if nums.length == 1 && nums[0] < target

  left = 0
  right = nums.length - 1
  mid = 0

  while left <= right do
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    end

    if nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  return nums[mid] > target ? mid : mid + 1
end

puts search_insert([1,3,5,6], 0)
