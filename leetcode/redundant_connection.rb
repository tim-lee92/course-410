def find_redundant_connection(edges)
  nodes_seen = {}
  duplicate = []

  edges.each do |edge|
    if nodes_seen[edge[0].to_s] && nodes_seen[edge[1].to_s]
      duplicate = edge
    else
      nodes_seen[edge[0].to_s] = true
      nodes_seen[edge[1].to_s] = true
    end
  end

  duplicate
end

def find_redundant_connection(edges)

end
