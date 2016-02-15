class CoinChange

  def initialize(amount)
    @amount = amount
  end

  def coin
    if @amount == 0
      return 0
    elsif @amount >= 25
      quarter
    elsif @amount >= 10
      dime
    elsif @amount >= 5
      nickel
    else
      return @amount.to_i
    end
  end

  def quarter
    if @amount % 25 == 0
      return (@amount / 25)
    else
    return 1 + CoinChange.new(@amount - 25).coin
    end
  end

  def dime
    if @amount % 10 == 0
      return (@amount / 10)
    else
      return 1 + CoinChange.new(@amount - 10).coin
    end
  end

  def nickel
    if @amount % 5 == 0
      return (@amount / 5)
    else
      return 1 + CoinChange.new(@amount - 5).coin
    end
  end

end
