def is_valid_bst(root)
  helper(root, nil, nil)
end

def helper(root, min, max)
  return true if root.nil?

  if min && min >= root.val
    return false
  end

  if max && max <= root.val
    return false
  end

  helper(root.left, min, root.val) && helper(root.right, root.val, max)
end
