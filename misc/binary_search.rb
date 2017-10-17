def binary_search(array, target)
  left, right = 0, array.length - 1

  while left <= right
    mid = (left + right) / 2

    if array[mid] == target
      return mid
    elsif array[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  nil
end

p binary_search([], 2)
p binary_search([1], 2)
p binary_search([2], 2)
p binary_search([2,3], 2)
p binary_search([1,1,2,3,4,5], 2)
