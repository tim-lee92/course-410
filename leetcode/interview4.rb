        1 - should be 21
        ^
    l=9     r=25
     2       3
     ^3      ^7
   3   4    9  13

 0 0 0 0  0 0 0 0
Find the tilt?
- 2 No sub trees = 0
- 3 No sub trees
- At level 1, difference is 1 because 2-3 = |-1|
- Tilt of tree is the absolute difference between the sum of all
 child left and all child right nodes

formula (for getting the return value off the current node of one side) "sum"
 = node.right.val + node.left.val + node.val

formula (for getting return value of both sides) 'complete aggregated difference of two subtrees'
 = |left_sum - right_sum| + node.left.val + node.right.val

base condition:
if node.nil? then its a 0
if node.left.nil? && nide.right.nil? difference = 0
  node.val = node.val + difference

def find_tilt(root)
  $difference = 0
  helper(root)
  $difference
end

def helper(root)
  return 0 if root.nil?

  left = helper(root.left)
  right = helper(root.right)

  $difference += (left - right).abs
  sum = left + right + root.val
end
