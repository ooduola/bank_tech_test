require './lib/account'

describe 'feature test ' do

  subject(:account) { Account.new }

  it 'print statement after deposit and withdrawal is made' do
    account.deposit(1000)
    account.withdraw(500)
    account.statement
    header = 'date || credit || debit || balance \n'
    expect { account.statement }.to output(/#{header}/n).to_stdout
  end
end