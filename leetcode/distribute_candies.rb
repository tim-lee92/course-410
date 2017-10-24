def distribute_candies(candies)
  different_types = 0
  seen = {}
  current = nil

  candies.each do |candy|
    if !seen[candy]
      seen[candy] = true
      different_types += 1
    end
  end

  return [different_types, candies.length / 2].min
end
