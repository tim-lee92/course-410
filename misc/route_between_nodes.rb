def route_between_nodes?(graph, root, target)
  return true if root == target

  q = []

  # Set all nodes to unvisited state
  graph.nodes.each do |node|
    node.visited = false
  end

  q.push(root)

  while q.length != 0
    current = queue.shift

    if !current.nil?
      current.visited = true
      current.adjacent.each do |node|
        if !node.visited?
          if node == target
            return true
          else
            node.visited = true
            q.push(node)
          end
        end
      end
    end
  end

  false
end
