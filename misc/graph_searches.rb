# pseudocode for graph DFS
def dfs_search(root)
  return if root.nil?

  visit(root)
  root.visited = true

  root.adjacent.each do |node|
    if !node.visited
      dfs_search(node)
    end
  end
end

# pseudocode for graph BFS; note that it is NOT recusive. Uses a queue
def bfs_search(root)
  queue = []

  root.marked = true
  queue.push(root)

  while queue.length != 0
    current = queue.shift
    visit(current)

    current.adjacent.each do |node|
      if !node.marked
        node.marked = true
        queue.push(node)
      end
    end
  end
end
