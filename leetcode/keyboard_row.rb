def find_words(words)
  table = {
    'q' => 1,
    'w' => 1,
    'e' => 1,
    'r' => 1,
    't' => 1,
    'y' => 1,
    'u' => 1,
    'i' => 1,
    'o' => 1,
    'p' => 1,
    'a' => 2,
    's' => 2,
    'd' => 2,
    'f' => 2,
    'g' => 2,
    'h' => 2,
    'j' => 2,
    'k' => 2,
    'l' => 2,
    'z' => 3,
    'x' => 3,
    'c' => 3,
    'v' => 3,
    'b' => 3,
    'n' => 3,
    'm' => 3
  }

  result = []

  words.each do |word|
    length = word.length
    index = 0
    row = table[word[0].downcase]

    while index < length
      if table[word[index].downcase] != row
        index += 1
        break
      end

      if table[word[index].downcase] == row && index == length - 1
        result.push(word)
      end

      index += 1
    end
  end

  result
end

p find_words(["Hello", "Alaska", "Dad", "Peace"])
