class Money
  class Doller < Struct.new(:amount)
    def initalize(*args)
      super
      freeze
    end

    def times(multiplier)
      Money::Doller.new(amount * multiplier)
    end
  end

  class Franc < Struct.new(:amount)
    def initialize(*args)
      super
      freeze
    end

    def times(multiplier)
      Money::Franc.new(amount * multiplier)
    end
  end
end
