def search_range(nums, target)
  return [-1, -1] if nums.length == 0
  return [0, 0] if nums.length == 1 && nums[0] == target

  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      left = mid - 1
      right = mid + 1
      while left >= 0 && nums[left] == target
        left -= 1
      end

      while right < nums.length && nums[right] == target
        right += 1
      end

      return [left + 1, right - 1]
    elsif nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  [-1, -1]
end

p search_range([5, 7, 8, 8, 10], 7)
p search_range([1], 1)
p search_range([2], 1)
p search_range([1,1], 1)
p search_range([1,2], 2)
p search_range([2,2], 2)
