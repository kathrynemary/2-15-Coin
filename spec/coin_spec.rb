require_relative '../CoinChange' #require_relative instead?

describe CoinChange do

  it "should return 1 coin for 25 cents"
    expect(CoinChange.new(25).coin).to be == 1
  #end
end
