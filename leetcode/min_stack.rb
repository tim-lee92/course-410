class NodeWithMin
  attr_accessor :val, :min
  def initialize(val)
    @val = val
    @min = nil
  end
end

class MinStack
  def initialize
    @stack = []
    @min = Float::INFINITY
  end

  def push(value)
    new_node = NodeWithMin.new(value)
    @min = [@min, value].min
    new_node.min = @min
    @stack.push(new_node)
  end

  def top
    @stack[-1]
  end

  def getMin
    top.min
  end

  def pop
    node = @stack.pop
    @min = @stack[-1].min
    node.val
  end
end

p stack = MinStack.new
p stack.push(-2)
p stack.push(0)
p stack.push(-3)
p stack.getMin
p stack.pop
p stack.top
p stack.getMin
