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
