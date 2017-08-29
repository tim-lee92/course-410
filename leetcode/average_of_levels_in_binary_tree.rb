class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

def average_of_levels(root)
  solution = []
  helper(root, solution, 0)
  solution.map do |subarr|
    subarr.reduce(&:+).to_f / subarr.length
  end
end

def helper(root, solution, level)
  return if root.nil?

  if solution[level]
    solution[level].push(root.val)
  else
    solution[level] = [root.val]
  end

  helper(root.left, solution, level + 1)
  helper(root.right, solution, level + 1)
end

one = TreeNode.new(3)
two = TreeNode.new(9)
three = TreeNode.new(20)
four = TreeNode.new(15)
five = TreeNode.new(7)

one.left = two
one.right = three
three.left = four
three.right = five

p average_of_levels(one)
