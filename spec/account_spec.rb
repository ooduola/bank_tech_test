# frozen_string_literal: true

require 'account'

RSpec.describe Account do
  before(:each) do
    @account_one = Account.new
  end

  context '#deposit' do
    it 'should return balance and deposit eq 10' do
      expect(@account_one.deposit(10)).to eq 'deposited 10. balance now 10'
    end

    it 'should return balance and deposit eq 20' do
      expect(@account_one.deposit(20)).to eq 'deposited 20. balance now 20'
    end

    it 'should return deposit of 20 and balance of 40 after second deposit' do
      @account_one.deposit(20)
      expect(@account_one.deposit(20)).to eq 'deposited 20. balance now 40'
    end
  end

  context '#withdraw' do
    it 'should decrease balance by 5' do
      expect(@account_one.withdraw(5)).to eq 'withdrawn 5. balance now -5'
    end
  end

  context '#statement' do
    it 'should return statement of transaction after deposit is made' do
      allow(Time).to receive(:now).and_return('01/07/2020')
      @account_one.deposit(10)
      expect(@account_one.statement).to eq ["#{Time.now}||10 || ||10 "]
    end

    it 'should return nothing if no transacations have been made' do
      allow(Time).to receive(:now).and_return('01/07/2020')
      expect(@account_one.statement).to eq 'no transactions made'
    end
  end
end
