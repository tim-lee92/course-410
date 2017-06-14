class HashtableFullError < StandardError; end

class HashFunction
  attr_reader :rem

  def initialize(string, table_size)
    @rem = string.to_s.chars.map(&:ord).reduce(&:+) % table_size
  end

  def self.conflict?(table_size, string1, string2)
    total_asc1 = string1.to_s.chars.map(&:ord).reduce(&:+)
    total_asc2 = string2.to_s.chars.map(&:ord).reduce(&:+)

    total_asc1 % table_size == total_asc2 % table_size
  end
end

class Hashtable
  attr_reader :keys, :values, :max_size

  DEFAULT_MAX_SIZE = 10
  SIZE_INCREASE_THRESHOLD = 0.7

  def initialize(size=DEFAULT_MAX_SIZE)
    raise ArgumentError if size < 0
    @max_size = size
    @keys = Array.new(size)
    @values = Array.new(size)
  end

  def size
    keys.select { |entries| entries }.count
  end

  def put(key, value)
    if keys.index(key)
      keys[keys.index(key)] = value
    end

    if keys.count == 0
      bucket_category = HashFunction.new(key, 1).rem
    else
      bucket_category = HashFunction.new(key, keys.count).rem
    end

    counter = 0

    while keys[bucket_category]
      counter += 1
      bucket_category += 1
      if bucket_category > max_size
        bucket_category = 0
      end
    end

    values[bucket_category] = value
    keys[bucket_category] = key

    double_hashtable_size if size >= (max_size * SIZE_INCREASE_THRESHOLD)
  end

  def get(key)
    index = keys.index(key)
    values[index] if index
  end

  def [](key)
    self.get(key)
  end

  def []=(key, value)
    self.put(key, value)
  end

  def double_hashtable_size
    @max_size = @max_size * 2
    old_keys = keys
    old_values = values

    keys = Array.new(max_size)
    values = Array.new(max_size)

    old_keys.each_with_index do |old_key, index|
      new_bucket = HashFunction.new(old_key, max_size).rem
      keys[new_bucket] = old_key
      values[new_bucket] = old_values[index]
    end
  end
end

hash_table = Hashtable.new(1)
hash_table["abc"] = 123
hash_table["abc"] = 234
puts hash_table.size
hash_table.put("xyz", 456)
puts hash_table.size
hash_table.put("acb", 789)

puts hash_table["abc"] #=> 234
puts hash_table["xyz"] #=> 456
puts hash_table.get("acb") #=> 789
