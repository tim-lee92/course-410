#
#
# def is_palindrome(head)
#   return true if head.nil?
#
#   stack = []
#
#   while head
#     if stack[-1] && head.next && stack[-1].val == head.next.val
#       stack.pop
#     else
#       stack.push(head)
#     end
#
#     head = head.next
#   end
#
#   stack.length == 0 || stack.length == 1
# end

def is_palindrome(head)
  return true if head.nil?

  slow = head
  fast = head

  while fast && fast.next
    slow = slow.next
    fast = fast.next.next
  end

  slow = slow.next if fast
  slow.next = nil
  rev = reverse_list(slow)

  while rev
    if head.val != rev.val
      return false
    end

    head = head.next
    rev = rev.next
  end

  true
end

def reverse_list(head)
  prev = nil

  while head
    next_node = head.next
    head.next = prev
    prev = head
    curr = next_node
  end

  prev
end

def is_palindrome(head)
  rev = nil
  slow, fast = head, head

  while fast && fast.next
    fast = fast.next.next
    rev, rev.next, slow = slow, rev, slow.next
  end

  if fast
    slow = slow.next
  end

  while rev && rev.val == slow.val
    slow = slow.next
    rev = rev.next
  end

  !rev
end
