class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def postorder_traversal(root)
  return [] if root.nil?

  stack = []
  result = []
  current = root

  while stack.length > 0 || current
    if current
      stack.push(current)
      result.unshift(current.val)
      current = current.right
    else
      node = stack.pop
      current = node.left
    end
  end

  result
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
