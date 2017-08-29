def merge_trees(t1, t2)
  return nil if t1.nil? && t2.nil?
  # return t1 if t2.nil?
  # return t2 if t1.nil?

  if t1
    t1_val = t1.val
    left1 = t1.left
    right1 = t1.right
  else
    t1_val = 0
    left1 = nil
    right1 = nil
  end

  if t2
    t2_val = t2.val
    left2 = t2.left
    right2 = t2.right
  else
    t2_val = 0
    left2 = nil
    right2 = nil
  end

  node = TreeNode.new(t1_val + t2_val)
  node.left = merge_trees(left1, left2)
  node.right = merge_trees(right1, right2)
  node
end
