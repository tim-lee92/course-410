def max_depth(root)
  return 0 if root.nil?

  [max_depth(root.left), max_depth(root.right)].max + 1
end
