require 'minitest/autorun'
require_relative 'queue'

class QueueTest < MiniTest::Unit::TestCase

  def test_enqueue_dequeue
    deque = Queue.new
    deque.enqueue(10)
    deque.enqueue(20)
    assert_equal 10, deque.dequeue()
    assert_equal 20, deque.dequeue()
    assert_nil deque.dequeue()
  end

end
