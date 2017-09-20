def change(amount, coins)
  table = [0] * (amount + 1)
  # base case, one way to make amount 0
  table[0] = 1

  coins.each do |coin|
    (coin..amount).each do |subamount|
      subamount_minus_coin = subamount - coin
      table[subamount] += table[subamount_minus_coin]
      p table
    end
  end

  table[amount]
end

p change(6, [1,2,3,4])
