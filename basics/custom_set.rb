class CustomSet
  include Enumerable

  attr_reader :members

  def initialize(enum=[])
    # @members = enum.uniq.class.new(enum)
    @members = enum.to_a.uniq.dup
  end

  def ==(other)
    return false unless other.class == self.class
    return false unless other.size == self.size
    other.each do |item|
      return false unless members.index(item)
    end
    true
  end

  def index(other)
    members.index do |item|
      item.eql?(other)
    end
  end

  def eql?(other)
    self == other
  end

  def size
    members.count
  end

  def each(&blk)
    members.each(&blk)
  end

  def delete(element)
    members.delete(element) if index(element)
    self
  end

  def difference(other)
    self.class.new(members - other.to_a)
  end

  def union(other)
    self.class.new(members | other.to_a)
  end

  def disjoint?(other)
    union(other).size == self.size + other.size
  end

  def member?(n)
    index(n)
  end

  def subset?(other)
    self.size >= other.size && intersection(other) == other
  end

  def intersection(other)
    self.class.new(members & other.to_a)
  end

  def put(item)
    members << item unless member?(item)
    require 'pry'; binding.pry
    self
  end

  def empty!
    self.members.clear
    self
  end

  def to_a
    members.dup
  end

  def dup
    self.class.new(members)
  end

  alias_method :-, :difference
  alias_method :|, :union
  alias_method :&, :intersection
end
