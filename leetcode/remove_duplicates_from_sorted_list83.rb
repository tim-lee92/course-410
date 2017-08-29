def delete_duplicates(head)
  return nil if head.nil?

  current = head

  while current.next
    if current.val == current.next.val
      current.next = current.next.next
    else
      current = current.next
    end
  end

  head
end
