require_relative '../lib/money'

describe Money do
  describe 'multiplication' do
    let(:five_doller) { Money::Doller.new(5) }
    context 'when multiplied by 2' do
      it { expect(five_doller.times(2).amount).to eq 10 }
    end
    context 'when multiplied by 3' do
      it { expect(five_doller.times(3).amount).to eq 15 }
    end
  end
end
