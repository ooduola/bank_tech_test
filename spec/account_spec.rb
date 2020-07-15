require 'account'

RSpec.describe Account do

  before(:each) do
    @account_one = Account.new
  end
 
  context '#deposit' do
    it "should return statement with balance and deposit eq 10" do
      expect(@account_one.deposit(10)).to eq "deposited 10. balance now 10"
    end

    it 'should return statement with balance and deposit eq 20' do
      expect(@account_one.deposit(20)).to eq "deposited 20. balance now 20"
    end

    it 'should return deposit of 20 and balance of 40 after second deposit' do
      @account_one.deposit(20)
      expect(@account_one.deposit(20)).to eq "deposited 20. balance now 40"
    end
  end

  context '#withdraw' do
    it "should decrease balance by 5" do
      expect(@account_one.withdraw(5)).to eq "withdrawn 5. balance now -5"
    end
  end

  context '#statement' do
    it "should return statement of transaction after deposit is made" do
      @account_one.deposit(10)
      expect(@account_one.statement).to eq 10
    end
  end
end