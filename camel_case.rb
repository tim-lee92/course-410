def count_words(string)
  result = 1

  string.chars.each do |char|
    if char == char.upcase
      result += 1
    end
  end

  result
end
