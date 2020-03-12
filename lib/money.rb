class Money < Struct.new(:amount)
  def initialize(*args)
    super
    freeze
  end

  class << self
    def doller(amount)
      Money::Doller.new(amount)
    end

    def franc(amount)
      Money::Franc.new(amount)
    end
  end

  class Doller < Money
    def times(multiplier)
      Money::Doller.new(amount * multiplier)
    end
  end

  class Franc < Money
    def times(multiplier)
      Money::Franc.new(amount * multiplier)
    end
  end
end
