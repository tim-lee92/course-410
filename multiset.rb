class MultiSet
  require 'set'

  attr_reader :members

  def initialize(array=[])
    @members = array
  end

  def ==(other)
    return false if self.class != other.class
    return false if @members.size != other.size
    other.each do |element|
      return false if !index(element)
    end
    true
  end

  def remove(element)
    members.delete(element) if index(element)
    self
  end

  def clear
    members.clear
    self
  end

  def multiplicity(element)
    members.select { |member| member.eql?(element) }.count
  end

  def cardinality
    members.size
  end

  def include?(element)
    multiplicity(element) != 0
  end

  def add(element)
    members.push(element)
    self
  end

  def each(&block)
    members.each(&block)
  end

  def index(element)
    members.index { |member| member.eql?(element) }
  end

  def size
    members.count
  end

  def union(other)
    self.class.new(members | other.to_a)
  end

  def intersection(other)
    array = []
    members_clone = members.dup
    other.each do |element|
      index = members_clone.index(element)
      if index
        array.push(element)
        members_clone.delete_at(index)
      end
    end
    self.class.new(array)
  end

  def to_a
    members.dup
  end

  def to_h
    hash = Hash.new
    members.each do |member|
      hash[member] = multiplicity(member) if !hash[member]
    end
    hash
  end

  def to_set
    Set.new(members)
  end

  alias_method :|, :union
  alias_method :&, :intersection
end
