def maximumGroups(predators)
  group_count = 0
  seen = []

  predators.each do |predator|
    if predators[predator] == -1
      group_count += 1
      seen.push(predator)
    end
  end

  group_count + seen.count
end
