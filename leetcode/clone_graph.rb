def dfs_clone_graph(graph)
  return nil if graph.nil?

  hash = {}

  dfs(graph, hash)
end

def dfs(graph, hash)
  if hash[graph]
    hash.get(graph)
  end

  graph_copy = UndirectedGraphNode.new(graph.label)

  hash[graph] = graph_copy

  graph.neighbor.each do |node|
    graph_copy.neighbors.push(dfs(neighbor, hash))
  end
end

# BFS
def bfs_clone_graph(graph)
  return nil if graph.nil?

  map = {}

  queue = []

  queue.push(graph)

  graph_copy = UndirectedGraphNode.new(graph.label)
  map[graph] = graph_copy

  while queue.length > 0
    node = queue.shift
    node.neighbors.each do |neighbor|
      if map[neighbor]
        map[node].neighbors.push(map[neighbor])
      else
        neighbor_copy = UndirectedGraphNode.new(neighbor.label)
        map[node].neighbors.push(neighbor_copy)
        map[neighbor] = neighbor_copy
        queue.push(neighbor)
      end
    end
  end

  graph_copy
end
