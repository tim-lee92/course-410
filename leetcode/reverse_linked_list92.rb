def reverse_between(head, m, n)
  return nil if head.nil?
  return head if m == n

  dummy = ListNode.new('dummy')
  dummy.next = head
  prev = dummy

  (m - 1).times do
    prev = prev.next
  end

  reverse = nil
  curr = prev.next
  (n - m + 1).times do
    next_node = curr.next
    curr.next = reverse
    reverse = curr
    curr = next_node
  end

  prev.next.next = curr
  prev.next = reverse

  dummy.next
end

# How to reverse a linked list
# Set a previous to nil
# Set current to head
# make the next node new head
# make the current node's next the previous
# make the previous node the current node
