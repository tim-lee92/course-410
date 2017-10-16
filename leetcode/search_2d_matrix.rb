def search_matrix(matrix, target)
  return false if matrix.length == 0 || matrix[0].length == 0
  left = 0
  right = matrix.length - 1
  subarray = []

  while left <= right
    mid = (left + right) / 2

    subarray = matrix[mid]
    if subarray[0] <= target && subarray[-1] >= target
      break
    elsif subarray[0] > target
      right = mid - 1
    elsif subarray[-1] < target
      left = mid + 1
    end
  end

  left = 0
  right = subarray.length - 1

  while left <= right
    mid = (left + right) / 2

    if subarray[mid] == target
      return true
    elsif subarray[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  false
end

p search_matrix([
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
], 4)

p search_matrix([[1]], 1)
p search_matrix([[1]], 2)
