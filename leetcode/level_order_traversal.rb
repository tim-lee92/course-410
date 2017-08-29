class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# Using a queue
def level_order_traversal(root)
  return nil if root.nil?

  queue = []

  queue.push(root)

  while queue.length > 0
    current = queue.shift
    next if !current

    p current.val

    queue.push(current.left)
    queue.push(current.right)
  end
end

def level_order_traversal_recursion(root)
end

one = TreeNode.new(1)
two = TreeNode.new(2)
three = TreeNode.new(3)
four = TreeNode.new(4)
five = TreeNode.new(5)
six = TreeNode.new(6)

one.left = two
one.right = three
two.left = four
two.right = five
three.left = six

level_order_traversal_recursion(one)
