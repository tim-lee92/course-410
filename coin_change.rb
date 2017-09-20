def coin_change(coins, amount)
  storage = [0]

  (0..amount).each do |current_amount|
    coins.each do |coin|
      if coin <= current_amount && storage[current_amount - coin]
        amount_of_coins = 1 + storage[current_amount - coin]
        if storage[current_amount]
          storage[current_amount] = [amount_of_coins, storage[current_amount]].min
        else
          storage[current_amount] = amount_of_coins
        end
      # elsif storage[current_amount - coin]
      #   storage[current_amount] = -1
      end
    end
  end

  storage[amount] ? storage[amount] : -1
end

p coin_change([1,2,5], 13)
p coin_change([2,5,10,1], 27)
p coin_change([], 0)
p coin_change([5,9,13], 12)

p coin_change([496,154,300,357,327,248,201,341,145,248,316], 6776)
