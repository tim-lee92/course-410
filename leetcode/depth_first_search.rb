class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def iterative_preorder(root)
  return if root.nil?

  node_stack = []
  node_stack.push(root)

  while node_stack.length > 0
    node = node_stack.pop
    p node.val

    node_stack.push(node.right) if node.right
    node_stack.push(node.left) if node.left
  end
end

def iterative_inorder(root)
  return if root.nil?

  current = root
  node_stack = []
  done = false

  while !done
    p node_stack.map(&:val)
    if current
      node_stack.push(current)
      current = current.left
    else
      if node_stack.length > 0
        current = node_stack.pop
        p current.val
        current = current.right
      else
        done = true
      end
    end
  end
end

def iterative_postorder(root)

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

# iterative_preorder(one)
iterative_inorder(one)
