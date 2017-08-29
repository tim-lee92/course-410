def two_sum(nums, target)
  table = Hash.new
  result = []

  nums.each_with_index do |num, i|
    if table[num]
      result[0] = table[num]
      result[1] = i
      return result
    end

    if !table[target - num]
      table[target - num] = i
    end
  end
end

p two_sum([3,2,4], 6)
