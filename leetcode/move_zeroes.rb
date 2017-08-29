def move_zeroes(nums)
  first = 0
  second = 1

  while second < nums.length
    if nums[first] == 0 && nums[second] != 0
      first_num = nums[first]
      nums[first] = nums[second]
      nums[second] = first_num
      first += 1
    elsif nums[first] != 0
      first += 1
    end

    second += 1
  end
end

p move_zeroes([0, 1, 0, 3, 12])
p move_zeroes([0, 0, 1, 3, 12])
p move_zeroes([])
p move_zeroes([2])
p move_zeroes([0])
p move_zeroes([0,0,0])
p move_zeroes([2,3,4])

# [0, 1, 0, 3, 12] => [1, 0, 0, 3, 12] => [1, 3, 12, 0, 0]
#  ^  ^                   ^  ^                       ^     ^
#
# [0, 0, 1, 3, 12] => [1, 0, 0, 3, 12] => [1, 3, 0, 0, 12]
#  ^     ^                ^     ^                   ^     ^
#
# [3]
#
# [1, 0, 2]
#      ^  ^
