def reverse_string(s)
  last_index = s.length - 1
  mid_length = last_index / 2
  index = 0

  while index <= mid_length
    start = s[index]
    last = s[last_index - index]

    s[index] = last
    s[last_index - index] = start
    index += 1
  end

  s
end

puts reverse_string('hello')
puts reverse_string('')
