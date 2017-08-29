require 'rest_client'
require 'logger'

class SmartBuffer
  def initialize
    @buffer = []
    @logger = Logger.new('logs/queue.log')
  end

  def enqueue(message)
    @buffer.push(message)
    @logger.info("Queued a message - current buffer size: #{@buffer.size}")
  end

  def dequeue
    @buffer.shift
    @logger.info("processed a message - current buffer size: #{@buffer.size}")
  end

  def size
    @buffer.count
  end

  def empty?
    @buffer.count == 0
  end
end

buffer = SmartBuffer.new

poller = Thread.new do
  loop do
    message = RestClient.get 'http://message-provider.herokuapp.com/get_message'
    buffer.enqueue message
    puts "pulled a message - current buffer size: #{buffer.size}"
    sleep 0.5
  end
end

processor = Thread.new do
  loop do
    if !buffer.empty?
      message = buffer.dequeue
      puts "processed a message - current buffer size: #{buffer.size}"
      sleep [0.1, 1.1].sample
    end
  end
end

[poller, processor].each(&:join)
