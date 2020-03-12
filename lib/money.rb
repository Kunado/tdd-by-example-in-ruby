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
end
