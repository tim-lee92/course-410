def has_path_sum(root, sum)
  return false if root.nil?

  if root.left.nil? && root.right.nil? && sum == root.val
    return true
  end

  left = has_path_sum(root.left, sum - root.val)
  right = has_path_sum(root.right, sum - root.val)

  left || right
end
