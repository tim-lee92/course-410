def find_mode(root)
  return nil if root.nil?
  stack = []
  hash = {}

  stack.push(root)

  while stack.length > 0
    current = stack.pop
    if current.left
      stack.push(current.left)
    end

    if current.right
      stack.push(current.right)
    end

    if hash[current.val]
      hash[current.val] += 1
    else
      hash[current.val] = 1
    end
  end

  mode = [hash.values].max
  modes = []

  hash.each do |k, v|
    if v == mode
      modes.push(k)
    end
  end

  modes
end
