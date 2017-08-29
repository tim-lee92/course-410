# Given a string, sort it in descending order based on frequency of character.
#
# 'tree' => 'eetr' || 'eert'
# caps matter
#
# ['t', 'r', 'e', 'e']
#
# index = 0
# hash = {}
# while index < string.length
#   if hash[string[index]]
#     hash[string[index]] += 1
#   else
#     hash[string[index]] = 1
#   end
# end
#
# { t: 1, r: 1, e: 2 }
#
# keys  [t, r, e]
# value [1, 1, 2]
#
# ['', '', '', ''] size = 4

def frequency_sort(string)
  index = 0
  hash = {}

  while index < string.length
    if hash[string[index]]
      hash[string[index]] += 1
    else
      hash[string[index]] = 1
    end
    index += 1
  end

  bucket = []

  string.length.times do
    bucket << ''
  end
  # require 'pry'; binding.pry

  hash.each do |k, v|
    v.times do |x|
      bucket[string.length - v] << k
      # require 'pry';binding.pry
    end
  end

  bucket.join
end

p frequency_sort('f')
