def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1

  while left < right do
    if numbers[left] + numbers[right] < target
      left += 1
    elsif numbers[left] + numbers[right] > target
      right -= 1
    else
      return [left + 1, right + 1]
    end
  end

  return []
end
