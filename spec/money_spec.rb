require_relative '../lib/money'

describe Money do
  describe 'multiplication' do
    five_doller = Money::Doller.new(5)
    five_doller.times(2)
    it { expect(five_doller.amount).to eq 10 }
  end
end
