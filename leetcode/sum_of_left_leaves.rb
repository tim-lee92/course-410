def sum_of_left_leaves(root)
  return 0 if root.nil?

  if root.left && !root.left.left && !root.left.right
    return root.left.val + sum_of_left_leaves(root.right)
  end

  sum_of_left_leaves(root.left) + sum_of_left_leaves(root.right)
end
