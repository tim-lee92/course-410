def highest_product_of_3(array)
  highest = [array[0], array[1]].max
  lowest = [array[0], array[1]].min

  highest_2 = array[0] * array[1]
  lowest_2 = array[0] * array[1]

  highest_3 = array[0] * array[1] * array[2]

  array.each_with_index do |int, i|
    next if i < 2

    highest_3 = [highest_3, highest_2 * int, lowest_2 * int].max

    highest_2 = [highest_2, highest * int, lowest * int].max
    lowest_2 = [lowest_2, highest * int, lowest * int].min

    highest = [highest, int].max
    lowest = [lowest, int].min
  end

  highest_3
end

p highest_product_of_3([1,2,3,4])
