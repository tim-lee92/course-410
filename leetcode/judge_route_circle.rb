def judge_circle(moves)
  pointer = 0
  x = 0
  y = 0

  while pointer < moves.length
    case moves[pointer]
    when 'U'
      y += 1
    when 'D'
      y -= 1
    when 'L'
      x -= 1
    when 'R'
      x += 1
    end

    pointer += 1
  end

  return true if x == 0 && y == 0

  false
end

p judge_circle('UD')
p judge_circle('LL')
p judge_circle('LLDDDRRUUU')
