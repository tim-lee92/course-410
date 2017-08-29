def permute(nums)
  result = []
  # Empty array is for storing current result
  helper(nums, [], result)
  result
end

def helper(nums, solution, result, call_stack = 0)
  # Pruning condition
  if solution.length == nums.length
    result.push(solution.clone)
  else
    # Iterate through each nums
    nums.each do |num|
      # Skip if current solution already includes the number
      # next if solution.include?(num)
      solution.push(num)
      p "stack #{call_stack}"
      p "current num: #{num}"
      helper(nums, solution, result, call_stack + 1)
      p solution
      # remove last element after recursion returns?
      solution.pop
    end
  end
end

p permute([1,2,3])
