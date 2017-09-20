def reverse_string(s)
  left = 0
  right = s.length - 1

  while left < s.length / 2
    s[left], s[right] = s[right], s[left]
    left += 1
    right -= 1
  end

  s
end

p reverse_string('')
