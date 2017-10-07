def countHoles(num)
  number_of_holes_table = {
    '0' => 1,
    '1' => 0,
    '2' => 0,
    '3' => 0,
    '4' => 1,
    '5' => 0,
    '6' => 1,
    '7' => 0,
    '8' => 2,
    '9' => 1
  }
  holes_sum = 0

  num.to_s.chars do |int_string|
    holes_sum += number_of_holes_table[int_string]
  end

  holes_sum
end

p countHoles(630)
p countHoles(1288)
p countHoles(0)
