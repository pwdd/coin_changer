class CoinChanger
  def make_change(amount)
    result = []
    coins = [1, 5, 10, 25].sort.reverse

    coins.each do |coin|
      while coin <= amount
        result << coin
        amount -= coin
      end
    end

    result
  end
end
