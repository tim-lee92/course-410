def find_duplicate(nums)
  left = 1
  right = nums.length - 1

  while left < right
    mid = (left + right) / 2

    lower_range_left, lower_range_right = left, mid
    upper_range_left, upper_range_right = mid + 1, right

    items_in_lower_range = 0

    nums.each do |item|
      if item >= lower_range_left && item <= lower_range_right
        items_in_lower_range += 1
      end
    end

    distinct_possible_in_lower = lower_range_right - lower_range_left + 1

    if items_in_lower_range > distinct_possible_in_lower
      left, right = lower_range_left, lower_range_right
    else
      left, right = upper_range_left, upper_range_right
    end
  end

  return left
end

p find_duplicate([9,9,2,3,6,5,4,10,8])
p find_duplicate([9,3,2,6,5,4,10,8,7,1,12,8,11,8])
p find_duplicate([1,1,2])

# def find_repeat(the_array)
#     floor = 0
#     ceiling = the_array.length - 1
#     while floor < ceiling
#         # divide our range 1..n into an upper range and lower range
#         # (such that they don't overlap)
#         # lower range is floor..midpoint
#         # upper range is midpoint+1..ceiling
#         midpoint = floor + ((ceiling - floor) / 2)
#         lower_range_floor, lower_range_ceiling = floor, midpoint
#         upper_range_floor, upper_range_ceiling = midpoint+1, ceiling
#         # count number of items in lower range
#         items_in_lower_range = 0
#         the_array.each do |item|
#             # is it in the lower range?
#           if item >= lower_range_floor and item <= lower_range_ceiling
#               items_in_lower_range += 1
#           end
#         end
#
#         distinct_possible_integers_in_lower_range = \
#             lower_range_ceiling - lower_range_floor + 1
#         if items_in_lower_range > distinct_possible_integers_in_lower_range
#             # there must be a duplicate in the lower range
#             # so use the same approach iteratively on that range
#             floor, ceiling = lower_range_floor, lower_range_ceiling
#         else
#             # there must be a duplicate in the upper range
#             # so use the same approach iteratively on that range
#             floor, ceiling = upper_range_floor, upper_range_ceiling
#         end
#       end
#     # floor and ceiling have converged
#     # we found a number that repeats!
#     return floor
# end


# p find_duplicate([9,9,2,3,6,5,4,10,8])
