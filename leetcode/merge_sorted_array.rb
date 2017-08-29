# Awful question. Expected answer is an array of length m. Input can be unsorted.

def merge(nums1, m, nums2, n)
  return nums1 if nums2.length == 0
  return nums2 if nums1.length == 0
  last_index = m + n - 1
  first_pointer = m - 1
  second_pointer = n - 1
  counter = 0

  loop do
    if nums1[first_pointer] > nums2[second_pointer]
      nums1[last_index - counter] = nums1[first_pointer]
      first_pointer -= 1
    else
      nums1[last_index - counter] = nums2[second_pointer]
      second_pointer -= 1
    end

    break if last_index - counter <= 0 || first_pointer <= -1 || second_pointer <= -1
    counter += 1
  end


end
