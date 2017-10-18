def rob(nums)
  if nums.length == 1
    return nums[0]
  end

  table = []
  table[0] = nums[0]
  table[1] = [nums[0], nums[1]].max

  nums.each_with_index do |num, i|
    next if i < 2
    table[i] = [num + table[i - 2], table[i - 1]].max
  end

  table[-1] || 0
end

p rob([10,30,45,25,100,80])
p rob([0])
