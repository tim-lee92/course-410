def merge_two_lists(l1, l2)
  return l1 if l2.nil?
  return l2 if l1.nil?

  current_l1 = l1
  current_l2 = l2
  dummy = ListNode.new('dummy')
  new_list = dummy

  while current_l1 && current_l2 do
    if current_l1.val < current_l2.val
      new_list.next = current_l1
      current_l1 = current_l1.next
    else
      new_list.next = current_l2
      current_l2 = current_l2.next
    end
    new_list = new_list.next
  end

  if current_l1
    new_list.next = current_l1
  end

  if current_l2
    new_list.next = current_l2
  end

  dummy.next
end
