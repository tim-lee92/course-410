class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def reverse_list(head)
  return nil if head.nil?

  prev = nil

  while head.next
    next_node = head.next
    head.next = prev
    prev = head
    head = next_node
  end

  head.next = prev
  head
end

one = ListNode.new(1)
two = ListNode.new(2)
three = ListNode.new(3)
four = ListNode.new(4)

one.next = two
two.next = three
three.next = four

p reverse_list(one)
