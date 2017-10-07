def add_two_numbers(l1, l2)
  return nil if l1.nil? && l2.nil?
  return l1 if l2.nil?
  return l2 if l1.nil?

  l1_length = 0
  l2_length = 0
  l1_copy = l1
  l2_copy = l2

  while l1_copy
    l1_copy = l1_copy.next
    l1_length += 1
  end

  while l2_copy
    l2_copy = l2_copy.next
    l2_length += 1
  end

  ((l1 - l2).abs - 1).times do
    if l1_length > l2_length
      l1 = l1.next
    else
      l2 = l2.next
    end
  end
end
