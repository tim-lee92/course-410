def is_anagram(s, t)
  return false if s.length != t.length

  table = {}

  index = 0
  length = s.length
  while index < length
    if table[s[index]]
      table[s[index]] += 1
    else
      table[s[index]] = 1
    end
    index += 1
  end

  index_t = 0
  length_t = t.length
  while index_t < t.length
    if !table[t[index_t]]
      return false
    else
      table[t[index_t]] -= 1
    end
    index_t += 1
  end

  return true if table.values.length == 0 || table.values.max == 0
  false
end

p is_anagram('a','a')
