require 'account'

RSpec.describe Account do
 
  context '#balance' do
    it 'returns 10 deposited into account' do
      deposit_amount = 10
      subject.deposit(deposit_amount)
      expect(subject.balance).to eq deposit_amount
    end

    it 'returns increased deposit_amount' do
      deposit_amount = 20
      subject.deposit(deposit_amount)
      expect(subject.balance).to eq deposit_amount
    end
  end

  # context '#withdraw' do
  #   it 'confirms withdrawal was successful after made' do
  #     expect(subject.withdraw(5)).to eq 'withdrawal was successful'
  #   end

  # end
end