# Implement the queue abstract data type

class Queue
  def initialize
    @queue = []
  end

  def enqueue(data)
    @queue.push(data)
  end

  def dequeue
    @queue.shift
  end

  def empty?
    @queue.count == 0
  end

  def size
    @queue.count
  end
end
