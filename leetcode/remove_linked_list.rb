def remove_elements(head, val)
  return nil if head.nil?

  while head && head.val == val
    head = head.next
  end

  current = head

  while current && current.next
    if current.next.val != val
      current = current.next
    else
      current.next = current.next.next
    end
  end

  head
end

1 -> 2 -> 6 -> 3 -> 4 -> 5 -> 6
^    C         N
