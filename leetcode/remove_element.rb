# def remove_element(nums, val)
#   return 0 if nums.length == 1 && nums[0] == val || nums.length == 0
#   last_index = nums.length - 1
#   index = 0
#   removed = 0
#
#   while index + removed <= last_index do
#     writer = nums[index]
#     # reader = nums[index + removed]
#
#     if writer == val
#       removed += 1
#       nums[index] = nums[index + removed]
#     else
#       index += 1
#     end
#   end
#
#   p nums
#   index
# end

def remove_element(nums, val)
  index = 0

  nums.each_with_index do |num, i|
    if num != val
      nums[index] = nums[i]
      index += 1
    end
  end

  index
end

p remove_element([3,2,2,3,3], 3)
