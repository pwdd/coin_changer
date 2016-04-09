class CoinChanger
  def make_change(amount)
    result = []
    if amount < 5
      amount.times { result << 1 }
    elsif amount == 5
      result = [5]
    elsif amount > 5 && amount < 10
      result = [5]
      remainder = amount % 5
      remainder.times { result << 1 }
    elsif amount == 10
      result = [10]
    end
    result
  end
end
