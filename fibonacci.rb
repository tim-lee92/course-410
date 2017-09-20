def fib(n)
  if n == 0 || n == 1
    return n
  end

  num1 = 0
  num2 = 1
  total = 0

  (n-1).times do
    total = num1 + num2
    num1 = num2
    num2 = total
  end

  return total
end

p fib(0)
p fib(1)
p fib(2)
p fib 3
p fib 4
p fib 5
p fib 6
