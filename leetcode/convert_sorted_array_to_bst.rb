def sorted_array_to_bst(nums)
  helper(nums, 0, nums.length - 1)
end

def helper(nums, first, last)
  return nil if first > last

  mid = (last + first) / 2
  root = TreeNode.new(nums[mid])

  root.left = helper(nums, first, mid - 1)
  root.right = helper(nums, mid + 1, last)

  root
end
