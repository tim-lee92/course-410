def bubble_sort(array)
  sorted = false

  while !sorted
    sorted = true
    (array.length - 1).times do |idx|
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
        sorted = false
      end
    end
  end

  array
end

# s = Time.now
# p bubble_sort((1..5000).to_a.reverse)
# e = Time.now
#
# puts e - s

def insertion_sort(array)
  array.each_with_index do |num, i|
    current = num
    previous_index = i

    while previous_index > 0 && array[previous_index - 1] > current
      array[previous_index] = array[previous_index - 1]
      previous_index -= 1
    end
    array[previous_index] = current
  end

  array
end

p insertion_sort([6,2,8,9,0, 10, 52, 25])
