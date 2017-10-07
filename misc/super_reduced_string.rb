def super_reduced_string(s)
  loop do
    left = 0
    right = 1
    duplicate = false

    while right <= s.length
      if s[left] == s[right]
        s.slice!(left, 2)
        duplicate = true
      else
        left += 1
        right += 1
      end
    end

    break if !duplicate
  end

  if s.length == 0
    'Empty String'
  else
    s
  end
end

p super_reduced_string('aaabccddd')
p super_reduced_string('baab')
