def is_balanced(root)
  return true if root.nil?
  left_height = height(root.left)
  right_height = height(root.right)

  (left_height - right_height).abs <= 1 && is_balanced(root.right) && is_balanced(root.left)
end

def height(root)
  return 0 if root.nil?

  left_height = height(root.left) + 1
  right_height = height(root.right) + 1

  [left_height, right_height].max
end
