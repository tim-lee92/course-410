# A simple palindrone checker

# class Node
#   attr_accessor :prev :next
#
#   def initialize(data)
#     @data
#   end
#
#   def head?
#     @prev == nil
#   end
#
#   def tail?
#     @next == nil
#   end
# end
#
# class LinkedList
# end

class Palindrome
  def self.check(string)
    letters = string.downcase.split('')
    status = true

    while status
      first = letters[0]
      last = letters[-1]
      if first != last
        status = false
      else
        letters.shift
        letters.pop
      end
      break if letters.empty?
    end

    status
  end
end
