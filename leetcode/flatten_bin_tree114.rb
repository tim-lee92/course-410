def flatten(root)
  return nil if root.nil?

  left = root.left
  right = root.right

  flatten(left)
  flatten(right)

  root.left = nil
  root.right = left

  while root.right
    root = root.right
  end
  root.right = right
end
