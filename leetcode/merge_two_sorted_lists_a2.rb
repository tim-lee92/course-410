def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  dummy = ListNode.new('dummy')
  new_list = dummy

  while l1 && l2
    if l1.val < l2.val
      new_list.next = l1
      l1 = l1.next
    else
      new_list.next = l2
      l2 = l2.next
    end
    new_list = new_list.next
  end

  left_over = l1 || l2
  new_list.next = left_over

  dummy.next
end
