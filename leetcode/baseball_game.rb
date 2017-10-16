def cal_points(ops)
  sum = 0
  valid_rounds = []

  ops.each do |op|
    case op
    when '+'
      current_round = valid_rounds[-1] + valid_rounds[-2]
      sum += current_round
      valid_rounds.push(current_round)
    when 'D'
      sum += valid_rounds[-1] * 2
      valid_rounds.push(valid_rounds[-1] * 2)
    when 'C'
      invalid = valid_rounds.pop
      sum -= invalid
    else
      valid_rounds.push(op.to_i)
      sum += op.to_i
    end
  end

  sum
end

p cal_points(['5', '2', 'C', 'D', '+'])
