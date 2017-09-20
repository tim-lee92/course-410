def search(nums, target)
  if nums.length == 1
    return -1 if nums[0] != target
    return 0 if nums[0] == target
  end

  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    if nums[mid] == target
      return mid
    elsif nums[mid] > target
      if nums[mid] > nums[left] && nums[left] < target
        right = mid
      else
        left = mid + 1
      end
    else
      if nums[mid] > nums[left] && nums[left] > target
        left = mid + 1
      else
        right = mid
      end
    end
  end

  return -1
end

p search([2,3,4,5,6,7,8,0,1], 4)
p search([], 5)
p search([5], 5)
p search([1], 2)
p search([5, 6, 2, 4], 2)
p search([6, 2, 4, 5], 2)
p search([1,3], 2)
p search([1,3],3)
p search([1,2,3,4,5,6], 6)
