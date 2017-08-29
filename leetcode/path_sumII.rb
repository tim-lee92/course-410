class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# class BinaryTree
#   def initialize(arr)
#     arr.each
#   end
# end

def path_sum(root, sum)
  return [] if root.nil?
  result = []
  helper(root, sum, result)
  result
end

def helper(root, sum, subs, result)

end
