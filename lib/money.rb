class Money < Struct.new(:amount)
  def initialize(*args)
    super
    freeze
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
