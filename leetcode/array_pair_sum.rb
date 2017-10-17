def array_pair_sum(nums)
  nums.sort!
  sum = 0

  nums.each_with_index do |num, i|
    if i % 2 == 0
      sum += num
    end
  end

  sum
end
