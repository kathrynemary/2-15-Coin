require_relative '../CoinChange'

describe CoinChange do

  it "should return 1 coin for 25 cents" do
    expect(CoinChange.new(25).coin).to be == 1
  end

  it "should return 0 coins for 0 cents" do
    expect(CoinChange.new(0).coin).to be == 0
  end

  it "should return 4 coins for 4 cents" do
    expect(CoinChange.new(4).coin).to be == 4
  end

  it "should return 3 coins for 40 cents" do
    expect(CoinChange.new(40).coin).to be == 3
  end

  it "should return 6 coins for 78 cents" do
    expect(CoinChange.new(78).coin).to be == 6
  end

end
