cloneGraph = function(graph) {
  if (graph === null) {
    return null;
  }

  var map = {};
  var queue = [];

  queue.push(graph);

  var graphCopy = new UndirectedGraphNode(graph.label);
  map[graph] = graphCopy;

  while (queue.length > 0) {
    var node = queue.shift();
    for (var neighbor in node.neighbors) {
      if (map[neighbor] !== undefined) {
        map[node].neighbors.push(map[neighbor]);
      } else {
        var neighborCopy = new UndirectedGraphNode(neighbor.label);
        map[node].neighbors.push(neighborCopy);
        map[neighbor] = neighborCopy;
        queue.push(neighbor);
      }
    }
  }

  return graphCopy;
}
