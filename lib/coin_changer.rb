class CoinChanger
  COINS = [1, 5, 10, 25].sort.reverse
  
  def make_change(amount)
    COINS.inject([]) do |change, coin|
      while coin <= amount
        change << coin
        amount -= coin
      end
      change
    end
  end
end
