class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def inorder_traversal(root)
  return [] if root.nil?

  stack = []
  result = []
  current = root
  done = false

  # while
  #   current = stack[-1]
  #
  #   stack.push(current.left) if current.left
  #   stack.push(current.right) if current.right
  # end

  while !done
    if current
      stack.push(current)
      current = current.left
    else
      current = stack.pop

      if current
        result.push(current.val)
        p result
        current = current.right
      else
        done = true
      end
    end
  end

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

inorder_traversal(one)
