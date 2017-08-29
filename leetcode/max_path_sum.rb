def max_path_sum(root)
  $sum = -Float::INFINITY
  helper(root)
  $sum
end

def helper(root)
  return 0 if root.nil?

  # recurse into left and right
  max_left = helper(root.left)
  max_right = helper(root.right)

  # processing: save current max into a global after comparison
  $sum = [max_left + max_right + root.val, $sum].max

  # ret value should be whatever the max of left subtree and right subtree is + root
  ret = root.val + [max_left, max_right].max

  # return the ret
  ret > 0 ? ret : 0
end
