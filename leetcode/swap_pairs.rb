def swap_pairs(head)
  return nil if head.nil?
  return head if head.next.nil?

  dummy = ListNode.new('dummy')
  dummy.next = head
  list = dummy

  first = head
  second = head.next

  saved = list.next.next
  list.next = second
  list = list.next
  list.next = first


end
