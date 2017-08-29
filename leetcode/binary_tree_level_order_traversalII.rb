# recursive
def level_order_bottom(root)
  result = []
  helper(root, result, 0)
  result
end

def helper(root, result, level)
  return if root.nil?

  if result[level]
    result[level].push(root.val)
  else
    result[level] = [root.val]
  end

  helper(root.left, result, level + 1)
  helper(root.right, result, level + 1)
end

#iterative
