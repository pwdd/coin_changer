class CoinChanger
  COINS = [1, 5, 10, 25].sort.reverse
  def make_change(amount)
    COINS.inject([]) do |memo, coin|
      while coin <= amount
        memo << coin
        amount -= coin
      end
      memo
    end
  end
end
