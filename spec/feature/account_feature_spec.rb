# frozen_string_literal: true

require './lib/account'

describe 'feature test ' do

  subject(:account) { Account.new }
  header = 'date || credit || debit || balance \n'
  date = 01/07/20


  it 'print statement after deposit and withdrawal is made' do
    account.statement
    deposit_transaction = "#{date} || ||1000 ||1000 \n"
    expect { account.statement }.to output(/#{header}/n).to_stdout
  end


  it 'prints statement after deposit is made' do
    account.deposit(1000)
    account.statement
    deposit_transaction = "#{date} || ||23 ||67 "
    expect { account.statement }.to output(/#{header}#{deposit_transaction}/n).to_stdout
  end
end
