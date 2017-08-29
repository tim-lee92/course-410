def is_valid_bst(root)
  helper(root, nil, nil)
end

def helper(root, min, max)
  return true if root.nil?
  return false if min && root.val <= min
  return false if max && root.val >= max

  left = helper(root.left, min, root.val)
  right = helper(root.right, root.val, max)

  left && right
end
