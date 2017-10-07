def max_duffel_bag_value(cake_arrays, weight_capacity)
  max_values_at_capacities = {}

  (0..weight_capacity).each do |current_capacity|
    current_max_value = 0

    cake_arrays.each_with_index do |(cake_weight, cake_value), index|
      if cake_weight <= current_capacity
        max_value_using_cake = cake_value + max_values_at_capacities[current_capacity - cake_weight]

        current_max_value = [max_value_using_cake, current_max_value].max
      end
    end

    max_values_at_capacities[current_capacity] = current_max_value
  end

  return max_values_at_capacities[weight_capacity]
end
