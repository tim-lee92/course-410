# Use two pointers(?)
# Keep track of current min and max as we traverse

stock_prices_yesterday = [10, 7, 5, 8, 11, 9]

def get_max_profit(array)
  left = 0
  right = 1
  profit = -Float::INFINITY

  while right < array.length
    profit = [profit, array[right] - array[left]].max

    if array[right] < array[left]
      left = right
    end

    right += 1
  end

  profit
end

p get_max_profit(stock_prices_yesterday)
