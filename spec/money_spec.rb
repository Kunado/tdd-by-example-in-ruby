require_relative '../lib/money'

describe Money do
  context '5 doller object' do
    describe '#times' do
      let(:five_doller) { Money::Doller.new(5) }
      context 'when multiplied by 2' do
        it { expect(five_doller.times(2)).to eq Money::Doller.new(10) }
      end
      context 'when multiplied by 3' do
        it { expect(five_doller.times(3)).to eq Money::Doller.new(15) }
      end
    end

    describe '#equals' do
      let (:five_doller) { Money::Doller.new(5) }
      context 'with another object whose amount is 5' do
        it { expect(five_doller).to eq Money::Doller.new(5) }
      end
      context 'with another object whose amount is 6' do
        it { expect(five_doller).to_not eq Money::Doller.new(6) }
      end
    end
  end
end
