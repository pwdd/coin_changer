require 'coin_changer'

describe CoinChanger do
  let(:coin_changer) { CoinChanger.new }

  it 'returns 1 penny' do
    change = coin_changer.make_change(1)

    expect(change).to eq([ 1 ])
  end

  it 'returns two pennies' do
    change = coin_changer.make_change(2)

    expect(change).to eq([1, 1])
  end

  it 'returns one nickel' do
    change = coin_changer.make_change(5)

    expect(change).to eq([5])
  end

  it 'returns one nickel and one penny' do
    change = coin_changer.make_change(6)

    expect(change).to match_array([1, 5])
  end

  it 'returns a dime' do
    change = coin_changer.make_change(10)

    expect(change).to eq([10])
  end

  it 'returns a combination of dimes, nickels and pennies' do
    change = coin_changer.make_change(16)

    expect(change).to match_array([10, 5, 1])
  end

  it 'returns a quarter' do
    change = coin_changer.make_change(25)

    expect(change).to eq([25])
  end
end


# Problem description
#
# Example:
# If I needed 23 cents in change, I would expect to get 2 dimes (20 cents total) and 3 pennies (3 cents total).
# [ 10, 10, 1, 1, 1 ]
#
# Coins:
# Quarter: 25
# Dime: 10
# Nickel: 5
# Penny: 1
