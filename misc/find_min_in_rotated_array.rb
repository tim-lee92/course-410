def find_min(nums)
  left = 0
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    if nums[mid] > nums[right]
      left = mid + 1
    else
      right = mid
    end
  end

  return nums[left]
end

p find_min([4,5,6,7,0,1,2])
p find_min([0, 2])
p find_min([2, 0])
p find_min([2,3,4,5,1])
p find_min([1])
