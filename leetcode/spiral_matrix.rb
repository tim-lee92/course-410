def spiral_order(matrix)
  result = []

  while matrix.length != 0
    index = 0
    last_elements = []
    first_elements = []
    top_row = []
    last_row = []

    while index < matrix.length
      if index != 0 && index != matrix.length - 1
        last_elements.push(matrix[index].pop) if matrix[index][-1]
        first_elements.push(matrix[index].shift) if matrix[index][0]
      end

      index += 1
    end

    top_row = matrix.shift if matrix.length > 0
    last_row = matrix.pop if matrix.length > 0

    top_row.each do |int|
      result.push(int)
    end

    last_elements.each do |int|
      result.push(int)
    end

    last_row.reverse.each do |int|
      result.push(int)
    end

    first_elements.reverse.each do |int|
      result.push(int)
    end
  end

  result
end

# spiral_order([[ 1, 2, 3 ],
# [ 4, 5, 6 ],
# [ 7, 8, 9 ]])

# spiral_order([[1,2,3,4],
#               [5,6,7,8],
#               [9,10,11,12],
#               [13,14,15,16]])

# p spiral_order([[1], [2], [3]])
# p spiral_order([[1,2,3]])

p spiral_order [[1],[2],[3],[4],[5],[6],[7],[8],[9],[10]]
