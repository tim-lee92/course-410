require 'minitest/autorun'
require_relative 'hash_function'

class HashFunctionTest < MiniTest::Unit::TestCase
  def test_conflict
    assert HashFunction.conflict?(1, "hello", "world")
    assert HashFunction.conflict?(1, "2", "5")
    refute HashFunction.conflict?(100, "hello", "world")
    refute HashFunction.conflict?(10, "2", "5")
  end
end

class HashtableTest < MiniTest::Unit::TestCase

  def test_size
    assert_raises(ArgumentError) { Hashtable.new(-1) }
    ht = Hashtable.new(20)
    assert_equal 0, ht.size
    ht = Hashtable.new
    assert_equal 0, ht.size
    ht = Hashtable.new(10)
    ht.put( "color", "blue")
    assert_equal 1, ht.size
  end

  def test_put
    ht = Hashtable.new
    ht.put( "color", "blue")
    assert_equal "blue", ht.get("color")
    ht.put("color", nil)
    assert_equal nil, ht.get("color")
  end

  def test_keys
    ht = Hashtable.new
    assert_equal [], ht.keys
    ht.put( "color", "blue")
    assert_equal ["color"], ht.keys
  end

end
