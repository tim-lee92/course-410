# class TreeNode
#   attr_accessor :val, :left, :right
#   def initialize(val)
#     @val = val
#     @left, @right = nil, nil
#   end
# end

def right_side_view(root)
  result = []
  helper(root, result, 0)
  result
end

def helper(root, result, level)
  return if root.nil?

  if level == result.length
    result.push(root.val)
  end

  helper(root.right, result, level + 1)
  helper(root.left, result, level + 1)

end

# one = TreeNode.new
