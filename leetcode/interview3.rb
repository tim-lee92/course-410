1 -> 2 -> 3 -> 4
          s
                 11 -> 7 -> 9 -> 13 -> nil
                 
          6 -> 10
          f
require 'set'

def intersection(first, second)
  return nil if first.nil? || second.nil?

  node_set = Set.new

  while first
    node_set.push(first)
    first = first.next
  end

  while second
    if node_set.include?(second)
      return second
    end

    second = second.next
  end

  nil
end

def intersection(first, second)

end
