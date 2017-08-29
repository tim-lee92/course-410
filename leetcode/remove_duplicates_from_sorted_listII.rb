class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

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

def delete_duplicates(head)
  return nil if head.nil?
  dummy = ListNode.new('dummy')
  dummy.next = head

  left = dummy
  right = head

  while right && right.next
    if right.val == right.next.val
      dup = right.val
      right = right.next
      while right && dup == right.val
        right = right.next
      end
      left.next = right
    else
      left = left.next
      right = right.next if right
    end
  end

  dummy.next
end

p delete_duplicates(LinkedList.new([1,2,3,3,4,4,5,5]).head)
