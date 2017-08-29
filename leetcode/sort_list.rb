def sort_list(head)
  return nil if head.nil?
  return head if head.next.nil?

  prev = nil
  slow = head
  fast = head

  while fast && fast.next
    # prev = slow
    # slow = slow.next
    # fast = fast.next.next
    prev, slow, fast = slow, slow.next, fast.next.next
    prev.next = nil
  end

  merge(sort_list(head), sort_list(slow))
end

def merge(h1, h2)
  dummy = tail = ListNode.new('dummy')

  while h1 && h2
    if h1.val < h2.val
      tail.next, tail, h1 = h1, h1, h1.next
    else
      tail.next, tail, h2 = h2, h2, h2.next
    end
  end

  tail.next = h1 || h2
  dummy.next
end
