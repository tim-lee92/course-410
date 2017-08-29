class TrieNode
  attr_accessor :word, :children

  def initialize
    @word = false
    @children = {}
  end
end

class Trie
  def initialize
    @root = TrieNode.new
  end


=begin
  Inserts a word into the trie.
  :type word: String
  :rtype: Void
=end
  def insert(word)
    node = @root
    word.chars.each do |char|
      if !node.children[char]
        node.children[char] = TrieNode.new
      end

      node = node.children[char]
    end
    node.word = true
  end


=begin
  Returns if the word is in the trie.
  :type word: String
  :rtype: Boolean
=end
  def search(word)
    node = @root
    word.chars.each do |char|
      if !node.children[char]
        return false
      end

      require 'pry'; binding.pry
      node = node.children[char]
    end

    node.word
  end


=begin
  Returns if there is any word in the trie that starts with the given prefix.
  :type prefix: String
  :rtype: Boolean
=end
  def starts_with(prefix)
    node = @root
    prefix.chars.each do |char|
      if !node.children[char]
        return false
      end
      node = node.children[char]
    end

    true
  end
end

obj = Trie.new
obj.insert("a word")
param_2 = obj.search("a wo")
# param_3 = obj.starts_with(prefix)
