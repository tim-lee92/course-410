def reverse_list(head)
  return head if head.nil?

  prev = nil

  while head
    curr = head
    curr.next = prev
    head = head.next
    prev = curr
  end

  prev
end

def reverse_list(head)
  return nil if head == nil

  prev_node = nil

  while heads
    curr_node = head
    head = head.next
    curr_node.next = prev_node
    prev_node = curr_node
  end

  prev_node
end
