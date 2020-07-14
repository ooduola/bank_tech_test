require 'account'

RSpec.describe Account do

  before(:each) do
    @account_one = Account.new
  end
 
  context '#deposit' do
    it "should increment balance by 10" do
      expect { @account_one.deposit(10) }.to change { @account_one.balance }.from(0).to(10)
    end

    it 'should increment balance by 20' do
      expect { @account_one.deposit(20) }.to change { @account_one.balance }.from(0).to(20)
    end

    it 'should increment balance by 10 after second deposit' do
      @account_one.deposit(20)
      expect { @account_one.deposit(10) }.to change { @account_one.balance }.from(20).to(30)
    end
  end

  context '#withdraw' do
    it "should decrease balance by 5" do
      expect { @account_one.withdraw(5) }.to change { @account_one.balance }.from(0).to(-5)
    end
  end
end