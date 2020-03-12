require_relative '../lib/money'

describe Money do
  describe Money::Doller do
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
  end

  describe Money::Franc do
    context 'with 5 franc object' do
      let(:five_franc) { Money.franc(5) }
      describe '#times' do
        context 'when multiplied by 2' do
          it { expect(five_franc.times(2)).to eq Money.franc(10) }
        end
        context 'when multiplied by 3' do
          it { expect(five_franc.times(3)).to eq Money.franc(15) }
        end
      end

      describe '#equals' do
        context 'with another franc object whose amount is 5' do
          it { expect(five_franc).to eq Money.franc(5) }
        end
        context 'with another franc object whose amount is 6' do
          it { expect(five_franc).to_not eq Money.franc(6) }
        end
      end

      describe '#currency' do
        it { expect(five_franc.currency).to eq 'CHF' }
      end
    end
  end
end
