class Queue
  attr_reader :queue

  def initialize(array = [])
    @queue = array
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

cave_soldiers = Queue.new((1..40).to_a)

while cave_soldiers.size > 1
  6.times do
    cave_soldiers.enqueue(cave_soldiers.dequeue)
  end

  cave_soldiers.dequeue
end

puts cave_soldiers.queue
