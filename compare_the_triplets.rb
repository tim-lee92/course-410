def solve(a0, a1, a2, b0, b1, b2)
  a_score = 0
  b_score = 0

  if a0 > b0
    a_score += 1
  elsif a0 < b0
    b_score += 1
  end

  if a1 > b1
    a_score += 1
  elsif a1 < b1
    b_score += 1
  end

  if a2 > b2
    a_score += 1
  elsif a2 < b2
    b_score += 1
  end

  return [a_score, b_score]
end
