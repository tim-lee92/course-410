def rob(nums)
  return 0 if nums.length == 0
  return nums[1] if nums.length == 1

  table_with_first_house = [nums[0], nums[0]]
  table_with_second_house = table_with_second_house = [0, nums[1]]

  nums.each_with_index do |num, i|
    next if i < 2

    if i != nums.length - 1
      table_with_first_house[i] = [table_with_first_house[i - 2] + num, table_with_first_house[i - 1]].max
      table_with_second_house[i] = [table_with_second_house[i - 2] + num, table_with_second_house[i - 1]].max
    else
      table_with_second_house[i] = [table_with_second_house[i - 2] + num, table_with_second_house[i - 1]].max

    end
  end

  [table_with_first_house[-1], table_with_second_house[-1]].max
end

p rob([10, 15, 18, 19, 12, 17])
