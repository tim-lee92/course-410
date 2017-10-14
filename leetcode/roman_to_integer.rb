def roman_to_int(s)
  romans = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  sum = 0
  index = 0

  while index < s.length
    if s[index + 1] && romans[s[index]] < romans[s[index + 1]]
      sum -= romans[s[index]]
    else
      sum += romans[s[index]]
    end

    index += 1
  end

  return sum
end
