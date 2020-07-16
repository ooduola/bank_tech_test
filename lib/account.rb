# frozen_string_literal: true

require_relative 'transaction'

class Account
  HEADER = "date   || credit  || debit  || balance\n"

  def initialize
    @balance = 0
    @account_activity = []
  end

  def deposit(credit_amount)
    @balance += credit_amount
    transaction = Transaction.new(credit: credit_amount, balance: @balance)
    @account_activity << transaction
    "deposited #{credit_amount}. balance now #{@balance}"
  end

  def withdraw(debit_amount)
    @balance -= debit_amount
    transaction = Transaction.new(debit: debit_amount, balance: @balance)
    @account_activity << transaction
    "withdrawn #{debit_amount}. balance now #{@balance}"
  end

  def statement
    if @account_activity.empty?
      print HEADER
    else
      print HEADER
      @account_activity.each { |transaction|  print transaction.display + "\n" }
    end
  end
end
