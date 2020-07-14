require 'account'

RSpec.describe Account do
  # allow(date).to receive(:date_now) { "01/01/2020" }
  # let(:date) {double("Time", date_now: 01/01/2020)}


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

  context '#statement' do
    it "should return date after deposit is made" do
      @account_one.deposit(10)
      expect(@account_one.statement).to eq "01/01/20"
    end

    it 'should return zero if no deposit is made' do
      expect(@account_one.statement).to eq nil
    end

  end
end