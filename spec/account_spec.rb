require 'account'

RSpec.describe Account do
 
  context '#balance' do
    it 'returns 10 deposited into account' do
      subject.deposit(10)
      expect(subject.balance).to eq 10
    end

    it 'returns 20 deposited into account' do
      subject.deposit(20)
      expect(subject.balance).to eq 20
    end
  end
end