class Money
  class Doller
    attr_reader :amount
    def initialize(amount)
      @amount = amount
    end

    def times(multiplier)
      Doller.new(@amount * multiplier)
    end
  end
end
