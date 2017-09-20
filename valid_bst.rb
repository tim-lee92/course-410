def is_valid_bst(root, min=-Float::INFINITY, max=Float::INFINITY)
  return true if root.nil?

  if root.val >= max || root.val <= min
    return false
  end

  is_valid_bst(root.left, min, root.val) && is_valid_bst(root.right, root.val, max)
end
