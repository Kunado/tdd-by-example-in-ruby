require_relative '../lib/money'

describe Money::Doller do
  context 'with 5 doller object' do
    let(:five_doller) { Money::Doller.new(5) }
    describe '#times' do
      context 'when multiplied by 2' do
        it { expect(five_doller.times(2)).to eq Money::Doller.new(10) }
      end
      context 'when multiplied by 3' do
        it { expect(five_doller.times(3)).to eq Money::Doller.new(15) }
      end
    end

    describe '#equals' do
      context 'with another object whose amount is 5' do
        it { expect(five_doller).to eq Money::Doller.new(5) }
      end
      context 'with another object whose amount is 6' do
        it { expect(five_doller).to_not eq Money::Doller.new(6) }
      end
      context 'with another franc object whose amount is 5' do
        it { expect(five_doller).to_not eq Money::Franc.new(5) }
      end
    end
  end
end

describe Money::Franc do
  let(:five_franc) { Money::Franc.new(5) }
  describe '#times' do
    context 'when multiplied by 2' do
      it { expect(five_franc.times(2)).to eq Money::Franc.new(10) }
    end
    context 'when multiplied by 3' do
      it { expect(five_franc.times(3)).to eq Money::Franc.new(15) }
    end
  end
  describe '#equals' do
    context 'when multiplied by 2' do
      it { expect(five_franc).to eq Money::Franc.new(5) }
    end

    context 'when multiplied by 3' do
      it { expect(five_franc).to_not eq Money::Franc.new(6) }
    end
  end
end
