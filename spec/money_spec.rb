require_relative '../lib/money'

describe Money do
  context 'with 5 doller object' do
    let(:five_doller) { Money.doller(5) }
    describe '#times' do
      context 'when multiplied by 2' do
        it { expect(five_doller.times(2)).to eq Money.doller(10) }
      end
      context 'when multiplied by 3' do
        it { expect(five_doller.times(3)).to eq Money.doller(15) }
      end
    end

    describe '#equals' do
      context 'with another object whose amount is 5' do
        it { expect(five_doller).to eq Money.doller(5) }
      end
      context 'with another object whose amount is 6' do
        it { expect(five_doller).to_not eq Money.doller(6) }
      end
      context 'with another franc object whose amount is 5' do
        it { expect(five_doller).to_not eq Money.franc(5) }
      end
    end

    describe '#currency' do
      it { expect(five_doller.currency).to eq 'USD' }
    end
  end

  describe '#plus' do
    context 'when 5 doller is added to 5 doller' do
      five_doller = Money.doller(5)
      sum = five_doller.plus(five_doller)
      bank = Bank.new()
      reduced = bank.reduce(sum, 'USD')
      it { expect(Money.doller(10)).to eq reduced }
      it { expect(five_doller).to eq sum.augend }
      it { expect(five_doller).to eq sum.addend }
    end

    context 'when 4 doller is added to 3 doller' do
      sum = Sum.new(Money.doller(3), Money.doller(4))
      bank = Bank.new()
      result = bank.reduce(sum, 'USD')
      it { expect(result).to eq Money.doller(7) }
    end

    context 'when 1 doller reduced' do
      bank = Bank.new()
      result = bank.reduce(Money.doller(1), 'USD')
      it { expect(result).to eq Money.doller(1) }
    end
  end

  context 'with 5 franc object' do
    let(:five_franc) { Money.franc(5) }
    describe '#currency' do
      it { expect(five_franc.currency).to eq 'CHF' }
    end
  end
end

describe Bank do
  describe '#add_rate' do
    context 'when rate between doller and franc is 2:1' do
      bank = Bank.new()
      bank.add_rate('CHF', 'USD', 2)
      result = bank.reduce(Money.franc(2), 'USD')
      it { expect(result).to eq Money.doller(1) }
    end
  end
end
