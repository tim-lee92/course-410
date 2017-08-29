# array [] 1...a.length, some element can appear twice not sorted.
# Find elements that appear twice.
# Return [duplicates]
#
#
# [1, 3, 2, 3, 4] => [3]
#
# hash {1, 3, 2, 4} O(n) time O(n) space
#
# sort array O(n log n)
#
# [2, 2, 3, 3, 4]
#        ^  ^
# [2]

# n log n with sort
# def find_duplicates(nums)
#   nums.sort!
#   first = 0
#   second = 1
#   result = []
#
#   while second < nums.length
#     if nums[first] == nums[second]
#       result.push(nums[first])
#       first += 2
#       second += 2
#     else
#       first += 1
#       second += 1
#     end
#   end
#
#   result
# end

# [1, 3, 2, 3, 4] => [3] a.length = 5 min = 1, sum_of_array = 13
# [1, 2, 3, 4, 5]
# [1, 1, 2, 2, 3] => [1, 2]
#
# [3, 2, 1, 3, 1] =>
#  ^
# [3, 2, -1, 3, 1]
#     ^
# [-3, -2, -1, 3, 1]
#

# How did this solution end up slower than the sorting two-pointer solution
def find_duplicates(nums)
  result = []

  nums.each_with_index do |num|
    curr = nums[num.abs - 1]
    if curr < 0
      result.push(num.abs)
    else
      nums[num.abs - 1] = -curr
    end
    # p nums
  end

  result
end

p find_duplicates([4,3,2,7,8,2,3,1])
p find_duplicates([1])
p find_duplicates([2,2])
p find_duplicates([1,2])
