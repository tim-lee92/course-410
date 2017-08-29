def str_str(haystack, needle)
  return 0 if needle.length == 0
  return -1 if haystack.length < needle.length

  left = 0
  matching_counter = 0

  while left < haystack.length
    while !haystack[left].nil? && haystack[left] == needle[matching_counter]
      left += 1
      matching_counter += 1

      # puts matching_counter
      break if matching_counter == needle.length
    end

    if matching_counter == needle.length
      return left - matching_counter
    end

    left += 1
    left -= matching_counter

    # puts "left #{left}"
    # puts "matching_counter #{matching_counter}"

    matching_counter = 0
  end

  -1
end

p str_str('huqonpnpqrgnqgprerengneedleoriognerpen', 'needle') #21
p str_str('a', 'a') #0
p str_str('','')
p str_str('mississippi', 'issip') # 4

def str_str(haystack, needle)
  l1 = haystack.length
  l2 = needle.length

  if l1 < l2
    return -1
  elsif l2 == 0
    return 0
  end

  threshold = l1 - l2

  (0..threshold).each do |i|
    if haystack.slice(i, i+l2) == needle
      return i
    end
  end

  -1
end
