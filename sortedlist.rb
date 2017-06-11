class SortedList
  def initialize
    @items = []
  end

  def add(item)
    if @items.empty?
      @items.push(item)
      return
    end

    position = 0
    while position < @items.count
      if @items[position] > item
        @items.insert(position, item)
        return
      end
    end
    @items.push(item)
  end

  def remove(item)
    @items.delete(item)
  end

  def to_s
    @items.to_s
  end
end

list = SortedList.new
list.add(3)
list.add(8)
list.add(4)
list.add(9)
list.add(1)
