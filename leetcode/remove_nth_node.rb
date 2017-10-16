def remove_nth_from_end(head, n)
  return head if head.nil?

  dummy = ListNode.new('d')
  dummy.next = head
  copy = dummy
  length = 0

  while copy.next
    length += 1
    copy = copy.next
  end

  copy = dummy

  (length - n).times do
    copy = copy.next
  end

  copy.next = copy.next.next

  dummy.next
end

# One pass solution
def remove_nth_from_end(head, n)
  return head if head.nil?

  dummy = ListNode.new('d')
  dummy.next = head
  fast = dummy
  slow = dummy

  n.times do
    fast = fast.next
  end

  while fast.next
    fast = fast.next
    slow = slow.next
  end

  slow.next = slow.next.next

  dummy.next
end
