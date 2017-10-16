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
