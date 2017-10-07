def reverse_words(s)
  words = s.split(' ')

  words.each do |word|
    left = 0
    right = word.length - 1

    while left < right
      word[left], word[right] = word[right], word[left]
      left += 1
      right -= 1
    end
  end

  words.join(' ')
end

p reverse_words("Let's take LeetCode contest")
p reverse_words("")
p reverse_words("Hello")
