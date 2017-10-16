def can_construct(ransom_note, magazine)
  table = {}
  i = 0
  j = 0

  while i < magazine.length
    if table[magazine[i]]
      table[magazine[i]] += 1
    else
      table[magazine[i]] = 1
    end
    i += 1
  end

  while j < ransom_note.length
    if table[ransom_note[j]] == 0 || !table[ransom_note[j]]
      false
    else
      table[ransom_note[j]] -= 1
    end
    j += 1
  end

  true
end
