def remove_duplicates(nums)
  return 0 if nums.length == 0
  return 1 if nums.length == 1

  index = 0
  last_index = nums.length - 1
  dups = 0

  while index + dups <= last_index do
    writer = nums[index]
    reader = nums[index + dups]

    if writer != reader
      index += 1
      nums[index] = reader
    else
      dups += 1
    end
  end

  puts nums
  index + 1
end
