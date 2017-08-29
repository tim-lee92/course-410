def find_min(nums)
  return nil if nums.length == 0
  return nums[0] if nums.length == 1

  upper = nums.count - 1
  lower = 0

  while lower <= upper
    mid = (lower + upper) / 2
    if nums[mid] < nums[lower] && nums[mid] < nums[upper]
      #worst case scenario is O(N), but rare
      while nums[mid - 1] < nums[mid] && mid > 0
        mid -= 1
      end

      return nums[mid]
    elsif nums[mid] > nums[lower] && nums[mid] > nums[upper]
      lower = mid + 1
    elsif nums[mid] < nums[lower] && nums[mid] > nums[upper]
      upper = mid - 1
    else
      if nums[lower] == nums[mid]
        if nums[mid] < nums[upper]
          return nums[lower]
        else
          return nums[upper]
        end
      elsif nums[upper] == nums[mid]
        if nums[mid] > nums[upper]
          return nums[upper]
        else
          return nums[lower]
        end
      else
        return nums[lower]
      end
    end
  end
end

# def find_min(nums)
#   return nil if nums.length == 0
#   return nums[0] if nums.length == 1
#   if nums.length == 2
#     return nums[0] if nums[0] < nums[1]
#     nums[1]
#   end
#
#   upper = nums.count - 1
#   lower = 0
#
#   while lower <= upper
#     mid = lower + (upper - lower) / 2
#
#     if nums[mid - 1] && nums[mid - 1] > nums[mid] && nums[mid + 1] && nums[mid + 1] < nums[mid]
#       return nums[mid]
#     else
#       if nums[mid] > nums[lower]
#         lower = mid + 1
#         else nums[mid] < nums[upper]
#       upper = mid - 1
#     end
#   end
# end

puts find_min([1,2,3,4])

# Concise not-my-solution
def find_min(nums)
  return nil if nums.length == 0
  return nums[0] if nums.length == 1

  upper = nums.length - 1
  lower = 0

  while lower <= upper
    mid = (upper + lower) / 2

    if mid > 0 && nums[mid] < nums[mid - 1]
      return nums[mid]
    end

    if nums[lower] <= nums[mid] && nums[mid] > nums[upper]
      lower = mid + 1
    else
      upper = mid - 1
    end
  end
  nums[lower]

end
