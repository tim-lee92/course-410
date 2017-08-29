def is_valid(s)
  stack = []

  opening = '[({'
  closing = '])}'

  s.chars.each do |char|
    if opening.include?(char)
      stack.push(char)
    end

    if closing.include?(char)
      opening.index(stack.pop) == closing.index(char)
    end
  end

  stack.length == 0
end
