def is_palindrome(s)
  s.downcase!
  last_index = s.length - 1
  index = 0

  while index < last_index
    left = s[index]
    right = s[last_index]

    if !left.match(/[A-Za-z0-9]/)
      index += 1
    elsif !right.match(/[A-Za-z0-9]/)
      last_index -= 1
    else
      if left != right
        return false
      end

      index += 1
      last_index -= 1
    end
  end

  true
end

puts is_palindrome('0P')
