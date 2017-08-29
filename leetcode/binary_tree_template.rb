class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

class BinaryTree
  def initialize(array)
    @root = TreeNode.new(array[0])
    @copy = @root

    # (1..array.length).each do |i|
    #   @copy.left = TreeNode.new(array[i]) if i % 2 == 0
    #   @copy.right = TreeNode.new(array[i]) if i % 2 == 1
    # end

    while array.length > 0
      current = array.shift
      if @copy.left.nil?
        @copy.left = TreeNode.new(current)
      elsif @copy.right.nil?
        @copy.right = TreeNode.new(current)
      else
      end
    end
  end
end

one = TreeNode.new(1)
two = TreeNode.new(2)
three = TreeNode.new(3)
four = TreeNode.new(4)
five = TreeNode.new(5)
six = TreeNode.new(6)

one.left = two
one.right = three
two.left = four
two.right = five
three.left = six
three.right = seven

[1,2,3,4,5,6,]
