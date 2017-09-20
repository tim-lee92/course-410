def reverse_words(str)
  reverse_string(str)

  left = 0
  right = 1
  last_index = 0

  while last_index < str.length
    while str[right + 1] != ' ' && !str[right + 1].nil?
      right += 1
    end

    last_index = right + 2

    while left < right
      str[left], str[right] = str[right], str[left]
      left += 1
      right -= 1
    end

    left = last_index
    right = last_index + 1
  end

  str
end

def reverse_string(str)
  left = 0
  right = str.length - 1

  while left < str.length / 2
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1
  end

  str
end

p reverse_words('the sky is blue')
p reverse_words('')
p reverse_words('hello')
