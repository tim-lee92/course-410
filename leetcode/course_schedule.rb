def can_finish(num_courses, prereqs)
  graph = []
  degree = Array.new()
  queue = []
  count = 0

  num_courses.times do |i|
    graph[i] = []
    degree[i] = 0
  end

  prereqs.length.times do |i|
    degree[prereqs[i][1]] += 1
    graph[prereqs[i][0]].push(prereqs[i][1])
  end

  degree.length.times do |i|
    if degree[i] == 0
      queue.push(i)
      count += 1
    end
  end

  while queue.length > 0
    course = queue.shift

    graph[course].length.times do |i|
      pointer = graph[course][i]
      degree[pointer] -= 1
      if degree[pointer] == 0
        queue.push(pointer)
        count += 1
      end
    end
  end

  if count == numCourses
    true
  else
    false
  end
end
