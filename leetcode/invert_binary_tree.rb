def invert_tree(root)
  return nil if root.nil?

  right = invert_tree(root.right)
  left = invert_tree(root.left)

  root.left = right
  root.right = left

  root
end
