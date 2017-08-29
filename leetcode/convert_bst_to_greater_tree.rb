class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def convert_bst(root)
  $sum = 0
  helper(root)
  root
end

def helper(root)
  return if root.nil?

  helper(root.right)
  $sum += root.val
  p "root before: #{root.val}"
  root.val = $sum
  p "root after: #{root.val}"
  helper(root.left)
end

node1 = TreeNode.new(5)
node2 = TreeNode.new(2)
node3 = TreeNode.new(13)
node4 = TreeNode.new(1)
node5 = TreeNode.new(4)
node6 = TreeNode.new(9)

node1.left = node2
node1.right = node3
node2.left = node4
node2.right = node5
node3.left = node6

p convert_bst(node1)
