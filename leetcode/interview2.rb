# Two linked list and merge
#
# 1 -> 3 -> 5 -> 7 -> nil
#                ^
# 2 -> 4 -> 6 -> nil
#                ^
#
# 1, 2, 3, nil
# 4, 5, 6
# temp:
# dummy -> 1 -> 2 -> 3 -> 4 -> 5 -> 6
# ^                                 ^

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

def merge_list(first, second)
  return first if second.nil?
  return second if first.nil?

  dummy = ListNode.new('dummy')
  temp = dummy

  while first && second
    if first.val < second.val
      temp.next = first
      first = first.next
    else
      temp.next = second
      second = second.next
    end

    temp = temp.next
  end

  left_overs = first || second
  temp.next = left_overs

  dummy.next
end

first = LinkedList.new([1,3,5]).head
second = LinkedList.new([2,4,6,7,8]).head

p merge_list(first, second)

def merge_list(first, second)
  return first if second.nil?
  return second if first.nil?

  if first.val < second.val
    first.next = merge_list(first.next, second)
    first
  else
    second.next = merge_list(first, second.next)
    second
  end
end
