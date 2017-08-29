def add_two_numbers(l1, l2)
  return l2 if l1.nil?
  return l1 if l2.nil?

  dummy = ListNode.new('dummy')
  result = dummy

  while l1 && l2
    sum = l1.val + l2.val
    if sum < 10
      result.next = ListNode.new(sum)
    else
      result.next = ListNode.new(sum % 10)
      if l1.next
        l1.next.val += 1
      elsif l2.next
        l2.next.val += 1
      else
        l1.next = ListNode.new(1)
      end
    end
    l1 = l1.next
    l2 = l2.next
    result = result.next
  end

  left_over = l1 || l2
  checker = left_over

  while checker && checker.val >= 10
    checker.val = 0
    if checker.next
      checker.next.val += 1
    else
      checker.next = ListNode.new(1)
    end
    checker = checker.next
  end

  result.next = left_over

  dummy.next
end
