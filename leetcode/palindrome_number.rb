def is_palindrome(x)
  return false if x < 0

  left = 1
  original_num = x
  right = 10

  while original_num >= 10
    left *= 10
    original_num /= 10
  end

  while x != 0
    left_num = x / left
    right_num = x % right
    # p "left #{left_num}"
    # p "right #{right_num}"
    return false if left_num != right_num
    x %= left
    x /= right
    p x
    # right *= 10
    left /= 100
  end

  true
end

# p is_palindrome(2147483648) # false
# p is_palindrome(1234321) # true
# p is_palindrome(121) # true
# p is_palindrome(122) # false
# p is_palindrome(1001) # true
p is_palindrome(1000021) # false
