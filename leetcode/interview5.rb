serialize and deserialize bst

covert nodes into strings
          5
      3       8
    1  nil   6   9

output '5314869' # preorder

stack:
  [5, 3,]

def serialize(root)
  result = []
  helper(root, result, 0)
  result.join
end

def helper(root, result)
  return if root.nil?

  # do something
  result.push(root.val)

  helper(root.left, result)
  helper(root.right, result)
end

string.split('')
array = [5,3,1,4,8,6,9].sort
def deserialize(string)

end

def deserialize_helper(sorted_array, left, right)

end

# def deserialize_helper(string, )
#   return nil if string.length == 0
#   array = string.split('')
#
#   root = TreeNode.new(array.shift!)
#
#   if root.val > array.shift
#     root.left = deserialize_helper(array.join, start_idx, end_idx)
#   else
#     root.right = deserialize_helper(array.join, start_idx, end_idx)
#   end
#
#   root
# end

        5
      3
    1
      4
deserialize(serialize(root)) => original root

public TreeNode deserialize(String data) {
    if(data.equals("")) return null;
    String[] splits = data.split(",");
    return createBST(splits, 0, splits.length-1);
}

[5,3,1,4,8,6,9]
 ^
start = 0
endLeft = 1
end = 6

recurse left with (splits, 1, 1)
endLeft = 2
=> endLeft = 3
recurse left with (splits, 2, 3)
endLeft = 3
recurse left with (splits, 3, 3)
endLeft = 4

# recurse right with (splits, 2, 6)

      5
    3
  1
private TreeNode createBST(String[] splits, int start, int end){
    if(end == splits.length || start > end) return null;
    TreeNode root = new TreeNode(Integer.valueOf(splits[start]));
    int endLeft = start + 1;
    while (endLeft < end &&
                Integer.valueOf(splits[endLeft]) <= Integer.valueOf(splits[start])) endLeft++;
    root.left = createBST(splits, start+1, endLeft);
    root.right = createBST(splits, endLeft+1, end);
    return root;
}
