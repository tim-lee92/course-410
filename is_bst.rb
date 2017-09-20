def is_bst?(root)
  return true if root.nil?

  stack = []
  stack.push([root, -Float::INFINITY, Float::INFINITY])

  while stack.length != 0
    node, min, max = stack.pop

    if node.val < min || node.val > max
      return false
    end

    if node.left
      stack.push([node.left, min, node.val])
    end

    if node.right
      stack.push([node.right, node.val, max])
    end
  end

  return true
end
