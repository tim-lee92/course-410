def has_path_sum(root, sum)
  return false if root.nil?

  return true if root.left.nil? && root.right.nil? && sum - root.val == 0

  has_path_sum(root.left, sum - root.val) || has_path_sum(root.right, sum - root.val)
end
