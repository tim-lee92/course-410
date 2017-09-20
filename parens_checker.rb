def is_valid(s)
  opening = ['{', '(', '[']
  closing = ['}', ')', ']']
  stack = []
  index = 0

  while index < s.length
    if opening.include?(s[index])
      stack.push(s[index])
    elsif closing.index(s[index])
      parens = stack.pop

      if opening[closing.index(s[index])] != parens
        return false
      end
    end
    index += 1
  end

  stack.length == 0
end
