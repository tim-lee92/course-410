class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

# Usage to get head node of list: LinkedList.new([1,2,3,4]).head
class LinkedList
  attr_accessor :head

  def initialize(array)
    @head = ListNode.new(array[0])
    temp = @head

    (1...array.length).each do |i|
      temp.next = ListNode.new(array[i])
      temp = temp.next
    end
  end
end

def reverse_between(head, m, n)
  return nil if head.nil?

  dummy = ListNode.new('dummy')
  dummy.next = head
  prev = dummy

  # Move prev into position of before you swap
  (m - 1).times do
    prev = prev.next
  end

  # Set reverse to nil and curr to the first node to be reversed.
  reverse = nil
  curr = prev.next

  # reverse this many times
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

p reverse_between(LinkedList.new([1,2,3,4,5]).head, 2, 4)
