require 'account'

RSpec.describe Account do
  context '#deposit' do

    it 'confirms deposit was successful after deposit made' do
      expect(subject.deposit(10)).to eq 'deposit was successful'
    end
  end
end