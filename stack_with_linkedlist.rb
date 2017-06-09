# Stack implemented with an array
# class Stack
#   def initialize
#     @array = []
#   end
#
#   def push(val)
#     @array << val
#   end
#
#   def pop
#     @array.delete_at(@array.count - 1)
#   end
#
#   def empty?
#     @array.size == 0
#   end
#
#   def size
#     @array.count
#   end
# end

# Stack implemented with a linked list
class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
  end

  def tail?
    @next == nil
  end
end

class Stack
  def initialize
    @head = nil
  end

  def push(data)
    new_node = Node.new(data)
    new_node.next = @head
    @head = new_node
    @previous = nil
    self
  end

  def pop
    return nil if empty?
    deleted_data = @head
    new_head = @head.next
    @head.next = nil
    @head = new_head

    deleted_data.data
  end

  def size
    return 0 if !@head
    current = @head
    counter = 0

    loop do
      counter += 1
      break if current.tail?
      current = current.next
    end

    counter
  end

  def empty?
    return true if !@head
    current = @head
    all = []

    loop do
      all << current
      break if current.tail?
      current = current.next
    end

    all.count == 0
  end
end
