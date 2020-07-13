require 'account'

RSpec.describe Account do
 
  context '#deposit' do
    it 'confirms deposit was successful after deposit made' do
      expect(subject.deposit(10)).to eq 'deposit was successful'
    end
  end

  context '#withdraw' do
    it 'confirms withdrawal was successful after made' do
      expect(subject.withdraw(5)).to eq 'withdrawal was successful'
    end

    it 'returns error message if input value is not a number' do
      expect{subject.withdraw("ten")}.to raise_error(ArgumentError)
    end
  end
end