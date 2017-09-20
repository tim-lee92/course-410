def degreeOfArray(arr)
  table = {}

  arr.each do |num|
    if table[num]
      table[num] += 1
    else
      table[num] = 1
    end
  end

  degree = table.values.max
  elements_with_most_occurence = []

  table.each do |k,v|
    if degree == table[k]
      degree = table[k]
      elements_with_most_occurence.push(k)
    end
  end

  current_min_length = Float::INFINITY

  elements_with_most_occurence.each do |element_with_most_occurence|
    current_index = 0
    first_occurence = 0
    last_occurence = 0
    occurence_count = 0

    while current_index < arr.length
      if arr[current_index] == element_with_most_occurence
        occurence_count += 1
      end

      if occurence_count == 1 && arr[current_index] == element_with_most_occurence
        first_occurence = current_index
      end

      if occurence_count == degree && arr[current_index] == element_with_most_occurence
        last_occurence = current_index
        break
      end

      current_index += 1
    end

    current_min_length = [last_occurence - first_occurence + 1, current_min_length].min
  end

  current_min_length
end

p degreeOfArray([1,2,3,4,2,2,3])
p degreeOfArray([1,2,2,3,1])
