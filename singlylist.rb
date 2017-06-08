# Implement a singly linked list

class Node
  # We can access a node instance's next value, but not the previous, hence singly linked
  attr_accessor :value, :next

  def initialize(value)
    @value = value
  end

  def tail?
    @next.nil?
  end
end

class SinglyList
  attr_reader :current, :previous

  def add(value)
    new_node = Node.new(value)
    new_node.next = @head
    @head = new_node
    @current = new_node
    @previous = nil
  end

  def insert_after_current(value)
    raise "Please find an item first to set as current before insert" unless @current
    new_node = Node.new(value)
    @next = @current.next # store the current node's next value before insert
    current = @current # store the current node
    @current.next = new_node # set the current node to the new node
    @previous = current

    new_node.next = @next # set the new node's next value with the stored next value
  end

  def remove_current
    raise "Please find an item first to set as current before remove" unless @current
    removed_value = @current

    @previous.next = @current.next
    @current = nil
    removed_value
  end

  def find(value)
    @current = @head
    @previous = nil

    loop do
      if @current.value == value
        return @current.value
      elsif @current.tail?
        break
      else
        @previous = @current
        @current = @current.next
      end
    end
  end

  def size
    @current = @head
    return 0 if @current.nil?
    count = 1

    while !@current.tail?
      count += 1
      @current = @current.next
    end

    count
  end

  def to_s
    node = @head
    all = []

    loop do
      all << node.value
      node = node.next
      break if node.tail?
    end

    all.join(' -> ')
  end
end

list = SinglyList.new
list.add(123)
puts list.size  #=> 1
list.add('abc')
list.add(789)
puts list
puts list.size  #=> 3
list.find('abc')
list.insert_after_current('xyz')
list.find('456')
list.insert_after_current('xyz') #=> "Please find an item first to set as current before insert (RuntimeError)
puts list  #=> "789 -> abc -> xyz -> 123"
list.find('abc')
# list.remove_current
# puts list  #=> "789 -> xyz -> 123"
# list.find(789)
# list.remove_current
# puts list  #=> "xyz -> 123"
# list.find(456)
# list.remove_current #=> "Please find an item first to set as current before remove (RuntimeError)"
