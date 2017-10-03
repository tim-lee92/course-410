def caesar_cipher(n, s, key)
  result = ''
  i = 0

  while i < s.length
    asc = s[i].ord
    if s[i] == s[i].upcase && asc >= 65 && asc <= 90
      if asc + (key % 26) > 90
        result += (asc - 26 + (key % 26)).chr
      else
        result += (asc + (key % 26)).chr
      end
    elsif s[i] == s[i].downcase && asc >= 97 && asc <= 122
      if asc + (key % 26) > 122
        result += (asc - 26 + (key % 26)).chr
      else
        result += (asc + (key % 26)).chr
      end
    else
      result += s[i]
    end

    i += 1
  end

  result
end

p caesar_cipher(11, 'middle-Outz', 2)
