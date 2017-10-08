def fizz_buzz(n)
  result = []

  (1..n).each do |int|
    if int % 3 == 0 && int % 5 == 0
      result.push('FizzBuzz')
    elsif int % 3 == 0
      result.push('Fizz')
    elsif int % 5 == 0
      result.push('Buzz')
    else
      result.push(int.to_s)
    end
  end

  result
end

p fizz_buzz(15)
