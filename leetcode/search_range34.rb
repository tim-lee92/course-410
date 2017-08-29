def search_range(nums, target)
  if nums.length == 0
    return [-1, -1]
  end

  if nums.length == 1 && nums[0] == target
    return [0, 0]
  end

  upper = nums.length - 1
  lower = 0

  while lower <= upper
    mid = lower + (upper - lower) / 2

    if nums[mid] > target
      upper = mid - 1
    elsif nums[mid] < target
      lower = mid + 1
    else
      lower = mid # 1
      upper = mid # 1
      while nums[lower - 1] == target && lower > 0
        lower -= 1
      end

      while nums[upper + 1] == target
        upper += 1
      end
      return [lower, upper]
    end
  end

  [-1, -1]
end

puts search_range([1,4], 4)
