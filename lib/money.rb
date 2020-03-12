class Money
  attr_reader :amount, :currency

  class << self
    def doller(amount)
      Money.new(amount, 'USD')
    end

    def franc(amount)
      Money.new(amount, 'CHF')
    end
  end

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def ==(other)
    amount == other.amount && currency == other.currency
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end
end
