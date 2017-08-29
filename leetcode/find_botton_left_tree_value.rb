def find_bottom_left_value(root)
  level_order_traversal(root)
end

# level order traversal from the right side
def level_order_traversal(root)
  return nil if root.nil?

  queue = []
  queue.push(root)
  current = nil

  while queue.length > 0
    current = queue.shift

    queue.push(current.right) if current.right
    queue.push(current.left) if current.left
  end

  current
end
