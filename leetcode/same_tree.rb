def is_same_tree(first, second)
  return true if first.nil? && second.nil?
  return false if first.nil? && second
  return false if first && second.nil?

  if first.val != second.val
    return false
  else
    left_equal = is_same_tree(first.left, second.left)
    right_equal = is_same_tree(first.right, second.right)

    left_equal && right_equal
  end
end
