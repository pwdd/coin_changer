class CoinChanger
  def make_change(amount)
    result = []
    if amount < 5
      amount.times { result << 1 }
    elsif amount == 5
      result = [5]
    end
    result
  end
end
