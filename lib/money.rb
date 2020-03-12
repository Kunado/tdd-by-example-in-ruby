class Money
  attr_reader :amount, :currency

  class << self
    def doller(amount)
      Money::Doller.new(amount, 'USD')
    end

    def franc(amount)
      Money::Franc.new(amount, 'CHF')
    end
  end

  def ==(other)
    amount == other.amount && self.class == other.class
  end

  class Doller < Money
    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def times(multiplier)
      Money.doller(amount * multiplier)
    end
  end

  class Franc < Money
    def initialize(amount, currency)
      @amount = amount
      @currency = currency
    end

    def times(multiplier)
      Money.franc(amount * multiplier)
    end
  end
end
