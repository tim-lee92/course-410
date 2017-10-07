def mars_exploration(s)
  mutations = 0
  index = 0

  while index < s.length
    if index % 3 == 0 || index % 3 == 2
      mutations += 1 if s[index] != 'S'
    else
      mutations += 1 if s[index] != 'O'
    end

    index += 1
  end

  mutations
end
