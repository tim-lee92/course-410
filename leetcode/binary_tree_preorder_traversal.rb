def preorder_traversal(root)
  return [] if root.nil?

  stack = []
  stack.push(root)
  result = []

  while stack.length > 0
    current = stack.pop

    result.push(current.val)
    stack.push(curret.right) if current.right
    stack.push(current.left) if current.left
  end

  result
end
